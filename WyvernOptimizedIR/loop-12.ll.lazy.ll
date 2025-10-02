; ModuleID = './loop-12.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/loop-12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"abc\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %3, %0
  %2 = call i32 @is_end_of_statement() #2
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %3, label %6

3:                                                ; preds = %1
  %4 = load i8*, i8** @p, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 1
  store i8* %5, i8** @p, align 8
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @is_end_of_statement() #1 {
  %1 = load i8*, i8** @p, align 8
  %2 = load i8, i8* %1, align 1
  %3 = icmp eq i8 %2, 10
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load i8*, i8** @p, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 59
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i8*, i8** @p, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp eq i8 %10, 33
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %8, %4, %0
  %13 = phi i32 [ 1, %4 ], [ 1, %0 ], [ %phi.cast, %8 ]
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @main() #0 {
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** @p, align 8
  call void @foo()
  ret i32 0
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
