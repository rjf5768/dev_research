; ModuleID = './jidctint.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_idct_islow(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 128
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  br label %14

14:                                               ; preds = %183, %5
  %.05 = phi i16* [ %2, %5 ], [ %.16, %183 ]
  %.03 = phi i32* [ %12, %5 ], [ %.14, %183 ]
  %.01 = phi i32* [ %13, %5 ], [ %.12, %183 ]
  %.0 = phi i32 [ 8, %5 ], [ %184, %183 ]
  %15 = icmp sgt i32 %.0, 0
  br i1 %15, label %16, label %185

16:                                               ; preds = %14
  %17 = getelementptr inbounds i16, i16* %.05, i64 8
  %18 = load i16, i16* %17, align 2
  %19 = getelementptr inbounds i16, i16* %.05, i64 16
  %20 = load i16, i16* %19, align 2
  %21 = or i16 %18, %20
  %22 = getelementptr inbounds i16, i16* %.05, i64 24
  %23 = load i16, i16* %22, align 2
  %24 = or i16 %21, %23
  %25 = getelementptr inbounds i16, i16* %.05, i64 32
  %26 = load i16, i16* %25, align 2
  %27 = or i16 %24, %26
  %28 = getelementptr inbounds i16, i16* %.05, i64 40
  %29 = load i16, i16* %28, align 2
  %30 = or i16 %27, %29
  %31 = getelementptr inbounds i16, i16* %.05, i64 48
  %32 = load i16, i16* %31, align 2
  %33 = or i16 %30, %32
  %34 = getelementptr inbounds i16, i16* %.05, i64 56
  %35 = load i16, i16* %34, align 2
  %36 = or i16 %33, %35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %16
  %39 = load i16, i16* %.05, align 2
  %40 = sext i16 %39 to i32
  %41 = load i32, i32* %.03, align 4
  %42 = mul nsw i32 %41, %40
  %43 = shl i32 %42, 2
  store i32 %43, i32* %.01, align 4
  %44 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %.01, i64 16
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %.01, i64 24
  store i32 %43, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %.01, i64 32
  store i32 %43, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %.01, i64 40
  store i32 %43, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %.01, i64 48
  store i32 %43, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %.01, i64 56
  store i32 %43, i32* %50, align 4
  br label %183

51:                                               ; preds = %16
  %52 = getelementptr inbounds i16, i16* %.05, i64 16
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = getelementptr inbounds i32, i32* %.03, i64 16
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, %54
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %.05, i64 48
  %60 = load i16, i16* %59, align 2
  %61 = sext i16 %60 to i32
  %62 = getelementptr inbounds i32, i32* %.03, i64 48
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, %61
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %58, %65
  %67 = mul nsw i64 %66, 4433
  %68 = mul nsw i64 %65, -15137
  %69 = add nsw i64 %67, %68
  %70 = mul nsw i64 %58, 6270
  %71 = add nsw i64 %67, %70
  %72 = load i16, i16* %.05, align 2
  %73 = sext i16 %72 to i32
  %74 = load i32, i32* %.03, align 4
  %75 = mul nsw i32 %74, %73
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %.05, i64 32
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds i32, i32* %.03, i64 32
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, %79
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %76, %83
  %85 = shl nsw i64 %84, 13
  %86 = sub nsw i64 %76, %83
  %87 = shl nsw i64 %86, 13
  %88 = add nsw i64 %85, %71
  %89 = sub nsw i64 %85, %71
  %90 = add nsw i64 %87, %69
  %91 = sub nsw i64 %87, %69
  %92 = getelementptr inbounds i16, i16* %.05, i64 56
  %93 = load i16, i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = getelementptr inbounds i32, i32* %.03, i64 56
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, %94
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %.05, i64 40
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = getelementptr inbounds i32, i32* %.03, i64 40
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %103, %101
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i16, i16* %.05, i64 24
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = getelementptr inbounds i32, i32* %.03, i64 24
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %.05, i64 8
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = getelementptr inbounds i32, i32* %.03, i64 8
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %117, %115
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %98, %119
  %121 = add nsw i64 %105, %112
  %122 = add nsw i64 %98, %112
  %123 = add nsw i64 %105, %119
  %124 = add nsw i64 %122, %123
  %125 = mul nsw i64 %124, 9633
  %126 = mul nsw i64 %98, 2446
  %127 = mul nsw i64 %105, 16819
  %128 = mul nsw i64 %112, 25172
  %129 = mul nsw i64 %119, 12299
  %130 = mul nsw i64 %120, -7373
  %131 = mul nsw i64 %121, -20995
  %132 = mul nsw i64 %122, -16069
  %133 = mul nsw i64 %123, -3196
  %134 = add nsw i64 %132, %125
  %135 = add nsw i64 %133, %125
  %136 = add nsw i64 %130, %134
  %137 = add nsw i64 %126, %136
  %138 = add nsw i64 %131, %135
  %139 = add nsw i64 %127, %138
  %140 = add nsw i64 %131, %134
  %141 = add nsw i64 %128, %140
  %142 = add nsw i64 %130, %135
  %143 = add nsw i64 %129, %142
  %144 = add nsw i64 %88, %143
  %145 = add nsw i64 %144, 1024
  %146 = lshr i64 %145, 11
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %.01, align 4
  %148 = sub nsw i64 %88, %143
  %149 = add nsw i64 %148, 1024
  %150 = lshr i64 %149, 11
  %151 = trunc i64 %150 to i32
  %152 = getelementptr inbounds i32, i32* %.01, i64 56
  store i32 %151, i32* %152, align 4
  %153 = add nsw i64 %90, %141
  %154 = add nsw i64 %153, 1024
  %155 = lshr i64 %154, 11
  %156 = trunc i64 %155 to i32
  %157 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %156, i32* %157, align 4
  %158 = sub nsw i64 %90, %141
  %159 = add nsw i64 %158, 1024
  %160 = lshr i64 %159, 11
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds i32, i32* %.01, i64 48
  store i32 %161, i32* %162, align 4
  %163 = add nsw i64 %91, %139
  %164 = add nsw i64 %163, 1024
  %165 = lshr i64 %164, 11
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds i32, i32* %.01, i64 16
  store i32 %166, i32* %167, align 4
  %168 = sub nsw i64 %91, %139
  %169 = add nsw i64 %168, 1024
  %170 = lshr i64 %169, 11
  %171 = trunc i64 %170 to i32
  %172 = getelementptr inbounds i32, i32* %.01, i64 40
  store i32 %171, i32* %172, align 4
  %173 = add nsw i64 %89, %137
  %174 = add nsw i64 %173, 1024
  %175 = lshr i64 %174, 11
  %176 = trunc i64 %175 to i32
  %177 = getelementptr inbounds i32, i32* %.01, i64 24
  store i32 %176, i32* %177, align 4
  %178 = sub nsw i64 %89, %137
  %179 = add nsw i64 %178, 1024
  %180 = lshr i64 %179, 11
  %181 = trunc i64 %180 to i32
  %182 = getelementptr inbounds i32, i32* %.01, i64 32
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %51, %38
  %.12 = getelementptr inbounds i32, i32* %.01, i64 1
  %.14 = getelementptr inbounds i32, i32* %.03, i64 1
  %.16 = getelementptr inbounds i16, i16* %.05, i64 1
  %184 = add nsw i32 %.0, -1
  br label %14, !llvm.loop !4

185:                                              ; preds = %14
  %186 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  br label %187

187:                                              ; preds = %353, %185
  %.2 = phi i32* [ %186, %185 ], [ %.3, %353 ]
  %.1 = phi i32 [ 0, %185 ], [ %354, %353 ]
  %188 = icmp ult i32 %.1, 8
  br i1 %188, label %189, label %355

189:                                              ; preds = %187
  %190 = zext i32 %.1 to i64
  %191 = getelementptr inbounds i8*, i8** %3, i64 %190
  %192 = load i8*, i8** %191, align 8
  %193 = zext i32 %4 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  %195 = getelementptr inbounds i32, i32* %.2, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = getelementptr inbounds i32, i32* %.2, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %196, %198
  %200 = getelementptr inbounds i32, i32* %.2, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %199, %201
  %203 = getelementptr inbounds i32, i32* %.2, i64 4
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %202, %204
  %206 = getelementptr inbounds i32, i32* %.2, i64 5
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %205, %207
  %209 = getelementptr inbounds i32, i32* %.2, i64 6
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %208, %210
  %212 = getelementptr inbounds i32, i32* %.2, i64 7
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %211, %213
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %189
  %217 = load i32, i32* %.2, align 4
  %218 = add i32 %217, 16
  %219 = lshr i32 %218, 5
  %220 = and i32 %219, 1023
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %9, i64 %221
  %223 = load i8, i8* %222, align 1
  store i8 %223, i8* %194, align 1
  %224 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 %223, i8* %224, align 1
  %225 = getelementptr inbounds i8, i8* %194, i64 2
  store i8 %223, i8* %225, align 1
  %226 = getelementptr inbounds i8, i8* %194, i64 3
  store i8 %223, i8* %226, align 1
  %227 = getelementptr inbounds i8, i8* %194, i64 4
  store i8 %223, i8* %227, align 1
  %228 = getelementptr inbounds i8, i8* %194, i64 5
  store i8 %223, i8* %228, align 1
  %229 = getelementptr inbounds i8, i8* %194, i64 6
  store i8 %223, i8* %229, align 1
  %230 = getelementptr inbounds i8, i8* %194, i64 7
  store i8 %223, i8* %230, align 1
  br label %353

231:                                              ; preds = %189
  %232 = getelementptr inbounds i32, i32* %.2, i64 2
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %.2, i64 6
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = add nsw i64 %234, %237
  %239 = mul nsw i64 %238, 4433
  %240 = mul nsw i64 %237, -15137
  %241 = add nsw i64 %239, %240
  %242 = mul nsw i64 %234, 6270
  %243 = add nsw i64 %239, %242
  %244 = load i32, i32* %.2, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %.2, i64 4
  %247 = load i32, i32* %246, align 4
  %248 = sext i32 %247 to i64
  %249 = add nsw i64 %245, %248
  %250 = shl nsw i64 %249, 13
  %251 = load i32, i32* %.2, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %.2, i64 4
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = sub nsw i64 %252, %255
  %257 = shl nsw i64 %256, 13
  %258 = add nsw i64 %250, %243
  %259 = sub nsw i64 %250, %243
  %260 = add nsw i64 %257, %241
  %261 = sub nsw i64 %257, %241
  %262 = getelementptr inbounds i32, i32* %.2, i64 7
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %.2, i64 5
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %.2, i64 3
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %.2, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = add nsw i64 %264, %273
  %275 = add nsw i64 %267, %270
  %276 = add nsw i64 %264, %270
  %277 = add nsw i64 %267, %273
  %278 = add nsw i64 %276, %277
  %279 = mul nsw i64 %278, 9633
  %280 = mul nsw i64 %264, 2446
  %281 = mul nsw i64 %267, 16819
  %282 = mul nsw i64 %270, 25172
  %283 = mul nsw i64 %273, 12299
  %284 = mul nsw i64 %274, -7373
  %285 = mul nsw i64 %275, -20995
  %286 = mul nsw i64 %276, -16069
  %287 = mul nsw i64 %277, -3196
  %288 = add nsw i64 %286, %279
  %289 = add nsw i64 %287, %279
  %290 = add nsw i64 %284, %288
  %291 = add nsw i64 %280, %290
  %292 = add nsw i64 %285, %289
  %293 = add nsw i64 %281, %292
  %294 = add nsw i64 %285, %288
  %295 = add nsw i64 %282, %294
  %296 = add nsw i64 %284, %289
  %297 = add nsw i64 %283, %296
  %298 = add nsw i64 %258, %297
  %299 = add i64 %298, 131072
  %300 = lshr i64 %299, 18
  %301 = and i64 %300, 1023
  %302 = getelementptr inbounds i8, i8* %9, i64 %301
  %303 = load i8, i8* %302, align 1
  store i8 %303, i8* %194, align 1
  %304 = sub nsw i64 %258, %297
  %305 = add i64 %304, 131072
  %306 = lshr i64 %305, 18
  %307 = and i64 %306, 1023
  %308 = getelementptr inbounds i8, i8* %9, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = getelementptr inbounds i8, i8* %194, i64 7
  store i8 %309, i8* %310, align 1
  %311 = add nsw i64 %260, %295
  %312 = add i64 %311, 131072
  %313 = lshr i64 %312, 18
  %314 = and i64 %313, 1023
  %315 = getelementptr inbounds i8, i8* %9, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = getelementptr inbounds i8, i8* %194, i64 1
  store i8 %316, i8* %317, align 1
  %318 = sub nsw i64 %260, %295
  %319 = add i64 %318, 131072
  %320 = lshr i64 %319, 18
  %321 = and i64 %320, 1023
  %322 = getelementptr inbounds i8, i8* %9, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = getelementptr inbounds i8, i8* %194, i64 6
  store i8 %323, i8* %324, align 1
  %325 = add nsw i64 %261, %293
  %326 = add i64 %325, 131072
  %327 = lshr i64 %326, 18
  %328 = and i64 %327, 1023
  %329 = getelementptr inbounds i8, i8* %9, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = getelementptr inbounds i8, i8* %194, i64 2
  store i8 %330, i8* %331, align 1
  %332 = sub nsw i64 %261, %293
  %333 = add i64 %332, 131072
  %334 = lshr i64 %333, 18
  %335 = and i64 %334, 1023
  %336 = getelementptr inbounds i8, i8* %9, i64 %335
  %337 = load i8, i8* %336, align 1
  %338 = getelementptr inbounds i8, i8* %194, i64 5
  store i8 %337, i8* %338, align 1
  %339 = add nsw i64 %259, %291
  %340 = add i64 %339, 131072
  %341 = lshr i64 %340, 18
  %342 = and i64 %341, 1023
  %343 = getelementptr inbounds i8, i8* %9, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = getelementptr inbounds i8, i8* %194, i64 3
  store i8 %344, i8* %345, align 1
  %346 = sub nsw i64 %259, %291
  %347 = add i64 %346, 131072
  %348 = lshr i64 %347, 18
  %349 = and i64 %348, 1023
  %350 = getelementptr inbounds i8, i8* %9, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = getelementptr inbounds i8, i8* %194, i64 4
  store i8 %351, i8* %352, align 1
  br label %353

353:                                              ; preds = %231, %216
  %.3 = getelementptr inbounds i32, i32* %.2, i64 8
  %354 = add nuw nsw i32 %.1, 1
  br label %187, !llvm.loop !6

355:                                              ; preds = %187
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
