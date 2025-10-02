; ModuleID = './jfdctflt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jfdctflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @jpeg_fdct_float(float* noundef %0) #0 {
  br label %2

2:                                                ; preds = %59, %1
  %.01 = phi float* [ %0, %1 ], [ %60, %59 ]
  %.0 = phi i32 [ 7, %1 ], [ %61, %59 ]
  %3 = icmp sgt i32 %.0, -1
  br i1 %3, label %4, label %62

4:                                                ; preds = %2
  %5 = load float, float* %.01, align 4
  %6 = getelementptr inbounds float, float* %.01, i64 7
  %7 = load float, float* %6, align 4
  %8 = fadd float %5, %7
  %9 = fsub float %5, %7
  %10 = getelementptr inbounds float, float* %.01, i64 1
  %11 = load float, float* %10, align 4
  %12 = getelementptr inbounds float, float* %.01, i64 6
  %13 = load float, float* %12, align 4
  %14 = fadd float %11, %13
  %15 = fsub float %11, %13
  %16 = getelementptr inbounds float, float* %.01, i64 2
  %17 = load float, float* %16, align 4
  %18 = getelementptr inbounds float, float* %.01, i64 5
  %19 = load float, float* %18, align 4
  %20 = fadd float %17, %19
  %21 = fsub float %17, %19
  %22 = getelementptr inbounds float, float* %.01, i64 3
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds float, float* %.01, i64 4
  %25 = load float, float* %24, align 4
  %26 = fadd float %23, %25
  %27 = fsub float %23, %25
  %28 = fadd float %8, %26
  %29 = fsub float %8, %26
  %30 = fadd float %14, %20
  %31 = fsub float %14, %20
  %32 = fadd float %28, %30
  store float %32, float* %.01, align 4
  %33 = fsub float %28, %30
  %34 = getelementptr inbounds float, float* %.01, i64 4
  store float %33, float* %34, align 4
  %35 = fadd float %31, %29
  %36 = fmul float %35, 0x3FE6A09E60000000
  %37 = fadd float %29, %36
  %38 = getelementptr inbounds float, float* %.01, i64 2
  store float %37, float* %38, align 4
  %39 = fsub float %29, %36
  %40 = getelementptr inbounds float, float* %.01, i64 6
  store float %39, float* %40, align 4
  %41 = fadd float %27, %21
  %42 = fadd float %21, %15
  %43 = fadd float %15, %9
  %44 = fsub float %41, %43
  %45 = fmul float %44, 0x3FD87DE2A0000000
  %46 = call float @llvm.fmuladd.f32(float %41, float 0x3FE1517A80000000, float %45)
  %47 = call float @llvm.fmuladd.f32(float %43, float 0x3FF4E7AEA0000000, float %45)
  %48 = fmul float %42, 0x3FE6A09E60000000
  %49 = fadd float %9, %48
  %50 = fsub float %9, %48
  %51 = fadd float %50, %46
  %52 = getelementptr inbounds float, float* %.01, i64 5
  store float %51, float* %52, align 4
  %53 = fsub float %50, %46
  %54 = getelementptr inbounds float, float* %.01, i64 3
  store float %53, float* %54, align 4
  %55 = fadd float %49, %47
  %56 = getelementptr inbounds float, float* %.01, i64 1
  store float %55, float* %56, align 4
  %57 = fsub float %49, %47
  %58 = getelementptr inbounds float, float* %.01, i64 7
  store float %57, float* %58, align 4
  br label %59

59:                                               ; preds = %4
  %60 = getelementptr inbounds float, float* %.01, i64 8
  %61 = add nsw i32 %.0, -1
  br label %2, !llvm.loop !4

62:                                               ; preds = %2
  br label %63

63:                                               ; preds = %120, %62
  %.12 = phi float* [ %0, %62 ], [ %121, %120 ]
  %.1 = phi i32 [ 7, %62 ], [ %122, %120 ]
  %64 = icmp sgt i32 %.1, -1
  br i1 %64, label %65, label %123

65:                                               ; preds = %63
  %66 = load float, float* %.12, align 4
  %67 = getelementptr inbounds float, float* %.12, i64 56
  %68 = load float, float* %67, align 4
  %69 = fadd float %66, %68
  %70 = fsub float %66, %68
  %71 = getelementptr inbounds float, float* %.12, i64 8
  %72 = load float, float* %71, align 4
  %73 = getelementptr inbounds float, float* %.12, i64 48
  %74 = load float, float* %73, align 4
  %75 = fadd float %72, %74
  %76 = fsub float %72, %74
  %77 = getelementptr inbounds float, float* %.12, i64 16
  %78 = load float, float* %77, align 4
  %79 = getelementptr inbounds float, float* %.12, i64 40
  %80 = load float, float* %79, align 4
  %81 = fadd float %78, %80
  %82 = fsub float %78, %80
  %83 = getelementptr inbounds float, float* %.12, i64 24
  %84 = load float, float* %83, align 4
  %85 = getelementptr inbounds float, float* %.12, i64 32
  %86 = load float, float* %85, align 4
  %87 = fadd float %84, %86
  %88 = fsub float %84, %86
  %89 = fadd float %69, %87
  %90 = fsub float %69, %87
  %91 = fadd float %75, %81
  %92 = fsub float %75, %81
  %93 = fadd float %89, %91
  store float %93, float* %.12, align 4
  %94 = fsub float %89, %91
  %95 = getelementptr inbounds float, float* %.12, i64 32
  store float %94, float* %95, align 4
  %96 = fadd float %92, %90
  %97 = fmul float %96, 0x3FE6A09E60000000
  %98 = fadd float %90, %97
  %99 = getelementptr inbounds float, float* %.12, i64 16
  store float %98, float* %99, align 4
  %100 = fsub float %90, %97
  %101 = getelementptr inbounds float, float* %.12, i64 48
  store float %100, float* %101, align 4
  %102 = fadd float %88, %82
  %103 = fadd float %82, %76
  %104 = fadd float %76, %70
  %105 = fsub float %102, %104
  %106 = fmul float %105, 0x3FD87DE2A0000000
  %107 = call float @llvm.fmuladd.f32(float %102, float 0x3FE1517A80000000, float %106)
  %108 = call float @llvm.fmuladd.f32(float %104, float 0x3FF4E7AEA0000000, float %106)
  %109 = fmul float %103, 0x3FE6A09E60000000
  %110 = fadd float %70, %109
  %111 = fsub float %70, %109
  %112 = fadd float %111, %107
  %113 = getelementptr inbounds float, float* %.12, i64 40
  store float %112, float* %113, align 4
  %114 = fsub float %111, %107
  %115 = getelementptr inbounds float, float* %.12, i64 24
  store float %114, float* %115, align 4
  %116 = fadd float %110, %108
  %117 = getelementptr inbounds float, float* %.12, i64 8
  store float %116, float* %117, align 4
  %118 = fsub float %110, %108
  %119 = getelementptr inbounds float, float* %.12, i64 56
  store float %118, float* %119, align 4
  br label %120

120:                                              ; preds = %65
  %121 = getelementptr inbounds float, float* %.12, i64 1
  %122 = add nsw i32 %.1, -1
  br label %63, !llvm.loop !6

123:                                              ; preds = %63
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
