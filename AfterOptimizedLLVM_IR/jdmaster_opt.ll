; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmaster.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmaster.c"
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
%struct.jpeg_source_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, {}* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { {}*, {}*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, {}*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, i32, i32 }
%struct.jpeg_marker_reader = type { {}*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { {}*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { {}*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { {}*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, {}*, {}* }
%struct.my_decomp_master = type { %struct.jpeg_decomp_master, i32, i32, %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_component_info*, align 8
  %5 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 202
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 18, i32* %14, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 6
  %22 = bitcast %union.anon* %21 to [8 x i32]*
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 %17, i32* %23, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 0
  %28 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %27, align 8
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %29 to %struct.jpeg_common_struct*
  call void %28(%struct.jpeg_common_struct* noundef %30)
  br label %31

31:                                               ; preds = %10, %1
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %34, 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 12
  %38 = load i32, i32* %37, align 8
  %39 = icmp ule i32 %35, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = zext i32 %43 to i64
  %45 = call i64 @jdiv_round_up(i64 noundef %44, i64 noundef 8)
  %46 = trunc i64 %45 to i32
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 26
  store i32 %46, i32* %48, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = zext i32 %51 to i64
  %53 = call i64 @jdiv_round_up(i64 noundef %52, i64 noundef 8)
  %54 = trunc i64 %53 to i32
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 27
  store i32 %54, i32* %56, align 4
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 59
  store i32 1, i32* %58, align 4
  br label %130

59:                                               ; preds = %31
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %62, 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = icmp ule i32 %63, %66
  br i1 %67, label %68, label %87

68:                                               ; preds = %59
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = call i64 @jdiv_round_up(i64 noundef %72, i64 noundef 4)
  %74 = trunc i64 %73 to i32
  %75 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %75, i32 0, i32 26
  store i32 %74, i32* %76, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = zext i32 %79 to i64
  %81 = call i64 @jdiv_round_up(i64 noundef %80, i64 noundef 4)
  %82 = trunc i64 %81 to i32
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 27
  store i32 %82, i32* %84, align 4
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 59
  store i32 2, i32* %86, align 4
  br label %129

87:                                               ; preds = %59
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 11
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %90, 2
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = icmp ule i32 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %87
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = zext i32 %99 to i64
  %101 = call i64 @jdiv_round_up(i64 noundef %100, i64 noundef 2)
  %102 = trunc i64 %101 to i32
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 26
  store i32 %102, i32* %104, align 8
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  %109 = call i64 @jdiv_round_up(i64 noundef %108, i64 noundef 2)
  %110 = trunc i64 %109 to i32
  %111 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %111, i32 0, i32 27
  store i32 %110, i32* %112, align 4
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 59
  store i32 4, i32* %114, align 4
  br label %128

115:                                              ; preds = %87
  %116 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 26
  store i32 %118, i32* %120, align 8
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 27
  store i32 %123, i32* %125, align 4
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 59
  store i32 8, i32* %127, align 4
  br label %128

128:                                              ; preds = %115, %96
  br label %129

129:                                              ; preds = %128, %68
  br label %130

130:                                              ; preds = %129, %40
  store i32 0, i32* %3, align 4
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %131, i32 0, i32 43
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %132, align 8
  store %struct.jpeg_component_info* %133, %struct.jpeg_component_info** %4, align 8
  br label %134

134:                                              ; preds = %186, %130
  %135 = load i32, i32* %3, align 4
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %191

140:                                              ; preds = %134
  %141 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %141, i32 0, i32 59
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %5, align 4
  br label %144

144:                                              ; preds = %179, %140
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %145, 8
  br i1 %146, label %147, label %177

147:                                              ; preds = %144
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %5, align 4
  %152 = mul nsw i32 %150, %151
  %153 = mul nsw i32 %152, 2
  %154 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %155 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %154, i32 0, i32 57
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %157, i32 0, i32 59
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 %156, %159
  %161 = icmp sle i32 %153, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %147
  %163 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %164 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = mul nsw i32 %165, %166
  %168 = mul nsw i32 %167, 2
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %170 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %169, i32 0, i32 58
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 59
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %171, %174
  %176 = icmp sle i32 %168, %175
  br label %177

177:                                              ; preds = %162, %147, %144
  %178 = phi i1 [ false, %147 ], [ false, %144 ], [ %176, %162 ]
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = load i32, i32* %5, align 4
  %181 = mul nsw i32 %180, 2
  store i32 %181, i32* %5, align 4
  br label %144, !llvm.loop !4

182:                                              ; preds = %177
  %183 = load i32, i32* %5, align 4
  %184 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %185 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %184, i32 0, i32 9
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %3, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %3, align 4
  %189 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %190 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %189, i32 1
  store %struct.jpeg_component_info* %190, %struct.jpeg_component_info** %4, align 8
  br label %134, !llvm.loop !6

191:                                              ; preds = %134
  store i32 0, i32* %3, align 4
  %192 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %193 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %192, i32 0, i32 43
  %194 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %193, align 8
  store %struct.jpeg_component_info* %194, %struct.jpeg_component_info** %4, align 8
  br label %195

195:                                              ; preds = %246, %191
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %198 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %251

201:                                              ; preds = %195
  %202 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %203 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = zext i32 %204 to i64
  %206 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %207 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %210 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = mul nsw i64 %205, %213
  %215 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %216 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %215, i32 0, i32 57
  %217 = load i32, i32* %216, align 4
  %218 = mul nsw i32 %217, 8
  %219 = sext i32 %218 to i64
  %220 = call i64 @jdiv_round_up(i64 noundef %214, i64 noundef %219)
  %221 = trunc i64 %220 to i32
  %222 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %223 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %222, i32 0, i32 10
  store i32 %221, i32* %223, align 8
  %224 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %225 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = zext i32 %226 to i64
  %228 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %229 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %230, %233
  %235 = sext i32 %234 to i64
  %236 = mul nsw i64 %227, %235
  %237 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %238 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %237, i32 0, i32 58
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %239, 8
  %241 = sext i32 %240 to i64
  %242 = call i64 @jdiv_round_up(i64 noundef %236, i64 noundef %241)
  %243 = trunc i64 %242 to i32
  %244 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %245 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %244, i32 0, i32 11
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %201
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %3, align 4
  %249 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %250 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %249, i32 1
  store %struct.jpeg_component_info* %250, %struct.jpeg_component_info** %4, align 8
  br label %195, !llvm.loop !7

251:                                              ; preds = %195
  %252 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %253 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 8
  switch i32 %254, label %264 [
    i32 1, label %255
    i32 2, label %258
    i32 3, label %258
    i32 4, label %261
    i32 5, label %261
  ]

255:                                              ; preds = %251
  %256 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %257 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %256, i32 0, i32 28
  store i32 1, i32* %257, align 8
  br label %270

258:                                              ; preds = %251, %251
  %259 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %260 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %259, i32 0, i32 28
  store i32 3, i32* %260, align 8
  br label %270

261:                                              ; preds = %251, %251
  %262 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %263 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %262, i32 0, i32 28
  store i32 4, i32* %263, align 8
  br label %270

264:                                              ; preds = %251
  %265 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %266 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %269 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %268, i32 0, i32 28
  store i32 %267, i32* %269, align 8
  br label %270

270:                                              ; preds = %264, %261, %258, %255
  %271 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %272 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %271, i32 0, i32 19
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %270
  br label %280

276:                                              ; preds = %270
  %277 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %278 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %277, i32 0, i32 28
  %279 = load i32, i32* %278, align 8
  br label %280

280:                                              ; preds = %276, %275
  %281 = phi i32 [ 1, %275 ], [ %279, %276 ]
  %282 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %283 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %282, i32 0, i32 29
  store i32 %281, i32* %283, align 4
  %284 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %285 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* noundef %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %280
  %288 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %289 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %288, i32 0, i32 58
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %292 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %291, i32 0, i32 30
  store i32 %290, i32* %292, align 8
  br label %296

293:                                              ; preds = %280
  %294 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %295 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %294, i32 0, i32 30
  store i32 1, i32* %295, align 8
  br label %296

296:                                              ; preds = %293, %287
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @use_merged_upsample(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 17
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 56
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %119

14:                                               ; preds = %8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 28
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24, %19, %14
  store i32 0, i32* %2, align 4
  br label %119

35:                                               ; preds = %29
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 43
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 2
  br i1 %42, label %83, label %43

43:                                               ; preds = %35
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 43
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1
  %48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %83, label %51

51:                                               ; preds = %43
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 43
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %53, align 8
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2
  %56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %83, label %59

59:                                               ; preds = %51
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 43
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i64 0
  %64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %83, label %67

67:                                               ; preds = %59
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 43
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %69, align 8
  %71 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i64 1
  %72 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 1
  br i1 %74, label %83, label %75

75:                                               ; preds = %67
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 43
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i64 2
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %75, %67, %59, %51, %43, %35
  store i32 0, i32* %2, align 4
  br label %119

84:                                               ; preds = %75
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 43
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i64 0
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 59
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %117, label %95

95:                                               ; preds = %84
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 43
  %98 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %98, i64 1
  %100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 59
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %117, label %106

106:                                              ; preds = %95
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 43
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i64 2
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 59
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %106, %95, %84
  store i32 0, i32* %2, align 4
  br label %119

118:                                              ; preds = %106
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %117, %83, %34, %13
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_new_colormap(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 73
  %6 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %5, align 8
  %7 = bitcast %struct.jpeg_decomp_master* %6 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %7, %struct.my_decomp_master** %3, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 207
  br i1 %11, label %12, label %33

12:                                               ; preds = %1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 18, i32* %16, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i32 0, i32 6
  %24 = bitcast %union.anon* %23 to [8 x i32]*
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %24, i64 0, i64 0
  store i32 %19, i32* %25, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i32 0, i32 0
  %30 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %29, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %31 to %struct.jpeg_common_struct*
  call void %30(%struct.jpeg_common_struct* noundef %32)
  br label %33

33:                                               ; preds = %12, %1
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 19
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 24
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 32
  %46 = load i8**, i8*** %45, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %43
  %49 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %50 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %49, i32 0, i32 4
  %51 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %50, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %51, %struct.jpeg_color_quantizer** %53, align 8
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 83
  %56 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %55, align 8
  %57 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %56, i32 0, i32 3
  %58 = bitcast {}** %57 to void (%struct.jpeg_decompress_struct*)**
  %59 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %58, align 8
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %59(%struct.jpeg_decompress_struct* noundef %60)
  %61 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %62 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  br label %76

64:                                               ; preds = %43, %38, %33
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 0
  %67 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %66, align 8
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %67, i32 0, i32 5
  store i32 45, i32* %68, align 8
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i32 0, i32 0
  %73 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %72, align 8
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %75 = bitcast %struct.jpeg_decompress_struct* %74 to %struct.jpeg_common_struct*
  call void %73(%struct.jpeg_common_struct* noundef %75)
  br label %76

76:                                               ; preds = %64, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 48)
  %12 = bitcast i8* %11 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %12, %struct.my_decomp_master** %3, align 8
  %13 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %14 = bitcast %struct.my_decomp_master* %13 to %struct.jpeg_decomp_master*
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 73
  store %struct.jpeg_decomp_master* %14, %struct.jpeg_decomp_master** %16, align 8
  %17 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %18 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @prepare_for_output_pass, void (%struct.jpeg_decompress_struct*)** %20, align 8
  %21 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %22 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %22, i32 0, i32 1
  %24 = bitcast {}** %23 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_output_pass, void (%struct.jpeg_decompress_struct*)** %24, align 8
  %25 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %26 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %26, i32 0, i32 2
  store i32 0, i32* %27, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @master_selection(%struct.jpeg_decompress_struct* noundef %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_for_output_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 73
  %6 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %5, align 8
  %7 = bitcast %struct.jpeg_decomp_master* %6 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %7, %struct.my_decomp_master** %3, align 8
  %8 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %9 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %1
  %14 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %15 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 83
  %19 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %19, i32 0, i32 0
  %21 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %20, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %21(%struct.jpeg_decompress_struct* noundef %22, i32 noundef 0)
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 76
  %25 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %26, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %27(%struct.jpeg_decompress_struct* noundef %28, i32 noundef 2)
  %29 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %29, i32 0, i32 74
  %31 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %31, i32 0, i32 0
  %33 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %32, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %33(%struct.jpeg_decompress_struct* noundef %34, i32 noundef 2)
  br label %165

35:                                               ; preds = %1
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 19
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %89

40:                                               ; preds = %35
  %41 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %41, i32 0, i32 32
  %43 = load i8**, i8*** %42, align 8
  %44 = icmp eq i8** %43, null
  br i1 %44, label %45, label %89

45:                                               ; preds = %40
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 21
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 25
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %57 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %56, i32 0, i32 4
  %58 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %57, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %58, %struct.jpeg_color_quantizer** %60, align 8
  %61 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %62 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  br label %88

64:                                               ; preds = %50, %45
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 23
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %71 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %70, i32 0, i32 3
  %72 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %71, align 8
  %73 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %73, i32 0, i32 83
  store %struct.jpeg_color_quantizer* %72, %struct.jpeg_color_quantizer** %74, align 8
  br label %87

75:                                               ; preds = %64
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 0
  %78 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %78, i32 0, i32 5
  store i32 45, i32* %79, align 8
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %81, align 8
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i32 0, i32 0
  %84 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %83, align 8
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %86 = bitcast %struct.jpeg_decompress_struct* %85 to %struct.jpeg_common_struct*
  call void %84(%struct.jpeg_common_struct* noundef %86)
  br label %87

87:                                               ; preds = %75, %69
  br label %88

88:                                               ; preds = %87, %55
  br label %89

89:                                               ; preds = %88, %40, %35
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %91 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %90, i32 0, i32 80
  %92 = load %struct.jpeg_inverse_dct*, %struct.jpeg_inverse_dct** %91, align 8
  %93 = getelementptr inbounds %struct.jpeg_inverse_dct, %struct.jpeg_inverse_dct* %92, i32 0, i32 0
  %94 = bitcast {}** %93 to void (%struct.jpeg_decompress_struct*)**
  %95 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %94, align 8
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %95(%struct.jpeg_decompress_struct* noundef %96)
  %97 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %98 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %97, i32 0, i32 75
  %99 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %98, align 8
  %100 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %99, i32 0, i32 2
  %101 = bitcast {}** %100 to void (%struct.jpeg_decompress_struct*)**
  %102 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %101, align 8
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %102(%struct.jpeg_decompress_struct* noundef %103)
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 15
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %164, label %108

108:                                              ; preds = %89
  %109 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %110 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %108
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 82
  %116 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %116, i32 0, i32 0
  %118 = bitcast {}** %117 to void (%struct.jpeg_decompress_struct*)**
  %119 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %118, align 8
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %119(%struct.jpeg_decompress_struct* noundef %120)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 81
  %124 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %123, align 8
  %125 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %124, i32 0, i32 0
  %126 = bitcast {}** %125 to void (%struct.jpeg_decompress_struct*)**
  %127 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %126, align 8
  %128 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %127(%struct.jpeg_decompress_struct* noundef %128)
  %129 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %129, i32 0, i32 19
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %121
  %134 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %134, i32 0, i32 83
  %136 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %135, align 8
  %137 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %136, i32 0, i32 0
  %138 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %137, align 8
  %139 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %140 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %141 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  call void %138(%struct.jpeg_decompress_struct* noundef %139, i32 noundef %143)
  br label %144

144:                                              ; preds = %133, %121
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %146 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %145, i32 0, i32 76
  %147 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %146, align 8
  %148 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %147, i32 0, i32 0
  %149 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %148, align 8
  %150 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %151 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %152 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 3, i32 0
  call void %149(%struct.jpeg_decompress_struct* noundef %150, i32 noundef %157)
  %158 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %159 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %158, i32 0, i32 74
  %160 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %159, align 8
  %161 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %160, i32 0, i32 0
  %162 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %161, align 8
  %163 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %162(%struct.jpeg_decompress_struct* noundef %163, i32 noundef 0)
  br label %164

164:                                              ; preds = %144, %89
  br label %165

165:                                              ; preds = %164, %13
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %167 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %166, i32 0, i32 2
  %168 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %167, align 8
  %169 = icmp ne %struct.jpeg_progress_mgr* %168, null
  br i1 %169, label %170, label %218

170:                                              ; preds = %165
  %171 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %172 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 2
  %176 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %175, align 8
  %177 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %176, i32 0, i32 3
  store i32 %173, i32* %177, align 8
  %178 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %179 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %182 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 2, i32 1
  %188 = add nsw i32 %180, %187
  %189 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %190 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %189, i32 0, i32 2
  %191 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %190, align 8
  %192 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %191, i32 0, i32 4
  store i32 %188, i32* %192, align 4
  %193 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %194 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %217

197:                                              ; preds = %170
  %198 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %199 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %198, i32 0, i32 77
  %200 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %199, align 8
  %201 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %217, label %204

204:                                              ; preds = %197
  %205 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %205, i32 0, i32 25
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 2, i32 1
  %211 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %212 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %211, i32 0, i32 2
  %213 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %212, align 8
  %214 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %210
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %204, %197, %170
  br label %218

218:                                              ; preds = %217, %165
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_decomp_master*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 73
  %6 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %5, align 8
  %7 = bitcast %struct.jpeg_decomp_master* %6 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %7, %struct.my_decomp_master** %3, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 83
  %15 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %15, i32 0, i32 2
  %17 = bitcast {}** %16 to void (%struct.jpeg_decompress_struct*)**
  %18 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %17, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %18(%struct.jpeg_decompress_struct* noundef %19)
  br label %20

20:                                               ; preds = %12, %1
  %21 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %22 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @master_selection(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_decomp_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 73
  %10 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %9, align 8
  %11 = bitcast %struct.jpeg_decomp_master* %10 to %struct.my_decomp_master*
  store %struct.my_decomp_master* %11, %struct.my_decomp_master** %3, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %12)
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @prepare_range_limit_table(%struct.jpeg_decompress_struct* noundef %13)
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 26
  %16 = load i32, i32* %15, align 8
  %17 = zext i32 %16 to i64
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 28
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %17, %21
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 69, i32* %33, align 8
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %37, align 8
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %40 = bitcast %struct.jpeg_decompress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* noundef %40)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %43 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* noundef %44)
  %46 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %47 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %49 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %48, i32 0, i32 3
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %49, align 8
  %50 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %51 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %50, i32 0, i32 4
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %51, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %41
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 14
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %56, %41
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 23
  store i32 0, i32* %63, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 24
  store i32 0, i32* %65, align 8
  %66 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %66, i32 0, i32 25
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 19
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %155

73:                                               ; preds = %68
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 15
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %73
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 46, i32* %82, align 8
  %83 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %83, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 0
  %87 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %86, align 8
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %89 = bitcast %struct.jpeg_decompress_struct* %88 to %struct.jpeg_common_struct*
  call void %87(%struct.jpeg_common_struct* noundef %89)
  br label %90

90:                                               ; preds = %78, %73
  %91 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %91, i32 0, i32 28
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 3
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 23
  store i32 1, i32* %97, align 4
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 24
  store i32 0, i32* %99, align 8
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 25
  store i32 0, i32* %101, align 4
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 32
  store i8** null, i8*** %103, align 8
  br label %125

104:                                              ; preds = %90
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 32
  %107 = load i8**, i8*** %106, align 8
  %108 = icmp ne i8** %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %111 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %110, i32 0, i32 24
  store i32 1, i32* %111, align 8
  br label %124

112:                                              ; preds = %104
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %114 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %113, i32 0, i32 21
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 25
  store i32 1, i32* %119, align 4
  br label %123

120:                                              ; preds = %112
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 23
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %109
  br label %125

125:                                              ; preds = %124, %95
  %126 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %126, i32 0, i32 23
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* noundef %131)
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %132, i32 0, i32 83
  %134 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %133, align 8
  %135 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %136 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %135, i32 0, i32 3
  store %struct.jpeg_color_quantizer* %134, %struct.jpeg_color_quantizer** %136, align 8
  br label %137

137:                                              ; preds = %130, %125
  %138 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %139 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %138, i32 0, i32 25
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %144 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %143, i32 0, i32 24
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %142, %137
  %148 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* noundef %148)
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 83
  %151 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %150, align 8
  %152 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %153 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %152, i32 0, i32 4
  store %struct.jpeg_color_quantizer* %151, %struct.jpeg_color_quantizer** %153, align 8
  br label %154

154:                                              ; preds = %147, %142
  br label %155

155:                                              ; preds = %154, %68
  %156 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %157 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %156, i32 0, i32 15
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %175, label %160

160:                                              ; preds = %155
  %161 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %162 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* noundef %166)
  br label %170

167:                                              ; preds = %160
  %168 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_color_deconverter(%struct.jpeg_decompress_struct* noundef %168)
  %169 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_upsampler(%struct.jpeg_decompress_struct* noundef %169)
  br label %170

170:                                              ; preds = %167, %165
  %171 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %172 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %173 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %172, i32 0, i32 25
  %174 = load i32, i32* %173, align 4
  call void @jinit_d_post_controller(%struct.jpeg_decompress_struct* noundef %171, i32 noundef %174)
  br label %175

175:                                              ; preds = %170, %155
  %176 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_inverse_dct(%struct.jpeg_decompress_struct* noundef %176)
  %177 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %178 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %177, i32 0, i32 45
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %175
  %182 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %182, i32 0, i32 0
  %184 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %183, align 8
  %185 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %184, i32 0, i32 5
  store i32 1, i32* %185, align 8
  %186 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %186, i32 0, i32 0
  %188 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %187, align 8
  %189 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %188, i32 0, i32 0
  %190 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %189, align 8
  %191 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %192 = bitcast %struct.jpeg_decompress_struct* %191 to %struct.jpeg_common_struct*
  call void %190(%struct.jpeg_common_struct* noundef %192)
  br label %203

193:                                              ; preds = %175
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %195 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %194, i32 0, i32 44
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef %199)
  br label %202

200:                                              ; preds = %193
  %201 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef %201)
  br label %202

202:                                              ; preds = %200, %198
  br label %203

203:                                              ; preds = %202, %181
  %204 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %205 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %204, i32 0, i32 77
  %206 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %205, align 8
  %207 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %203
  %211 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %212 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %211, i32 0, i32 14
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br label %215

215:                                              ; preds = %210, %203
  %216 = phi i1 [ true, %203 ], [ %214, %210 ]
  %217 = zext i1 %216 to i32
  store i32 %217, i32* %4, align 4
  %218 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %219 = load i32, i32* %4, align 4
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef %218, i32 noundef %219)
  %220 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %221 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %220, i32 0, i32 15
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %226, label %224

224:                                              ; preds = %215
  %225 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @jinit_d_main_controller(%struct.jpeg_decompress_struct* noundef %225, i32 noundef 0)
  br label %226

226:                                              ; preds = %224, %215
  %227 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %228 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %227, i32 0, i32 1
  %229 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %228, align 8
  %230 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %229, i32 0, i32 6
  %231 = bitcast {}** %230 to void (%struct.jpeg_common_struct*)**
  %232 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %231, align 8
  %233 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %234 = bitcast %struct.jpeg_decompress_struct* %233 to %struct.jpeg_common_struct*
  call void %232(%struct.jpeg_common_struct* noundef %234)
  %235 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %236 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %235, i32 0, i32 77
  %237 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %236, align 8
  %238 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %237, i32 0, i32 2
  %239 = bitcast {}** %238 to void (%struct.jpeg_decompress_struct*)**
  %240 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %239, align 8
  %241 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void %240(%struct.jpeg_decompress_struct* noundef %241)
  %242 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %243 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %242, i32 0, i32 2
  %244 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %243, align 8
  %245 = icmp ne %struct.jpeg_progress_mgr* %244, null
  br i1 %245, label %246, label %307

246:                                              ; preds = %226
  %247 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %248 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 8
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %307, label %251

251:                                              ; preds = %246
  %252 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %253 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %252, i32 0, i32 77
  %254 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %253, align 8
  %255 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %307

258:                                              ; preds = %251
  %259 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %260 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %259, i32 0, i32 44
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %265 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %264, i32 0, i32 8
  %266 = load i32, i32* %265, align 8
  %267 = mul nsw i32 3, %266
  %268 = add nsw i32 2, %267
  store i32 %268, i32* %7, align 4
  br label %273

269:                                              ; preds = %258
  %270 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %271 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %270, i32 0, i32 8
  %272 = load i32, i32* %271, align 8
  store i32 %272, i32* %7, align 4
  br label %273

273:                                              ; preds = %269, %263
  %274 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %275 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %274, i32 0, i32 2
  %276 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %275, align 8
  %277 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %276, i32 0, i32 1
  store i64 0, i64* %277, align 8
  %278 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %279 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %278, i32 0, i32 60
  %280 = load i32, i32* %279, align 8
  %281 = zext i32 %280 to i64
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = mul nsw i64 %281, %283
  %285 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %286 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %285, i32 0, i32 2
  %287 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %286, align 8
  %288 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %287, i32 0, i32 2
  store i64 %284, i64* %288, align 8
  %289 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %290 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %289, i32 0, i32 2
  %291 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %290, align 8
  %292 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %291, i32 0, i32 3
  store i32 0, i32* %292, align 8
  %293 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %294 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %293, i32 0, i32 25
  %295 = load i32, i32* %294, align 4
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i64
  %298 = select i1 %296, i32 3, i32 2
  %299 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %300 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %299, i32 0, i32 2
  %301 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %300, align 8
  %302 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %301, i32 0, i32 4
  store i32 %298, i32* %302, align 4
  %303 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %304 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %273, %251, %246, %226
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_range_limit_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %9 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %8, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %12 = call i8* %9(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i64 noundef 1408)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 256
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 61
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 -256
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 256, i1 false)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %30, %1
  %21 = load i32, i32* %4, align 4
  %22 = icmp sle i32 %21, 255
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  store i8 %25, i8* %29, align 1
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %20, !llvm.loop !8

33:                                               ; preds = %20
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 128
  store i8* %35, i8** %3, align 8
  store i32 128, i32* %4, align 4
  br label %36

36:                                               ; preds = %44, %33
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 512
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8 -1, i8* %43, align 1
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %36, !llvm.loop !9

47:                                               ; preds = %36
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 512
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 0, i64 384, i1 false)
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 896
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 61
  %54 = load i8*, i8** %53, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %54, i64 128, i1 false)
  ret void
}

declare dso_local void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_color_deconverter(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_upsampler(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_d_post_controller(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_inverse_dct(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef) #1

declare dso_local void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_d_main_controller(%struct.jpeg_decompress_struct* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!112 = distinct !{!113, !5}
!13 = distinct !{!14, !5}
!14 = distinct !{!15, !5}
!15 = distinct !{!16, !5}
!16 = distinct !{!17, !5}
!17 = distinct !{!18, !5}
!18 = distinct !{!19, !5}
!19 = distinct !{!20, !5}
!20 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!24, !5}
!24 = distinct !{!25, !5}
!25 = distinct !{!26, !5}
!26 = distinct !{!27, !5}
!27 = distinct !{!28, !5}
!28 = distinct !{!29, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!31 = distinct !{!32, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!39 = distinct !{!40, !5}
!40 = distinct !{!41, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!49 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
