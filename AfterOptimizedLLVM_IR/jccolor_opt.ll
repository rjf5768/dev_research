; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jccolor.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jccolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_destination_mgr*, i32, i32, i32, i32, double, i32, i32, i32, %struct.jpeg_component_info*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], [16 x i8], [16 x i8], [16 x i8], i32, %struct.jpeg_scan_info*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, %struct.jpeg_comp_master*, %struct.jpeg_c_main_controller*, %struct.jpeg_c_prep_controller*, %struct.jpeg_c_coef_controller*, %struct.jpeg_marker_writer*, %struct.jpeg_color_converter*, %struct.jpeg_downsampler*, %struct.jpeg_forward_dct*, %struct.jpeg_entropy_encoder* }
%struct.jpeg_error_mgr = type { void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*, i8*)*, void (%struct.jpeg_common_struct*)*, i32, %union.anon, i32, i64, i8**, i32, i8**, i32, i32 }
%struct.jpeg_common_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, i32, i32, i32)*, %struct.jvirt_sarray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, %struct.jvirt_barray_control* (%struct.jpeg_common_struct*, i32, i32, i32, i32, i32)*, {}*, i8** (%struct.jpeg_common_struct*, %struct.jvirt_sarray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, void (%struct.jpeg_common_struct*, i32)*, {}*, i64 }
%struct.jvirt_sarray_control = type opaque
%struct.jvirt_barray_control = type opaque
%struct.jpeg_progress_mgr = type { {}*, i64, i64, i32, i32 }
%struct.jpeg_destination_mgr = type { i8*, i64, {}*, i32 (%struct.jpeg_compress_struct*)*, {}* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { {}*, {}*, {}*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, {}*, {}*, {}*, {}*, {}* }
%struct.jpeg_color_converter = type { {}*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { {}*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { {}*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, {}* }
%struct.my_color_converter = type { %struct.jpeg_color_converter, i64* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_color_converter(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_color_converter*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_compress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 24)
  %12 = bitcast i8* %11 to %struct.my_color_converter*
  store %struct.my_color_converter* %12, %struct.my_color_converter** %3, align 8
  %13 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %14 = bitcast %struct.my_color_converter* %13 to %struct.jpeg_color_converter*
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 56
  store %struct.jpeg_color_converter* %14, %struct.jpeg_color_converter** %16, align 8
  %17 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %18 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @null_method, void (%struct.jpeg_compress_struct*)** %20, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %78 [
    i32 1, label %24
    i32 2, label %42
    i32 3, label %42
    i32 4, label %60
    i32 5, label %60
  ]

24:                                               ; preds = %1
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 0
  %32 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %32, i32 0, i32 5
  store i32 7, i32* %33, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 0
  %36 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %36, i32 0, i32 0
  %38 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %37, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %40 = bitcast %struct.jpeg_compress_struct* %39 to %struct.jpeg_common_struct*
  call void %38(%struct.jpeg_common_struct* noundef %40)
  br label %41

41:                                               ; preds = %29, %24
  br label %96

42:                                               ; preds = %1, %1
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 0
  %50 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %49, align 8
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %50, i32 0, i32 5
  store i32 7, i32* %51, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 0
  %54 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %53, align 8
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %54, i32 0, i32 0
  %56 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %55, align 8
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %58 = bitcast %struct.jpeg_compress_struct* %57 to %struct.jpeg_common_struct*
  call void %56(%struct.jpeg_common_struct* noundef %58)
  br label %59

59:                                               ; preds = %47, %42
  br label %96

60:                                               ; preds = %1, %1
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 0
  %68 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %68, i32 0, i32 5
  store i32 7, i32* %69, align 8
  %70 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %70, i32 0, i32 0
  %72 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %71, align 8
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %72, i32 0, i32 0
  %74 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %73, align 8
  %75 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %76 = bitcast %struct.jpeg_compress_struct* %75 to %struct.jpeg_common_struct*
  call void %74(%struct.jpeg_common_struct* noundef %76)
  br label %77

77:                                               ; preds = %65, %60
  br label %96

78:                                               ; preds = %1
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 8
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 1
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 0
  %86 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %85, align 8
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %86, i32 0, i32 5
  store i32 7, i32* %87, align 8
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 0
  %90 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %89, align 8
  %91 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %90, i32 0, i32 0
  %92 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %91, align 8
  %93 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %94 = bitcast %struct.jpeg_compress_struct* %93 to %struct.jpeg_common_struct*
  call void %92(%struct.jpeg_common_struct* noundef %94)
  br label %95

95:                                               ; preds = %83, %78
  br label %96

96:                                               ; preds = %95, %77, %59, %41
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %347 [
    i32 1, label %100
    i32 2, label %163
    i32 3, label %202
    i32 4, label %255
    i32 5, label %294
  ]

100:                                              ; preds = %96
  %101 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %101, i32 0, i32 12
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 1
  br i1 %104, label %105, label %117

105:                                              ; preds = %100
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i32 0, i32 5
  store i32 8, i32* %109, align 8
  %110 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %111 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %110, i32 0, i32 0
  %112 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %111, align 8
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %112, i32 0, i32 0
  %114 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %113, align 8
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %116 = bitcast %struct.jpeg_compress_struct* %115 to %struct.jpeg_common_struct*
  call void %114(%struct.jpeg_common_struct* noundef %116)
  br label %117

117:                                              ; preds = %105, %100
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %124 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %124, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %125, align 8
  br label %162

126:                                              ; preds = %117
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %133 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %133, i32 0, i32 0
  %135 = bitcast {}** %134 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %135, align 8
  %136 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %137 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %137, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_gray_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %138, align 8
  br label %161

139:                                              ; preds = %126
  %140 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %141 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %146 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %146, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %147, align 8
  br label %160

148:                                              ; preds = %139
  %149 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %150 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %149, i32 0, i32 0
  %151 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %150, align 8
  %152 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %151, i32 0, i32 5
  store i32 25, i32* %152, align 8
  %153 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %153, i32 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %154, align 8
  %156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i32 0, i32 0
  %157 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %156, align 8
  %158 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %159 = bitcast %struct.jpeg_compress_struct* %158 to %struct.jpeg_common_struct*
  call void %157(%struct.jpeg_common_struct* noundef %159)
  br label %160

160:                                              ; preds = %148, %144
  br label %161

161:                                              ; preds = %160, %131
  br label %162

162:                                              ; preds = %161, %122
  br label %379

163:                                              ; preds = %96
  %164 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %164, i32 0, i32 12
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 3
  br i1 %167, label %168, label %180

168:                                              ; preds = %163
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %170 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 0
  %171 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %170, align 8
  %172 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %171, i32 0, i32 5
  store i32 8, i32* %172, align 8
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %173, i32 0, i32 0
  %175 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %174, align 8
  %176 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %175, i32 0, i32 0
  %177 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %176, align 8
  %178 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %179 = bitcast %struct.jpeg_compress_struct* %178 to %struct.jpeg_common_struct*
  call void %177(%struct.jpeg_common_struct* noundef %179)
  br label %180

180:                                              ; preds = %168, %163
  %181 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %182 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %187 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %187, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %188, align 8
  br label %201

189:                                              ; preds = %180
  %190 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %191 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %190, i32 0, i32 0
  %192 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %191, align 8
  %193 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %192, i32 0, i32 5
  store i32 25, i32* %193, align 8
  %194 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %195 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %194, i32 0, i32 0
  %196 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %195, align 8
  %197 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %196, i32 0, i32 0
  %198 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %197, align 8
  %199 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %200 = bitcast %struct.jpeg_compress_struct* %199 to %struct.jpeg_common_struct*
  call void %198(%struct.jpeg_common_struct* noundef %200)
  br label %201

201:                                              ; preds = %189, %185
  br label %379

202:                                              ; preds = %96
  %203 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %204 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %203, i32 0, i32 12
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 3
  br i1 %206, label %207, label %219

207:                                              ; preds = %202
  %208 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %209 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %208, i32 0, i32 0
  %210 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %209, align 8
  %211 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %210, i32 0, i32 5
  store i32 8, i32* %211, align 8
  %212 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %213 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %212, i32 0, i32 0
  %214 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %213, align 8
  %215 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %214, i32 0, i32 0
  %216 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %215, align 8
  %217 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %218 = bitcast %struct.jpeg_compress_struct* %217 to %struct.jpeg_common_struct*
  call void %216(%struct.jpeg_common_struct* noundef %218)
  br label %219

219:                                              ; preds = %207, %202
  %220 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %221 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %226 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %226, i32 0, i32 0
  %228 = bitcast {}** %227 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %228, align 8
  %229 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %230 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %230, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %231, align 8
  br label %254

232:                                              ; preds = %219
  %233 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %234 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %233, i32 0, i32 9
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 3
  br i1 %236, label %237, label %241

237:                                              ; preds = %232
  %238 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %239 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %239, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %240, align 8
  br label %253

241:                                              ; preds = %232
  %242 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %243 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %242, i32 0, i32 0
  %244 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %243, align 8
  %245 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %244, i32 0, i32 5
  store i32 25, i32* %245, align 8
  %246 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %247 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %246, i32 0, i32 0
  %248 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %247, align 8
  %249 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %248, i32 0, i32 0
  %250 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %249, align 8
  %251 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %252 = bitcast %struct.jpeg_compress_struct* %251 to %struct.jpeg_common_struct*
  call void %250(%struct.jpeg_common_struct* noundef %252)
  br label %253

253:                                              ; preds = %241, %237
  br label %254

254:                                              ; preds = %253, %224
  br label %379

255:                                              ; preds = %96
  %256 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %257 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 4
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %261, i32 0, i32 0
  %263 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %262, align 8
  %264 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %263, i32 0, i32 5
  store i32 8, i32* %264, align 8
  %265 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %266 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %265, i32 0, i32 0
  %267 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %266, align 8
  %268 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %267, i32 0, i32 0
  %269 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %268, align 8
  %270 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %271 = bitcast %struct.jpeg_compress_struct* %270 to %struct.jpeg_common_struct*
  call void %269(%struct.jpeg_common_struct* noundef %271)
  br label %272

272:                                              ; preds = %260, %255
  %273 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %274 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %273, i32 0, i32 9
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 4
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %279 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %279, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %280, align 8
  br label %293

281:                                              ; preds = %272
  %282 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %283 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %282, i32 0, i32 0
  %284 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %283, align 8
  %285 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %284, i32 0, i32 5
  store i32 25, i32* %285, align 8
  %286 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %286, i32 0, i32 0
  %288 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %287, align 8
  %289 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %288, i32 0, i32 0
  %290 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %289, align 8
  %291 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %292 = bitcast %struct.jpeg_compress_struct* %291 to %struct.jpeg_common_struct*
  call void %290(%struct.jpeg_common_struct* noundef %292)
  br label %293

293:                                              ; preds = %281, %277
  br label %379

294:                                              ; preds = %96
  %295 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %296 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %295, i32 0, i32 12
  %297 = load i32, i32* %296, align 4
  %298 = icmp ne i32 %297, 4
  br i1 %298, label %299, label %311

299:                                              ; preds = %294
  %300 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %301 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %300, i32 0, i32 0
  %302 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %301, align 8
  %303 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %302, i32 0, i32 5
  store i32 8, i32* %303, align 8
  %304 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %305 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %304, i32 0, i32 0
  %306 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %305, align 8
  %307 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %306, i32 0, i32 0
  %308 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %307, align 8
  %309 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %310 = bitcast %struct.jpeg_compress_struct* %309 to %struct.jpeg_common_struct*
  call void %308(%struct.jpeg_common_struct* noundef %310)
  br label %311

311:                                              ; preds = %299, %294
  %312 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %313 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 4
  br i1 %315, label %316, label %324

316:                                              ; preds = %311
  %317 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %318 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %318, i32 0, i32 0
  %320 = bitcast {}** %319 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %320, align 8
  %321 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %322 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %322, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @cmyk_ycck_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %323, align 8
  br label %346

324:                                              ; preds = %311
  %325 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %326 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %325, i32 0, i32 9
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 5
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %331 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %331, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %332, align 8
  br label %345

333:                                              ; preds = %324
  %334 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %335 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %334, i32 0, i32 0
  %336 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %335, align 8
  %337 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %336, i32 0, i32 5
  store i32 25, i32* %337, align 8
  %338 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %339 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %338, i32 0, i32 0
  %340 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %339, align 8
  %341 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %340, i32 0, i32 0
  %342 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %341, align 8
  %343 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %344 = bitcast %struct.jpeg_compress_struct* %343 to %struct.jpeg_common_struct*
  call void %342(%struct.jpeg_common_struct* noundef %344)
  br label %345

345:                                              ; preds = %333, %329
  br label %346

346:                                              ; preds = %345, %316
  br label %379

347:                                              ; preds = %96
  %348 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %349 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %348, i32 0, i32 13
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %352 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %351, i32 0, i32 9
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %350, %353
  br i1 %354, label %363, label %355

355:                                              ; preds = %347
  %356 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %357 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %356, i32 0, i32 12
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %360 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %359, i32 0, i32 8
  %361 = load i32, i32* %360, align 8
  %362 = icmp ne i32 %358, %361
  br i1 %362, label %363, label %375

363:                                              ; preds = %355, %347
  %364 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %365 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %364, i32 0, i32 0
  %366 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %365, align 8
  %367 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %366, i32 0, i32 5
  store i32 25, i32* %367, align 8
  %368 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %369 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %368, i32 0, i32 0
  %370 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %369, align 8
  %371 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %370, i32 0, i32 0
  %372 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %371, align 8
  %373 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %374 = bitcast %struct.jpeg_compress_struct* %373 to %struct.jpeg_common_struct*
  call void %372(%struct.jpeg_common_struct* noundef %374)
  br label %375

375:                                              ; preds = %363, %355
  %376 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %377 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %377, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %378, align 8
  br label %379

379:                                              ; preds = %375, %346, %293, %254, %201, %162
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_method(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i8*** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  br label %22

22:                                               ; preds = %58, %5
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load i8**, i8*** %7, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %7, align 8
  %29 = load i8*, i8** %27, align 8
  store i8* %29, i8** %11, align 8
  %30 = load i8***, i8**** %8, align 8
  %31 = getelementptr inbounds i8**, i8*** %30, i64 0
  %32 = load i8**, i8*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %12, align 8
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %55, %26
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %12, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 %46, i8* %50, align 1
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %11, align 8
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %13, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %39, !llvm.loop !4

58:                                               ; preds = %39
  br label %22, !llvm.loop !6

59:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_ycc_start(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_color_converter*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 56
  %8 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %7, align 8
  %9 = bitcast %struct.jpeg_color_converter* %8 to %struct.my_color_converter*
  store %struct.my_color_converter* %9, %struct.my_color_converter** %3, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %13, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %16 = bitcast %struct.jpeg_compress_struct* %15 to %struct.jpeg_common_struct*
  %17 = call i8* %14(%struct.jpeg_common_struct* noundef %16, i32 noundef 1, i64 noundef 16384)
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %4, align 8
  %19 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %20 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %19, i32 0, i32 1
  store i64* %18, i64** %20, align 8
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %77, %1
  %22 = load i64, i64* %5, align 8
  %23 = icmp sle i64 %22, 255
  br i1 %23, label %24, label %80

24:                                               ; preds = %21
  %25 = load i64, i64* %5, align 8
  %26 = mul nsw i64 19595, %25
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, 0
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 %26, i64* %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = mul nsw i64 38470, %31
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 256
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %32, i64* %36, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul nsw i64 7471, %37
  %39 = add nsw i64 %38, 32768
  %40 = load i64*, i64** %4, align 8
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, 512
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 %39, i64* %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = mul nsw i64 -11059, %44
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = add nsw i64 %47, 768
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = mul nsw i64 -21709, %50
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add nsw i64 %53, 1024
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  store i64 %51, i64* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = mul nsw i64 32768, %56
  %58 = add nsw i64 %57, 8388608
  %59 = add nsw i64 %58, 32768
  %60 = sub nsw i64 %59, 1
  %61 = load i64*, i64** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = add nsw i64 %62, 1280
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  %65 = load i64, i64* %5, align 8
  %66 = mul nsw i64 -27439, %65
  %67 = load i64*, i64** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add nsw i64 %68, 1536
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  store i64 %66, i64* %70, align 8
  %71 = load i64, i64* %5, align 8
  %72 = mul nsw i64 -5329, %71
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %74, 1792
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %24
  %78 = load i64, i64* %5, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %21, !llvm.loop !7

80:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_gray_convert(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i8*** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_color_converter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 56
  %22 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %21, align 8
  %23 = bitcast %struct.jpeg_color_converter* %22 to %struct.my_color_converter*
  store %struct.my_color_converter* %23, %struct.my_color_converter** %11, align 8
  %24 = load %struct.my_color_converter*, %struct.my_color_converter** %11, align 8
  %25 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %15, align 8
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %19, align 4
  br label %30

30:                                               ; preds = %95, %5
  %31 = load i32, i32* %10, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %10, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %30
  %35 = load i8**, i8*** %7, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %7, align 8
  %37 = load i8*, i8** %35, align 8
  store i8* %37, i8** %16, align 8
  %38 = load i8***, i8**** %8, align 8
  %39 = getelementptr inbounds i8**, i8*** %38, i64 0
  %40 = load i8**, i8*** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %17, align 8
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %18, align 4
  br label %47

47:                                               ; preds = %92, %34
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  %52 = load i8*, i8** %16, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %12, align 4
  %56 = load i8*, i8** %16, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %14, align 4
  %64 = load i8*, i8** %16, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  store i8* %65, i8** %16, align 8
  %66 = load i64*, i64** %15, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 0
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64*, i64** %15, align 8
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 256
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %72, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %71, %77
  %79 = load i64*, i64** %15, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 512
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %78, %84
  %86 = ashr i64 %85, 16
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %17, align 8
  %89 = load i32, i32* %18, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8 %87, i8* %91, align 1
  br label %92

92:                                               ; preds = %51
  %93 = load i32, i32* %18, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %47, !llvm.loop !8

95:                                               ; preds = %47
  br label %30, !llvm.loop !9

96:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @null_convert(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i8*** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  br label %23

23:                                               ; preds = %69, %5
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %74

27:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load i8***, i8**** %8, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8**, i8*** %35, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %62, %32
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  %58 = load i32, i32* %15, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %44, !llvm.loop !10

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %28, !llvm.loop !11

69:                                               ; preds = %28
  %70 = load i8**, i8*** %7, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %23, !llvm.loop !12

74:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_ycc_convert(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i8*** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_color_converter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 56
  %24 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %23, align 8
  %25 = bitcast %struct.jpeg_color_converter* %24 to %struct.my_color_converter*
  store %struct.my_color_converter* %25, %struct.my_color_converter** %11, align 8
  %26 = load %struct.my_color_converter*, %struct.my_color_converter** %11, align 8
  %27 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %15, align 8
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %21, align 4
  br label %32

32:                                               ; preds = %163, %5
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %164

36:                                               ; preds = %32
  %37 = load i8**, i8*** %7, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 1
  store i8** %38, i8*** %7, align 8
  %39 = load i8*, i8** %37, align 8
  store i8* %39, i8** %16, align 8
  %40 = load i8***, i8**** %8, align 8
  %41 = getelementptr inbounds i8**, i8*** %40, i64 0
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %17, align 8
  %47 = load i8***, i8**** %8, align 8
  %48 = getelementptr inbounds i8**, i8*** %47, i64 1
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %18, align 8
  %54 = load i8***, i8**** %8, align 8
  %55 = getelementptr inbounds i8**, i8*** %54, i64 2
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %19, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  store i32 0, i32* %20, align 4
  br label %63

63:                                               ; preds = %160, %36
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %67, label %163

67:                                               ; preds = %63
  %68 = load i8*, i8** %16, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %12, align 4
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %16, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 3
  store i8* %81, i8** %16, align 8
  %82 = load i64*, i64** %15, align 8
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %15, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 256
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %88, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %87, %93
  %95 = load i64*, i64** %15, align 8
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 512
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %95, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %94, %100
  %102 = ashr i64 %101, 16
  %103 = trunc i64 %102 to i8
  %104 = load i8*, i8** %17, align 8
  %105 = load i32, i32* %20, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %103, i8* %107, align 1
  %108 = load i64*, i64** %15, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 768
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %108, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64*, i64** %15, align 8
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1024
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %114, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %113, %119
  %121 = load i64*, i64** %15, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1280
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %121, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %120, %126
  %128 = ashr i64 %127, 16
  %129 = trunc i64 %128 to i8
  %130 = load i8*, i8** %18, align 8
  %131 = load i32, i32* %20, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  store i8 %129, i8* %133, align 1
  %134 = load i64*, i64** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1280
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %15, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1536
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %140, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %139, %145
  %147 = load i64*, i64** %15, align 8
  %148 = load i32, i32* %14, align 4
  %149 = add nsw i32 %148, 1792
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %146, %152
  %154 = ashr i64 %153, 16
  %155 = trunc i64 %154 to i8
  %156 = load i8*, i8** %19, align 8
  %157 = load i32, i32* %20, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8 %155, i8* %159, align 1
  br label %160

160:                                              ; preds = %67
  %161 = load i32, i32* %20, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %20, align 4
  br label %63, !llvm.loop !13

163:                                              ; preds = %63
  br label %32, !llvm.loop !14

164:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmyk_ycck_convert(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i8*** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8***, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_color_converter*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8*** %2, i8**** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 56
  %25 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %24, align 8
  %26 = bitcast %struct.jpeg_color_converter* %25 to %struct.my_color_converter*
  store %struct.my_color_converter* %26, %struct.my_color_converter** %11, align 8
  %27 = load %struct.my_color_converter*, %struct.my_color_converter** %11, align 8
  %28 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  store i64* %29, i64** %15, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %22, align 4
  br label %33

33:                                               ; preds = %181, %5
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %182

37:                                               ; preds = %33
  %38 = load i8**, i8*** %7, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %7, align 8
  %40 = load i8*, i8** %38, align 8
  store i8* %40, i8** %16, align 8
  %41 = load i8***, i8**** %8, align 8
  %42 = getelementptr inbounds i8**, i8*** %41, i64 0
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %17, align 8
  %48 = load i8***, i8**** %8, align 8
  %49 = getelementptr inbounds i8**, i8*** %48, i64 1
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i8***, i8**** %8, align 8
  %56 = getelementptr inbounds i8**, i8*** %55, i64 2
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %19, align 8
  %62 = load i8***, i8**** %8, align 8
  %63 = getelementptr inbounds i8**, i8*** %62, i64 3
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %20, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %9, align 4
  store i32 0, i32* %21, align 4
  br label %71

71:                                               ; preds = %178, %37
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %22, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %181

75:                                               ; preds = %71
  %76 = load i8*, i8** %16, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = sub nsw i32 255, %79
  store i32 %80, i32* %12, align 4
  %81 = load i8*, i8** %16, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = sub nsw i32 255, %84
  store i32 %85, i32* %13, align 4
  %86 = load i8*, i8** %16, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = sub nsw i32 255, %89
  store i32 %90, i32* %14, align 4
  %91 = load i8*, i8** %16, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 3
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  store i8 %93, i8* %97, align 1
  %98 = load i8*, i8** %16, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8* %99, i8** %16, align 8
  %100 = load i64*, i64** %15, align 8
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 0
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %15, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 256
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %105, %111
  %113 = load i64*, i64** %15, align 8
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %114, 512
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %112, %118
  %120 = ashr i64 %119, 16
  %121 = trunc i64 %120 to i8
  %122 = load i8*, i8** %17, align 8
  %123 = load i32, i32* %21, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  store i8 %121, i8* %125, align 1
  %126 = load i64*, i64** %15, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 768
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %126, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** %15, align 8
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 %133, 1024
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %131, %137
  %139 = load i64*, i64** %15, align 8
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1280
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %138, %144
  %146 = ashr i64 %145, 16
  %147 = trunc i64 %146 to i8
  %148 = load i8*, i8** %18, align 8
  %149 = load i32, i32* %21, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  store i8 %147, i8* %151, align 1
  %152 = load i64*, i64** %15, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, 1280
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %152, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %15, align 8
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1536
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %158, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %157, %163
  %165 = load i64*, i64** %15, align 8
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %166, 1792
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %164, %170
  %172 = ashr i64 %171, 16
  %173 = trunc i64 %172 to i8
  %174 = load i8*, i8** %19, align 8
  %175 = load i32, i32* %21, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 %173, i8* %177, align 1
  br label %178

178:                                              ; preds = %75
  %179 = load i32, i32* %21, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %21, align 4
  br label %71, !llvm.loop !15

181:                                              ; preds = %71
  br label %33, !llvm.loop !16

182:                                              ; preds = %33
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
