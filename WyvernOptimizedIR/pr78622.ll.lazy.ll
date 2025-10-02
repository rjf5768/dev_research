; ModuleID = './pr78622.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr78622.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%hhd\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\22%hhd\22 => %i\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(i32 noundef %0) #0 {
  %2 = alloca [5 x i8], align 1
  %3 = icmp slt i32 %0, 4104
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, 4359
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %1
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %9 = add nsw i32 %0, 1
  %10 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* noundef nonnull %8, i64 noundef 5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 noundef %9) #4
  %11 = add nsw i32 %0, 1
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %11, i32 noundef %10) #4
  br label %13

13:                                               ; preds = %7, %6
  %.0 = phi i32 [ -1, %6 ], [ %10, %7 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8* noundef, i64 noundef, i8* noundef, ...) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @foo(i32 noundef 4104)
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %2, label %16

2:                                                ; preds = %0
  %3 = call i32 @foo(i32 noundef 4127)
  %.not1 = icmp eq i32 %3, 2
  br i1 %.not1, label %4, label %16

4:                                                ; preds = %2
  %5 = call i32 @foo(i32 noundef 4222)
  %.not2 = icmp eq i32 %5, 3
  br i1 %.not2, label %6, label %16

6:                                                ; preds = %4
  %7 = call i32 @foo(i32 noundef 4223)
  %.not3 = icmp eq i32 %7, 4
  br i1 %.not3, label %8, label %16

8:                                                ; preds = %6
  %9 = call i32 @foo(i32 noundef 4335)
  %.not4 = icmp eq i32 %9, 3
  br i1 %.not4, label %10, label %16

10:                                               ; preds = %8
  %11 = call i32 @foo(i32 noundef 4343)
  %.not5 = icmp eq i32 %11, 2
  br i1 %.not5, label %12, label %16

12:                                               ; preds = %10
  %13 = call i32 @foo(i32 noundef 4350)
  %.not6 = icmp eq i32 %13, 2
  br i1 %.not6, label %14, label %16

14:                                               ; preds = %12
  %15 = call i32 @foo(i32 noundef 4351)
  %.not7 = icmp eq i32 %15, 1
  br i1 %.not7, label %17, label %16

16:                                               ; preds = %14, %12, %10, %8, %6, %4, %2, %0
  call void @abort() #5
  unreachable

17:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
