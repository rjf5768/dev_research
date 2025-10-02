; ModuleID = './fp-cmp-8.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { double, double, [6 x i32] }
%struct.test = type { double (double, double, double, double)*, double (double, double, double, double)* }

@main.data = internal constant [14 x %struct.try] [%struct.try { double 0x7FF8000000000000, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0x7FF8000000000000, double 0.000000e+00, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 1.000000e+00, double 2.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 2.000000e+00, double 1.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0x7FF0000000000000, double 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 1.000000e+00, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 0x7FF0000000000000, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 0.000000e+00, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0xFFF0000000000000, double 1.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 0xFFF0000000000000, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 0x7FF0000000000000, double 0xFFF0000000000000, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }, %struct.try { double 0xFFF0000000000000, double 0x7FF0000000000000, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }], align 16
@main.tests = internal constant [6 x %struct.test] [%struct.test { double (double, double, double, double)* @test_isunordered, double (double, double, double, double)* @test_not_isunordered }, %struct.test { double (double, double, double, double)* @test_isless, double (double, double, double, double)* @test_not_isless }, %struct.test { double (double, double, double, double)* @test_islessequal, double (double, double, double, double)* @test_not_islessequal }, %struct.test { double (double, double, double, double)* @test_isgreater, double (double, double, double, double)* @test_not_isgreater }, %struct.test { double (double, double, double, double)* @test_isgreaterequal, double (double, double, double, double)* @test_not_isgreaterequal }, %struct.test { double (double, double, double, double)* @test_islessgreater, double (double, double, double, double)* @test_not_islessgreater }], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %26, %0
  %.01 = phi i32 [ 0, %0 ], [ %27, %26 ]
  %2 = icmp ult i32 %.01, 14
  br i1 %2, label %3, label %28

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %23, %3
  %.0 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp ult i32 %.0, 6
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %7, i32 0
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %10, i32 1
  %12 = load double, double* %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [14 x %struct.try], [14 x %struct.try]* @main.data, i64 0, i64 %13, i32 2, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %17, i32 0
  %19 = load double (double, double, double, double)*, double (double, double, double, double)** %18, align 16
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %20, i32 1
  %22 = load double (double, double, double, double)*, double (double, double, double, double)** %21, align 8
  call void @one_test(double noundef %9, double noundef %12, i32 noundef %16, double (double, double, double, double)* noundef %19, double (double, double, double, double)* noundef %22)
  br label %23

23:                                               ; preds = %6
  %24 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.01, 1
  br label %1, !llvm.loop !6

28:                                               ; preds = %1
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_isunordered(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp uno double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_isunordered(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp uno double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_isless(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp olt double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_isless(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp olt double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_islessequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ugt double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_islessequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ugt double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_isgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ogt double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_isgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ogt double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_isgreaterequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ult double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_isgreaterequal(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ult double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_islessgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ueq double %0, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @test_not_islessgreater(double noundef %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = fcmp ueq double %0, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %8

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi double [ %2, %6 ], [ %3, %7 ]
  ret double %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @one_test(double noundef %0, double noundef %1, i32 noundef %2, double (double, double, double, double)* nocapture noundef readonly %3, double (double, double, double, double)* nocapture noundef readonly %4) #2 {
  %6 = call double %3(double noundef %0, double noundef %1, double noundef 1.000000e+00, double noundef 2.000000e+00) #5
  %7 = fcmp oeq double %6, 1.000000e+00
  %8 = zext i1 %7 to i32
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  %11 = call double %4(double noundef %0, double noundef %1, double noundef 3.000000e+00, double noundef 4.000000e+00) #5
  %12 = fcmp oeq double %11, 4.000000e+00
  %13 = zext i1 %12 to i32
  %.not1 = icmp eq i32 %13, %2
  br i1 %.not1, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10
  ret void

UnifiedUnreachableBlock:                          ; preds = %14, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = distinct !{!6, !5}
