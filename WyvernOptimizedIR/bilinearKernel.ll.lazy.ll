; ModuleID = './bilinearKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Interpolation/bilinearKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @bilinearKernel(i32 noundef %0, i32 noundef %1, [256 x i32]* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3) #0 {
  %5 = shl nsw i32 %1, 2
  %6 = zext i32 %5 to i64
  %7 = shl nsw i32 %0, 2
  %8 = shl nsw i32 %1, 2
  br label %9

9:                                                ; preds = %122, %4
  %.01 = phi i32 [ 0, %4 ], [ %123, %122 ]
  %10 = icmp slt i32 %.01, %7
  br i1 %10, label %11, label %124

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %119, %11
  %.0 = phi i32 [ 0, %11 ], [ %120, %119 ]
  %13 = icmp slt i32 %.0, %8
  br i1 %13, label %14, label %121

14:                                               ; preds = %12
  %15 = lshr i32 %.0, 2
  %16 = lshr i32 %.01, 2
  %17 = sitofp i32 %.0 to float
  %18 = fmul float %17, 2.500000e-01
  %19 = sitofp i32 %15 to float
  %20 = fsub float %18, %19
  %21 = sitofp i32 %.01 to float
  %22 = fmul float %21, 2.500000e-01
  %23 = sitofp i32 %16 to float
  %24 = fsub float %22, %23
  %25 = add nuw nsw i32 %15, 1
  %26 = icmp slt i32 %25, %1
  br i1 %26, label %27, label %73

27:                                               ; preds = %14
  %28 = add nuw nsw i32 %16, 1
  %29 = icmp slt i32 %28, %0
  br i1 %29, label %30, label %73

30:                                               ; preds = %27
  %31 = zext i32 %16 to i64
  %32 = zext i32 %15 to i64
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to float
  %36 = fsub float 1.000000e+00, %20
  %37 = fmul float %36, %35
  %38 = fsub float 1.000000e+00, %24
  %39 = zext i32 %16 to i64
  %40 = add nuw nsw i32 %15, 1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sitofp i32 %43 to float
  %45 = fsub float 1.000000e+00, %24
  %46 = fmul float %45, %44
  %47 = fmul float %46, %20
  %48 = call float @llvm.fmuladd.f32(float %37, float %38, float %47)
  %49 = add nuw nsw i32 %16, 1
  %50 = zext i32 %49 to i64
  %51 = zext i32 %15 to i64
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to float
  %55 = fmul float %24, %54
  %56 = fsub float 1.000000e+00, %20
  %57 = call float @llvm.fmuladd.f32(float %55, float %56, float %48)
  %58 = add nuw nsw i32 %16, 1
  %59 = zext i32 %58 to i64
  %60 = add nuw nsw i32 %15, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sitofp i32 %63 to float
  %65 = fmul float %24, %64
  %66 = call float @llvm.fmuladd.f32(float %65, float %20, float %57)
  %67 = fptosi float %66 to i32
  %68 = zext i32 %.01 to i64
  %69 = mul nuw nsw i64 %68, %6
  %70 = getelementptr inbounds i32, i32* %3, i64 %69
  %71 = zext i32 %.0 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  br label %118

73:                                               ; preds = %27, %14
  %74 = add nuw nsw i32 %15, 1
  %75 = icmp slt i32 %74, %1
  br i1 %75, label %76, label %101

76:                                               ; preds = %73
  %77 = zext i32 %16 to i64
  %78 = zext i32 %15 to i64
  %79 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to float
  %82 = fsub float 1.000000e+00, %20
  %83 = fmul float %82, %81
  %84 = fsub float 1.000000e+00, %24
  %85 = zext i32 %16 to i64
  %86 = add nuw nsw i32 %15, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = sitofp i32 %89 to float
  %91 = fsub float 1.000000e+00, %24
  %92 = fmul float %91, %90
  %93 = fmul float %92, %20
  %94 = call float @llvm.fmuladd.f32(float %83, float %84, float %93)
  %95 = fptosi float %94 to i32
  %96 = zext i32 %.01 to i64
  %97 = mul nuw nsw i64 %96, %6
  %98 = getelementptr inbounds i32, i32* %3, i64 %97
  %99 = zext i32 %.0 to i64
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %95, i32* %100, align 4
  br label %117

101:                                              ; preds = %73
  %102 = zext i32 %16 to i64
  %103 = zext i32 %15 to i64
  %104 = getelementptr inbounds [256 x i32], [256 x i32]* %2, i64 %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sitofp i32 %105 to float
  %107 = fsub float 1.000000e+00, %20
  %108 = fmul float %107, %106
  %109 = fsub float 1.000000e+00, %24
  %110 = fmul float %108, %109
  %111 = fptosi float %110 to i32
  %112 = zext i32 %.01 to i64
  %113 = mul nuw nsw i64 %112, %6
  %114 = getelementptr inbounds i32, i32* %3, i64 %113
  %115 = zext i32 %.0 to i64
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %101, %76
  br label %118

118:                                              ; preds = %117, %30
  br label %119

119:                                              ; preds = %118
  %120 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !4

121:                                              ; preds = %12
  br label %122

122:                                              ; preds = %121
  %123 = add nuw nsw i32 %.01, 1
  br label %9, !llvm.loop !6

124:                                              ; preds = %9
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
