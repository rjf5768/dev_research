; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctfst.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctfst.c"
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
define dso_local void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i16* noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i16*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca [64 x i32], align 16
  %35 = alloca i32, align 4
  %36 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %7, align 8
  store i16* %2, i16** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 61
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 128
  store i8* %40, i8** %32, align 8
  %41 = load i16*, i16** %8, align 8
  store i16* %41, i16** %28, align 8
  %42 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %42, i32 0, i32 20
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %29, align 8
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %34, i64 0, i64 0
  store i32* %46, i32** %30, align 8
  store i32 8, i32* %33, align 4
  br label %47

47:                                               ; preds = %318, %5
  %48 = load i32, i32* %33, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %321

50:                                               ; preds = %47
  %51 = load i16*, i16** %28, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 8
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = load i16*, i16** %28, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 16
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i32
  %59 = or i32 %54, %58
  %60 = load i16*, i16** %28, align 8
  %61 = getelementptr inbounds i16, i16* %60, i64 24
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = or i32 %59, %63
  %65 = load i16*, i16** %28, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 32
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = or i32 %64, %68
  %70 = load i16*, i16** %28, align 8
  %71 = getelementptr inbounds i16, i16* %70, i64 40
  %72 = load i16, i16* %71, align 2
  %73 = sext i16 %72 to i32
  %74 = or i32 %69, %73
  %75 = load i16*, i16** %28, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 48
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = or i32 %74, %78
  %80 = load i16*, i16** %28, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 56
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = or i32 %79, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %125

86:                                               ; preds = %50
  %87 = load i16*, i16** %28, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 0
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i32
  %91 = load i32*, i32** %29, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  store i32 %94, i32* %35, align 4
  %95 = load i32, i32* %35, align 4
  %96 = load i32*, i32** %30, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %35, align 4
  %99 = load i32*, i32** %30, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 8
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %35, align 4
  %102 = load i32*, i32** %30, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 16
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %35, align 4
  %105 = load i32*, i32** %30, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 24
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %35, align 4
  %108 = load i32*, i32** %30, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 32
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %35, align 4
  %111 = load i32*, i32** %30, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 40
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %35, align 4
  %114 = load i32*, i32** %30, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 48
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %35, align 4
  %117 = load i32*, i32** %30, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 56
  store i32 %116, i32* %118, align 4
  %119 = load i16*, i16** %28, align 8
  %120 = getelementptr inbounds i16, i16* %119, i32 1
  store i16* %120, i16** %28, align 8
  %121 = load i32*, i32** %29, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %29, align 8
  %123 = load i32*, i32** %30, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %30, align 8
  br label %318

125:                                              ; preds = %50
  %126 = load i16*, i16** %28, align 8
  %127 = getelementptr inbounds i16, i16* %126, i64 0
  %128 = load i16, i16* %127, align 2
  %129 = sext i16 %128 to i32
  %130 = load i32*, i32** %29, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %129, %132
  store i32 %133, i32* %11, align 4
  %134 = load i16*, i16** %28, align 8
  %135 = getelementptr inbounds i16, i16* %134, i64 16
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  %138 = load i32*, i32** %29, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 16
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %137, %140
  store i32 %141, i32* %12, align 4
  %142 = load i16*, i16** %28, align 8
  %143 = getelementptr inbounds i16, i16* %142, i64 32
  %144 = load i16, i16* %143, align 2
  %145 = sext i16 %144 to i32
  %146 = load i32*, i32** %29, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 32
  %148 = load i32, i32* %147, align 4
  %149 = mul nsw i32 %145, %148
  store i32 %149, i32* %13, align 4
  %150 = load i16*, i16** %28, align 8
  %151 = getelementptr inbounds i16, i16* %150, i64 48
  %152 = load i16, i16* %151, align 2
  %153 = sext i16 %152 to i32
  %154 = load i32*, i32** %29, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 48
  %156 = load i32, i32* %155, align 4
  %157 = mul nsw i32 %153, %156
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %158, %159
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = sub nsw i32 %161, %162
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %22, align 4
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %14, align 4
  %169 = sub nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = mul nsw i64 %170, 362
  %172 = ashr i64 %171, 8
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* %22, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %22, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %22, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %14, align 4
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %21, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %20, align 4
  %186 = load i32, i32* %21, align 4
  %187 = sub nsw i32 %185, %186
  store i32 %187, i32* %13, align 4
  %188 = load i16*, i16** %28, align 8
  %189 = getelementptr inbounds i16, i16* %188, i64 8
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i32
  %192 = load i32*, i32** %29, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 8
  %194 = load i32, i32* %193, align 4
  %195 = mul nsw i32 %191, %194
  store i32 %195, i32* %15, align 4
  %196 = load i16*, i16** %28, align 8
  %197 = getelementptr inbounds i16, i16* %196, i64 24
  %198 = load i16, i16* %197, align 2
  %199 = sext i16 %198 to i32
  %200 = load i32*, i32** %29, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 24
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %199, %202
  store i32 %203, i32* %16, align 4
  %204 = load i16*, i16** %28, align 8
  %205 = getelementptr inbounds i16, i16* %204, i64 40
  %206 = load i16, i16* %205, align 2
  %207 = sext i16 %206 to i32
  %208 = load i32*, i32** %29, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 40
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %207, %210
  store i32 %211, i32* %17, align 4
  %212 = load i16*, i16** %28, align 8
  %213 = getelementptr inbounds i16, i16* %212, i64 56
  %214 = load i16, i16* %213, align 2
  %215 = sext i16 %214 to i32
  %216 = load i32*, i32** %29, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 56
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %215, %218
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %17, align 4
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %220, %221
  store i32 %222, i32* %27, align 4
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* %16, align 4
  %225 = sub nsw i32 %223, %224
  store i32 %225, i32* %24, align 4
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %226, %227
  store i32 %228, i32* %25, align 4
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* %18, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %26, align 4
  %232 = load i32, i32* %25, align 4
  %233 = load i32, i32* %27, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %18, align 4
  %235 = load i32, i32* %25, align 4
  %236 = load i32, i32* %27, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = mul nsw i64 %238, 362
  %240 = ashr i64 %239, 8
  %241 = trunc i64 %240 to i32
  store i32 %241, i32* %20, align 4
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* %26, align 4
  %244 = add nsw i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = mul nsw i64 %245, 473
  %247 = ashr i64 %246, 8
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %23, align 4
  %249 = load i32, i32* %26, align 4
  %250 = sext i32 %249 to i64
  %251 = mul nsw i64 %250, 277
  %252 = ashr i64 %251, 8
  %253 = trunc i64 %252 to i32
  %254 = load i32, i32* %23, align 4
  %255 = sub nsw i32 %253, %254
  store i32 %255, i32* %19, align 4
  %256 = load i32, i32* %24, align 4
  %257 = sext i32 %256 to i64
  %258 = mul nsw i64 %257, -669
  %259 = ashr i64 %258, 8
  %260 = trunc i64 %259 to i32
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %260, %261
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* %18, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %17, align 4
  %266 = load i32, i32* %20, align 4
  %267 = load i32, i32* %17, align 4
  %268 = sub nsw i32 %266, %267
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %16, align 4
  %271 = add nsw i32 %269, %270
  store i32 %271, i32* %15, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %18, align 4
  %274 = add nsw i32 %272, %273
  %275 = load i32*, i32** %30, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %11, align 4
  %278 = load i32, i32* %18, align 4
  %279 = sub nsw i32 %277, %278
  %280 = load i32*, i32** %30, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 56
  store i32 %279, i32* %281, align 4
  %282 = load i32, i32* %12, align 4
  %283 = load i32, i32* %17, align 4
  %284 = add nsw i32 %282, %283
  %285 = load i32*, i32** %30, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 8
  store i32 %284, i32* %286, align 4
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* %17, align 4
  %289 = sub nsw i32 %287, %288
  %290 = load i32*, i32** %30, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 48
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %292, %293
  %295 = load i32*, i32** %30, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 16
  store i32 %294, i32* %296, align 4
  %297 = load i32, i32* %13, align 4
  %298 = load i32, i32* %16, align 4
  %299 = sub nsw i32 %297, %298
  %300 = load i32*, i32** %30, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 40
  store i32 %299, i32* %301, align 4
  %302 = load i32, i32* %14, align 4
  %303 = load i32, i32* %15, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32*, i32** %30, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 32
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %14, align 4
  %308 = load i32, i32* %15, align 4
  %309 = sub nsw i32 %307, %308
  %310 = load i32*, i32** %30, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 24
  store i32 %309, i32* %311, align 4
  %312 = load i16*, i16** %28, align 8
  %313 = getelementptr inbounds i16, i16* %312, i32 1
  store i16* %313, i16** %28, align 8
  %314 = load i32*, i32** %29, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %29, align 8
  %316 = load i32*, i32** %30, align 8
  %317 = getelementptr inbounds i32, i32* %316, i32 1
  store i32* %317, i32** %30, align 8
  br label %318

318:                                              ; preds = %125, %86
  %319 = load i32, i32* %33, align 4
  %320 = add nsw i32 %319, -1
  store i32 %320, i32* %33, align 4
  br label %47, !llvm.loop !4

321:                                              ; preds = %47
  %322 = getelementptr inbounds [64 x i32], [64 x i32]* %34, i64 0, i64 0
  store i32* %322, i32** %30, align 8
  store i32 0, i32* %33, align 4
  br label %323

323:                                              ; preds = %604, %321
  %324 = load i32, i32* %33, align 4
  %325 = icmp slt i32 %324, 8
  br i1 %325, label %326, label %607

326:                                              ; preds = %323
  %327 = load i8**, i8*** %9, align 8
  %328 = load i32, i32* %33, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %327, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %10, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %331, i64 %333
  store i8* %334, i8** %31, align 8
  %335 = load i32*, i32** %30, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 1
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %30, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 2
  %340 = load i32, i32* %339, align 4
  %341 = or i32 %337, %340
  %342 = load i32*, i32** %30, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 3
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %341, %344
  %346 = load i32*, i32** %30, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 4
  %348 = load i32, i32* %347, align 4
  %349 = or i32 %345, %348
  %350 = load i32*, i32** %30, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 5
  %352 = load i32, i32* %351, align 4
  %353 = or i32 %349, %352
  %354 = load i32*, i32** %30, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 6
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %353, %356
  %358 = load i32*, i32** %30, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 7
  %360 = load i32, i32* %359, align 4
  %361 = or i32 %357, %360
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %399

363:                                              ; preds = %326
  %364 = load i8*, i8** %32, align 8
  %365 = load i32*, i32** %30, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 0
  %367 = load i32, i32* %366, align 4
  %368 = ashr i32 %367, 5
  %369 = and i32 %368, 1023
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %364, i64 %370
  %372 = load i8, i8* %371, align 1
  store i8 %372, i8* %36, align 1
  %373 = load i8, i8* %36, align 1
  %374 = load i8*, i8** %31, align 8
  %375 = getelementptr inbounds i8, i8* %374, i64 0
  store i8 %373, i8* %375, align 1
  %376 = load i8, i8* %36, align 1
  %377 = load i8*, i8** %31, align 8
  %378 = getelementptr inbounds i8, i8* %377, i64 1
  store i8 %376, i8* %378, align 1
  %379 = load i8, i8* %36, align 1
  %380 = load i8*, i8** %31, align 8
  %381 = getelementptr inbounds i8, i8* %380, i64 2
  store i8 %379, i8* %381, align 1
  %382 = load i8, i8* %36, align 1
  %383 = load i8*, i8** %31, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 3
  store i8 %382, i8* %384, align 1
  %385 = load i8, i8* %36, align 1
  %386 = load i8*, i8** %31, align 8
  %387 = getelementptr inbounds i8, i8* %386, i64 4
  store i8 %385, i8* %387, align 1
  %388 = load i8, i8* %36, align 1
  %389 = load i8*, i8** %31, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 5
  store i8 %388, i8* %390, align 1
  %391 = load i8, i8* %36, align 1
  %392 = load i8*, i8** %31, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 6
  store i8 %391, i8* %393, align 1
  %394 = load i8, i8* %36, align 1
  %395 = load i8*, i8** %31, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 7
  store i8 %394, i8* %396, align 1
  %397 = load i32*, i32** %30, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 8
  store i32* %398, i32** %30, align 8
  br label %604

399:                                              ; preds = %326
  %400 = load i32*, i32** %30, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 0
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** %30, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 4
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %402, %405
  store i32 %406, i32* %19, align 4
  %407 = load i32*, i32** %30, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %30, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 4
  %412 = load i32, i32* %411, align 4
  %413 = sub nsw i32 %409, %412
  store i32 %413, i32* %20, align 4
  %414 = load i32*, i32** %30, align 8
  %415 = getelementptr inbounds i32, i32* %414, i64 2
  %416 = load i32, i32* %415, align 4
  %417 = load i32*, i32** %30, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 6
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %416, %419
  store i32 %420, i32* %22, align 4
  %421 = load i32*, i32** %30, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 2
  %423 = load i32, i32* %422, align 4
  %424 = load i32*, i32** %30, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 6
  %426 = load i32, i32* %425, align 4
  %427 = sub nsw i32 %423, %426
  %428 = sext i32 %427 to i64
  %429 = mul nsw i64 %428, 362
  %430 = ashr i64 %429, 8
  %431 = trunc i64 %430 to i32
  %432 = load i32, i32* %22, align 4
  %433 = sub nsw i32 %431, %432
  store i32 %433, i32* %21, align 4
  %434 = load i32, i32* %19, align 4
  %435 = load i32, i32* %22, align 4
  %436 = add nsw i32 %434, %435
  store i32 %436, i32* %11, align 4
  %437 = load i32, i32* %19, align 4
  %438 = load i32, i32* %22, align 4
  %439 = sub nsw i32 %437, %438
  store i32 %439, i32* %14, align 4
  %440 = load i32, i32* %20, align 4
  %441 = load i32, i32* %21, align 4
  %442 = add nsw i32 %440, %441
  store i32 %442, i32* %12, align 4
  %443 = load i32, i32* %20, align 4
  %444 = load i32, i32* %21, align 4
  %445 = sub nsw i32 %443, %444
  store i32 %445, i32* %13, align 4
  %446 = load i32*, i32** %30, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 5
  %448 = load i32, i32* %447, align 4
  %449 = load i32*, i32** %30, align 8
  %450 = getelementptr inbounds i32, i32* %449, i64 3
  %451 = load i32, i32* %450, align 4
  %452 = add nsw i32 %448, %451
  store i32 %452, i32* %27, align 4
  %453 = load i32*, i32** %30, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 5
  %455 = load i32, i32* %454, align 4
  %456 = load i32*, i32** %30, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 3
  %458 = load i32, i32* %457, align 4
  %459 = sub nsw i32 %455, %458
  store i32 %459, i32* %24, align 4
  %460 = load i32*, i32** %30, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 1
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** %30, align 8
  %464 = getelementptr inbounds i32, i32* %463, i64 7
  %465 = load i32, i32* %464, align 4
  %466 = add nsw i32 %462, %465
  store i32 %466, i32* %25, align 4
  %467 = load i32*, i32** %30, align 8
  %468 = getelementptr inbounds i32, i32* %467, i64 1
  %469 = load i32, i32* %468, align 4
  %470 = load i32*, i32** %30, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 7
  %472 = load i32, i32* %471, align 4
  %473 = sub nsw i32 %469, %472
  store i32 %473, i32* %26, align 4
  %474 = load i32, i32* %25, align 4
  %475 = load i32, i32* %27, align 4
  %476 = add nsw i32 %474, %475
  store i32 %476, i32* %18, align 4
  %477 = load i32, i32* %25, align 4
  %478 = load i32, i32* %27, align 4
  %479 = sub nsw i32 %477, %478
  %480 = sext i32 %479 to i64
  %481 = mul nsw i64 %480, 362
  %482 = ashr i64 %481, 8
  %483 = trunc i64 %482 to i32
  store i32 %483, i32* %20, align 4
  %484 = load i32, i32* %24, align 4
  %485 = load i32, i32* %26, align 4
  %486 = add nsw i32 %484, %485
  %487 = sext i32 %486 to i64
  %488 = mul nsw i64 %487, 473
  %489 = ashr i64 %488, 8
  %490 = trunc i64 %489 to i32
  store i32 %490, i32* %23, align 4
  %491 = load i32, i32* %26, align 4
  %492 = sext i32 %491 to i64
  %493 = mul nsw i64 %492, 277
  %494 = ashr i64 %493, 8
  %495 = trunc i64 %494 to i32
  %496 = load i32, i32* %23, align 4
  %497 = sub nsw i32 %495, %496
  store i32 %497, i32* %19, align 4
  %498 = load i32, i32* %24, align 4
  %499 = sext i32 %498 to i64
  %500 = mul nsw i64 %499, -669
  %501 = ashr i64 %500, 8
  %502 = trunc i64 %501 to i32
  %503 = load i32, i32* %23, align 4
  %504 = add nsw i32 %502, %503
  store i32 %504, i32* %21, align 4
  %505 = load i32, i32* %21, align 4
  %506 = load i32, i32* %18, align 4
  %507 = sub nsw i32 %505, %506
  store i32 %507, i32* %17, align 4
  %508 = load i32, i32* %20, align 4
  %509 = load i32, i32* %17, align 4
  %510 = sub nsw i32 %508, %509
  store i32 %510, i32* %16, align 4
  %511 = load i32, i32* %19, align 4
  %512 = load i32, i32* %16, align 4
  %513 = add nsw i32 %511, %512
  store i32 %513, i32* %15, align 4
  %514 = load i8*, i8** %32, align 8
  %515 = load i32, i32* %11, align 4
  %516 = load i32, i32* %18, align 4
  %517 = add nsw i32 %515, %516
  %518 = ashr i32 %517, 5
  %519 = and i32 %518, 1023
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8, i8* %514, i64 %520
  %522 = load i8, i8* %521, align 1
  %523 = load i8*, i8** %31, align 8
  %524 = getelementptr inbounds i8, i8* %523, i64 0
  store i8 %522, i8* %524, align 1
  %525 = load i8*, i8** %32, align 8
  %526 = load i32, i32* %11, align 4
  %527 = load i32, i32* %18, align 4
  %528 = sub nsw i32 %526, %527
  %529 = ashr i32 %528, 5
  %530 = and i32 %529, 1023
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i8, i8* %525, i64 %531
  %533 = load i8, i8* %532, align 1
  %534 = load i8*, i8** %31, align 8
  %535 = getelementptr inbounds i8, i8* %534, i64 7
  store i8 %533, i8* %535, align 1
  %536 = load i8*, i8** %32, align 8
  %537 = load i32, i32* %12, align 4
  %538 = load i32, i32* %17, align 4
  %539 = add nsw i32 %537, %538
  %540 = ashr i32 %539, 5
  %541 = and i32 %540, 1023
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, i8* %536, i64 %542
  %544 = load i8, i8* %543, align 1
  %545 = load i8*, i8** %31, align 8
  %546 = getelementptr inbounds i8, i8* %545, i64 1
  store i8 %544, i8* %546, align 1
  %547 = load i8*, i8** %32, align 8
  %548 = load i32, i32* %12, align 4
  %549 = load i32, i32* %17, align 4
  %550 = sub nsw i32 %548, %549
  %551 = ashr i32 %550, 5
  %552 = and i32 %551, 1023
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i8, i8* %547, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = load i8*, i8** %31, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 6
  store i8 %555, i8* %557, align 1
  %558 = load i8*, i8** %32, align 8
  %559 = load i32, i32* %13, align 4
  %560 = load i32, i32* %16, align 4
  %561 = add nsw i32 %559, %560
  %562 = ashr i32 %561, 5
  %563 = and i32 %562, 1023
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds i8, i8* %558, i64 %564
  %566 = load i8, i8* %565, align 1
  %567 = load i8*, i8** %31, align 8
  %568 = getelementptr inbounds i8, i8* %567, i64 2
  store i8 %566, i8* %568, align 1
  %569 = load i8*, i8** %32, align 8
  %570 = load i32, i32* %13, align 4
  %571 = load i32, i32* %16, align 4
  %572 = sub nsw i32 %570, %571
  %573 = ashr i32 %572, 5
  %574 = and i32 %573, 1023
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* %569, i64 %575
  %577 = load i8, i8* %576, align 1
  %578 = load i8*, i8** %31, align 8
  %579 = getelementptr inbounds i8, i8* %578, i64 5
  store i8 %577, i8* %579, align 1
  %580 = load i8*, i8** %32, align 8
  %581 = load i32, i32* %14, align 4
  %582 = load i32, i32* %15, align 4
  %583 = add nsw i32 %581, %582
  %584 = ashr i32 %583, 5
  %585 = and i32 %584, 1023
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8, i8* %580, i64 %586
  %588 = load i8, i8* %587, align 1
  %589 = load i8*, i8** %31, align 8
  %590 = getelementptr inbounds i8, i8* %589, i64 4
  store i8 %588, i8* %590, align 1
  %591 = load i8*, i8** %32, align 8
  %592 = load i32, i32* %14, align 4
  %593 = load i32, i32* %15, align 4
  %594 = sub nsw i32 %592, %593
  %595 = ashr i32 %594, 5
  %596 = and i32 %595, 1023
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i8, i8* %591, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = load i8*, i8** %31, align 8
  %601 = getelementptr inbounds i8, i8* %600, i64 3
  store i8 %599, i8* %601, align 1
  %602 = load i32*, i32** %30, align 8
  %603 = getelementptr inbounds i32, i32* %602, i64 8
  store i32* %603, i32** %30, align 8
  br label %604

604:                                              ; preds = %399, %363
  %605 = load i32, i32* %33, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %33, align 4
  br label %323, !llvm.loop !6

607:                                              ; preds = %323
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
