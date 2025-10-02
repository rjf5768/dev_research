; ModuleID = './build2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0001(float noundef %0) #0 {
  %2 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0
  ret <4 x float> %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0010(float noundef %0) #0 {
  %2 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, float %0, i64 1
  ret <4 x float> %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0100(float noundef %0) #0 {
  %2 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %0, i64 2
  ret <4 x float> %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1000(float noundef %0) #0 {
  %2 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %0, i64 3
  ret <4 x float> %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0011(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %0, i64 0
  %4 = insertelement <4 x float> %3, float %1, i64 1
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0101(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %0, i64 0
  %4 = insertelement <4 x float> %3, float %1, i64 2
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1001(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %0, i64 0
  %4 = insertelement <4 x float> %3, float %1, i64 3
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0110(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %0, i64 1
  %4 = insertelement <4 x float> %3, float %1, i64 2
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1010(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float poison>, float %0, i64 1
  %4 = insertelement <4 x float> %3, float %1, i64 3
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1100(float noundef %0, float noundef %1) #0 {
  %3 = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, float %0, i64 2
  %4 = insertelement <4 x float> %3, float %1, i64 3
  ret <4 x float> %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test0111(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %0, i64 0
  %5 = insertelement <4 x float> %4, float %1, i64 1
  %6 = insertelement <4 x float> %5, float %2, i64 2
  ret <4 x float> %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1011(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %0, i64 0
  %5 = insertelement <4 x float> %4, float %1, i64 1
  %6 = insertelement <4 x float> %5, float %2, i64 3
  ret <4 x float> %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1101(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %0, i64 0
  %5 = insertelement <4 x float> %4, float %1, i64 2
  %6 = insertelement <4 x float> %5, float %2, i64 3
  ret <4 x float> %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local <4 x float> @test1110(float noundef %0, float noundef %1, float noundef %2) #0 {
  %4 = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %0, i64 1
  %5 = insertelement <4 x float> %4, float %1, i64 2
  %6 = insertelement <4 x float> %5, float %2, i64 3
  ret <4 x float> %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca <4 x float>, align 16
  %4 = alloca <4 x float>, align 16
  %5 = alloca <4 x float>, align 16
  store <4 x float> zeroinitializer, <4 x float>* %3, align 16
  store <4 x float> zeroinitializer, <4 x float>* %4, align 16
  store <4 x float> zeroinitializer, <4 x float>* %5, align 16
  br label %6

6:                                                ; preds = %46, %2
  %.0 = phi i32 [ 0, %2 ], [ %47, %46 ]
  %7 = icmp ult i32 %.0, 100
  br i1 %7, label %8, label %48

8:                                                ; preds = %6
  store <4 x float> zeroinitializer, <4 x float>* %3, align 16
  store <4 x float> zeroinitializer, <4 x float>* %4, align 16
  store <4 x float> zeroinitializer, <4 x float>* %5, align 16
  br label %9

9:                                                ; preds = %43, %8
  %.01 = phi i32 [ 0, %8 ], [ %44, %43 ]
  %10 = icmp ult i32 %.01, 2000000
  br i1 %10, label %11, label %45

11:                                               ; preds = %9
  %12 = call <4 x float> @test0001(float noundef 1.000000e+00)
  %13 = load <4 x float>, <4 x float>* %3, align 16
  %14 = fadd <4 x float> %13, %12
  %15 = call <4 x float> @test0010(float noundef 1.000000e+00)
  %16 = fadd <4 x float> %14, %15
  %17 = call <4 x float> @test0100(float noundef 1.000000e+00)
  %18 = fadd <4 x float> %16, %17
  %19 = call <4 x float> @test1000(float noundef 1.000000e+00)
  %20 = fadd <4 x float> %18, %19
  store <4 x float> %20, <4 x float>* %3, align 16
  %21 = call <4 x float> @test0011(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %22 = load <4 x float>, <4 x float>* %4, align 16
  %23 = fadd <4 x float> %22, %21
  %24 = call <4 x float> @test0101(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %25 = fadd <4 x float> %23, %24
  %26 = call <4 x float> @test1001(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %27 = fadd <4 x float> %25, %26
  %28 = call <4 x float> @test0110(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %29 = fadd <4 x float> %27, %28
  %30 = call <4 x float> @test1010(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %31 = fadd <4 x float> %29, %30
  %32 = call <4 x float> @test1100(float noundef 1.000000e+00, float noundef 2.000000e+00)
  %33 = fadd <4 x float> %31, %32
  store <4 x float> %33, <4 x float>* %4, align 16
  %34 = call <4 x float> @test0111(float noundef 2.000000e+00, float noundef 3.000000e+00, float noundef 1.000000e+00)
  %35 = load <4 x float>, <4 x float>* %5, align 16
  %36 = fadd <4 x float> %35, %34
  %37 = call <4 x float> @test1011(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 2.000000e+00)
  %38 = fadd <4 x float> %36, %37
  %39 = call <4 x float> @test1101(float noundef 3.000000e+00, float noundef 2.000000e+00, float noundef 4.000000e+00)
  %40 = fadd <4 x float> %38, %39
  %41 = call <4 x float> @test1110(float noundef 4.000000e+00, float noundef 6.000000e+00, float noundef 1.000000e+00)
  %42 = fadd <4 x float> %40, %41
  store <4 x float> %42, <4 x float>* %5, align 16
  br label %43

43:                                               ; preds = %11
  %44 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !4

45:                                               ; preds = %9
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !6

48:                                               ; preds = %6
  %49 = bitcast <4 x float>* %3 to %union.FV*
  call void @printFV(%union.FV* noundef nonnull %49)
  %50 = bitcast <4 x float>* %4 to %union.FV*
  call void @printFV(%union.FV* noundef nonnull %50)
  %51 = bitcast <4 x float>* %5 to %union.FV*
  call void @printFV(%union.FV* noundef nonnull %51)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* nocapture noundef readonly %0) #2 {
  %2 = getelementptr %union.FV, %union.FV* %0, i64 0, i32 0, i64 0
  %3 = load float, float* %2, align 16
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 1
  %6 = load float, float* %5, align 4
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 2
  %9 = load float, float* %8, align 8
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 3
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %4, double noundef %7, double noundef %10, double noundef %13) #4
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
