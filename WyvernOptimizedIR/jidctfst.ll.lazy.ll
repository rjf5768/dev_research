; ModuleID = './jidctfst.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_idct_ifast(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [64 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 128
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  br label %14

14:                                               ; preds = %153, %5
  %.05 = phi i16* [ %2, %5 ], [ %.16, %153 ]
  %.03 = phi i32* [ %12, %5 ], [ %.14, %153 ]
  %.01 = phi i32* [ %13, %5 ], [ %.12, %153 ]
  %.0 = phi i32 [ 8, %5 ], [ %154, %153 ]
  %15 = icmp sgt i32 %.0, 0
  br i1 %15, label %16, label %155

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
  br i1 %37, label %38, label %50

38:                                               ; preds = %16
  %39 = load i16, i16* %.05, align 2
  %40 = sext i16 %39 to i32
  %41 = load i32, i32* %.03, align 4
  %42 = mul nsw i32 %41, %40
  store i32 %42, i32* %.01, align 4
  %43 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds i32, i32* %.01, i64 16
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %.01, i64 24
  store i32 %42, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %.01, i64 32
  store i32 %42, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %.01, i64 40
  store i32 %42, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %.01, i64 48
  store i32 %42, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %.01, i64 56
  store i32 %42, i32* %49, align 4
  br label %153

50:                                               ; preds = %16
  %51 = load i16, i16* %.05, align 2
  %52 = sext i16 %51 to i32
  %53 = load i32, i32* %.03, align 4
  %54 = mul nsw i32 %53, %52
  %55 = getelementptr inbounds i16, i16* %.05, i64 16
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i32
  %58 = getelementptr inbounds i32, i32* %.03, i64 16
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, %57
  %61 = getelementptr inbounds i16, i16* %.05, i64 32
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = getelementptr inbounds i32, i32* %.03, i64 32
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, %63
  %67 = getelementptr inbounds i16, i16* %.05, i64 48
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds i32, i32* %.03, i64 48
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, %69
  %73 = add nsw i32 %54, %66
  %74 = sub nsw i32 %54, %66
  %75 = add nsw i32 %60, %72
  %76 = sub nsw i32 %60, %72
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, 362
  %79 = lshr i64 %78, 8
  %80 = trunc i64 %79 to i32
  %81 = sub nsw i32 %80, %75
  %82 = add nsw i32 %73, %75
  %83 = sub nsw i32 %73, %75
  %84 = add nsw i32 %74, %81
  %85 = sub nsw i32 %74, %81
  %86 = getelementptr inbounds i16, i16* %.05, i64 8
  %87 = load i16, i16* %86, align 2
  %88 = sext i16 %87 to i32
  %89 = getelementptr inbounds i32, i32* %.03, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, %88
  %92 = getelementptr inbounds i16, i16* %.05, i64 24
  %93 = load i16, i16* %92, align 2
  %94 = sext i16 %93 to i32
  %95 = getelementptr inbounds i32, i32* %.03, i64 24
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, %94
  %98 = getelementptr inbounds i16, i16* %.05, i64 40
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i32
  %101 = getelementptr inbounds i32, i32* %.03, i64 40
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, %100
  %104 = getelementptr inbounds i16, i16* %.05, i64 56
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i32
  %107 = getelementptr inbounds i32, i32* %.03, i64 56
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, %106
  %110 = add nsw i32 %103, %97
  %111 = sub nsw i32 %103, %97
  %112 = add nsw i32 %91, %109
  %113 = sub nsw i32 %91, %109
  %114 = add nsw i32 %112, %110
  %115 = sub nsw i32 %112, %110
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, 362
  %118 = lshr i64 %117, 8
  %119 = trunc i64 %118 to i32
  %120 = add nsw i32 %111, %113
  %121 = sext i32 %120 to i64
  %122 = mul nsw i64 %121, 473
  %123 = lshr i64 %122, 8
  %124 = trunc i64 %123 to i32
  %125 = sext i32 %113 to i64
  %126 = mul nsw i64 %125, 277
  %127 = lshr i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = sub nsw i32 %128, %124
  %130 = sext i32 %111 to i64
  %131 = mul nsw i64 %130, -669
  %132 = lshr i64 %131, 8
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %133, %124
  %135 = sub nsw i32 %134, %114
  %136 = sub nsw i32 %119, %135
  %137 = add nsw i32 %129, %136
  %138 = add nsw i32 %82, %114
  store i32 %138, i32* %.01, align 4
  %139 = sub nsw i32 %82, %114
  %140 = getelementptr inbounds i32, i32* %.01, i64 56
  store i32 %139, i32* %140, align 4
  %141 = add nsw i32 %84, %135
  %142 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %141, i32* %142, align 4
  %143 = sub nsw i32 %84, %135
  %144 = getelementptr inbounds i32, i32* %.01, i64 48
  store i32 %143, i32* %144, align 4
  %145 = add nsw i32 %85, %136
  %146 = getelementptr inbounds i32, i32* %.01, i64 16
  store i32 %145, i32* %146, align 4
  %147 = sub nsw i32 %85, %136
  %148 = getelementptr inbounds i32, i32* %.01, i64 40
  store i32 %147, i32* %148, align 4
  %149 = add nsw i32 %83, %137
  %150 = getelementptr inbounds i32, i32* %.01, i64 32
  store i32 %149, i32* %150, align 4
  %151 = sub nsw i32 %83, %137
  %152 = getelementptr inbounds i32, i32* %.01, i64 24
  store i32 %151, i32* %152, align 4
  br label %153

153:                                              ; preds = %50, %38
  %.12 = getelementptr inbounds i32, i32* %.01, i64 1
  %.14 = getelementptr inbounds i32, i32* %.03, i64 1
  %.16 = getelementptr inbounds i16, i16* %.05, i64 1
  %154 = add nsw i32 %.0, -1
  br label %14, !llvm.loop !4

155:                                              ; preds = %14
  %156 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  br label %157

157:                                              ; preds = %312, %155
  %.2 = phi i32* [ %156, %155 ], [ %.3, %312 ]
  %.1 = phi i32 [ 0, %155 ], [ %313, %312 ]
  %158 = icmp ult i32 %.1, 8
  br i1 %158, label %159, label %314

159:                                              ; preds = %157
  %160 = zext i32 %.1 to i64
  %161 = getelementptr inbounds i8*, i8** %3, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = zext i32 %4 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = getelementptr inbounds i32, i32* %.2, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds i32, i32* %.2, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %166, %168
  %170 = getelementptr inbounds i32, i32* %.2, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %169, %171
  %173 = getelementptr inbounds i32, i32* %.2, i64 4
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %172, %174
  %176 = getelementptr inbounds i32, i32* %.2, i64 5
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %175, %177
  %179 = getelementptr inbounds i32, i32* %.2, i64 6
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %178, %180
  %182 = getelementptr inbounds i32, i32* %.2, i64 7
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %181, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %200

186:                                              ; preds = %159
  %187 = load i32, i32* %.2, align 4
  %188 = lshr i32 %187, 5
  %189 = and i32 %188, 1023
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %9, i64 %190
  %192 = load i8, i8* %191, align 1
  store i8 %192, i8* %164, align 1
  %193 = getelementptr inbounds i8, i8* %164, i64 1
  store i8 %192, i8* %193, align 1
  %194 = getelementptr inbounds i8, i8* %164, i64 2
  store i8 %192, i8* %194, align 1
  %195 = getelementptr inbounds i8, i8* %164, i64 3
  store i8 %192, i8* %195, align 1
  %196 = getelementptr inbounds i8, i8* %164, i64 4
  store i8 %192, i8* %196, align 1
  %197 = getelementptr inbounds i8, i8* %164, i64 5
  store i8 %192, i8* %197, align 1
  %198 = getelementptr inbounds i8, i8* %164, i64 6
  store i8 %192, i8* %198, align 1
  %199 = getelementptr inbounds i8, i8* %164, i64 7
  store i8 %192, i8* %199, align 1
  br label %312

200:                                              ; preds = %159
  %201 = load i32, i32* %.2, align 4
  %202 = getelementptr inbounds i32, i32* %.2, i64 4
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %201, %203
  %205 = sub nsw i32 %201, %203
  %206 = getelementptr inbounds i32, i32* %.2, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds i32, i32* %.2, i64 6
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %207, %209
  %211 = sub nsw i32 %207, %209
  %212 = sext i32 %211 to i64
  %213 = mul nsw i64 %212, 362
  %214 = lshr i64 %213, 8
  %215 = trunc i64 %214 to i32
  %216 = sub nsw i32 %215, %210
  %217 = add nsw i32 %204, %210
  %218 = sub nsw i32 %204, %210
  %219 = add nsw i32 %205, %216
  %220 = sub nsw i32 %205, %216
  %221 = getelementptr inbounds i32, i32* %.2, i64 5
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds i32, i32* %.2, i64 3
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %222, %224
  %226 = sub nsw i32 %222, %224
  %227 = getelementptr inbounds i32, i32* %.2, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = getelementptr inbounds i32, i32* %.2, i64 7
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %228, %230
  %232 = sub nsw i32 %228, %230
  %233 = add nsw i32 %231, %225
  %234 = sub nsw i32 %231, %225
  %235 = sext i32 %234 to i64
  %236 = mul nsw i64 %235, 362
  %237 = lshr i64 %236, 8
  %238 = trunc i64 %237 to i32
  %239 = add nsw i32 %226, %232
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %240, 473
  %242 = lshr i64 %241, 8
  %243 = trunc i64 %242 to i32
  %244 = sext i32 %232 to i64
  %245 = mul nsw i64 %244, 277
  %246 = lshr i64 %245, 8
  %247 = trunc i64 %246 to i32
  %248 = sub nsw i32 %247, %243
  %249 = sext i32 %226 to i64
  %250 = mul nsw i64 %249, -669
  %251 = lshr i64 %250, 8
  %252 = trunc i64 %251 to i32
  %253 = add nsw i32 %252, %243
  %254 = sub nsw i32 %253, %233
  %255 = sub nsw i32 %238, %254
  %256 = add nsw i32 %248, %255
  %257 = add nsw i32 %217, %233
  %258 = lshr i32 %257, 5
  %259 = and i32 %258, 1023
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %9, i64 %260
  %262 = load i8, i8* %261, align 1
  store i8 %262, i8* %164, align 1
  %263 = sub nsw i32 %217, %233
  %264 = lshr i32 %263, 5
  %265 = and i32 %264, 1023
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %9, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = getelementptr inbounds i8, i8* %164, i64 7
  store i8 %268, i8* %269, align 1
  %270 = add nsw i32 %219, %254
  %271 = lshr i32 %270, 5
  %272 = and i32 %271, 1023
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i8, i8* %9, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = getelementptr inbounds i8, i8* %164, i64 1
  store i8 %275, i8* %276, align 1
  %277 = sub nsw i32 %219, %254
  %278 = lshr i32 %277, 5
  %279 = and i32 %278, 1023
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %9, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = getelementptr inbounds i8, i8* %164, i64 6
  store i8 %282, i8* %283, align 1
  %284 = add nsw i32 %220, %255
  %285 = lshr i32 %284, 5
  %286 = and i32 %285, 1023
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %9, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = getelementptr inbounds i8, i8* %164, i64 2
  store i8 %289, i8* %290, align 1
  %291 = sub nsw i32 %220, %255
  %292 = lshr i32 %291, 5
  %293 = and i32 %292, 1023
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds i8, i8* %9, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = getelementptr inbounds i8, i8* %164, i64 5
  store i8 %296, i8* %297, align 1
  %298 = add nsw i32 %218, %256
  %299 = lshr i32 %298, 5
  %300 = and i32 %299, 1023
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %9, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = getelementptr inbounds i8, i8* %164, i64 4
  store i8 %303, i8* %304, align 1
  %305 = sub nsw i32 %218, %256
  %306 = lshr i32 %305, 5
  %307 = and i32 %306, 1023
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %9, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = getelementptr inbounds i8, i8* %164, i64 3
  store i8 %310, i8* %311, align 1
  br label %312

312:                                              ; preds = %200, %186
  %.3 = getelementptr inbounds i32, i32* %.2, i64 8
  %313 = add nuw nsw i32 %.1, 1
  br label %157, !llvm.loop !6

314:                                              ; preds = %157
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
