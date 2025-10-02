; ModuleID = './gaussianBlurKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Blur/gaussianBlurKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @gaussianBlurKernel(i32 noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = alloca [9 x [9 x float]], align 16
  %6 = zext i32 %1 to i64
  %7 = zext i32 %1 to i64
  %8 = bitcast [9 x [9 x float]]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(324) %8, i8 0, i64 324, i1 false)
  br label %9

9:                                                ; preds = %40, %4
  %.07 = phi float [ 0.000000e+00, %4 ], [ %.18, %40 ]
  %.06 = phi i32 [ -4, %4 ], [ %41, %40 ]
  %10 = icmp slt i32 %.06, 5
  br i1 %10, label %11, label %42

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %30, %11
  %.18 = phi float [ %.07, %11 ], [ %37, %30 ]
  %.05 = phi i32 [ -4, %11 ], [ %38, %30 ]
  %13 = icmp slt i32 %.05, 5
  br i1 %13, label %14, label %39

14:                                               ; preds = %12
  %15 = mul nsw i32 %.06, %.06
  %16 = mul nsw i32 %.05, %.05
  %17 = add nuw nsw i32 %15, %16
  %18 = sub nsw i32 0, %17
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %19, 1.620000e+02
  %21 = fpext float %20 to double
  %22 = call double @exp(double noundef %21) #4
  %23 = fdiv double %22, 0x407FCF0216A64912
  %24 = fptrunc double %23 to float
  %25 = add nsw i32 %.06, 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i32 %.05, 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %5, i64 0, i64 %26, i64 %28
  store float %24, float* %29, align 4
  br label %30

30:                                               ; preds = %14
  %31 = add nsw i32 %.06, 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i32 %.05, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %5, i64 0, i64 %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fadd float %.18, %36
  %38 = add nsw i32 %.05, 1
  br label %12, !llvm.loop !4

39:                                               ; preds = %12
  br label %40

40:                                               ; preds = %39
  %41 = add nsw i32 %.06, 1
  br label %9, !llvm.loop !6

42:                                               ; preds = %9
  br label %43

43:                                               ; preds = %89, %42
  %.03 = phi i32 [ 4, %42 ], [ %90, %89 ]
  %44 = add nsw i32 %0, -4
  %45 = icmp slt i32 %.03, %44
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %86, %46
  %.02 = phi i32 [ 4, %46 ], [ %87, %86 ]
  %48 = add nsw i32 %1, -4
  %49 = icmp slt i32 %.02, %48
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %76, %50
  %.04 = phi float [ 0.000000e+00, %50 ], [ %.1, %76 ]
  %.01 = phi i32 [ -4, %50 ], [ %77, %76 ]
  %52 = icmp slt i32 %.01, 5
  br i1 %52, label %53, label %78

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %57, %53
  %.1 = phi float [ %.04, %53 ], [ %73, %57 ]
  %.0 = phi i32 [ -4, %53 ], [ %74, %57 ]
  %55 = icmp slt i32 %.0, 5
  br i1 %55, label %56, label %75

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = add nsw i32 %.03, %.01
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %6
  %61 = getelementptr inbounds i32, i32* %2, i64 %60
  %62 = add nsw i32 %.02, %.0
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to float
  %67 = add nsw i32 %.01, 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i32 %.0, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [9 x [9 x float]], [9 x [9 x float]]* %5, i64 0, i64 %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = call float @llvm.fmuladd.f32(float %66, float %72, float %.1)
  %74 = add nsw i32 %.0, 1
  br label %54, !llvm.loop !7

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75
  %77 = add nsw i32 %.01, 1
  br label %51, !llvm.loop !8

78:                                               ; preds = %51
  %79 = fdiv float %.04, %.07
  %80 = fptosi float %79 to i32
  %81 = zext i32 %.03 to i64
  %82 = mul nuw nsw i64 %81, %7
  %83 = getelementptr inbounds i32, i32* %3, i64 %82
  %84 = zext i32 %.02 to i64
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %78
  %87 = add nuw nsw i32 %.02, 1
  br label %47, !llvm.loop !9

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88
  %90 = add nuw nsw i32 %.03, 1
  br label %43, !llvm.loop !10

91:                                               ; preds = %43
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
