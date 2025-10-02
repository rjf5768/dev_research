; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmatrix.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.gs_point_s = type { float, float }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gs_fixed_point_s = type { i64, i64 }

@gs_identity_matrix = dso_local global %struct.gs_matrix_s { float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0, float 1.000000e+00, i64 0, float 0.000000e+00, i64 0, float 0.000000e+00, i64 0 }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef %0) #0 {
  %2 = alloca %struct.gs_matrix_s*, align 8
  store %struct.gs_matrix_s* %0, %struct.gs_matrix_s** %2, align 8
  %3 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %2, align 8
  %4 = bitcast %struct.gs_matrix_s* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_make_translation(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %6, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %8 = bitcast %struct.gs_matrix_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %9 = load double, double* %4, align 8
  %10 = fptrunc double %9 to float
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 8
  store float %10, float* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = fptrunc double %13 to float
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 10
  store float %14, float* %16, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_make_scaling(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %6, align 8
  %7 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %8 = bitcast %struct.gs_matrix_s* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %9 = load double, double* %4, align 8
  %10 = fptrunc double %9 to float
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 0
  store float %10, float* %12, align 8
  %13 = load double, double* %5, align 8
  %14 = fptrunc double %13 to float
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 6
  store float %14, float* %16, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_make_rotation(double noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca float, align 4
  store double %0, double* %3, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %4, align 8
  %6 = load double, double* %3, align 8
  %7 = fmul double %6, 0x3F91DF46A2529D39
  %8 = fptrunc double %7 to float
  store float %8, float* %5, align 4
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %10 = bitcast %struct.gs_matrix_s* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.gs_matrix_s* @gs_identity_matrix to i8*), i64 96, i1 false)
  %11 = load float, float* %5, align 4
  %12 = fpext float %11 to double
  %13 = call double @cos(double noundef %12) #4
  %14 = fptrunc double %13 to float
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 6
  store float %14, float* %16, align 8
  %17 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %18 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %17, i32 0, i32 0
  store float %14, float* %18, align 8
  %19 = load float, float* %5, align 4
  %20 = fpext float %19 to double
  %21 = call double @sin(double noundef %20) #4
  %22 = fptrunc double %21 to float
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 2
  store float %22, float* %24, align 8
  %25 = fneg float %22
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %27 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %26, i32 0, i32 4
  store float %25, float* %27, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_matrix_multiply(%struct.gs_matrix_s* noundef %0, %struct.gs_matrix_s* noundef %1, %struct.gs_matrix_s* noundef %2) #0 {
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca %struct.gs_matrix_s*, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.gs_matrix_s* %0, %struct.gs_matrix_s** %4, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %5, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %6, align 8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 0
  %17 = load float, float* %16, align 8
  store float %17, float* %7, align 4
  %18 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %19 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %18, i32 0, i32 6
  %20 = load float, float* %19, align 8
  store float %20, float* %8, align 4
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 8
  %23 = load float, float* %22, align 8
  store float %23, float* %9, align 4
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 10
  %26 = load float, float* %25, align 8
  store float %26, float* %10, align 4
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 0
  %29 = load float, float* %28, align 8
  store float %29, float* %11, align 4
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 6
  %32 = load float, float* %31, align 8
  store float %32, float* %12, align 4
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 2
  %35 = load float, float* %34, align 8
  store float %35, float* %13, align 4
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %37 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 4
  %38 = load float, float* %37, align 8
  store float %38, float* %14, align 4
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %40 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 2
  %41 = bitcast float* %40 to i64*
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 4
  %45 = bitcast float* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %42, %46
  %48 = shl i64 %47, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %117

50:                                               ; preds = %3
  %51 = load float, float* %9, align 4
  %52 = load float, float* %11, align 4
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %53, i32 0, i32 8
  %55 = load float, float* %54, align 8
  %56 = call float @llvm.fmuladd.f32(float %51, float %52, float %55)
  %57 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %58 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %57, i32 0, i32 8
  store float %56, float* %58, align 8
  %59 = load float, float* %10, align 4
  %60 = load float, float* %12, align 4
  %61 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %61, i32 0, i32 10
  %63 = load float, float* %62, align 8
  %64 = call float @llvm.fmuladd.f32(float %59, float %60, float %63)
  %65 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %66 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %65, i32 0, i32 10
  store float %64, float* %66, align 8
  %67 = bitcast float* %13 to i64*
  %68 = load i64, i64* %67, align 4
  %69 = shl i64 %68, 1
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %50
  %72 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %73 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %72, i32 0, i32 2
  store float 0.000000e+00, float* %73, align 8
  br label %86

74:                                               ; preds = %50
  %75 = load float, float* %7, align 4
  %76 = load float, float* %13, align 4
  %77 = fmul float %75, %76
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %79 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 2
  store float %77, float* %79, align 8
  %80 = load float, float* %9, align 4
  %81 = load float, float* %13, align 4
  %82 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %83 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %82, i32 0, i32 10
  %84 = load float, float* %83, align 8
  %85 = call float @llvm.fmuladd.f32(float %80, float %81, float %84)
  store float %85, float* %83, align 8
  br label %86

86:                                               ; preds = %74, %71
  %87 = load float, float* %7, align 4
  %88 = load float, float* %11, align 4
  %89 = fmul float %87, %88
  %90 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %90, i32 0, i32 0
  store float %89, float* %91, align 8
  %92 = bitcast float* %14 to i64*
  %93 = load i64, i64* %92, align 4
  %94 = shl i64 %93, 1
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %97, i32 0, i32 4
  store float 0.000000e+00, float* %98, align 8
  br label %111

99:                                               ; preds = %86
  %100 = load float, float* %8, align 4
  %101 = load float, float* %14, align 4
  %102 = fmul float %100, %101
  %103 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %104 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %103, i32 0, i32 4
  store float %102, float* %104, align 8
  %105 = load float, float* %10, align 4
  %106 = load float, float* %14, align 4
  %107 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %108 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %107, i32 0, i32 8
  %109 = load float, float* %108, align 8
  %110 = call float @llvm.fmuladd.f32(float %105, float %106, float %109)
  store float %110, float* %108, align 8
  br label %111

111:                                              ; preds = %99, %96
  %112 = load float, float* %8, align 4
  %113 = load float, float* %12, align 4
  %114 = fmul float %112, %113
  %115 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %116 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %115, i32 0, i32 6
  store float %114, float* %116, align 8
  br label %182

117:                                              ; preds = %3
  %118 = load float, float* %7, align 4
  %119 = load float, float* %11, align 4
  %120 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %121 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %120, i32 0, i32 2
  %122 = load float, float* %121, align 8
  %123 = load float, float* %14, align 4
  %124 = fmul float %122, %123
  %125 = call float @llvm.fmuladd.f32(float %118, float %119, float %124)
  %126 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %127 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %126, i32 0, i32 0
  store float %125, float* %127, align 8
  %128 = load float, float* %7, align 4
  %129 = load float, float* %13, align 4
  %130 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %131 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %130, i32 0, i32 2
  %132 = load float, float* %131, align 8
  %133 = load float, float* %12, align 4
  %134 = fmul float %132, %133
  %135 = call float @llvm.fmuladd.f32(float %128, float %129, float %134)
  %136 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %137 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %136, i32 0, i32 2
  store float %135, float* %137, align 8
  %138 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %139 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %138, i32 0, i32 4
  %140 = load float, float* %139, align 8
  %141 = load float, float* %13, align 4
  %142 = load float, float* %8, align 4
  %143 = load float, float* %12, align 4
  %144 = fmul float %142, %143
  %145 = call float @llvm.fmuladd.f32(float %140, float %141, float %144)
  %146 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %147 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %146, i32 0, i32 6
  store float %145, float* %147, align 8
  %148 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %149 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %148, i32 0, i32 4
  %150 = load float, float* %149, align 8
  %151 = load float, float* %11, align 4
  %152 = load float, float* %8, align 4
  %153 = load float, float* %14, align 4
  %154 = fmul float %152, %153
  %155 = call float @llvm.fmuladd.f32(float %150, float %151, float %154)
  %156 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %157 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %156, i32 0, i32 4
  store float %155, float* %157, align 8
  %158 = load float, float* %9, align 4
  %159 = load float, float* %11, align 4
  %160 = load float, float* %10, align 4
  %161 = load float, float* %14, align 4
  %162 = fmul float %160, %161
  %163 = call float @llvm.fmuladd.f32(float %158, float %159, float %162)
  %164 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %165 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %164, i32 0, i32 8
  %166 = load float, float* %165, align 8
  %167 = fadd float %163, %166
  %168 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %169 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %168, i32 0, i32 8
  store float %167, float* %169, align 8
  %170 = load float, float* %9, align 4
  %171 = load float, float* %13, align 4
  %172 = load float, float* %10, align 4
  %173 = load float, float* %12, align 4
  %174 = fmul float %172, %173
  %175 = call float @llvm.fmuladd.f32(float %170, float %171, float %174)
  %176 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %177 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %176, i32 0, i32 10
  %178 = load float, float* %177, align 8
  %179 = fadd float %175, %178
  %180 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %181 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %180, i32 0, i32 10
  store float %179, float* %181, align 8
  br label %182

182:                                              ; preds = %117, %111
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %0, %struct.gs_matrix_s* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca %struct.gs_matrix_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.gs_matrix_s* %0, %struct.gs_matrix_s** %4, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %5, align 8
  %9 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %10 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i32 0, i32 2
  %11 = bitcast float* %10 to i64*
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %14 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %13, i32 0, i32 4
  %15 = bitcast float* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %12, %16
  %18 = shl i64 %17, 1
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %2
  %21 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %22 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %21, i32 0, i32 0
  %23 = bitcast float* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %29 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %28, i32 0, i32 6
  %30 = bitcast float* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = shl i64 %31, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  store i32 -23, i32* %3, align 4
  br label %164

35:                                               ; preds = %27
  %36 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %37 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %36, i32 0, i32 0
  %38 = load float, float* %37, align 8
  %39 = fpext float %38 to double
  %40 = fdiv double 1.000000e+00, %39
  %41 = fptrunc double %40 to float
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 0
  store float %41, float* %43, align 8
  %44 = fneg float %41
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 8
  %47 = load float, float* %46, align 8
  %48 = fmul float %44, %47
  %49 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %50 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %49, i32 0, i32 8
  store float %48, float* %50, align 8
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 2
  store float 0.000000e+00, float* %52, align 8
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %54 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %53, i32 0, i32 4
  store float 0.000000e+00, float* %54, align 8
  %55 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %56 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %55, i32 0, i32 6
  %57 = load float, float* %56, align 8
  %58 = fpext float %57 to double
  %59 = fdiv double 1.000000e+00, %58
  %60 = fptrunc double %59 to float
  %61 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %62 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %61, i32 0, i32 6
  store float %60, float* %62, align 8
  %63 = fneg float %60
  %64 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %65 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %64, i32 0, i32 10
  %66 = load float, float* %65, align 8
  %67 = fmul float %63, %66
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 10
  store float %67, float* %69, align 8
  br label %163

70:                                               ; preds = %2
  %71 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %72 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %71, i32 0, i32 0
  %73 = load float, float* %72, align 8
  %74 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %75 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %74, i32 0, i32 6
  %76 = load float, float* %75, align 8
  %77 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %78 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %77, i32 0, i32 2
  %79 = load float, float* %78, align 8
  %80 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %81 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %80, i32 0, i32 4
  %82 = load float, float* %81, align 8
  %83 = fmul float %79, %82
  %84 = fneg float %83
  %85 = call float @llvm.fmuladd.f32(float %73, float %76, float %84)
  %86 = fpext float %85 to double
  store double %86, double* %6, align 8
  %87 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %87, i32 0, i32 0
  %89 = load float, float* %88, align 8
  store float %89, float* %7, align 4
  %90 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %91 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %90, i32 0, i32 8
  %92 = load float, float* %91, align 8
  store float %92, float* %8, align 4
  %93 = load double, double* %6, align 8
  %94 = fcmp oeq double %93, 0.000000e+00
  br i1 %94, label %95, label %96

95:                                               ; preds = %70
  store i32 -23, i32* %3, align 4
  br label %164

96:                                               ; preds = %70
  %97 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %97, i32 0, i32 6
  %99 = load float, float* %98, align 8
  %100 = fpext float %99 to double
  %101 = load double, double* %6, align 8
  %102 = fdiv double %100, %101
  %103 = fptrunc double %102 to float
  %104 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %105 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %104, i32 0, i32 0
  store float %103, float* %105, align 8
  %106 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %107 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %106, i32 0, i32 2
  %108 = load float, float* %107, align 8
  %109 = fneg float %108
  %110 = fpext float %109 to double
  %111 = load double, double* %6, align 8
  %112 = fdiv double %110, %111
  %113 = fptrunc double %112 to float
  %114 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %115 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %114, i32 0, i32 2
  store float %113, float* %115, align 8
  %116 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %117 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %116, i32 0, i32 4
  %118 = load float, float* %117, align 8
  %119 = fneg float %118
  %120 = fpext float %119 to double
  %121 = load double, double* %6, align 8
  %122 = fdiv double %120, %121
  %123 = fptrunc double %122 to float
  %124 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %125 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %124, i32 0, i32 4
  store float %123, float* %125, align 8
  %126 = load float, float* %7, align 4
  %127 = fpext float %126 to double
  %128 = load double, double* %6, align 8
  %129 = fdiv double %127, %128
  %130 = fptrunc double %129 to float
  %131 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %132 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %131, i32 0, i32 6
  store float %130, float* %132, align 8
  %133 = load float, float* %8, align 4
  %134 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %135 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %134, i32 0, i32 0
  %136 = load float, float* %135, align 8
  %137 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %138 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %137, i32 0, i32 10
  %139 = load float, float* %138, align 8
  %140 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %141 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %140, i32 0, i32 4
  %142 = load float, float* %141, align 8
  %143 = fmul float %139, %142
  %144 = call float @llvm.fmuladd.f32(float %133, float %136, float %143)
  %145 = fneg float %144
  %146 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %147 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %146, i32 0, i32 8
  store float %145, float* %147, align 8
  %148 = load float, float* %8, align 4
  %149 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %150 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %149, i32 0, i32 2
  %151 = load float, float* %150, align 8
  %152 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %153 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %152, i32 0, i32 10
  %154 = load float, float* %153, align 8
  %155 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %156 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %155, i32 0, i32 6
  %157 = load float, float* %156, align 8
  %158 = fmul float %154, %157
  %159 = call float @llvm.fmuladd.f32(float %148, float %151, float %158)
  %160 = fneg float %159
  %161 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %5, align 8
  %162 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %161, i32 0, i32 10
  store float %160, float* %162, align 8
  br label %163

163:                                              ; preds = %96, %35
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %95, %34
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2) #0 {
  %4 = alloca %struct.gs_matrix_s*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  store %struct.gs_matrix_s* %0, %struct.gs_matrix_s** %4, align 8
  store double %1, double* %5, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %6, align 8
  %16 = load double, double* %5, align 8
  %17 = fcmp oge double %16, -3.600000e+02
  br i1 %17, label %18, label %46

18:                                               ; preds = %3
  %19 = load double, double* %5, align 8
  %20 = fcmp ole double %19, 3.600000e+02
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = load double, double* %5, align 8
  %23 = load double, double* %5, align 8
  %24 = fptosi double %23 to i32
  %25 = sdiv i32 %24, 90
  store i32 %25, i32* %9, align 4
  %26 = mul nsw i32 %25, 90
  %27 = sitofp i32 %26 to double
  %28 = fcmp oeq double %22, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 3
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %36, %29
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %32, !llvm.loop !4

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = sitofp i32 %42 to float
  store float %43, float* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sitofp i32 %44 to float
  store float %45, float* %11, align 4
  br label %58

46:                                               ; preds = %21, %18, %3
  %47 = load double, double* %5, align 8
  %48 = fmul double %47, 0x3F91DF46A2529D39
  %49 = fptrunc double %48 to float
  store float %49, float* %15, align 4
  %50 = load float, float* %15, align 4
  %51 = fpext float %50 to double
  %52 = call double @sin(double noundef %51) #4
  %53 = fptrunc double %52 to float
  store float %53, float* %10, align 4
  %54 = load float, float* %15, align 4
  %55 = fpext float %54 to double
  %56 = call double @cos(double noundef %55) #4
  %57 = fptrunc double %56 to float
  store float %57, float* %11, align 4
  br label %58

58:                                               ; preds = %46, %41
  %59 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %60 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %59, i32 0, i32 0
  %61 = load float, float* %60, align 8
  store float %61, float* %7, align 4
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 2
  %64 = load float, float* %63, align 8
  store float %64, float* %8, align 4
  %65 = load float, float* %11, align 4
  %66 = load float, float* %7, align 4
  %67 = load float, float* %10, align 4
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 4
  %70 = load float, float* %69, align 8
  %71 = fmul float %67, %70
  %72 = call float @llvm.fmuladd.f32(float %65, float %66, float %71)
  %73 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %74 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %73, i32 0, i32 0
  store float %72, float* %74, align 8
  %75 = load float, float* %11, align 4
  %76 = load float, float* %8, align 4
  %77 = load float, float* %10, align 4
  %78 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %79 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %78, i32 0, i32 6
  %80 = load float, float* %79, align 8
  %81 = fmul float %77, %80
  %82 = call float @llvm.fmuladd.f32(float %75, float %76, float %81)
  %83 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %84 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %83, i32 0, i32 2
  store float %82, float* %84, align 8
  %85 = load float, float* %11, align 4
  %86 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %86, i32 0, i32 4
  %88 = load float, float* %87, align 8
  %89 = load float, float* %10, align 4
  %90 = load float, float* %7, align 4
  %91 = fmul float %89, %90
  %92 = fneg float %91
  %93 = call float @llvm.fmuladd.f32(float %85, float %88, float %92)
  %94 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %95 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %94, i32 0, i32 4
  store float %93, float* %95, align 8
  %96 = load float, float* %11, align 4
  %97 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %98 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %97, i32 0, i32 6
  %99 = load float, float* %98, align 8
  %100 = load float, float* %10, align 4
  %101 = load float, float* %8, align 4
  %102 = fmul float %100, %101
  %103 = fneg float %102
  %104 = call float @llvm.fmuladd.f32(float %96, float %99, float %103)
  %105 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %106 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %105, i32 0, i32 6
  store float %104, float* %106, align 8
  %107 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %108 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %107, i32 0, i32 8
  %109 = load float, float* %108, align 8
  %110 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %111 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %110, i32 0, i32 8
  store float %109, float* %111, align 8
  %112 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %4, align 8
  %113 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %112, i32 0, i32 10
  %114 = load float, float* %113, align 8
  %115 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %116 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %115, i32 0, i32 10
  store float %114, float* %116, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_point_transform(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gs_matrix_s*, align 8
  %8 = alloca %struct.gs_point_s*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %7, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %15 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %14, i32 0, i32 8
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = call double @llvm.fmuladd.f64(double %9, double %13, double %17)
  %19 = fptrunc double %18 to float
  %20 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %21 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %20, i32 0, i32 0
  store float %19, float* %21, align 4
  %22 = load double, double* %6, align 8
  %23 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %24 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %23, i32 0, i32 6
  %25 = load float, float* %24, align 8
  %26 = fpext float %25 to double
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 10
  %29 = load float, float* %28, align 8
  %30 = fpext float %29 to double
  %31 = call double @llvm.fmuladd.f64(double %22, double %26, double %30)
  %32 = fptrunc double %31 to float
  %33 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %34 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %33, i32 0, i32 1
  store float %32, float* %34, align 4
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  %37 = bitcast float* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = shl i64 %38, 1
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %4
  %42 = load double, double* %6, align 8
  %43 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %44 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %43, i32 0, i32 4
  %45 = load float, float* %44, align 8
  %46 = fpext float %45 to double
  %47 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %48 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %47, i32 0, i32 0
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = call double @llvm.fmuladd.f64(double %42, double %46, double %50)
  %52 = fptrunc double %51 to float
  store float %52, float* %48, align 4
  br label %53

53:                                               ; preds = %41, %4
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 2
  %56 = bitcast float* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = shl i64 %57, 1
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %53
  %61 = load double, double* %5, align 8
  %62 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %63 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %62, i32 0, i32 2
  %64 = load float, float* %63, align 8
  %65 = fpext float %64 to double
  %66 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %67 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %66, i32 0, i32 1
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = call double @llvm.fmuladd.f64(double %61, double %65, double %69)
  %71 = fptrunc double %70 to float
  store float %71, float* %67, align 4
  br label %72

72:                                               ; preds = %60, %53
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_point_transform_inverse(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_matrix_s*, align 8
  %9 = alloca %struct.gs_point_s*, align 8
  %10 = alloca %struct.gs_matrix_s, align 8
  %11 = alloca i32, align 4
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %8, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %9, align 8
  %12 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %13 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %12, i32 0, i32 2
  %14 = bitcast float* %13 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %17 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %16, i32 0, i32 4
  %18 = bitcast float* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = or i64 %15, %19
  %21 = shl i64 %20, 1
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %4
  %24 = load double, double* %6, align 8
  %25 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %26 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %25, i32 0, i32 8
  %27 = load float, float* %26, align 8
  %28 = fpext float %27 to double
  %29 = fsub double %24, %28
  %30 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %31 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = fpext float %32 to double
  %34 = fdiv double %29, %33
  %35 = fptrunc double %34 to float
  %36 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %36, i32 0, i32 0
  store float %35, float* %37, align 4
  %38 = load double, double* %7, align 8
  %39 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %40 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %39, i32 0, i32 10
  %41 = load float, float* %40, align 8
  %42 = fpext float %41 to double
  %43 = fsub double %38, %42
  %44 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %45 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %44, i32 0, i32 6
  %46 = load float, float* %45, align 8
  %47 = fpext float %46 to double
  %48 = fdiv double %43, %47
  %49 = fptrunc double %48 to float
  %50 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %50, i32 0, i32 1
  store float %49, float* %51, align 4
  store i32 0, i32* %5, align 4
  br label %64

52:                                               ; preds = %4
  %53 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %54 = call i32 @gs_matrix_invert(%struct.gs_matrix_s* noundef %53, %struct.gs_matrix_s* noundef %10)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %52
  %60 = load double, double* %6, align 8
  %61 = load double, double* %7, align 8
  %62 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %63 = call i32 @gs_point_transform(double noundef %60, double noundef %61, %struct.gs_matrix_s* noundef %10, %struct.gs_point_s* noundef %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %57, %23
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_distance_transform(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.gs_matrix_s*, align 8
  %8 = alloca %struct.gs_point_s*, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %7, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %8, align 8
  %9 = load double, double* %5, align 8
  %10 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %11 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = fmul double %9, %13
  %15 = fptrunc double %14 to float
  %16 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %16, i32 0, i32 0
  store float %15, float* %17, align 4
  %18 = load double, double* %6, align 8
  %19 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %20 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %19, i32 0, i32 6
  %21 = load float, float* %20, align 8
  %22 = fpext float %21 to double
  %23 = fmul double %18, %22
  %24 = fptrunc double %23 to float
  %25 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %26 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %25, i32 0, i32 1
  store float %24, float* %26, align 4
  %27 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %28 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %27, i32 0, i32 4
  %29 = bitcast float* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = shl i64 %30, 1
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %4
  %34 = load double, double* %6, align 8
  %35 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %36 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %35, i32 0, i32 4
  %37 = load float, float* %36, align 8
  %38 = fpext float %37 to double
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i32 0, i32 0
  %41 = load float, float* %40, align 4
  %42 = fpext float %41 to double
  %43 = call double @llvm.fmuladd.f64(double %34, double %38, double %42)
  %44 = fptrunc double %43 to float
  store float %44, float* %40, align 4
  br label %45

45:                                               ; preds = %33, %4
  %46 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %47 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %46, i32 0, i32 2
  %48 = bitcast float* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = shl i64 %49, 1
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %45
  %53 = load double, double* %5, align 8
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %7, align 8
  %55 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %54, i32 0, i32 2
  %56 = load float, float* %55, align 8
  %57 = fpext float %56 to double
  %58 = load %struct.gs_point_s*, %struct.gs_point_s** %8, align 8
  %59 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = call double @llvm.fmuladd.f64(double %53, double %57, double %61)
  %63 = fptrunc double %62 to float
  store float %63, float* %59, align 4
  br label %64

64:                                               ; preds = %52, %45
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_distance_transform_inverse(double noundef %0, double noundef %1, %struct.gs_matrix_s* noundef %2, %struct.gs_point_s* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_matrix_s*, align 8
  %9 = alloca %struct.gs_point_s*, align 8
  %10 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store %struct.gs_matrix_s* %2, %struct.gs_matrix_s** %8, align 8
  store %struct.gs_point_s* %3, %struct.gs_point_s** %9, align 8
  %11 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %12 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %11, i32 0, i32 2
  %13 = bitcast float* %12 to i64*
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %16 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %15, i32 0, i32 4
  %17 = bitcast float* %16 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %14, %18
  %20 = shl i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %4
  %23 = load double, double* %6, align 8
  %24 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %25 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %24, i32 0, i32 0
  %26 = load float, float* %25, align 8
  %27 = fpext float %26 to double
  %28 = fdiv double %23, %27
  %29 = fptrunc double %28 to float
  %30 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %31 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %30, i32 0, i32 0
  store float %29, float* %31, align 4
  %32 = load double, double* %7, align 8
  %33 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %34 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %33, i32 0, i32 6
  %35 = load float, float* %34, align 8
  %36 = fpext float %35 to double
  %37 = fdiv double %32, %36
  %38 = fptrunc double %37 to float
  %39 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %40 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %39, i32 0, i32 1
  store float %38, float* %40, align 4
  br label %98

41:                                               ; preds = %4
  %42 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %43 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %42, i32 0, i32 0
  %44 = load float, float* %43, align 8
  %45 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %46 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %45, i32 0, i32 6
  %47 = load float, float* %46, align 8
  %48 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %49 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %48, i32 0, i32 2
  %50 = load float, float* %49, align 8
  %51 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %52 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %51, i32 0, i32 4
  %53 = load float, float* %52, align 8
  %54 = fmul float %50, %53
  %55 = fneg float %54
  %56 = call float @llvm.fmuladd.f32(float %44, float %47, float %55)
  %57 = fpext float %56 to double
  store double %57, double* %10, align 8
  %58 = load double, double* %10, align 8
  %59 = fcmp oeq double %58, 0.000000e+00
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  store i32 -23, i32* %5, align 4
  br label %99

61:                                               ; preds = %41
  %62 = load double, double* %6, align 8
  %63 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %64 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %63, i32 0, i32 6
  %65 = load float, float* %64, align 8
  %66 = fpext float %65 to double
  %67 = load double, double* %7, align 8
  %68 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %69 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %68, i32 0, i32 4
  %70 = load float, float* %69, align 8
  %71 = fpext float %70 to double
  %72 = fmul double %67, %71
  %73 = fneg double %72
  %74 = call double @llvm.fmuladd.f64(double %62, double %66, double %73)
  %75 = load double, double* %10, align 8
  %76 = fdiv double %74, %75
  %77 = fptrunc double %76 to float
  %78 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %79 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %78, i32 0, i32 0
  store float %77, float* %79, align 4
  %80 = load double, double* %7, align 8
  %81 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %82 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %81, i32 0, i32 0
  %83 = load float, float* %82, align 8
  %84 = fpext float %83 to double
  %85 = load double, double* %6, align 8
  %86 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %8, align 8
  %87 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %86, i32 0, i32 2
  %88 = load float, float* %87, align 8
  %89 = fpext float %88 to double
  %90 = fmul double %85, %89
  %91 = fneg double %90
  %92 = call double @llvm.fmuladd.f64(double %80, double %84, double %91)
  %93 = load double, double* %10, align 8
  %94 = fdiv double %92, %93
  %95 = fptrunc double %94 to float
  %96 = load %struct.gs_point_s*, %struct.gs_point_s** %9, align 8
  %97 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %96, i32 0, i32 1
  store float %95, float* %97, align 4
  br label %98

98:                                               ; preds = %61, %22
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* noundef %0, %struct.gs_matrix_s* noundef %1, %struct.gs_rect_s* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_rect_s*, align 8
  %6 = alloca %struct.gs_matrix_s*, align 8
  %7 = alloca %struct.gs_rect_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_point_s, align 4
  %10 = alloca %struct.gs_point_s, align 4
  %11 = alloca %struct.gs_point_s, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.gs_rect_s* %0, %struct.gs_rect_s** %5, align 8
  store %struct.gs_matrix_s* %1, %struct.gs_matrix_s** %6, align 8
  store %struct.gs_rect_s* %2, %struct.gs_rect_s** %7, align 8
  %16 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %17 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %17, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %22, i32 0, i32 1
  %24 = load float, float* %23, align 4
  %25 = fpext float %24 to double
  %26 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %27 = call i32 @gs_point_transform_inverse(double noundef %20, double noundef %25, %struct.gs_matrix_s* noundef %26, %struct.gs_point_s* noundef %9)
  store i32 %27, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %3
  %30 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %31 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %31, i32 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %35 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %35, i32 0, i32 0
  %37 = load float, float* %36, align 4
  %38 = fsub float %33, %37
  %39 = fpext float %38 to double
  %40 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %41 = call i32 @gs_distance_transform_inverse(double noundef %39, double noundef 0.000000e+00, %struct.gs_matrix_s* noundef %40, %struct.gs_point_s* noundef %10)
  store i32 %41, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %29
  %44 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %45 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %45, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = load %struct.gs_rect_s*, %struct.gs_rect_s** %5, align 8
  %49 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = fsub float %47, %51
  %53 = fpext float %52 to double
  %54 = load %struct.gs_matrix_s*, %struct.gs_matrix_s** %6, align 8
  %55 = call i32 @gs_distance_transform_inverse(double noundef 0.000000e+00, double noundef %53, %struct.gs_matrix_s* noundef %54, %struct.gs_point_s* noundef %11)
  store i32 %55, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %43, %29, %3
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %136

59:                                               ; preds = %43
  %60 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 0
  %61 = load float, float* %60, align 4
  store float %61, float* %14, align 4
  store float %61, float* %12, align 4
  %62 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 0
  %63 = load float, float* %62, align 4
  %64 = fcmp olt float %63, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 0
  %67 = load float, float* %66, align 4
  %68 = load float, float* %12, align 4
  %69 = fadd float %68, %67
  store float %69, float* %12, align 4
  br label %75

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 0
  %72 = load float, float* %71, align 4
  %73 = load float, float* %14, align 4
  %74 = fadd float %73, %72
  store float %74, float* %14, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  %77 = load float, float* %76, align 4
  %78 = fcmp olt float %77, 0.000000e+00
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  %81 = load float, float* %80, align 4
  %82 = load float, float* %12, align 4
  %83 = fadd float %82, %81
  store float %83, float* %12, align 4
  br label %89

84:                                               ; preds = %75
  %85 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 0
  %86 = load float, float* %85, align 4
  %87 = load float, float* %14, align 4
  %88 = fadd float %87, %86
  store float %88, float* %14, align 4
  br label %89

89:                                               ; preds = %84, %79
  %90 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %9, i32 0, i32 1
  %91 = load float, float* %90, align 4
  store float %91, float* %15, align 4
  store float %91, float* %13, align 4
  %92 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 1
  %93 = load float, float* %92, align 4
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = load float, float* %13, align 4
  %99 = fadd float %98, %97
  store float %99, float* %13, align 4
  br label %105

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %10, i32 0, i32 1
  %102 = load float, float* %101, align 4
  %103 = load float, float* %15, align 4
  %104 = fadd float %103, %102
  store float %104, float* %15, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  %107 = load float, float* %106, align 4
  %108 = fcmp olt float %107, 0.000000e+00
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = load float, float* %13, align 4
  %113 = fadd float %112, %111
  store float %113, float* %13, align 4
  br label %119

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %11, i32 0, i32 1
  %116 = load float, float* %115, align 4
  %117 = load float, float* %15, align 4
  %118 = fadd float %117, %116
  store float %118, float* %15, align 4
  br label %119

119:                                              ; preds = %114, %109
  %120 = load float, float* %12, align 4
  %121 = load %struct.gs_rect_s*, %struct.gs_rect_s** %7, align 8
  %122 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %122, i32 0, i32 0
  store float %120, float* %123, align 4
  %124 = load float, float* %13, align 4
  %125 = load %struct.gs_rect_s*, %struct.gs_rect_s** %7, align 8
  %126 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %126, i32 0, i32 1
  store float %124, float* %127, align 4
  %128 = load float, float* %14, align 4
  %129 = load %struct.gs_rect_s*, %struct.gs_rect_s** %7, align 8
  %130 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %130, i32 0, i32 0
  store float %128, float* %131, align 4
  %132 = load float, float* %15, align 4
  %133 = load %struct.gs_rect_s*, %struct.gs_rect_s** %7, align 8
  %134 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %134, i32 0, i32 1
  store float %132, float* %135, align 4
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %119, %57
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef %3) #0 {
  %5 = alloca %struct.gs_matrix_fixed_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gs_matrix_fixed_s* %0, %struct.gs_matrix_fixed_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store %struct.gs_fixed_point_s* %3, %struct.gs_fixed_point_s** %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %11 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = fmul double %9, %13
  %15 = fmul double %14, 4.096000e+03
  %16 = fptosi double %15 to i64
  %17 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %18 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %22 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load double, double* %7, align 8
  %24 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %25 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %24, i32 0, i32 6
  %26 = load float, float* %25, align 8
  %27 = fpext float %26 to double
  %28 = fmul double %23, %27
  %29 = fmul double %28, 4.096000e+03
  %30 = fptosi double %29 to i64
  %31 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %32 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %31, i32 0, i32 13
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %30, %33
  %35 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %38 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %37, i32 0, i32 4
  %39 = bitcast float* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 %40, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %4
  %44 = load double, double* %7, align 8
  %45 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %46 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %45, i32 0, i32 4
  %47 = load float, float* %46, align 8
  %48 = fpext float %47 to double
  %49 = fmul double %44, %48
  %50 = fmul double %49, 4.096000e+03
  %51 = fptosi double %50 to i64
  %52 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %43, %4
  %57 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %58 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %57, i32 0, i32 2
  %59 = bitcast float* %58 to i64*
  %60 = load i64, i64* %59, align 8
  %61 = shl i64 %60, 1
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %76, label %63

63:                                               ; preds = %56
  %64 = load double, double* %6, align 8
  %65 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %66 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %65, i32 0, i32 2
  %67 = load float, float* %66, align 8
  %68 = fpext float %67 to double
  %69 = fmul double %64, %68
  %70 = fmul double %69, 4.096000e+03
  %71 = fptosi double %70 to i64
  %72 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %73 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %74, %71
  store i64 %75, i64* %73, align 8
  br label %76

76:                                               ; preds = %63, %56
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef %0, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef %3) #0 {
  %5 = alloca %struct.gs_matrix_fixed_s*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %struct.gs_fixed_point_s*, align 8
  store %struct.gs_matrix_fixed_s* %0, %struct.gs_matrix_fixed_s** %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  store %struct.gs_fixed_point_s* %3, %struct.gs_fixed_point_s** %8, align 8
  %9 = load double, double* %6, align 8
  %10 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %11 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = fmul double %9, %13
  %15 = fmul double %14, 4.096000e+03
  %16 = fptosi double %15 to i64
  %17 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load double, double* %7, align 8
  %20 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %21 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %20, i32 0, i32 6
  %22 = load float, float* %21, align 8
  %23 = fpext float %22 to double
  %24 = fmul double %19, %23
  %25 = fmul double %24, 4.096000e+03
  %26 = fptosi double %25 to i64
  %27 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %30 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %29, i32 0, i32 4
  %31 = bitcast float* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = shl i64 %32, 1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %4
  %36 = load double, double* %7, align 8
  %37 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %38 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %37, i32 0, i32 4
  %39 = load float, float* %38, align 8
  %40 = fpext float %39 to double
  %41 = fmul double %36, %40
  %42 = fmul double %41, 4.096000e+03
  %43 = fptosi double %42 to i64
  %44 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %35, %4
  %49 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %50 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %49, i32 0, i32 2
  %51 = bitcast float* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = shl i64 %52, 1
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = load double, double* %6, align 8
  %57 = load %struct.gs_matrix_fixed_s*, %struct.gs_matrix_fixed_s** %5, align 8
  %58 = getelementptr inbounds %struct.gs_matrix_fixed_s, %struct.gs_matrix_fixed_s* %57, i32 0, i32 2
  %59 = load float, float* %58, align 8
  %60 = fpext float %59 to double
  %61 = fmul double %56, %60
  %62 = fmul double %61, 4.096000e+03
  %63 = fptosi double %62 to i64
  %64 = load %struct.gs_fixed_point_s*, %struct.gs_fixed_point_s** %8, align 8
  %65 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %63
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %55, %48
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
