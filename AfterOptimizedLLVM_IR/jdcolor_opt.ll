; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdcolor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdcolor.c"
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
%struct.my_color_deconverter = type { %struct.jpeg_color_deconverter, i32*, i32*, i64*, i64* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_color_deconverter(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_color_deconverter*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 1
  %7 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %7, i32 0, i32 0
  %9 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %8, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %11 = bitcast %struct.jpeg_decompress_struct* %10 to %struct.jpeg_common_struct*
  %12 = call i8* %9(%struct.jpeg_common_struct* noundef %11, i32 noundef 1, i64 noundef 48)
  %13 = bitcast i8* %12 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %13, %struct.my_color_deconverter** %3, align 8
  %14 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %15 = bitcast %struct.my_color_deconverter* %14 to %struct.jpeg_color_deconverter*
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 82
  store %struct.jpeg_color_deconverter* %15, %struct.jpeg_color_deconverter** %17, align 8
  %18 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %19 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_dcolor, void (%struct.jpeg_decompress_struct*)** %21, align 8
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %79 [
    i32 1, label %25
    i32 2, label %43
    i32 3, label %43
    i32 4, label %61
    i32 5, label %61
  ]

25:                                               ; preds = %1
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 5
  store i32 8, i32* %34, align 8
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 0
  %39 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %38, align 8
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %41 = bitcast %struct.jpeg_decompress_struct* %40 to %struct.jpeg_common_struct*
  call void %39(%struct.jpeg_common_struct* noundef %41)
  br label %42

42:                                               ; preds = %30, %25
  br label %97

43:                                               ; preds = %1, %1
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 3
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i32 0, i32 5
  store i32 8, i32* %52, align 8
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 0
  %55 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %55, i32 0, i32 0
  %57 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %56, align 8
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %59 = bitcast %struct.jpeg_decompress_struct* %58 to %struct.jpeg_common_struct*
  call void %57(%struct.jpeg_common_struct* noundef %59)
  br label %60

60:                                               ; preds = %48, %43
  br label %97

61:                                               ; preds = %1, %1
  %62 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %63 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %67, i32 0, i32 0
  %69 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %69, i32 0, i32 5
  store i32 8, i32* %70, align 8
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 0
  %73 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %73, i32 0, i32 0
  %75 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %74, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %77 = bitcast %struct.jpeg_decompress_struct* %76 to %struct.jpeg_common_struct*
  call void %75(%struct.jpeg_common_struct* noundef %77)
  br label %78

78:                                               ; preds = %66, %61
  br label %97

79:                                               ; preds = %1
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 0
  %87 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %87, i32 0, i32 5
  store i32 8, i32* %88, align 8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 0
  %91 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %90, align 8
  %92 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %91, i32 0, i32 0
  %93 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %92, align 8
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %95 = bitcast %struct.jpeg_decompress_struct* %94 to %struct.jpeg_common_struct*
  call void %93(%struct.jpeg_common_struct* noundef %95)
  br label %96

96:                                               ; preds = %84, %79
  br label %97

97:                                               ; preds = %96, %78, %60, %42
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %218 [
    i32 1, label %101
    i32 2, label %148
    i32 4, label %183
  ]

101:                                              ; preds = %97
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 28
  store i32 1, i32* %103, align 8
  %104 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %135

113:                                              ; preds = %108, %101
  %114 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %115 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %115, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @grayscale_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %116, align 8
  store i32 1, i32* %4, align 4
  br label %117

117:                                              ; preds = %131, %113
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %124, i32 0, i32 43
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i64 %128
  %130 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %129, i32 0, i32 12
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %123
  %132 = load i32, i32* %4, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  br label %117, !llvm.loop !4

134:                                              ; preds = %117
  br label %147

135:                                              ; preds = %108
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %136, i32 0, i32 0
  %138 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %137, align 8
  %139 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %138, i32 0, i32 5
  store i32 25, i32* %139, align 8
  %140 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %141 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %140, i32 0, i32 0
  %142 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %141, align 8
  %143 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %142, i32 0, i32 0
  %144 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %143, align 8
  %145 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %146 = bitcast %struct.jpeg_decompress_struct* %145 to %struct.jpeg_common_struct*
  call void %144(%struct.jpeg_common_struct* noundef %146)
  br label %147

147:                                              ; preds = %135, %134
  br label %248

148:                                              ; preds = %97
  %149 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %149, i32 0, i32 28
  store i32 3, i32* %150, align 8
  %151 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 3
  br i1 %154, label %155, label %160

155:                                              ; preds = %148
  %156 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %157 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %157, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %158, align 8
  %159 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %159)
  br label %182

160:                                              ; preds = %148
  %161 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %167 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %167, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %168, align 8
  br label %181

169:                                              ; preds = %160
  %170 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %170, i32 0, i32 0
  %172 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %171, align 8
  %173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %172, i32 0, i32 5
  store i32 25, i32* %173, align 8
  %174 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %175 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %174, i32 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %175, align 8
  %177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i32 0, i32 0
  %178 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %177, align 8
  %179 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %180 = bitcast %struct.jpeg_decompress_struct* %179 to %struct.jpeg_common_struct*
  call void %178(%struct.jpeg_common_struct* noundef %180)
  br label %181

181:                                              ; preds = %169, %165
  br label %182

182:                                              ; preds = %181, %155
  br label %248

183:                                              ; preds = %97
  %184 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %184, i32 0, i32 28
  store i32 4, i32* %185, align 8
  %186 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 5
  br i1 %189, label %190, label %195

190:                                              ; preds = %183
  %191 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %192 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %192, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycck_cmyk_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %193, align 8
  %194 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %194)
  br label %217

195:                                              ; preds = %183
  %196 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %197 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %196, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %202 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %202, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %203, align 8
  br label %216

204:                                              ; preds = %195
  %205 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %206 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %205, i32 0, i32 0
  %207 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %206, align 8
  %208 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %207, i32 0, i32 5
  store i32 25, i32* %208, align 8
  %209 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %210 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %209, i32 0, i32 0
  %211 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %210, align 8
  %212 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %211, i32 0, i32 0
  %213 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %212, align 8
  %214 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %215 = bitcast %struct.jpeg_decompress_struct* %214 to %struct.jpeg_common_struct*
  call void %213(%struct.jpeg_common_struct* noundef %215)
  br label %216

216:                                              ; preds = %204, %200
  br label %217

217:                                              ; preds = %216, %190
  br label %248

218:                                              ; preds = %97
  %219 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %220 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %223 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %221, %224
  br i1 %225, label %226, label %235

226:                                              ; preds = %218
  %227 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %228 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %231 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %230, i32 0, i32 28
  store i32 %229, i32* %231, align 8
  %232 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %233 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %233, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %234, align 8
  br label %247

235:                                              ; preds = %218
  %236 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %237 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %236, i32 0, i32 0
  %238 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %237, align 8
  %239 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %238, i32 0, i32 5
  store i32 25, i32* %239, align 8
  %240 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %241 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %240, i32 0, i32 0
  %242 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %241, align 8
  %243 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %242, i32 0, i32 0
  %244 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %243, align 8
  %245 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %246 = bitcast %struct.jpeg_decompress_struct* %245 to %struct.jpeg_common_struct*
  call void %244(%struct.jpeg_common_struct* noundef %246)
  br label %247

247:                                              ; preds = %235, %226
  br label %248

248:                                              ; preds = %247, %217, %182, %147
  %249 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %250 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %249, i32 0, i32 19
  %251 = load i32, i32* %250, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %255 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %254, i32 0, i32 29
  store i32 1, i32* %255, align 4
  br label %262

256:                                              ; preds = %248
  %257 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %258 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %257, i32 0, i32 28
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %261 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %260, i32 0, i32 29
  store i32 %259, i32* %261, align 4
  br label %262

262:                                              ; preds = %256, %253
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_dcolor(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i8***, i8**** %7, align 8
  %12 = getelementptr inbounds i8**, i8*** %11, i64 0
  %13 = load i8**, i8*** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i8**, i8*** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 26
  %19 = load i32, i32* %18, align 8
  call void @jcopy_sample_rows(i8** noundef %13, i32 noundef %14, i8** noundef %15, i32 noundef 0, i32 noundef %16, i32 noundef %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ycc_rgb_convert(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_color_deconverter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 82
  %28 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %27, align 8
  %29 = bitcast %struct.jpeg_color_deconverter* %28 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %29, %struct.my_color_deconverter** %11, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 26
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %20, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 61
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %21, align 8
  %36 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %37 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %22, align 8
  %39 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %40 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %23, align 8
  %42 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %43 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %42, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %24, align 8
  %45 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %46 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  store i64* %47, i64** %25, align 8
  br label %48

48:                                               ; preds = %154, %5
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %10, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %155

52:                                               ; preds = %48
  %53 = load i8***, i8**** %7, align 8
  %54 = getelementptr inbounds i8**, i8*** %53, i64 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load i8***, i8**** %7, align 8
  %61 = getelementptr inbounds i8**, i8*** %60, i64 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %17, align 8
  %67 = load i8***, i8**** %7, align 8
  %68 = getelementptr inbounds i8**, i8*** %67, i64 2
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %18, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load i8**, i8*** %9, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i32 1
  store i8** %77, i8*** %9, align 8
  %78 = load i8*, i8** %76, align 8
  store i8* %78, i8** %15, align 8
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %151, %52
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %154

83:                                               ; preds = %79
  %84 = load i8*, i8** %16, align 8
  %85 = load i32, i32* %19, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* %19, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %18, align 8
  %97 = load i32, i32* %19, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  store i32 %101, i32* %14, align 4
  %102 = load i8*, i8** %21, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %22, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %103, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %102, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %15, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %112, i8* %114, align 1
  %115 = load i8*, i8** %21, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i64*, i64** %25, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %117, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %24, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %121, %126
  %128 = ashr i64 %127, 16
  %129 = trunc i64 %128 to i32
  %130 = add nsw i32 %116, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %115, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %15, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %133, i8* %135, align 1
  %136 = load i8*, i8** %21, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32*, i32** %23, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %137, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %136, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = load i8*, i8** %15, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 2
  store i8 %146, i8* %148, align 1
  %149 = load i8*, i8** %15, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  store i8* %150, i8** %15, align 8
  br label %151

151:                                              ; preds = %83
  %152 = load i32, i32* %19, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %19, align 4
  br label %79, !llvm.loop !6

154:                                              ; preds = %79
  br label %48, !llvm.loop !7

155:                                              ; preds = %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_color_deconverter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 82
  %8 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %7, align 8
  %9 = bitcast %struct.jpeg_color_deconverter* %8 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %9, %struct.my_color_deconverter** %3, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %13, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  %17 = call i8* %14(%struct.jpeg_common_struct* noundef %16, i32 noundef 1, i64 noundef 1024)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %20 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i32 0, i32 0
  %25 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %24, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  %28 = call i8* %25(%struct.jpeg_common_struct* noundef %27, i32 noundef 1, i64 noundef 1024)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %31 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i32 0, i32 0
  %36 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %35, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  %39 = call i8* %36(%struct.jpeg_common_struct* noundef %38, i32 noundef 1, i64 noundef 2048)
  %40 = bitcast i8* %39 to i64*
  %41 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %42 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %41, i32 0, i32 3
  store i64* %40, i64** %42, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 1
  %45 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %45, i32 0, i32 0
  %47 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %46, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  %50 = call i8* %47(%struct.jpeg_common_struct* noundef %49, i32 noundef 1, i64 noundef 2048)
  %51 = bitcast i8* %50 to i64*
  %52 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %53 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %52, i32 0, i32 4
  store i64* %51, i64** %53, align 8
  store i32 0, i32* %4, align 4
  store i64 -128, i64* %5, align 8
  br label %54

54:                                               ; preds = %97, %1
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %55, 255
  br i1 %56, label %57, label %102

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = mul nsw i64 91881, %58
  %60 = add nsw i64 %59, 32768
  %61 = ashr i64 %60, 16
  %62 = trunc i64 %61 to i32
  %63 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %64 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i64, i64* %5, align 8
  %70 = mul nsw i64 116130, %69
  %71 = add nsw i64 %70, 32768
  %72 = ashr i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %75 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i64, i64* %5, align 8
  %81 = mul nsw i64 -46802, %80
  %82 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %83 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = mul nsw i64 -22554, %88
  %90 = add nsw i64 %89, 32768
  %91 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %92 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %54, !llvm.loop !8

102:                                              ; preds = %54
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_convert(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %14, align 4
  %20 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %68, %5
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %65, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %68

32:                                               ; preds = %28
  %33 = load i8***, i8**** %7, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8**, i8*** %33, i64 %35
  %37 = load i8**, i8*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %11, align 8
  %42 = load i8**, i8*** %9, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load i32, i32* %15, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %61, %32
  %50 = load i32, i32* %13, align 4
  %51 = icmp ugt i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  %55 = load i8, i8* %53, align 1
  %56 = load i8*, i8** %12, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i32, i32* %14, align 4
  %58 = load i8*, i8** %12, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %12, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, -1
  store i32 %63, i32* %13, align 4
  br label %49, !llvm.loop !9

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %28, !llvm.loop !10

68:                                               ; preds = %28
  %69 = load i32, i32* %8, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i8**, i8*** %9, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %9, align 8
  br label %23, !llvm.loop !11

73:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ycck_cmyk_convert(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_decompress_struct*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_color_deconverter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  store i32 %4, i32* %10, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 82
  %29 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %28, align 8
  %30 = bitcast %struct.jpeg_color_deconverter* %29 to %struct.my_color_deconverter*
  store %struct.my_color_deconverter* %30, %struct.my_color_deconverter** %11, align 8
  %31 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %31, i32 0, i32 26
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %21, align 4
  %34 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %6, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %34, i32 0, i32 61
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %22, align 8
  %37 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %38 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %23, align 8
  %40 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %41 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %24, align 8
  %43 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %44 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %25, align 8
  %46 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %11, align 8
  %47 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  store i64* %48, i64** %26, align 8
  br label %49

49:                                               ; preds = %172, %5
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %10, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %173

53:                                               ; preds = %49
  %54 = load i8***, i8**** %7, align 8
  %55 = getelementptr inbounds i8**, i8*** %54, i64 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %16, align 8
  %61 = load i8***, i8**** %7, align 8
  %62 = getelementptr inbounds i8**, i8*** %61, i64 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %17, align 8
  %68 = load i8***, i8**** %7, align 8
  %69 = getelementptr inbounds i8**, i8*** %68, i64 2
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %18, align 8
  %75 = load i8***, i8**** %7, align 8
  %76 = getelementptr inbounds i8**, i8*** %75, i64 3
  %77 = load i8**, i8*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %19, align 8
  %82 = load i32, i32* %8, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i8**, i8*** %9, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %9, align 8
  %86 = load i8*, i8** %84, align 8
  store i8* %86, i8** %15, align 8
  store i32 0, i32* %20, align 4
  br label %87

87:                                               ; preds = %169, %53
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %172

91:                                               ; preds = %87
  %92 = load i8*, i8** %16, align 8
  %93 = load i32, i32* %20, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  store i32 %97, i32* %12, align 4
  %98 = load i8*, i8** %17, align 8
  %99 = load i32, i32* %20, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %18, align 8
  %105 = load i32, i32* %20, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  store i32 %109, i32* %14, align 4
  %110 = load i8*, i8** %22, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %23, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %111, %116
  %118 = sub nsw i32 255, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %110, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %15, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  store i8 %121, i8* %123, align 1
  %124 = load i8*, i8** %22, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i64*, i64** %26, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %25, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %130, %135
  %137 = ashr i64 %136, 16
  %138 = trunc i64 %137 to i32
  %139 = add nsw i32 %125, %138
  %140 = sub nsw i32 255, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %124, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %15, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  store i8 %143, i8* %145, align 1
  %146 = load i8*, i8** %22, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32*, i32** %24, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %147, %152
  %154 = sub nsw i32 255, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %146, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = load i8*, i8** %15, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8 %157, i8* %159, align 1
  %160 = load i8*, i8** %19, align 8
  %161 = load i32, i32* %20, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i8*, i8** %15, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 3
  store i8 %164, i8* %166, align 1
  %167 = load i8*, i8** %15, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 4
  store i8* %168, i8** %15, align 8
  br label %169

169:                                              ; preds = %91
  %170 = load i32, i32* %20, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %87, !llvm.loop !12

172:                                              ; preds = %87
  br label %49, !llvm.loop !13

173:                                              ; preds = %49
  ret void
}

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
