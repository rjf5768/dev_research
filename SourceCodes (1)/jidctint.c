; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctint.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctint.c"
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
define dso_local void @jpeg_idct_islow(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i16* noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i16*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca [64 x i32], align 16
  %31 = alloca i32, align 4
  %32 = alloca i8, align 1
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %7, align 8
  store i16* %2, i16** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 61
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 128
  store i8* %36, i8** %28, align 8
  %37 = load i16*, i16** %8, align 8
  store i16* %37, i16** %24, align 8
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i32 0, i32 20
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %25, align 8
  %42 = getelementptr inbounds [64 x i32], [64 x i32]* %30, i64 0, i64 0
  store i32* %42, i32** %26, align 8
  store i32 8, i32* %29, align 4
  br label %43

43:                                               ; preds = %355, %5
  %44 = load i32, i32* %29, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %358

46:                                               ; preds = %43
  %47 = load i16*, i16** %24, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 8
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16*, i16** %24, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 16
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = or i32 %50, %54
  %56 = load i16*, i16** %24, align 8
  %57 = getelementptr inbounds i16, i16* %56, i64 24
  %58 = load i16, i16* %57, align 2
  %59 = sext i16 %58 to i32
  %60 = or i32 %55, %59
  %61 = load i16*, i16** %24, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 32
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = or i32 %60, %64
  %66 = load i16*, i16** %24, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 40
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = or i32 %65, %69
  %71 = load i16*, i16** %24, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 48
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = or i32 %70, %74
  %76 = load i16*, i16** %24, align 8
  %77 = getelementptr inbounds i16, i16* %76, i64 56
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = or i32 %75, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %46
  %83 = load i16*, i16** %24, align 8
  %84 = getelementptr inbounds i16, i16* %83, i64 0
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = load i32*, i32** %25, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %86, %89
  %91 = shl i32 %90, 2
  store i32 %91, i32* %31, align 4
  %92 = load i32, i32* %31, align 4
  %93 = load i32*, i32** %26, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %31, align 4
  %96 = load i32*, i32** %26, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %31, align 4
  %99 = load i32*, i32** %26, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %31, align 4
  %102 = load i32*, i32** %26, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 24
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %31, align 4
  %105 = load i32*, i32** %26, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 32
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %31, align 4
  %108 = load i32*, i32** %26, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 40
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %31, align 4
  %111 = load i32*, i32** %26, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 48
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %31, align 4
  %114 = load i32*, i32** %26, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 56
  store i32 %113, i32* %115, align 4
  %116 = load i16*, i16** %24, align 8
  %117 = getelementptr inbounds i16, i16* %116, i32 1
  store i16* %117, i16** %24, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %25, align 8
  %120 = load i32*, i32** %26, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %26, align 8
  br label %355

122:                                              ; preds = %46
  %123 = load i16*, i16** %24, align 8
  %124 = getelementptr inbounds i16, i16* %123, i64 16
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = load i32*, i32** %25, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 16
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %20, align 8
  %132 = load i16*, i16** %24, align 8
  %133 = getelementptr inbounds i16, i16* %132, i64 48
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = load i32*, i32** %25, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 48
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %135, %138
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %21, align 8
  %141 = load i64, i64* %20, align 8
  %142 = load i64, i64* %21, align 8
  %143 = add nsw i64 %141, %142
  %144 = mul nsw i64 %143, 4433
  store i64 %144, i64* %19, align 8
  %145 = load i64, i64* %19, align 8
  %146 = load i64, i64* %21, align 8
  %147 = mul nsw i64 %146, -15137
  %148 = add nsw i64 %145, %147
  store i64 %148, i64* %13, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %20, align 8
  %151 = mul nsw i64 %150, 6270
  %152 = add nsw i64 %149, %151
  store i64 %152, i64* %14, align 8
  %153 = load i16*, i16** %24, align 8
  %154 = getelementptr inbounds i16, i16* %153, i64 0
  %155 = load i16, i16* %154, align 2
  %156 = sext i16 %155 to i32
  %157 = load i32*, i32** %25, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  store i64 %161, i64* %20, align 8
  %162 = load i16*, i16** %24, align 8
  %163 = getelementptr inbounds i16, i16* %162, i64 32
  %164 = load i16, i16* %163, align 2
  %165 = sext i16 %164 to i32
  %166 = load i32*, i32** %25, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 32
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %21, align 8
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %21, align 8
  %173 = add nsw i64 %171, %172
  %174 = shl i64 %173, 13
  store i64 %174, i64* %11, align 8
  %175 = load i64, i64* %20, align 8
  %176 = load i64, i64* %21, align 8
  %177 = sub nsw i64 %175, %176
  %178 = shl i64 %177, 13
  store i64 %178, i64* %12, align 8
  %179 = load i64, i64* %11, align 8
  %180 = load i64, i64* %14, align 8
  %181 = add nsw i64 %179, %180
  store i64 %181, i64* %15, align 8
  %182 = load i64, i64* %11, align 8
  %183 = load i64, i64* %14, align 8
  %184 = sub nsw i64 %182, %183
  store i64 %184, i64* %18, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* %13, align 8
  %187 = add nsw i64 %185, %186
  store i64 %187, i64* %16, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load i64, i64* %13, align 8
  %190 = sub nsw i64 %188, %189
  store i64 %190, i64* %17, align 8
  %191 = load i16*, i16** %24, align 8
  %192 = getelementptr inbounds i16, i16* %191, i64 56
  %193 = load i16, i16* %192, align 2
  %194 = sext i16 %193 to i32
  %195 = load i32*, i32** %25, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 56
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  store i64 %199, i64* %11, align 8
  %200 = load i16*, i16** %24, align 8
  %201 = getelementptr inbounds i16, i16* %200, i64 40
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  %204 = load i32*, i32** %25, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 40
  %206 = load i32, i32* %205, align 4
  %207 = mul nsw i32 %203, %206
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %12, align 8
  %209 = load i16*, i16** %24, align 8
  %210 = getelementptr inbounds i16, i16* %209, i64 24
  %211 = load i16, i16* %210, align 2
  %212 = sext i16 %211 to i32
  %213 = load i32*, i32** %25, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 24
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %212, %215
  %217 = sext i32 %216 to i64
  store i64 %217, i64* %13, align 8
  %218 = load i16*, i16** %24, align 8
  %219 = getelementptr inbounds i16, i16* %218, i64 8
  %220 = load i16, i16* %219, align 2
  %221 = sext i16 %220 to i32
  %222 = load i32*, i32** %25, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 8
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %221, %224
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %14, align 8
  %227 = load i64, i64* %11, align 8
  %228 = load i64, i64* %14, align 8
  %229 = add nsw i64 %227, %228
  store i64 %229, i64* %19, align 8
  %230 = load i64, i64* %12, align 8
  %231 = load i64, i64* %13, align 8
  %232 = add nsw i64 %230, %231
  store i64 %232, i64* %20, align 8
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %13, align 8
  %235 = add nsw i64 %233, %234
  store i64 %235, i64* %21, align 8
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* %14, align 8
  %238 = add nsw i64 %236, %237
  store i64 %238, i64* %22, align 8
  %239 = load i64, i64* %21, align 8
  %240 = load i64, i64* %22, align 8
  %241 = add nsw i64 %239, %240
  %242 = mul nsw i64 %241, 9633
  store i64 %242, i64* %23, align 8
  %243 = load i64, i64* %11, align 8
  %244 = mul nsw i64 %243, 2446
  store i64 %244, i64* %11, align 8
  %245 = load i64, i64* %12, align 8
  %246 = mul nsw i64 %245, 16819
  store i64 %246, i64* %12, align 8
  %247 = load i64, i64* %13, align 8
  %248 = mul nsw i64 %247, 25172
  store i64 %248, i64* %13, align 8
  %249 = load i64, i64* %14, align 8
  %250 = mul nsw i64 %249, 12299
  store i64 %250, i64* %14, align 8
  %251 = load i64, i64* %19, align 8
  %252 = mul nsw i64 %251, -7373
  store i64 %252, i64* %19, align 8
  %253 = load i64, i64* %20, align 8
  %254 = mul nsw i64 %253, -20995
  store i64 %254, i64* %20, align 8
  %255 = load i64, i64* %21, align 8
  %256 = mul nsw i64 %255, -16069
  store i64 %256, i64* %21, align 8
  %257 = load i64, i64* %22, align 8
  %258 = mul nsw i64 %257, -3196
  store i64 %258, i64* %22, align 8
  %259 = load i64, i64* %23, align 8
  %260 = load i64, i64* %21, align 8
  %261 = add nsw i64 %260, %259
  store i64 %261, i64* %21, align 8
  %262 = load i64, i64* %23, align 8
  %263 = load i64, i64* %22, align 8
  %264 = add nsw i64 %263, %262
  store i64 %264, i64* %22, align 8
  %265 = load i64, i64* %19, align 8
  %266 = load i64, i64* %21, align 8
  %267 = add nsw i64 %265, %266
  %268 = load i64, i64* %11, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %11, align 8
  %270 = load i64, i64* %20, align 8
  %271 = load i64, i64* %22, align 8
  %272 = add nsw i64 %270, %271
  %273 = load i64, i64* %12, align 8
  %274 = add nsw i64 %273, %272
  store i64 %274, i64* %12, align 8
  %275 = load i64, i64* %20, align 8
  %276 = load i64, i64* %21, align 8
  %277 = add nsw i64 %275, %276
  %278 = load i64, i64* %13, align 8
  %279 = add nsw i64 %278, %277
  store i64 %279, i64* %13, align 8
  %280 = load i64, i64* %19, align 8
  %281 = load i64, i64* %22, align 8
  %282 = add nsw i64 %280, %281
  %283 = load i64, i64* %14, align 8
  %284 = add nsw i64 %283, %282
  store i64 %284, i64* %14, align 8
  %285 = load i64, i64* %15, align 8
  %286 = load i64, i64* %14, align 8
  %287 = add nsw i64 %285, %286
  %288 = add nsw i64 %287, 1024
  %289 = ashr i64 %288, 11
  %290 = trunc i64 %289 to i32
  %291 = load i32*, i32** %26, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  store i32 %290, i32* %292, align 4
  %293 = load i64, i64* %15, align 8
  %294 = load i64, i64* %14, align 8
  %295 = sub nsw i64 %293, %294
  %296 = add nsw i64 %295, 1024
  %297 = ashr i64 %296, 11
  %298 = trunc i64 %297 to i32
  %299 = load i32*, i32** %26, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 56
  store i32 %298, i32* %300, align 4
  %301 = load i64, i64* %16, align 8
  %302 = load i64, i64* %13, align 8
  %303 = add nsw i64 %301, %302
  %304 = add nsw i64 %303, 1024
  %305 = ashr i64 %304, 11
  %306 = trunc i64 %305 to i32
  %307 = load i32*, i32** %26, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 8
  store i32 %306, i32* %308, align 4
  %309 = load i64, i64* %16, align 8
  %310 = load i64, i64* %13, align 8
  %311 = sub nsw i64 %309, %310
  %312 = add nsw i64 %311, 1024
  %313 = ashr i64 %312, 11
  %314 = trunc i64 %313 to i32
  %315 = load i32*, i32** %26, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 48
  store i32 %314, i32* %316, align 4
  %317 = load i64, i64* %17, align 8
  %318 = load i64, i64* %12, align 8
  %319 = add nsw i64 %317, %318
  %320 = add nsw i64 %319, 1024
  %321 = ashr i64 %320, 11
  %322 = trunc i64 %321 to i32
  %323 = load i32*, i32** %26, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 16
  store i32 %322, i32* %324, align 4
  %325 = load i64, i64* %17, align 8
  %326 = load i64, i64* %12, align 8
  %327 = sub nsw i64 %325, %326
  %328 = add nsw i64 %327, 1024
  %329 = ashr i64 %328, 11
  %330 = trunc i64 %329 to i32
  %331 = load i32*, i32** %26, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 40
  store i32 %330, i32* %332, align 4
  %333 = load i64, i64* %18, align 8
  %334 = load i64, i64* %11, align 8
  %335 = add nsw i64 %333, %334
  %336 = add nsw i64 %335, 1024
  %337 = ashr i64 %336, 11
  %338 = trunc i64 %337 to i32
  %339 = load i32*, i32** %26, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 24
  store i32 %338, i32* %340, align 4
  %341 = load i64, i64* %18, align 8
  %342 = load i64, i64* %11, align 8
  %343 = sub nsw i64 %341, %342
  %344 = add nsw i64 %343, 1024
  %345 = ashr i64 %344, 11
  %346 = trunc i64 %345 to i32
  %347 = load i32*, i32** %26, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 32
  store i32 %346, i32* %348, align 4
  %349 = load i16*, i16** %24, align 8
  %350 = getelementptr inbounds i16, i16* %349, i32 1
  store i16* %350, i16** %24, align 8
  %351 = load i32*, i32** %25, align 8
  %352 = getelementptr inbounds i32, i32* %351, i32 1
  store i32* %352, i32** %25, align 8
  %353 = load i32*, i32** %26, align 8
  %354 = getelementptr inbounds i32, i32* %353, i32 1
  store i32* %354, i32** %26, align 8
  br label %355

355:                                              ; preds = %122, %82
  %356 = load i32, i32* %29, align 4
  %357 = add nsw i32 %356, -1
  store i32 %357, i32* %29, align 4
  br label %43, !llvm.loop !4

358:                                              ; preds = %43
  %359 = getelementptr inbounds [64 x i32], [64 x i32]* %30, i64 0, i64 0
  store i32* %359, i32** %26, align 8
  store i32 0, i32* %29, align 4
  br label %360

360:                                              ; preds = %672, %358
  %361 = load i32, i32* %29, align 4
  %362 = icmp slt i32 %361, 8
  br i1 %362, label %363, label %675

363:                                              ; preds = %360
  %364 = load i8**, i8*** %9, align 8
  %365 = load i32, i32* %29, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8*, i8** %364, i64 %366
  %368 = load i8*, i8** %367, align 8
  %369 = load i32, i32* %10, align 4
  %370 = zext i32 %369 to i64
  %371 = getelementptr inbounds i8, i8* %368, i64 %370
  store i8* %371, i8** %27, align 8
  %372 = load i32*, i32** %26, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32*, i32** %26, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 2
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %374, %377
  %379 = load i32*, i32** %26, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 3
  %381 = load i32, i32* %380, align 4
  %382 = or i32 %378, %381
  %383 = load i32*, i32** %26, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 4
  %385 = load i32, i32* %384, align 4
  %386 = or i32 %382, %385
  %387 = load i32*, i32** %26, align 8
  %388 = getelementptr inbounds i32, i32* %387, i64 5
  %389 = load i32, i32* %388, align 4
  %390 = or i32 %386, %389
  %391 = load i32*, i32** %26, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 6
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %390, %393
  %395 = load i32*, i32** %26, align 8
  %396 = getelementptr inbounds i32, i32* %395, i64 7
  %397 = load i32, i32* %396, align 4
  %398 = or i32 %394, %397
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %439

400:                                              ; preds = %363
  %401 = load i8*, i8** %28, align 8
  %402 = load i32*, i32** %26, align 8
  %403 = getelementptr inbounds i32, i32* %402, i64 0
  %404 = load i32, i32* %403, align 4
  %405 = sext i32 %404 to i64
  %406 = add nsw i64 %405, 16
  %407 = ashr i64 %406, 5
  %408 = trunc i64 %407 to i32
  %409 = and i32 %408, 1023
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i8, i8* %401, i64 %410
  %412 = load i8, i8* %411, align 1
  store i8 %412, i8* %32, align 1
  %413 = load i8, i8* %32, align 1
  %414 = load i8*, i8** %27, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 0
  store i8 %413, i8* %415, align 1
  %416 = load i8, i8* %32, align 1
  %417 = load i8*, i8** %27, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 1
  store i8 %416, i8* %418, align 1
  %419 = load i8, i8* %32, align 1
  %420 = load i8*, i8** %27, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 2
  store i8 %419, i8* %421, align 1
  %422 = load i8, i8* %32, align 1
  %423 = load i8*, i8** %27, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 3
  store i8 %422, i8* %424, align 1
  %425 = load i8, i8* %32, align 1
  %426 = load i8*, i8** %27, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 4
  store i8 %425, i8* %427, align 1
  %428 = load i8, i8* %32, align 1
  %429 = load i8*, i8** %27, align 8
  %430 = getelementptr inbounds i8, i8* %429, i64 5
  store i8 %428, i8* %430, align 1
  %431 = load i8, i8* %32, align 1
  %432 = load i8*, i8** %27, align 8
  %433 = getelementptr inbounds i8, i8* %432, i64 6
  store i8 %431, i8* %433, align 1
  %434 = load i8, i8* %32, align 1
  %435 = load i8*, i8** %27, align 8
  %436 = getelementptr inbounds i8, i8* %435, i64 7
  store i8 %434, i8* %436, align 1
  %437 = load i32*, i32** %26, align 8
  %438 = getelementptr inbounds i32, i32* %437, i64 8
  store i32* %438, i32** %26, align 8
  br label %672

439:                                              ; preds = %363
  %440 = load i32*, i32** %26, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 2
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  store i64 %443, i64* %20, align 8
  %444 = load i32*, i32** %26, align 8
  %445 = getelementptr inbounds i32, i32* %444, i64 6
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  store i64 %447, i64* %21, align 8
  %448 = load i64, i64* %20, align 8
  %449 = load i64, i64* %21, align 8
  %450 = add nsw i64 %448, %449
  %451 = mul nsw i64 %450, 4433
  store i64 %451, i64* %19, align 8
  %452 = load i64, i64* %19, align 8
  %453 = load i64, i64* %21, align 8
  %454 = mul nsw i64 %453, -15137
  %455 = add nsw i64 %452, %454
  store i64 %455, i64* %13, align 8
  %456 = load i64, i64* %19, align 8
  %457 = load i64, i64* %20, align 8
  %458 = mul nsw i64 %457, 6270
  %459 = add nsw i64 %456, %458
  store i64 %459, i64* %14, align 8
  %460 = load i32*, i32** %26, align 8
  %461 = getelementptr inbounds i32, i32* %460, i64 0
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  %464 = load i32*, i32** %26, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 4
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %463, %467
  %469 = shl i64 %468, 13
  store i64 %469, i64* %11, align 8
  %470 = load i32*, i32** %26, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 0
  %472 = load i32, i32* %471, align 4
  %473 = sext i32 %472 to i64
  %474 = load i32*, i32** %26, align 8
  %475 = getelementptr inbounds i32, i32* %474, i64 4
  %476 = load i32, i32* %475, align 4
  %477 = sext i32 %476 to i64
  %478 = sub nsw i64 %473, %477
  %479 = shl i64 %478, 13
  store i64 %479, i64* %12, align 8
  %480 = load i64, i64* %11, align 8
  %481 = load i64, i64* %14, align 8
  %482 = add nsw i64 %480, %481
  store i64 %482, i64* %15, align 8
  %483 = load i64, i64* %11, align 8
  %484 = load i64, i64* %14, align 8
  %485 = sub nsw i64 %483, %484
  store i64 %485, i64* %18, align 8
  %486 = load i64, i64* %12, align 8
  %487 = load i64, i64* %13, align 8
  %488 = add nsw i64 %486, %487
  store i64 %488, i64* %16, align 8
  %489 = load i64, i64* %12, align 8
  %490 = load i64, i64* %13, align 8
  %491 = sub nsw i64 %489, %490
  store i64 %491, i64* %17, align 8
  %492 = load i32*, i32** %26, align 8
  %493 = getelementptr inbounds i32, i32* %492, i64 7
  %494 = load i32, i32* %493, align 4
  %495 = sext i32 %494 to i64
  store i64 %495, i64* %11, align 8
  %496 = load i32*, i32** %26, align 8
  %497 = getelementptr inbounds i32, i32* %496, i64 5
  %498 = load i32, i32* %497, align 4
  %499 = sext i32 %498 to i64
  store i64 %499, i64* %12, align 8
  %500 = load i32*, i32** %26, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 3
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  store i64 %503, i64* %13, align 8
  %504 = load i32*, i32** %26, align 8
  %505 = getelementptr inbounds i32, i32* %504, i64 1
  %506 = load i32, i32* %505, align 4
  %507 = sext i32 %506 to i64
  store i64 %507, i64* %14, align 8
  %508 = load i64, i64* %11, align 8
  %509 = load i64, i64* %14, align 8
  %510 = add nsw i64 %508, %509
  store i64 %510, i64* %19, align 8
  %511 = load i64, i64* %12, align 8
  %512 = load i64, i64* %13, align 8
  %513 = add nsw i64 %511, %512
  store i64 %513, i64* %20, align 8
  %514 = load i64, i64* %11, align 8
  %515 = load i64, i64* %13, align 8
  %516 = add nsw i64 %514, %515
  store i64 %516, i64* %21, align 8
  %517 = load i64, i64* %12, align 8
  %518 = load i64, i64* %14, align 8
  %519 = add nsw i64 %517, %518
  store i64 %519, i64* %22, align 8
  %520 = load i64, i64* %21, align 8
  %521 = load i64, i64* %22, align 8
  %522 = add nsw i64 %520, %521
  %523 = mul nsw i64 %522, 9633
  store i64 %523, i64* %23, align 8
  %524 = load i64, i64* %11, align 8
  %525 = mul nsw i64 %524, 2446
  store i64 %525, i64* %11, align 8
  %526 = load i64, i64* %12, align 8
  %527 = mul nsw i64 %526, 16819
  store i64 %527, i64* %12, align 8
  %528 = load i64, i64* %13, align 8
  %529 = mul nsw i64 %528, 25172
  store i64 %529, i64* %13, align 8
  %530 = load i64, i64* %14, align 8
  %531 = mul nsw i64 %530, 12299
  store i64 %531, i64* %14, align 8
  %532 = load i64, i64* %19, align 8
  %533 = mul nsw i64 %532, -7373
  store i64 %533, i64* %19, align 8
  %534 = load i64, i64* %20, align 8
  %535 = mul nsw i64 %534, -20995
  store i64 %535, i64* %20, align 8
  %536 = load i64, i64* %21, align 8
  %537 = mul nsw i64 %536, -16069
  store i64 %537, i64* %21, align 8
  %538 = load i64, i64* %22, align 8
  %539 = mul nsw i64 %538, -3196
  store i64 %539, i64* %22, align 8
  %540 = load i64, i64* %23, align 8
  %541 = load i64, i64* %21, align 8
  %542 = add nsw i64 %541, %540
  store i64 %542, i64* %21, align 8
  %543 = load i64, i64* %23, align 8
  %544 = load i64, i64* %22, align 8
  %545 = add nsw i64 %544, %543
  store i64 %545, i64* %22, align 8
  %546 = load i64, i64* %19, align 8
  %547 = load i64, i64* %21, align 8
  %548 = add nsw i64 %546, %547
  %549 = load i64, i64* %11, align 8
  %550 = add nsw i64 %549, %548
  store i64 %550, i64* %11, align 8
  %551 = load i64, i64* %20, align 8
  %552 = load i64, i64* %22, align 8
  %553 = add nsw i64 %551, %552
  %554 = load i64, i64* %12, align 8
  %555 = add nsw i64 %554, %553
  store i64 %555, i64* %12, align 8
  %556 = load i64, i64* %20, align 8
  %557 = load i64, i64* %21, align 8
  %558 = add nsw i64 %556, %557
  %559 = load i64, i64* %13, align 8
  %560 = add nsw i64 %559, %558
  store i64 %560, i64* %13, align 8
  %561 = load i64, i64* %19, align 8
  %562 = load i64, i64* %22, align 8
  %563 = add nsw i64 %561, %562
  %564 = load i64, i64* %14, align 8
  %565 = add nsw i64 %564, %563
  store i64 %565, i64* %14, align 8
  %566 = load i8*, i8** %28, align 8
  %567 = load i64, i64* %15, align 8
  %568 = load i64, i64* %14, align 8
  %569 = add nsw i64 %567, %568
  %570 = add nsw i64 %569, 131072
  %571 = ashr i64 %570, 18
  %572 = trunc i64 %571 to i32
  %573 = and i32 %572, 1023
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8, i8* %566, i64 %574
  %576 = load i8, i8* %575, align 1
  %577 = load i8*, i8** %27, align 8
  %578 = getelementptr inbounds i8, i8* %577, i64 0
  store i8 %576, i8* %578, align 1
  %579 = load i8*, i8** %28, align 8
  %580 = load i64, i64* %15, align 8
  %581 = load i64, i64* %14, align 8
  %582 = sub nsw i64 %580, %581
  %583 = add nsw i64 %582, 131072
  %584 = ashr i64 %583, 18
  %585 = trunc i64 %584 to i32
  %586 = and i32 %585, 1023
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i8, i8* %579, i64 %587
  %589 = load i8, i8* %588, align 1
  %590 = load i8*, i8** %27, align 8
  %591 = getelementptr inbounds i8, i8* %590, i64 7
  store i8 %589, i8* %591, align 1
  %592 = load i8*, i8** %28, align 8
  %593 = load i64, i64* %16, align 8
  %594 = load i64, i64* %13, align 8
  %595 = add nsw i64 %593, %594
  %596 = add nsw i64 %595, 131072
  %597 = ashr i64 %596, 18
  %598 = trunc i64 %597 to i32
  %599 = and i32 %598, 1023
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i8, i8* %592, i64 %600
  %602 = load i8, i8* %601, align 1
  %603 = load i8*, i8** %27, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 1
  store i8 %602, i8* %604, align 1
  %605 = load i8*, i8** %28, align 8
  %606 = load i64, i64* %16, align 8
  %607 = load i64, i64* %13, align 8
  %608 = sub nsw i64 %606, %607
  %609 = add nsw i64 %608, 131072
  %610 = ashr i64 %609, 18
  %611 = trunc i64 %610 to i32
  %612 = and i32 %611, 1023
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i8, i8* %605, i64 %613
  %615 = load i8, i8* %614, align 1
  %616 = load i8*, i8** %27, align 8
  %617 = getelementptr inbounds i8, i8* %616, i64 6
  store i8 %615, i8* %617, align 1
  %618 = load i8*, i8** %28, align 8
  %619 = load i64, i64* %17, align 8
  %620 = load i64, i64* %12, align 8
  %621 = add nsw i64 %619, %620
  %622 = add nsw i64 %621, 131072
  %623 = ashr i64 %622, 18
  %624 = trunc i64 %623 to i32
  %625 = and i32 %624, 1023
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i8, i8* %618, i64 %626
  %628 = load i8, i8* %627, align 1
  %629 = load i8*, i8** %27, align 8
  %630 = getelementptr inbounds i8, i8* %629, i64 2
  store i8 %628, i8* %630, align 1
  %631 = load i8*, i8** %28, align 8
  %632 = load i64, i64* %17, align 8
  %633 = load i64, i64* %12, align 8
  %634 = sub nsw i64 %632, %633
  %635 = add nsw i64 %634, 131072
  %636 = ashr i64 %635, 18
  %637 = trunc i64 %636 to i32
  %638 = and i32 %637, 1023
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %631, i64 %639
  %641 = load i8, i8* %640, align 1
  %642 = load i8*, i8** %27, align 8
  %643 = getelementptr inbounds i8, i8* %642, i64 5
  store i8 %641, i8* %643, align 1
  %644 = load i8*, i8** %28, align 8
  %645 = load i64, i64* %18, align 8
  %646 = load i64, i64* %11, align 8
  %647 = add nsw i64 %645, %646
  %648 = add nsw i64 %647, 131072
  %649 = ashr i64 %648, 18
  %650 = trunc i64 %649 to i32
  %651 = and i32 %650, 1023
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i8, i8* %644, i64 %652
  %654 = load i8, i8* %653, align 1
  %655 = load i8*, i8** %27, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 3
  store i8 %654, i8* %656, align 1
  %657 = load i8*, i8** %28, align 8
  %658 = load i64, i64* %18, align 8
  %659 = load i64, i64* %11, align 8
  %660 = sub nsw i64 %658, %659
  %661 = add nsw i64 %660, 131072
  %662 = ashr i64 %661, 18
  %663 = trunc i64 %662 to i32
  %664 = and i32 %663, 1023
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i8, i8* %657, i64 %665
  %667 = load i8, i8* %666, align 1
  %668 = load i8*, i8** %27, align 8
  %669 = getelementptr inbounds i8, i8* %668, i64 4
  store i8 %667, i8* %669, align 1
  %670 = load i32*, i32** %26, align 8
  %671 = getelementptr inbounds i32, i32* %670, i64 8
  store i32* %671, i32** %26, align 8
  br label %672

672:                                              ; preds = %439, %400
  %673 = load i32, i32* %29, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %29, align 4
  br label %360, !llvm.loop !6

675:                                              ; preds = %360
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
