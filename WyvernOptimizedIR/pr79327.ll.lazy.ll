; ModuleID = './pr79327.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr79327.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%#hho\00", align 1
@a = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%#hhx\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %3 = load volatile i32, i32* @a, align 4
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %3) #3
  %.not = icmp eq i32 %4, 1
  br i1 %.not, label %6, label %5

5:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %8 = load volatile i32, i32* @a, align 4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %7, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %8) #3
  %.not1 = icmp eq i32 %9, 1
  br i1 %.not1, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  store volatile i32 1, i32* @a, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %13 = load volatile i32, i32* @a, align 4
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %12, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %13) #3
  %.not2 = icmp eq i32 %14, 2
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %18 = load volatile i32, i32* @a, align 4
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %17, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %18) #3
  %.not3 = icmp eq i32 %19, 3
  br i1 %.not3, label %21, label %20

20:                                               ; preds = %16
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %16
  store volatile i32 127, i32* @a, align 4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %23 = load volatile i32, i32* @a, align 4
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %22, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 noundef %23) #3
  %.not4 = icmp eq i32 %24, 4
  br i1 %.not4, label %26, label %25

25:                                               ; preds = %21
  call void @abort() #4
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %21
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %28 = load volatile i32, i32* @a, align 4
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %27, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef %28) #3
  %.not5 = icmp eq i32 %29, 4
  br i1 %.not5, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #4
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %30, %25, %20, %15, %10, %5
  unreachable
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
