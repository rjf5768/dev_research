; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctflt.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x {}*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_idct_float(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i16* noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca i16*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca [64 x float], align 16
  %35 = alloca float, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %7, align 8
  store i16* %2, i16** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 61
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 128
  store i8* %39, i8** %32, align 8
  %40 = load i16*, i16** %8, align 8
  store i16* %40, i16** %28, align 8
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 20
  %43 = load i8*, i8** %42, align 8
  %44 = bitcast i8* %43 to float*
  store float* %44, float** %29, align 8
  %45 = getelementptr inbounds [64 x float], [64 x float]* %34, i64 0, i64 0
  store float* %45, float** %30, align 8
  store i32 8, i32* %33, align 4
  br label %46

46:                                               ; preds = %301, %5
  %47 = load i32, i32* %33, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %304

49:                                               ; preds = %46
  %50 = load i16*, i16** %28, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 8
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16*, i16** %28, align 8
  %55 = getelementptr inbounds i16, i16* %54, i64 16
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = or i32 %53, %57
  %59 = load i16*, i16** %28, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 24
  %61 = load i16, i16* %60, align 2
  %62 = sext i16 %61 to i32
  %63 = or i32 %58, %62
  %64 = load i16*, i16** %28, align 8
  %65 = getelementptr inbounds i16, i16* %64, i64 32
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = or i32 %63, %67
  %69 = load i16*, i16** %28, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 40
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i32
  %73 = or i32 %68, %72
  %74 = load i16*, i16** %28, align 8
  %75 = getelementptr inbounds i16, i16* %74, i64 48
  %76 = load i16, i16* %75, align 2
  %77 = sext i16 %76 to i32
  %78 = or i32 %73, %77
  %79 = load i16*, i16** %28, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 56
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = or i32 %78, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %49
  %86 = load i16*, i16** %28, align 8
  %87 = getelementptr inbounds i16, i16* %86, i64 0
  %88 = load i16, i16* %87, align 2
  %89 = sitofp i16 %88 to float
  %90 = load float*, float** %29, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  %92 = load float, float* %91, align 4
  %93 = fmul float %89, %92
  store float %93, float* %35, align 4
  %94 = load float, float* %35, align 4
  %95 = load float*, float** %30, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  store float %94, float* %96, align 4
  %97 = load float, float* %35, align 4
  %98 = load float*, float** %30, align 8
  %99 = getelementptr inbounds float, float* %98, i64 8
  store float %97, float* %99, align 4
  %100 = load float, float* %35, align 4
  %101 = load float*, float** %30, align 8
  %102 = getelementptr inbounds float, float* %101, i64 16
  store float %100, float* %102, align 4
  %103 = load float, float* %35, align 4
  %104 = load float*, float** %30, align 8
  %105 = getelementptr inbounds float, float* %104, i64 24
  store float %103, float* %105, align 4
  %106 = load float, float* %35, align 4
  %107 = load float*, float** %30, align 8
  %108 = getelementptr inbounds float, float* %107, i64 32
  store float %106, float* %108, align 4
  %109 = load float, float* %35, align 4
  %110 = load float*, float** %30, align 8
  %111 = getelementptr inbounds float, float* %110, i64 40
  store float %109, float* %111, align 4
  %112 = load float, float* %35, align 4
  %113 = load float*, float** %30, align 8
  %114 = getelementptr inbounds float, float* %113, i64 48
  store float %112, float* %114, align 4
  %115 = load float, float* %35, align 4
  %116 = load float*, float** %30, align 8
  %117 = getelementptr inbounds float, float* %116, i64 56
  store float %115, float* %117, align 4
  %118 = load i16*, i16** %28, align 8
  %119 = getelementptr inbounds i16, i16* %118, i32 1
  store i16* %119, i16** %28, align 8
  %120 = load float*, float** %29, align 8
  %121 = getelementptr inbounds float, float* %120, i32 1
  store float* %121, float** %29, align 8
  %122 = load float*, float** %30, align 8
  %123 = getelementptr inbounds float, float* %122, i32 1
  store float* %123, float** %30, align 8
  br label %301

124:                                              ; preds = %49
  %125 = load i16*, i16** %28, align 8
  %126 = getelementptr inbounds i16, i16* %125, i64 0
  %127 = load i16, i16* %126, align 2
  %128 = sitofp i16 %127 to float
  %129 = load float*, float** %29, align 8
  %130 = getelementptr inbounds float, float* %129, i64 0
  %131 = load float, float* %130, align 4
  %132 = fmul float %128, %131
  store float %132, float* %11, align 4
  %133 = load i16*, i16** %28, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 16
  %135 = load i16, i16* %134, align 2
  %136 = sitofp i16 %135 to float
  %137 = load float*, float** %29, align 8
  %138 = getelementptr inbounds float, float* %137, i64 16
  %139 = load float, float* %138, align 4
  %140 = fmul float %136, %139
  store float %140, float* %12, align 4
  %141 = load i16*, i16** %28, align 8
  %142 = getelementptr inbounds i16, i16* %141, i64 32
  %143 = load i16, i16* %142, align 2
  %144 = sitofp i16 %143 to float
  %145 = load float*, float** %29, align 8
  %146 = getelementptr inbounds float, float* %145, i64 32
  %147 = load float, float* %146, align 4
  %148 = fmul float %144, %147
  store float %148, float* %13, align 4
  %149 = load i16*, i16** %28, align 8
  %150 = getelementptr inbounds i16, i16* %149, i64 48
  %151 = load i16, i16* %150, align 2
  %152 = sitofp i16 %151 to float
  %153 = load float*, float** %29, align 8
  %154 = getelementptr inbounds float, float* %153, i64 48
  %155 = load float, float* %154, align 4
  %156 = fmul float %152, %155
  store float %156, float* %14, align 4
  %157 = load float, float* %11, align 4
  %158 = load float, float* %13, align 4
  %159 = fadd float %157, %158
  store float %159, float* %19, align 4
  %160 = load float, float* %11, align 4
  %161 = load float, float* %13, align 4
  %162 = fsub float %160, %161
  store float %162, float* %20, align 4
  %163 = load float, float* %12, align 4
  %164 = load float, float* %14, align 4
  %165 = fadd float %163, %164
  store float %165, float* %22, align 4
  %166 = load float, float* %12, align 4
  %167 = load float, float* %14, align 4
  %168 = fsub float %166, %167
  %169 = load float, float* %22, align 4
  %170 = fneg float %169
  %171 = call float @llvm.fmuladd.f32(float %168, float 0x3FF6A09E60000000, float %170)
  store float %171, float* %21, align 4
  %172 = load float, float* %19, align 4
  %173 = load float, float* %22, align 4
  %174 = fadd float %172, %173
  store float %174, float* %11, align 4
  %175 = load float, float* %19, align 4
  %176 = load float, float* %22, align 4
  %177 = fsub float %175, %176
  store float %177, float* %14, align 4
  %178 = load float, float* %20, align 4
  %179 = load float, float* %21, align 4
  %180 = fadd float %178, %179
  store float %180, float* %12, align 4
  %181 = load float, float* %20, align 4
  %182 = load float, float* %21, align 4
  %183 = fsub float %181, %182
  store float %183, float* %13, align 4
  %184 = load i16*, i16** %28, align 8
  %185 = getelementptr inbounds i16, i16* %184, i64 8
  %186 = load i16, i16* %185, align 2
  %187 = sitofp i16 %186 to float
  %188 = load float*, float** %29, align 8
  %189 = getelementptr inbounds float, float* %188, i64 8
  %190 = load float, float* %189, align 4
  %191 = fmul float %187, %190
  store float %191, float* %15, align 4
  %192 = load i16*, i16** %28, align 8
  %193 = getelementptr inbounds i16, i16* %192, i64 24
  %194 = load i16, i16* %193, align 2
  %195 = sitofp i16 %194 to float
  %196 = load float*, float** %29, align 8
  %197 = getelementptr inbounds float, float* %196, i64 24
  %198 = load float, float* %197, align 4
  %199 = fmul float %195, %198
  store float %199, float* %16, align 4
  %200 = load i16*, i16** %28, align 8
  %201 = getelementptr inbounds i16, i16* %200, i64 40
  %202 = load i16, i16* %201, align 2
  %203 = sitofp i16 %202 to float
  %204 = load float*, float** %29, align 8
  %205 = getelementptr inbounds float, float* %204, i64 40
  %206 = load float, float* %205, align 4
  %207 = fmul float %203, %206
  store float %207, float* %17, align 4
  %208 = load i16*, i16** %28, align 8
  %209 = getelementptr inbounds i16, i16* %208, i64 56
  %210 = load i16, i16* %209, align 2
  %211 = sitofp i16 %210 to float
  %212 = load float*, float** %29, align 8
  %213 = getelementptr inbounds float, float* %212, i64 56
  %214 = load float, float* %213, align 4
  %215 = fmul float %211, %214
  store float %215, float* %18, align 4
  %216 = load float, float* %17, align 4
  %217 = load float, float* %16, align 4
  %218 = fadd float %216, %217
  store float %218, float* %27, align 4
  %219 = load float, float* %17, align 4
  %220 = load float, float* %16, align 4
  %221 = fsub float %219, %220
  store float %221, float* %24, align 4
  %222 = load float, float* %15, align 4
  %223 = load float, float* %18, align 4
  %224 = fadd float %222, %223
  store float %224, float* %25, align 4
  %225 = load float, float* %15, align 4
  %226 = load float, float* %18, align 4
  %227 = fsub float %225, %226
  store float %227, float* %26, align 4
  %228 = load float, float* %25, align 4
  %229 = load float, float* %27, align 4
  %230 = fadd float %228, %229
  store float %230, float* %18, align 4
  %231 = load float, float* %25, align 4
  %232 = load float, float* %27, align 4
  %233 = fsub float %231, %232
  %234 = fmul float %233, 0x3FF6A09E60000000
  store float %234, float* %20, align 4
  %235 = load float, float* %24, align 4
  %236 = load float, float* %26, align 4
  %237 = fadd float %235, %236
  %238 = fmul float %237, 0x3FFD906BC0000000
  store float %238, float* %23, align 4
  %239 = load float, float* %26, align 4
  %240 = load float, float* %23, align 4
  %241 = fneg float %240
  %242 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %239, float %241)
  store float %242, float* %19, align 4
  %243 = load float, float* %24, align 4
  %244 = load float, float* %23, align 4
  %245 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %243, float %244)
  store float %245, float* %21, align 4
  %246 = load float, float* %21, align 4
  %247 = load float, float* %18, align 4
  %248 = fsub float %246, %247
  store float %248, float* %17, align 4
  %249 = load float, float* %20, align 4
  %250 = load float, float* %17, align 4
  %251 = fsub float %249, %250
  store float %251, float* %16, align 4
  %252 = load float, float* %19, align 4
  %253 = load float, float* %16, align 4
  %254 = fadd float %252, %253
  store float %254, float* %15, align 4
  %255 = load float, float* %11, align 4
  %256 = load float, float* %18, align 4
  %257 = fadd float %255, %256
  %258 = load float*, float** %30, align 8
  %259 = getelementptr inbounds float, float* %258, i64 0
  store float %257, float* %259, align 4
  %260 = load float, float* %11, align 4
  %261 = load float, float* %18, align 4
  %262 = fsub float %260, %261
  %263 = load float*, float** %30, align 8
  %264 = getelementptr inbounds float, float* %263, i64 56
  store float %262, float* %264, align 4
  %265 = load float, float* %12, align 4
  %266 = load float, float* %17, align 4
  %267 = fadd float %265, %266
  %268 = load float*, float** %30, align 8
  %269 = getelementptr inbounds float, float* %268, i64 8
  store float %267, float* %269, align 4
  %270 = load float, float* %12, align 4
  %271 = load float, float* %17, align 4
  %272 = fsub float %270, %271
  %273 = load float*, float** %30, align 8
  %274 = getelementptr inbounds float, float* %273, i64 48
  store float %272, float* %274, align 4
  %275 = load float, float* %13, align 4
  %276 = load float, float* %16, align 4
  %277 = fadd float %275, %276
  %278 = load float*, float** %30, align 8
  %279 = getelementptr inbounds float, float* %278, i64 16
  store float %277, float* %279, align 4
  %280 = load float, float* %13, align 4
  %281 = load float, float* %16, align 4
  %282 = fsub float %280, %281
  %283 = load float*, float** %30, align 8
  %284 = getelementptr inbounds float, float* %283, i64 40
  store float %282, float* %284, align 4
  %285 = load float, float* %14, align 4
  %286 = load float, float* %15, align 4
  %287 = fadd float %285, %286
  %288 = load float*, float** %30, align 8
  %289 = getelementptr inbounds float, float* %288, i64 32
  store float %287, float* %289, align 4
  %290 = load float, float* %14, align 4
  %291 = load float, float* %15, align 4
  %292 = fsub float %290, %291
  %293 = load float*, float** %30, align 8
  %294 = getelementptr inbounds float, float* %293, i64 24
  store float %292, float* %294, align 4
  %295 = load i16*, i16** %28, align 8
  %296 = getelementptr inbounds i16, i16* %295, i32 1
  store i16* %296, i16** %28, align 8
  %297 = load float*, float** %29, align 8
  %298 = getelementptr inbounds float, float* %297, i32 1
  store float* %298, float** %29, align 8
  %299 = load float*, float** %30, align 8
  %300 = getelementptr inbounds float, float* %299, i32 1
  store float* %300, float** %30, align 8
  br label %301

301:                                              ; preds = %124, %85
  %302 = load i32, i32* %33, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %33, align 4
  br label %46, !llvm.loop !4

304:                                              ; preds = %46
  %305 = getelementptr inbounds [64 x float], [64 x float]* %34, i64 0, i64 0
  store float* %305, float** %30, align 8
  store i32 0, i32* %33, align 4
  br label %306

306:                                              ; preds = %530, %304
  %307 = load i32, i32* %33, align 4
  %308 = icmp slt i32 %307, 8
  br i1 %308, label %309, label %533

309:                                              ; preds = %306
  %310 = load i8**, i8*** %9, align 8
  %311 = load i32, i32* %33, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i8*, i8** %310, i64 %312
  %314 = load i8*, i8** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  store i8* %317, i8** %31, align 8
  %318 = load float*, float** %30, align 8
  %319 = getelementptr inbounds float, float* %318, i64 0
  %320 = load float, float* %319, align 4
  %321 = load float*, float** %30, align 8
  %322 = getelementptr inbounds float, float* %321, i64 4
  %323 = load float, float* %322, align 4
  %324 = fadd float %320, %323
  store float %324, float* %19, align 4
  %325 = load float*, float** %30, align 8
  %326 = getelementptr inbounds float, float* %325, i64 0
  %327 = load float, float* %326, align 4
  %328 = load float*, float** %30, align 8
  %329 = getelementptr inbounds float, float* %328, i64 4
  %330 = load float, float* %329, align 4
  %331 = fsub float %327, %330
  store float %331, float* %20, align 4
  %332 = load float*, float** %30, align 8
  %333 = getelementptr inbounds float, float* %332, i64 2
  %334 = load float, float* %333, align 4
  %335 = load float*, float** %30, align 8
  %336 = getelementptr inbounds float, float* %335, i64 6
  %337 = load float, float* %336, align 4
  %338 = fadd float %334, %337
  store float %338, float* %22, align 4
  %339 = load float*, float** %30, align 8
  %340 = getelementptr inbounds float, float* %339, i64 2
  %341 = load float, float* %340, align 4
  %342 = load float*, float** %30, align 8
  %343 = getelementptr inbounds float, float* %342, i64 6
  %344 = load float, float* %343, align 4
  %345 = fsub float %341, %344
  %346 = load float, float* %22, align 4
  %347 = fneg float %346
  %348 = call float @llvm.fmuladd.f32(float %345, float 0x3FF6A09E60000000, float %347)
  store float %348, float* %21, align 4
  %349 = load float, float* %19, align 4
  %350 = load float, float* %22, align 4
  %351 = fadd float %349, %350
  store float %351, float* %11, align 4
  %352 = load float, float* %19, align 4
  %353 = load float, float* %22, align 4
  %354 = fsub float %352, %353
  store float %354, float* %14, align 4
  %355 = load float, float* %20, align 4
  %356 = load float, float* %21, align 4
  %357 = fadd float %355, %356
  store float %357, float* %12, align 4
  %358 = load float, float* %20, align 4
  %359 = load float, float* %21, align 4
  %360 = fsub float %358, %359
  store float %360, float* %13, align 4
  %361 = load float*, float** %30, align 8
  %362 = getelementptr inbounds float, float* %361, i64 5
  %363 = load float, float* %362, align 4
  %364 = load float*, float** %30, align 8
  %365 = getelementptr inbounds float, float* %364, i64 3
  %366 = load float, float* %365, align 4
  %367 = fadd float %363, %366
  store float %367, float* %27, align 4
  %368 = load float*, float** %30, align 8
  %369 = getelementptr inbounds float, float* %368, i64 5
  %370 = load float, float* %369, align 4
  %371 = load float*, float** %30, align 8
  %372 = getelementptr inbounds float, float* %371, i64 3
  %373 = load float, float* %372, align 4
  %374 = fsub float %370, %373
  store float %374, float* %24, align 4
  %375 = load float*, float** %30, align 8
  %376 = getelementptr inbounds float, float* %375, i64 1
  %377 = load float, float* %376, align 4
  %378 = load float*, float** %30, align 8
  %379 = getelementptr inbounds float, float* %378, i64 7
  %380 = load float, float* %379, align 4
  %381 = fadd float %377, %380
  store float %381, float* %25, align 4
  %382 = load float*, float** %30, align 8
  %383 = getelementptr inbounds float, float* %382, i64 1
  %384 = load float, float* %383, align 4
  %385 = load float*, float** %30, align 8
  %386 = getelementptr inbounds float, float* %385, i64 7
  %387 = load float, float* %386, align 4
  %388 = fsub float %384, %387
  store float %388, float* %26, align 4
  %389 = load float, float* %25, align 4
  %390 = load float, float* %27, align 4
  %391 = fadd float %389, %390
  store float %391, float* %18, align 4
  %392 = load float, float* %25, align 4
  %393 = load float, float* %27, align 4
  %394 = fsub float %392, %393
  %395 = fmul float %394, 0x3FF6A09E60000000
  store float %395, float* %20, align 4
  %396 = load float, float* %24, align 4
  %397 = load float, float* %26, align 4
  %398 = fadd float %396, %397
  %399 = fmul float %398, 0x3FFD906BC0000000
  store float %399, float* %23, align 4
  %400 = load float, float* %26, align 4
  %401 = load float, float* %23, align 4
  %402 = fneg float %401
  %403 = call float @llvm.fmuladd.f32(float 0x3FF1517A80000000, float %400, float %402)
  store float %403, float* %19, align 4
  %404 = load float, float* %24, align 4
  %405 = load float, float* %23, align 4
  %406 = call float @llvm.fmuladd.f32(float 0xC004E7AEA0000000, float %404, float %405)
  store float %406, float* %21, align 4
  %407 = load float, float* %21, align 4
  %408 = load float, float* %18, align 4
  %409 = fsub float %407, %408
  store float %409, float* %17, align 4
  %410 = load float, float* %20, align 4
  %411 = load float, float* %17, align 4
  %412 = fsub float %410, %411
  store float %412, float* %16, align 4
  %413 = load float, float* %19, align 4
  %414 = load float, float* %16, align 4
  %415 = fadd float %413, %414
  store float %415, float* %15, align 4
  %416 = load i8*, i8** %32, align 8
  %417 = load float, float* %11, align 4
  %418 = load float, float* %18, align 4
  %419 = fadd float %417, %418
  %420 = fptosi float %419 to i64
  %421 = add nsw i64 %420, 4
  %422 = ashr i64 %421, 3
  %423 = trunc i64 %422 to i32
  %424 = and i32 %423, 1023
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %416, i64 %425
  %427 = load i8, i8* %426, align 1
  %428 = load i8*, i8** %31, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 0
  store i8 %427, i8* %429, align 1
  %430 = load i8*, i8** %32, align 8
  %431 = load float, float* %11, align 4
  %432 = load float, float* %18, align 4
  %433 = fsub float %431, %432
  %434 = fptosi float %433 to i64
  %435 = add nsw i64 %434, 4
  %436 = ashr i64 %435, 3
  %437 = trunc i64 %436 to i32
  %438 = and i32 %437, 1023
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8, i8* %430, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = load i8*, i8** %31, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 7
  store i8 %441, i8* %443, align 1
  %444 = load i8*, i8** %32, align 8
  %445 = load float, float* %12, align 4
  %446 = load float, float* %17, align 4
  %447 = fadd float %445, %446
  %448 = fptosi float %447 to i64
  %449 = add nsw i64 %448, 4
  %450 = ashr i64 %449, 3
  %451 = trunc i64 %450 to i32
  %452 = and i32 %451, 1023
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, i8* %444, i64 %453
  %455 = load i8, i8* %454, align 1
  %456 = load i8*, i8** %31, align 8
  %457 = getelementptr inbounds i8, i8* %456, i64 1
  store i8 %455, i8* %457, align 1
  %458 = load i8*, i8** %32, align 8
  %459 = load float, float* %12, align 4
  %460 = load float, float* %17, align 4
  %461 = fsub float %459, %460
  %462 = fptosi float %461 to i64
  %463 = add nsw i64 %462, 4
  %464 = ashr i64 %463, 3
  %465 = trunc i64 %464 to i32
  %466 = and i32 %465, 1023
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i8, i8* %458, i64 %467
  %469 = load i8, i8* %468, align 1
  %470 = load i8*, i8** %31, align 8
  %471 = getelementptr inbounds i8, i8* %470, i64 6
  store i8 %469, i8* %471, align 1
  %472 = load i8*, i8** %32, align 8
  %473 = load float, float* %13, align 4
  %474 = load float, float* %16, align 4
  %475 = fadd float %473, %474
  %476 = fptosi float %475 to i64
  %477 = add nsw i64 %476, 4
  %478 = ashr i64 %477, 3
  %479 = trunc i64 %478 to i32
  %480 = and i32 %479, 1023
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, i8* %472, i64 %481
  %483 = load i8, i8* %482, align 1
  %484 = load i8*, i8** %31, align 8
  %485 = getelementptr inbounds i8, i8* %484, i64 2
  store i8 %483, i8* %485, align 1
  %486 = load i8*, i8** %32, align 8
  %487 = load float, float* %13, align 4
  %488 = load float, float* %16, align 4
  %489 = fsub float %487, %488
  %490 = fptosi float %489 to i64
  %491 = add nsw i64 %490, 4
  %492 = ashr i64 %491, 3
  %493 = trunc i64 %492 to i32
  %494 = and i32 %493, 1023
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %486, i64 %495
  %497 = load i8, i8* %496, align 1
  %498 = load i8*, i8** %31, align 8
  %499 = getelementptr inbounds i8, i8* %498, i64 5
  store i8 %497, i8* %499, align 1
  %500 = load i8*, i8** %32, align 8
  %501 = load float, float* %14, align 4
  %502 = load float, float* %15, align 4
  %503 = fadd float %501, %502
  %504 = fptosi float %503 to i64
  %505 = add nsw i64 %504, 4
  %506 = ashr i64 %505, 3
  %507 = trunc i64 %506 to i32
  %508 = and i32 %507, 1023
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i8, i8* %500, i64 %509
  %511 = load i8, i8* %510, align 1
  %512 = load i8*, i8** %31, align 8
  %513 = getelementptr inbounds i8, i8* %512, i64 4
  store i8 %511, i8* %513, align 1
  %514 = load i8*, i8** %32, align 8
  %515 = load float, float* %14, align 4
  %516 = load float, float* %15, align 4
  %517 = fsub float %515, %516
  %518 = fptosi float %517 to i64
  %519 = add nsw i64 %518, 4
  %520 = ashr i64 %519, 3
  %521 = trunc i64 %520 to i32
  %522 = and i32 %521, 1023
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, i8* %514, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = load i8*, i8** %31, align 8
  %527 = getelementptr inbounds i8, i8* %526, i64 3
  store i8 %525, i8* %527, align 1
  %528 = load float*, float** %30, align 8
  %529 = getelementptr inbounds float, float* %528, i64 8
  store float* %529, float** %30, align 8
  br label %530

530:                                              ; preds = %309
  %531 = load i32, i32* %33, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %33, align 4
  br label %306, !llvm.loop !6

533:                                              ; preds = %306
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
