; ModuleID = './pr80153.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr80153.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buf = internal global i8* null, align 8
@i = internal global i32 0, align 4
@l = internal global i32 0, align 4
@string = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"oops!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %5

4:                                                ; preds = %3
  call void @abort() #4
  unreachable

5:                                                ; preds = %3
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @_fputs(i8* noundef %0) #0 {
  store i8* %0, i8** @buf, align 8
  store i32 0, i32* @i, align 4
  %2 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #5
  %3 = trunc i64 %2 to i32
  store i32 %3, i32* @l, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local signext i8 @_fgetc() #3 {
  %1 = load i8*, i8** @buf, align 8
  %2 = load i32, i32* @i, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, i8* %1, i64 %3
  %5 = load i8, i8* %4, align 1
  %6 = add nsw i32 %2, 1
  store i32 %6, i32* @i, align 4
  %7 = load i32, i32* @l, align 4
  %.not = icmp slt i32 %2, %7
  br i1 %.not, label %9, label %8

8:                                                ; preds = %0
  br label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %8
  %.0 = phi i8 [ -1, %8 ], [ %5, %9 ]
  ret i8 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load i8*, i8** @string, align 8
  call void @_fputs(i8* noundef %1)
  br label %2

2:                                                ; preds = %20, %0
  %.0 = phi i32 [ 0, %0 ], [ %21, %20 ]
  %3 = zext i32 %.0 to i64
  %4 = load i8*, i8** @string, align 8
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #5
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = call signext i8 @_fgetc()
  %9 = sext i8 %8 to i32
  %10 = load i8*, i8** @string, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i8, i8* %10, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %8, %17
  %19 = zext i1 %18 to i32
  call void @check(i32 noundef %9, i32 noundef %14, i32 noundef %19)
  br label %20

20:                                               ; preds = %7
  %21 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

22:                                               ; preds = %2
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
