; ModuleID = './jidctred.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jidctred.c"
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
define dso_local void @jpeg_idct_4x4(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [32 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 128
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  br label %14

14:                                               ; preds = %134, %5
  %.04 = phi i16* [ %2, %5 ], [ %135, %134 ]
  %.03 = phi i32* [ %12, %5 ], [ %136, %134 ]
  %.01 = phi i32* [ %13, %5 ], [ %137, %134 ]
  %.0 = phi i32 [ 8, %5 ], [ %138, %134 ]
  %15 = icmp sgt i32 %.0, 0
  br i1 %15, label %16, label %139

16:                                               ; preds = %14
  %17 = icmp eq i32 %.0, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %134

19:                                               ; preds = %16
  %20 = getelementptr inbounds i16, i16* %.04, i64 8
  %21 = load i16, i16* %20, align 2
  %22 = getelementptr inbounds i16, i16* %.04, i64 16
  %23 = load i16, i16* %22, align 2
  %24 = or i16 %21, %23
  %25 = getelementptr inbounds i16, i16* %.04, i64 24
  %26 = load i16, i16* %25, align 2
  %27 = or i16 %24, %26
  %28 = getelementptr inbounds i16, i16* %.04, i64 40
  %29 = load i16, i16* %28, align 2
  %30 = or i16 %27, %29
  %31 = getelementptr inbounds i16, i16* %.04, i64 48
  %32 = load i16, i16* %31, align 2
  %33 = or i16 %30, %32
  %34 = getelementptr inbounds i16, i16* %.04, i64 56
  %35 = load i16, i16* %34, align 2
  %36 = or i16 %33, %35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %19
  %39 = load i16, i16* %.04, align 2
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
  br label %134

47:                                               ; preds = %19
  %48 = load i16, i16* %.04, align 2
  %49 = sext i16 %48 to i32
  %50 = load i32, i32* %.03, align 4
  %51 = mul nsw i32 %50, %49
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 14
  %54 = getelementptr inbounds i16, i16* %.04, i64 16
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = getelementptr inbounds i32, i32* %.03, i64 16
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, %56
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %.04, i64 48
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = getelementptr inbounds i32, i32* %.03, i64 48
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %65, %63
  %67 = sext i32 %66 to i64
  %68 = mul nsw i64 %60, 15137
  %69 = mul nsw i64 %67, -6270
  %70 = add nsw i64 %68, %69
  %71 = add nsw i64 %53, %70
  %72 = sub nsw i64 %53, %70
  %73 = getelementptr inbounds i16, i16* %.04, i64 56
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = getelementptr inbounds i32, i32* %.03, i64 56
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %77, %75
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i16, i16* %.04, i64 40
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = getelementptr inbounds i32, i32* %.03, i64 40
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, %82
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %.04, i64 24
  %88 = load i16, i16* %87, align 2
  %89 = sext i16 %88 to i32
  %90 = getelementptr inbounds i32, i32* %.03, i64 24
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %91, %89
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %.04, i64 8
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i32
  %97 = getelementptr inbounds i32, i32* %.03, i64 8
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %98, %96
  %100 = sext i32 %99 to i64
  %101 = mul nsw i64 %79, -1730
  %102 = mul nsw i64 %86, 11893
  %103 = add nsw i64 %101, %102
  %104 = mul nsw i64 %93, -17799
  %105 = add nsw i64 %103, %104
  %106 = mul nsw i64 %100, 8697
  %107 = add nsw i64 %105, %106
  %108 = mul nsw i64 %79, -4176
  %109 = mul nsw i64 %86, -4926
  %110 = add nsw i64 %108, %109
  %111 = mul nsw i64 %93, 7373
  %112 = add nsw i64 %110, %111
  %113 = mul nsw i64 %100, 20995
  %114 = add nsw i64 %112, %113
  %115 = add nsw i64 %71, %114
  %116 = add nsw i64 %115, 2048
  %117 = lshr i64 %116, 12
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %.01, align 4
  %119 = sub nsw i64 %71, %114
  %120 = add nsw i64 %119, 2048
  %121 = lshr i64 %120, 12
  %122 = trunc i64 %121 to i32
  %123 = getelementptr inbounds i32, i32* %.01, i64 24
  store i32 %122, i32* %123, align 4
  %124 = add nsw i64 %72, %107
  %125 = add nsw i64 %124, 2048
  %126 = lshr i64 %125, 12
  %127 = trunc i64 %126 to i32
  %128 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %127, i32* %128, align 4
  %129 = sub nsw i64 %72, %107
  %130 = add nsw i64 %129, 2048
  %131 = lshr i64 %130, 12
  %132 = trunc i64 %131 to i32
  %133 = getelementptr inbounds i32, i32* %.01, i64 16
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %47, %38, %18
  %135 = getelementptr inbounds i16, i16* %.04, i64 1
  %136 = getelementptr inbounds i32, i32* %.03, i64 1
  %137 = getelementptr inbounds i32, i32* %.01, i64 1
  %138 = add nsw i32 %.0, -1
  br label %14, !llvm.loop !4

139:                                              ; preds = %14
  %140 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  br label %141

141:                                              ; preds = %246, %139
  %.12 = phi i32* [ %140, %139 ], [ %.2, %246 ]
  %.1 = phi i32 [ 0, %139 ], [ %247, %246 ]
  %142 = icmp ult i32 %.1, 4
  br i1 %142, label %143, label %248

143:                                              ; preds = %141
  %144 = zext i32 %.1 to i64
  %145 = getelementptr inbounds i8*, i8** %3, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = zext i32 %4 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = getelementptr inbounds i32, i32* %.12, i64 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds i32, i32* %.12, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %150, %152
  %154 = getelementptr inbounds i32, i32* %.12, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %153, %155
  %157 = getelementptr inbounds i32, i32* %.12, i64 5
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %156, %158
  %160 = getelementptr inbounds i32, i32* %.12, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %159, %161
  %163 = getelementptr inbounds i32, i32* %.12, i64 7
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %162, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %143
  %168 = load i32, i32* %.12, align 4
  %169 = add i32 %168, 16
  %170 = lshr i32 %169, 5
  %171 = and i32 %170, 1023
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %9, i64 %172
  %174 = load i8, i8* %173, align 1
  store i8 %174, i8* %148, align 1
  %175 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %174, i8* %175, align 1
  %176 = getelementptr inbounds i8, i8* %148, i64 2
  store i8 %174, i8* %176, align 1
  %177 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %174, i8* %177, align 1
  br label %246

178:                                              ; preds = %143
  %179 = load i32, i32* %.12, align 4
  %180 = sext i32 %179 to i64
  %181 = shl nsw i64 %180, 14
  %182 = getelementptr inbounds i32, i32* %.12, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul nsw i64 %184, 15137
  %186 = getelementptr inbounds i32, i32* %.12, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %188, -6270
  %190 = add nsw i64 %185, %189
  %191 = add nsw i64 %181, %190
  %192 = sub nsw i64 %181, %190
  %193 = getelementptr inbounds i32, i32* %.12, i64 7
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %.12, i64 5
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %.12, i64 3
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %.12, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %195, -1730
  %206 = mul nsw i64 %198, 11893
  %207 = add nsw i64 %205, %206
  %208 = mul nsw i64 %201, -17799
  %209 = add nsw i64 %207, %208
  %210 = mul nsw i64 %204, 8697
  %211 = add nsw i64 %209, %210
  %212 = mul nsw i64 %195, -4176
  %213 = mul nsw i64 %198, -4926
  %214 = add nsw i64 %212, %213
  %215 = mul nsw i64 %201, 7373
  %216 = add nsw i64 %214, %215
  %217 = mul nsw i64 %204, 20995
  %218 = add nsw i64 %216, %217
  %219 = add nsw i64 %191, %218
  %220 = add nsw i64 %219, 262144
  %221 = lshr i64 %220, 19
  %222 = and i64 %221, 1023
  %223 = getelementptr inbounds i8, i8* %9, i64 %222
  %224 = load i8, i8* %223, align 1
  store i8 %224, i8* %148, align 1
  %225 = sub nsw i64 %191, %218
  %226 = add nsw i64 %225, 262144
  %227 = lshr i64 %226, 19
  %228 = and i64 %227, 1023
  %229 = getelementptr inbounds i8, i8* %9, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %230, i8* %231, align 1
  %232 = add nsw i64 %192, %211
  %233 = add nsw i64 %232, 262144
  %234 = lshr i64 %233, 19
  %235 = and i64 %234, 1023
  %236 = getelementptr inbounds i8, i8* %9, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %237, i8* %238, align 1
  %239 = sub nsw i64 %192, %211
  %240 = add nsw i64 %239, 262144
  %241 = lshr i64 %240, 19
  %242 = and i64 %241, 1023
  %243 = getelementptr inbounds i8, i8* %9, i64 %242
  %244 = load i8, i8* %243, align 1
  %245 = getelementptr inbounds i8, i8* %148, i64 2
  store i8 %244, i8* %245, align 1
  br label %246

246:                                              ; preds = %178, %167
  %.2 = getelementptr inbounds i32, i32* %.12, i64 8
  %247 = add nuw nsw i32 %.1, 1
  br label %141, !llvm.loop !6

248:                                              ; preds = %141
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @jpeg_idct_2x2(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [16 x i32], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 128
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %11 = bitcast i8** %10 to i32**
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  br label %14

14:                                               ; preds = %94, %5
  %.04 = phi i16* [ %2, %5 ], [ %95, %94 ]
  %.03 = phi i32* [ %12, %5 ], [ %96, %94 ]
  %.01 = phi i32* [ %13, %5 ], [ %97, %94 ]
  %.0 = phi i32 [ 8, %5 ], [ %98, %94 ]
  %15 = icmp sgt i32 %.0, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %14
  %17 = icmp eq i32 %.0, 6
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = icmp eq i32 %.0, 4
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = icmp eq i32 %.0, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %20, %18, %16
  br label %94

23:                                               ; preds = %20
  %24 = getelementptr inbounds i16, i16* %.04, i64 8
  %25 = load i16, i16* %24, align 2
  %26 = getelementptr inbounds i16, i16* %.04, i64 24
  %27 = load i16, i16* %26, align 2
  %28 = or i16 %25, %27
  %29 = getelementptr inbounds i16, i16* %.04, i64 40
  %30 = load i16, i16* %29, align 2
  %31 = or i16 %28, %30
  %32 = getelementptr inbounds i16, i16* %.04, i64 56
  %33 = load i16, i16* %32, align 2
  %34 = or i16 %31, %33
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load i16, i16* %.04, align 2
  %38 = sext i16 %37 to i32
  %39 = load i32, i32* %.03, align 4
  %40 = mul nsw i32 %39, %38
  %41 = shl i32 %40, 2
  store i32 %41, i32* %.01, align 4
  %42 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %41, i32* %42, align 4
  br label %94

43:                                               ; preds = %23
  %44 = load i16, i16* %.04, align 2
  %45 = sext i16 %44 to i32
  %46 = load i32, i32* %.03, align 4
  %47 = mul nsw i32 %46, %45
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 15
  %50 = getelementptr inbounds i16, i16* %.04, i64 56
  %51 = load i16, i16* %50, align 2
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds i32, i32* %.03, i64 56
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, %52
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, -5906
  %58 = getelementptr inbounds i16, i16* %.04, i64 40
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = getelementptr inbounds i32, i32* %.03, i64 40
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, %60
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, 6967
  %66 = add nsw i64 %57, %65
  %67 = getelementptr inbounds i16, i16* %.04, i64 24
  %68 = load i16, i16* %67, align 2
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds i32, i32* %.03, i64 24
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %71, %69
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, -10426
  %75 = add nsw i64 %66, %74
  %76 = getelementptr inbounds i16, i16* %.04, i64 8
  %77 = load i16, i16* %76, align 2
  %78 = sext i16 %77 to i32
  %79 = getelementptr inbounds i32, i32* %.03, i64 8
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %80, %78
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, 29692
  %84 = add nsw i64 %75, %83
  %85 = add nsw i64 %49, %84
  %86 = add nsw i64 %85, 4096
  %87 = lshr i64 %86, 13
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %.01, align 4
  %89 = sub nsw i64 %49, %84
  %90 = add nsw i64 %89, 4096
  %91 = lshr i64 %90, 13
  %92 = trunc i64 %91 to i32
  %93 = getelementptr inbounds i32, i32* %.01, i64 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %43, %36, %22
  %95 = getelementptr inbounds i16, i16* %.04, i64 1
  %96 = getelementptr inbounds i32, i32* %.03, i64 1
  %97 = getelementptr inbounds i32, i32* %.01, i64 1
  %98 = add nsw i32 %.0, -1
  br label %14, !llvm.loop !7

99:                                               ; preds = %14
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  br label %101

101:                                              ; preds = %166, %99
  %.12 = phi i32* [ %100, %99 ], [ %.2, %166 ]
  %.1 = phi i32 [ 0, %99 ], [ %167, %166 ]
  %102 = icmp ult i32 %.1, 2
  br i1 %102, label %103, label %168

103:                                              ; preds = %101
  %104 = zext i32 %.1 to i64
  %105 = getelementptr inbounds i8*, i8** %3, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = zext i32 %4 to i64
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = getelementptr inbounds i32, i32* %.12, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds i32, i32* %.12, i64 3
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %110, %112
  %114 = getelementptr inbounds i32, i32* %.12, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %113, %115
  %117 = getelementptr inbounds i32, i32* %.12, i64 7
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %116, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %103
  %122 = load i32, i32* %.12, align 4
  %123 = add i32 %122, 16
  %124 = lshr i32 %123, 5
  %125 = and i32 %124, 1023
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %9, i64 %126
  %128 = load i8, i8* %127, align 1
  store i8 %128, i8* %108, align 1
  %129 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %128, i8* %129, align 1
  br label %166

130:                                              ; preds = %103
  %131 = load i32, i32* %.12, align 4
  %132 = sext i32 %131 to i64
  %133 = shl nsw i64 %132, 15
  %134 = getelementptr inbounds i32, i32* %.12, i64 7
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, -5906
  %138 = getelementptr inbounds i32, i32* %.12, i64 5
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul nsw i64 %140, 6967
  %142 = add nsw i64 %137, %141
  %143 = getelementptr inbounds i32, i32* %.12, i64 3
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %145, -10426
  %147 = add nsw i64 %142, %146
  %148 = getelementptr inbounds i32, i32* %.12, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = mul nsw i64 %150, 29692
  %152 = add nsw i64 %147, %151
  %153 = add nsw i64 %133, %152
  %154 = add nsw i64 %153, 524288
  %155 = lshr i64 %154, 20
  %156 = and i64 %155, 1023
  %157 = getelementptr inbounds i8, i8* %9, i64 %156
  %158 = load i8, i8* %157, align 1
  store i8 %158, i8* %108, align 1
  %159 = sub nsw i64 %133, %152
  %160 = add nsw i64 %159, 524288
  %161 = lshr i64 %160, 20
  %162 = and i64 %161, 1023
  %163 = getelementptr inbounds i8, i8* %9, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = getelementptr inbounds i8, i8* %108, i64 1
  store i8 %164, i8* %165, align 1
  br label %166

166:                                              ; preds = %130, %121
  %.2 = getelementptr inbounds i32, i32* %.12, i64 8
  %167 = add nuw nsw i32 %.1, 1
  br label %101, !llvm.loop !8

168:                                              ; preds = %101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @jpeg_idct_1x1(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #1 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 128
  %9 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %10 = bitcast i8** %9 to i32**
  %11 = load i32*, i32** %10, align 8
  %12 = load i16, i16* %2, align 2
  %13 = sext i16 %12 to i32
  %14 = load i32, i32* %11, align 4
  %15 = mul nsw i32 %14, %13
  %16 = add i32 %15, 4
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 1023
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %8, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %3, align 8
  %23 = zext i32 %4 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 %21, i8* %24, align 1
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
