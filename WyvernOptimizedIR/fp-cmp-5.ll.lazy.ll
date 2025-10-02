; ModuleID = './fp-cmp-5.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/fp-cmp-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.try = type { double, double, [6 x i32] }
%struct.test = type { i32 (double, double)*, i32 (double, double)* }

@main.data = internal constant [6 x %struct.try] [%struct.try { double 0x7FF8000000000000, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0x7FF8000000000000, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0x7FF8000000000000, double 0.000000e+00, [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.try { double 0.000000e+00, double 0.000000e+00, [6 x i32] [i32 0, i32 0, i32 1, i32 0, i32 1, i32 0] }, %struct.try { double 1.000000e+00, double 2.000000e+00, [6 x i32] [i32 0, i32 1, i32 1, i32 0, i32 0, i32 1] }, %struct.try { double 2.000000e+00, double 1.000000e+00, [6 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1] }], align 16
@main.tests = internal constant [6 x %struct.test] [%struct.test { i32 (double, double)* @test_isunordered, i32 (double, double)* @test_not_isunordered }, %struct.test { i32 (double, double)* @test_isless, i32 (double, double)* @test_not_isless }, %struct.test { i32 (double, double)* @test_islessequal, i32 (double, double)* @test_not_islessequal }, %struct.test { i32 (double, double)* @test_isgreater, i32 (double, double)* @test_not_isgreater }, %struct.test { i32 (double, double)* @test_isgreaterequal, i32 (double, double)* @test_not_isgreaterequal }, %struct.test { i32 (double, double)* @test_islessgreater, i32 (double, double)* @test_not_islessgreater }], align 16

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %26, %0
  %.01 = phi i32 [ 0, %0 ], [ %27, %26 ]
  %2 = icmp ult i32 %.01, 6
  br i1 %2, label %3, label %28

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %23, %3
  %.0 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp ult i32 %.0, 6
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %7, i32 0
  %9 = load double, double* %8, align 8
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %10, i32 1
  %12 = load double, double* %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [6 x %struct.try], [6 x %struct.try]* @main.data, i64 0, i64 %13, i32 2, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %17, i32 0
  %19 = load i32 (double, double)*, i32 (double, double)** %18, align 16
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [6 x %struct.test], [6 x %struct.test]* @main.tests, i64 0, i64 %20, i32 1
  %22 = load i32 (double, double)*, i32 (double, double)** %21, align 8
  call void @one_test(double noundef %9, double noundef %12, i32 noundef %16, i32 (double, double)* noundef %19, i32 (double, double)* noundef %22)
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
define internal i32 @test_isunordered(double noundef %0, double noundef %1) #1 {
  %3 = fcmp uno double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_isunordered(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ord double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_isless(double noundef %0, double noundef %1) #1 {
  %3 = fcmp olt double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_isless(double noundef %0, double noundef %1) #1 {
  %3 = fcmp uge double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_islessequal(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ole double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_islessequal(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ugt double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_isgreater(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ogt double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_isgreater(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ule double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_isgreaterequal(double noundef %0, double noundef %1) #1 {
  %3 = fcmp oge double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_isgreaterequal(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ult double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_islessgreater(double noundef %0, double noundef %1) #1 {
  %3 = fcmp one double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @test_not_islessgreater(double noundef %0, double noundef %1) #1 {
  %3 = fcmp ueq double %0, %1
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind uwtable
define internal void @one_test(double noundef %0, double noundef %1, i32 noundef %2, i32 (double, double)* nocapture noundef readonly %3, i32 (double, double)* nocapture noundef readonly %4) #2 {
  %6 = call i32 %3(double noundef %0, double noundef %1) #5
  %.not = icmp eq i32 %6, %2
  br i1 %.not, label %8, label %7

7:                                                ; preds = %5
  call void @abort() #4
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = call i32 %4(double noundef %0, double noundef %1) #5
  %.not1 = icmp eq i32 %2, 0
  %10 = zext i1 %.not1 to i32
  %.not2 = icmp eq i32 %9, %10
  br i1 %.not2, label %12, label %11

11:                                               ; preds = %8
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  ret void

UnifiedUnreachableBlock:                          ; preds = %11, %7
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
