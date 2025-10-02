; ModuleID = './jidctflt.ll'
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

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @jpeg_idct_float(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i16* nocapture noundef readonly %2, i8** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = alloca [64 x float], align 16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 128
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 20
  %11 = bitcast i8** %10 to float**
  %12 = load float*, float** %11, align 8
  %13 = getelementptr inbounds [64 x float], [64 x float]* %6, i64 0, i64 0
  br label %14

14:                                               ; preds = %137, %5
  %.05 = phi i16* [ %2, %5 ], [ %.16, %137 ]
  %.03 = phi float* [ %12, %5 ], [ %.14, %137 ]
  %.01 = phi float* [ %13, %5 ], [ %.12, %137 ]
  %.0 = phi i32 [ 8, %5 ], [ %138, %137 ]
  %15 = icmp sgt i32 %.0, 0
  br i1 %15, label %16, label %139

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
  %40 = sitofp i16 %39 to float
  %41 = load float, float* %.03, align 4
  %42 = fmul float %41, %40
  store float %42, float* %.01, align 4
  %43 = getelementptr inbounds float, float* %.01, i64 8
  store float %42, float* %43, align 4
  %44 = getelementptr inbounds float, float* %.01, i64 16
  store float %42, float* %44, align 4
  %45 = getelementptr inbounds float, float* %.01, i64 24
  store float %42, float* %45, align 4
  %46 = getelementptr inbounds float, float* %.01, i64 32
  store float %42, float* %46, align 4
  %47 = getelementptr inbounds float, float* %.01, i64 40
  store float %42, float* %47, align 4
  %48 = getelementptr inbounds float, float* %.01, i64 48
  store float %42, float* %48, align 4
  %49 = getelementptr inbounds float, float* %.01, i64 56
  store float %42, float* %49, align 4
  br label %137

50:                                               ; preds = %16
  %51 = load i16, i16* %.05, align 2
  %52 = sitofp i16 %51 to float
  %53 = load float, float* %.03, align 4
  %54 = fmul float %53, %52
  %55 = getelementptr inbounds i16, i16* %.05, i64 16
  %56 = load i16, i16* %55, align 2
  %57 = sitofp i16 %56 to float
  %58 = getelementptr inbounds float, float* %.03, i64 16
  %59 = load float, float* %58, align 4
  %60 = fmul float %59, %57
  %61 = getelementptr inbounds i16, i16* %.05, i64 32
  %62 = load i16, i16* %61, align 2
  %63 = sitofp i16 %62 to float
  %64 = getelementptr inbounds float, float* %.03, i64 32
  %65 = load float, float* %64, align 4
  %66 = fmul float %65, %63
  %67 = getelementptr inbounds i16, i16* %.05, i64 48
  %68 = load i16, i16* %67, align 2
  %69 = sitofp i16 %68 to float
  %70 = getelementptr inbounds float, float* %.03, i64 48
  %71 = load float, float* %70, align 4
  %72 = fmul float %71, %69
  %73 = fadd float %54, %66
  %74 = fsub float %54, %66
  %75 = fadd float %60, %72
  %76 = fsub float %60, %72
  %77 = fneg float %75
  %78 = call float @llvm.fmuladd.f32(float %76, float 0x3FF6A09E60000000, float %77)
  %79 = fadd float %73, %75
  %80 = fsub float %73, %75
  %81 = fadd float %74, %78
  %82 = fsub float %74, %78
  %83 = getelementptr inbounds i16, i16* %.05, i64 8
  %84 = load i16, i16* %83, align 2
  %85 = sitofp i16 %84 to float
  %86 = getelementptr inbounds float, float* %.03, i64 8
  %87 = load float, float* %86, align 4
  %88 = fmul float %87, %85
  %89 = getelementptr inbounds i16, i16* %.05, i64 24
  %90 = load i16, i16* %89, align 2
  %91 = sitofp i16 %90 to float
  %92 = getelementptr inbounds float, float* %.03, i64 24
  %93 = load float, float* %92, align 4
  %94 = fmul float %93, %91
  %95 = getelementptr inbounds i16, i16* %.05, i64 40
  %96 = load i16, i16* %95, align 2
  %97 = sitofp i16 %96 to float
  %98 = getelementptr inbounds float, float* %.03, i64 40
  %99 = load float, float* %98, align 4
  %100 = fmul float %99, %97
  %101 = getelementptr inbounds i16, i16* %.05, i64 56
  %102 = load i16, i16* %101, align 2
  %103 = sitofp i16 %102 to float
  %104 = getelementptr inbounds float, float* %.03, i64 56
  %105 = load float, float* %104, align 4
  %106 = fmul float %105, %103
  %107 = fadd float %100, %94
  %108 = fsub float %100, %94
  %109 = fadd float %88, %106
  %110 = fsub float %88, %106
  %111 = fadd float %109, %107
  %112 = fsub float %109, %107
  %113 = fmul float %112, 0x3FF6A09E60000000
  %114 = fadd float %108, %110
  %115 = fmul float %114, 0x3FFD906BC0000000
  %116 = fneg float %115
  %117 = call float @llvm.fmuladd.f32(float %110, float 0x3FF1517A80000000, float %116)
  %118 = call float @llvm.fmuladd.f32(float %108, float 0xC004E7AEA0000000, float %115)
  %119 = fsub float %118, %111
  %120 = fsub float %113, %119
  %121 = fadd float %117, %120
  %122 = fadd float %79, %111
  store float %122, float* %.01, align 4
  %123 = fsub float %79, %111
  %124 = getelementptr inbounds float, float* %.01, i64 56
  store float %123, float* %124, align 4
  %125 = fadd float %81, %119
  %126 = getelementptr inbounds float, float* %.01, i64 8
  store float %125, float* %126, align 4
  %127 = fsub float %81, %119
  %128 = getelementptr inbounds float, float* %.01, i64 48
  store float %127, float* %128, align 4
  %129 = fadd float %82, %120
  %130 = getelementptr inbounds float, float* %.01, i64 16
  store float %129, float* %130, align 4
  %131 = fsub float %82, %120
  %132 = getelementptr inbounds float, float* %.01, i64 40
  store float %131, float* %132, align 4
  %133 = fadd float %80, %121
  %134 = getelementptr inbounds float, float* %.01, i64 32
  store float %133, float* %134, align 4
  %135 = fsub float %80, %121
  %136 = getelementptr inbounds float, float* %.01, i64 24
  store float %135, float* %136, align 4
  br label %137

137:                                              ; preds = %50, %38
  %.12 = getelementptr inbounds float, float* %.01, i64 1
  %.14 = getelementptr inbounds float, float* %.03, i64 1
  %.16 = getelementptr inbounds i16, i16* %.05, i64 1
  %138 = add nsw i32 %.0, -1
  br label %14, !llvm.loop !4

139:                                              ; preds = %14
  %140 = getelementptr inbounds [64 x float], [64 x float]* %6, i64 0, i64 0
  br label %141

141:                                              ; preds = %252, %139
  %.2 = phi float* [ %140, %139 ], [ %253, %252 ]
  %.1 = phi i32 [ 0, %139 ], [ %254, %252 ]
  %142 = icmp ult i32 %.1, 8
  br i1 %142, label %143, label %255

143:                                              ; preds = %141
  %144 = zext i32 %.1 to i64
  %145 = getelementptr inbounds i8*, i8** %3, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = zext i32 %4 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load float, float* %.2, align 4
  %150 = getelementptr inbounds float, float* %.2, i64 4
  %151 = load float, float* %150, align 4
  %152 = fadd float %149, %151
  %153 = fsub float %149, %151
  %154 = getelementptr inbounds float, float* %.2, i64 2
  %155 = load float, float* %154, align 4
  %156 = getelementptr inbounds float, float* %.2, i64 6
  %157 = load float, float* %156, align 4
  %158 = fadd float %155, %157
  %159 = fsub float %155, %157
  %160 = fneg float %158
  %161 = call float @llvm.fmuladd.f32(float %159, float 0x3FF6A09E60000000, float %160)
  %162 = fadd float %152, %158
  %163 = fsub float %152, %158
  %164 = fadd float %153, %161
  %165 = fsub float %153, %161
  %166 = getelementptr inbounds float, float* %.2, i64 5
  %167 = load float, float* %166, align 4
  %168 = getelementptr inbounds float, float* %.2, i64 3
  %169 = load float, float* %168, align 4
  %170 = fadd float %167, %169
  %171 = fsub float %167, %169
  %172 = getelementptr inbounds float, float* %.2, i64 1
  %173 = load float, float* %172, align 4
  %174 = getelementptr inbounds float, float* %.2, i64 7
  %175 = load float, float* %174, align 4
  %176 = fadd float %173, %175
  %177 = fsub float %173, %175
  %178 = fadd float %176, %170
  %179 = fsub float %176, %170
  %180 = fmul float %179, 0x3FF6A09E60000000
  %181 = fadd float %171, %177
  %182 = fmul float %181, 0x3FFD906BC0000000
  %183 = fneg float %182
  %184 = call float @llvm.fmuladd.f32(float %177, float 0x3FF1517A80000000, float %183)
  %185 = call float @llvm.fmuladd.f32(float %171, float 0xC004E7AEA0000000, float %182)
  %186 = fsub float %185, %178
  %187 = fsub float %180, %186
  %188 = fadd float %184, %187
  %189 = fadd float %162, %178
  %190 = fptosi float %189 to i64
  %191 = add i64 %190, 4
  %192 = lshr i64 %191, 3
  %193 = and i64 %192, 1023
  %194 = getelementptr inbounds i8, i8* %9, i64 %193
  %195 = load i8, i8* %194, align 1
  store i8 %195, i8* %148, align 1
  %196 = fsub float %162, %178
  %197 = fptosi float %196 to i64
  %198 = add i64 %197, 4
  %199 = lshr i64 %198, 3
  %200 = and i64 %199, 1023
  %201 = getelementptr inbounds i8, i8* %9, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = getelementptr inbounds i8, i8* %148, i64 7
  store i8 %202, i8* %203, align 1
  %204 = fadd float %164, %186
  %205 = fptosi float %204 to i64
  %206 = add i64 %205, 4
  %207 = lshr i64 %206, 3
  %208 = and i64 %207, 1023
  %209 = getelementptr inbounds i8, i8* %9, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = getelementptr inbounds i8, i8* %148, i64 1
  store i8 %210, i8* %211, align 1
  %212 = fsub float %164, %186
  %213 = fptosi float %212 to i64
  %214 = add i64 %213, 4
  %215 = lshr i64 %214, 3
  %216 = and i64 %215, 1023
  %217 = getelementptr inbounds i8, i8* %9, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = getelementptr inbounds i8, i8* %148, i64 6
  store i8 %218, i8* %219, align 1
  %220 = fadd float %165, %187
  %221 = fptosi float %220 to i64
  %222 = add i64 %221, 4
  %223 = lshr i64 %222, 3
  %224 = and i64 %223, 1023
  %225 = getelementptr inbounds i8, i8* %9, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = getelementptr inbounds i8, i8* %148, i64 2
  store i8 %226, i8* %227, align 1
  %228 = fsub float %165, %187
  %229 = fptosi float %228 to i64
  %230 = add i64 %229, 4
  %231 = lshr i64 %230, 3
  %232 = and i64 %231, 1023
  %233 = getelementptr inbounds i8, i8* %9, i64 %232
  %234 = load i8, i8* %233, align 1
  %235 = getelementptr inbounds i8, i8* %148, i64 5
  store i8 %234, i8* %235, align 1
  %236 = fadd float %163, %188
  %237 = fptosi float %236 to i64
  %238 = add i64 %237, 4
  %239 = lshr i64 %238, 3
  %240 = and i64 %239, 1023
  %241 = getelementptr inbounds i8, i8* %9, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = getelementptr inbounds i8, i8* %148, i64 4
  store i8 %242, i8* %243, align 1
  %244 = fsub float %163, %188
  %245 = fptosi float %244 to i64
  %246 = add i64 %245, 4
  %247 = lshr i64 %246, 3
  %248 = and i64 %247, 1023
  %249 = getelementptr inbounds i8, i8* %9, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = getelementptr inbounds i8, i8* %148, i64 3
  store i8 %250, i8* %251, align 1
  br label %252

252:                                              ; preds = %143
  %253 = getelementptr inbounds float, float* %.2, i64 8
  %254 = add nuw nsw i32 %.1, 1
  br label %141, !llvm.loop !6

255:                                              ; preds = %141
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
