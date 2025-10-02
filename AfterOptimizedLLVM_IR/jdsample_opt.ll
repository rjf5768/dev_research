; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdsample.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdsample.c"
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
%struct.my_upsampler = type { %struct.jpeg_upsampler, [10 x i8**], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], i32, i32, [10 x i32], [10 x i8], [10 x i8] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_upsampler(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_upsampler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_component_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %12 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %12, i32 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i32 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %15, align 8
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %18 = bitcast %struct.jpeg_decompress_struct* %17 to %struct.jpeg_common_struct*
  %19 = call i8* %16(%struct.jpeg_common_struct* noundef %18, i32 noundef 1, i64 noundef 256)
  %20 = bitcast i8* %19 to %struct.my_upsampler*
  store %struct.my_upsampler* %20, %struct.my_upsampler** %3, align 8
  %21 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %22 = bitcast %struct.my_upsampler* %21 to %struct.jpeg_upsampler*
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %23, i32 0, i32 81
  store %struct.jpeg_upsampler* %22, %struct.jpeg_upsampler** %24, align 8
  %25 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %26 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_upsample, void (%struct.jpeg_decompress_struct*)** %28, align 8
  %29 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %30 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %30, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @sep_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %31, align 8
  %32 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %33 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 56
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 5
  store i32 23, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 0
  %46 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %46, i32 0, i32 0
  %48 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %47, align 8
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %49 to %struct.jpeg_common_struct*
  call void %48(%struct.jpeg_common_struct* noundef %50)
  br label %51

51:                                               ; preds = %39, %1
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %57, i32 0, i32 59
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 1
  br label %61

61:                                               ; preds = %56, %51
  %62 = phi i1 [ false, %51 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 43
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %65, align 8
  store %struct.jpeg_component_info* %66, %struct.jpeg_component_info** %5, align 8
  br label %67

67:                                               ; preds = %277, %61
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %282

73:                                               ; preds = %67
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  %81 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %81, i32 0, i32 59
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %80, %83
  store i32 %84, i32* %8, align 4
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %88, i32 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %92, i32 0, i32 59
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %91, %94
  store i32 %95, i32* %9, align 4
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 57
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 58
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %104 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %103, i32 0, i32 5
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [10 x i32], [10 x i32]* %104, i64 0, i64 %106
  store i32 %102, i32* %107, align 4
  store i32 1, i32* %6, align 4
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %109 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %73
  %113 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %114 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %113, i32 0, i32 2
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %114, i64 0, i64 %116
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @noop_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %117, align 8
  store i32 0, i32* %6, align 4
  br label %246

118:                                              ; preds = %73
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %128 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %127, i32 0, i32 2
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %128, i64 0, i64 %130
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @fullsize_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %131, align 8
  store i32 0, i32* %6, align 4
  br label %245

132:                                              ; preds = %122, %118
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %133, 2
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %146 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = icmp ugt i32 %147, 2
  br i1 %148, label %149, label %155

149:                                              ; preds = %144
  %150 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %151 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %150, i32 0, i32 2
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %151, i64 0, i64 %153
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %154, align 8
  br label %161

155:                                              ; preds = %144, %141
  %156 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %157 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %156, i32 0, i32 2
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %157, i64 0, i64 %159
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %160, align 8
  br label %161

161:                                              ; preds = %155, %149
  br label %244

162:                                              ; preds = %137, %132
  %163 = load i32, i32* %8, align 4
  %164 = mul nsw i32 %163, 2
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %196

167:                                              ; preds = %162
  %168 = load i32, i32* %9, align 4
  %169 = mul nsw i32 %168, 2
  %170 = load i32, i32* %11, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %196

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %177 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 8
  %179 = icmp ugt i32 %178, 2
  br i1 %179, label %180, label %189

180:                                              ; preds = %175
  %181 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %182 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %181, i32 0, i32 2
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %182, i64 0, i64 %184
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %185, align 8
  %186 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %187 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %187, i32 0, i32 2
  store i32 1, i32* %188, align 8
  br label %195

189:                                              ; preds = %175, %172
  %190 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %191 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %190, i32 0, i32 2
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %191, i64 0, i64 %193
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %194, align 8
  br label %195

195:                                              ; preds = %189, %180
  br label %243

196:                                              ; preds = %167, %162
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %8, align 4
  %199 = srem i32 %197, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %230

201:                                              ; preds = %196
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %9, align 4
  %204 = srem i32 %202, %203
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %230

206:                                              ; preds = %201
  %207 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %208 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %207, i32 0, i32 2
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %208, i64 0, i64 %210
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @int_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %211, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %8, align 4
  %214 = sdiv i32 %212, %213
  %215 = trunc i32 %214 to i8
  %216 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %217 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %216, i32 0, i32 6
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [10 x i8], [10 x i8]* %217, i64 0, i64 %219
  store i8 %215, i8* %220, align 1
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* %9, align 4
  %223 = sdiv i32 %221, %222
  %224 = trunc i32 %223 to i8
  %225 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %226 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %225, i32 0, i32 7
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [10 x i8], [10 x i8]* %226, i64 0, i64 %228
  store i8 %224, i8* %229, align 1
  br label %242

230:                                              ; preds = %201, %196
  %231 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %232 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %231, i32 0, i32 0
  %233 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %232, align 8
  %234 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %233, i32 0, i32 5
  store i32 37, i32* %234, align 8
  %235 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %236 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %235, i32 0, i32 0
  %237 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %236, align 8
  %238 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %237, i32 0, i32 0
  %239 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %238, align 8
  %240 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %241 = bitcast %struct.jpeg_decompress_struct* %240 to %struct.jpeg_common_struct*
  call void %239(%struct.jpeg_common_struct* noundef %241)
  br label %242

242:                                              ; preds = %230, %206
  br label %243

243:                                              ; preds = %242, %195
  br label %244

244:                                              ; preds = %243, %161
  br label %245

245:                                              ; preds = %244, %126
  br label %246

246:                                              ; preds = %245, %112
  %247 = load i32, i32* %6, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %276

249:                                              ; preds = %246
  %250 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %251 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %250, i32 0, i32 1
  %252 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %251, align 8
  %253 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %252, i32 0, i32 2
  %254 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %253, align 8
  %255 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %256 = bitcast %struct.jpeg_decompress_struct* %255 to %struct.jpeg_common_struct*
  %257 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %258 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %257, i32 0, i32 26
  %259 = load i32, i32* %258, align 8
  %260 = zext i32 %259 to i64
  %261 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %262 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %261, i32 0, i32 57
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = call i64 @jround_up(i64 noundef %260, i64 noundef %264)
  %266 = trunc i64 %265 to i32
  %267 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %268 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %267, i32 0, i32 58
  %269 = load i32, i32* %268, align 8
  %270 = call i8** %254(%struct.jpeg_common_struct* noundef %256, i32 noundef 1, i32 noundef %266, i32 noundef %269)
  %271 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %272 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %271, i32 0, i32 1
  %273 = load i32, i32* %4, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [10 x i8**], [10 x i8**]* %272, i64 0, i64 %274
  store i8** %270, i8*** %275, align 8
  br label %276

276:                                              ; preds = %249, %246
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %4, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %4, align 4
  %280 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %281 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %280, i32 1
  store %struct.jpeg_component_info* %281, %struct.jpeg_component_info** %5, align 8
  br label %67, !llvm.loop !4

282:                                              ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_upsample(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 81
  %6 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %5, align 8
  %7 = bitcast %struct.jpeg_upsampler* %6 to %struct.my_upsampler*
  store %struct.my_upsampler* %7, %struct.my_upsampler** %3, align 8
  %8 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %8, i32 0, i32 58
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 8
  %13 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %13, i32 0, i32 27
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %17 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_upsampler*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.jpeg_component_info*, align 8
  %18 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 81
  %21 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %20, align 8
  %22 = bitcast %struct.jpeg_upsampler* %21 to %struct.my_upsampler*
  store %struct.my_upsampler* %22, %struct.my_upsampler** %15, align 8
  %23 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %24 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 58
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %79

30:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 43
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %32, align 8
  store %struct.jpeg_component_info* %33, %struct.jpeg_component_info** %17, align 8
  br label %34

34:                                               ; preds = %71, %30
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 2
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %42, i64 0, i64 %44
  %46 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %45, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %17, align 8
  %49 = load i8***, i8**** %9, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %57 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %56, i32 0, i32 5
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %57, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = mul i32 %55, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %53, i64 %63
  %65 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %66 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %65, i32 0, i32 1
  %67 = getelementptr inbounds [10 x i8**], [10 x i8**]* %66, i64 0, i64 0
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8**, i8*** %67, i64 %69
  call void %46(%struct.jpeg_decompress_struct* noundef %47, %struct.jpeg_component_info* noundef %48, i8** noundef %64, i8*** noundef %70)
  br label %71

71:                                               ; preds = %40
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %16, align 4
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %17, align 8
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 1
  store %struct.jpeg_component_info* %75, %struct.jpeg_component_info** %17, align 8
  br label %34, !llvm.loop !6

76:                                               ; preds = %34
  %77 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %78 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %77, i32 0, i32 3
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %76, %7
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 58
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %84 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %82, %85
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %89 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp ugt i32 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %79
  %93 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %94 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %92, %79
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* %14, align 4
  store i32 %105, i32* %18, align 4
  br label %106

106:                                              ; preds = %104, %96
  %107 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %108 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %107, i32 0, i32 82
  %109 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %109, i32 0, i32 1
  %111 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %110, align 8
  %112 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %113 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %114 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %113, i32 0, i32 1
  %115 = getelementptr inbounds [10 x i8**], [10 x i8**]* %114, i64 0, i64 0
  %116 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %117 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i8**, i8*** %12, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %119, i64 %122
  %124 = load i32, i32* %18, align 4
  call void %111(%struct.jpeg_decompress_struct* noundef %112, i8*** noundef %115, i32 noundef %118, i8** noundef %123, i32 noundef %124)
  %125 = load i32, i32* %18, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %126, align 4
  %128 = add i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %131 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = sub i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %136 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = add i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %140 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %143 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %142, i32 0, i32 58
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %141, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %106
  %147 = load i32*, i32** %10, align 8
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %146, %106
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @noop_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %9 = load i8***, i8**** %8, align 8
  store i8** null, i8*** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = load i8***, i8**** %8, align 8
  store i8** %9, i8*** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_fancy_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %15 = load i8***, i8**** %8, align 8
  %16 = load i8**, i8*** %15, align 8
  store i8** %16, i8*** %9, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %110, %4
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 58
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %113

23:                                               ; preds = %17
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %10, align 8
  %36 = load i8, i8* %34, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  store i8 %39, i8* %40, align 1
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %42, 3
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %43, %46
  %48 = add nsw i32 %47, 2
  %49 = ashr i32 %48, 2
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %11, align 8
  store i8 %50, i8* %51, align 1
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 8
  %56 = sub i32 %55, 2
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %87, %23
  %58 = load i32, i32* %13, align 4
  %59 = icmp ugt i32 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, 3
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 -2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %66, %70
  %72 = add nsw i32 %71, 1
  %73 = ashr i32 %72, 2
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  store i8 %74, i8* %75, align 1
  %77 = load i32, i32* %12, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = add nsw i32 %77, %80
  %82 = add nsw i32 %81, 2
  %83 = ashr i32 %82, 2
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  store i8 %84, i8* %85, align 1
  br label %87

87:                                               ; preds = %60
  %88 = load i32, i32* %13, align 4
  %89 = add i32 %88, -1
  store i32 %89, i32* %13, align 4
  br label %57, !llvm.loop !7

90:                                               ; preds = %57
  %91 = load i8*, i8** %10, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = mul nsw i32 %94, 3
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %95, %99
  %101 = add nsw i32 %100, 1
  %102 = ashr i32 %101, 2
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i32, i32* %12, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %11, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %11, align 8
  store i8 %107, i8* %108, align 1
  br label %110

110:                                              ; preds = %90
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %17, !llvm.loop !8

113:                                              ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %15 = load i8***, i8**** %8, align 8
  %16 = load i8**, i8*** %15, align 8
  store i8** %16, i8*** %9, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %55, %4
  %18 = load i32, i32* %14, align 4
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 58
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i8**, i8*** %7, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 26
  %37 = load i32, i32* %36, align 8
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %34, i64 %38
  store i8* %39, i8** %13, align 8
  br label %40

40:                                               ; preds = %44, %23
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ult i8* %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %10, align 8
  %47 = load i8, i8* %45, align 1
  store i8 %47, i8* %12, align 1
  %48 = load i8, i8* %12, align 1
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %11, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i8, i8* %12, align 1
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  store i8 %51, i8* %52, align 1
  br label %40, !llvm.loop !9

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %17, !llvm.loop !10

58:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_fancy_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %20 = load i8***, i8**** %8, align 8
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %9, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %22

22:                                               ; preds = %160, %4
  %23 = load i32, i32* %18, align 4
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 58
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %163

28:                                               ; preds = %22
  store i32 0, i32* %19, align 4
  br label %29

29:                                               ; preds = %157, %28
  %30 = load i32, i32* %19, align 4
  %31 = icmp slt i32 %30, 2
  br i1 %31, label %32, label %160

32:                                               ; preds = %29
  %33 = load i8**, i8*** %7, align 8
  %34 = load i32, i32* %17, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load i32, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i8**, i8*** %7, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %11, align 8
  br label %54

47:                                               ; preds = %32
  %48 = load i8**, i8*** %7, align 8
  %49 = load i32, i32* %17, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %48, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %47, %40
  %55 = load i8**, i8*** %9, align 8
  %56 = load i32, i32* %18, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %18, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i32
  %65 = mul nsw i32 %64, 3
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %11, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %65, %69
  store i32 %70, i32* %13, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i32
  %75 = mul nsw i32 %74, 3
  %76 = load i8*, i8** %11, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %11, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = add nsw i32 %75, %79
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 %81, 4
  %83 = add nsw i32 %82, 8
  %84 = ashr i32 %83, 4
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %12, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %88, 3
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 7
  %93 = ashr i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %12, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %12, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %13, align 4
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 8
  %102 = sub i32 %101, 2
  store i32 %102, i32* %16, align 4
  br label %103

103:                                              ; preds = %137, %54
  %104 = load i32, i32* %16, align 4
  %105 = icmp ugt i32 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %103
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %10, align 8
  %109 = load i8, i8* %107, align 1
  %110 = zext i8 %109 to i32
  %111 = mul nsw i32 %110, 3
  %112 = load i8*, i8** %11, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %11, align 8
  %114 = load i8, i8* %112, align 1
  %115 = zext i8 %114 to i32
  %116 = add nsw i32 %111, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %13, align 4
  %118 = mul nsw i32 %117, 3
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = add nsw i32 %120, 8
  %122 = ashr i32 %121, 4
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %12, align 8
  store i8 %123, i8* %124, align 1
  %126 = load i32, i32* %13, align 4
  %127 = mul nsw i32 %126, 3
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %129, 7
  %131 = ashr i32 %130, 4
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %12, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %12, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %106
  %138 = load i32, i32* %16, align 4
  %139 = add i32 %138, -1
  store i32 %139, i32* %16, align 4
  br label %103, !llvm.loop !11

140:                                              ; preds = %103
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 3
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %144, 8
  %146 = ashr i32 %145, 4
  %147 = trunc i32 %146 to i8
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 %147, i8* %148, align 1
  %150 = load i32, i32* %13, align 4
  %151 = mul nsw i32 %150, 4
  %152 = add nsw i32 %151, 7
  %153 = ashr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %12, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %29, !llvm.loop !12

160:                                              ; preds = %29
  %161 = load i32, i32* %17, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %17, align 4
  br label %22, !llvm.loop !13

163:                                              ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %16 = load i8***, i8**** %8, align 8
  %17 = load i8**, i8*** %16, align 8
  store i8** %17, i8*** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %55, %4
  %19 = load i32, i32* %15, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 58
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %68

24:                                               ; preds = %18
  %25 = load i8**, i8*** %7, align 8
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %10, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %36, i32 0, i32 26
  %38 = load i32, i32* %37, align 8
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8* %40, i8** %13, align 8
  br label %41

41:                                               ; preds = %45, %24
  %42 = load i8*, i8** %11, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ult i8* %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %10, align 8
  %48 = load i8, i8* %46, align 1
  store i8 %48, i8* %12, align 1
  %49 = load i8, i8* %12, align 1
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i8, i8* %12, align 1
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  store i8 %52, i8* %53, align 1
  br label %41, !llvm.loop !14

55:                                               ; preds = %41
  %56 = load i8**, i8*** %9, align 8
  %57 = load i32, i32* %15, align 4
  %58 = load i8**, i8*** %9, align 8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 26
  %63 = load i32, i32* %62, align 8
  call void @jcopy_sample_rows(i8** noundef %56, i32 noundef %57, i8** noundef %58, i32 noundef %60, i32 noundef 1, i32 noundef %63)
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %15, align 4
  br label %18, !llvm.loop !15

68:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_upsample(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8*** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca %struct.my_upsampler*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 81
  %22 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %21, align 8
  %23 = bitcast %struct.jpeg_upsampler* %22 to %struct.my_upsampler*
  store %struct.my_upsampler* %23, %struct.my_upsampler** %9, align 8
  %24 = load i8***, i8**** %8, align 8
  %25 = load i8**, i8*** %24, align 8
  store i8** %25, i8*** %10, align 8
  %26 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %26, i32 0, i32 6
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %27, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %16, align 4
  %35 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %36 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %35, i32 0, i32 7
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %36, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  store i32 %43, i32* %17, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %101, %4
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 58
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %107

50:                                               ; preds = %44
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %18, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8**, i8*** %10, align 8
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 26
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  store i8* %66, i8** %15, align 8
  br label %67

67:                                               ; preds = %86, %50
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp ult i8* %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i8*, i8** %11, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %11, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %13, align 1
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %83, %71
  %77 = load i32, i32* %14, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i8, i8* %13, align 1
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  store i8 %80, i8* %81, align 1
  br label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %14, align 4
  br label %76, !llvm.loop !16

86:                                               ; preds = %76
  br label %67, !llvm.loop !17

87:                                               ; preds = %67
  %88 = load i32, i32* %17, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load i8**, i8*** %10, align 8
  %92 = load i32, i32* %19, align 4
  %93 = load i8**, i8*** %10, align 8
  %94 = load i32, i32* %19, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %17, align 4
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 26
  %100 = load i32, i32* %99, align 8
  call void @jcopy_sample_rows(i8** noundef %91, i32 noundef %92, i8** noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %100)
  br label %101

101:                                              ; preds = %90, %87
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %19, align 4
  br label %44, !llvm.loop !18

107:                                              ; preds = %44
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) #1

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
