; ModuleID = './jdcolor.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 48) #4
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %9 = bitcast %struct.jpeg_color_deconverter** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_dcolor, void (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %52 [
    i32 1, label %13
    i32 2, label %26
    i32 3, label %26
    i32 4, label %39
    i32 5, label %39
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %15 = load i32, i32* %14, align 8
  %.not3 = icmp eq i32 %15, 1
  br i1 %.not3, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 8, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #4
  br label %25

25:                                               ; preds = %16, %13
  br label %66

26:                                               ; preds = %1, %1
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 8
  %.not2 = icmp eq i32 %28, 3
  br i1 %.not2, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 5
  store i32 8, i32* %32, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i64 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %37) #4
  br label %38

38:                                               ; preds = %29, %26
  br label %66

39:                                               ; preds = %1, %1
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %41 = load i32, i32* %40, align 8
  %.not = icmp eq i32 %41, 4
  br i1 %.not, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 8, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i64 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %48, align 8
  %50 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* noundef %50) #4
  br label %51

51:                                               ; preds = %42, %39
  br label %66

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i64 0, i32 5
  store i32 8, i32* %59, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i64 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %62, align 8
  %64 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* noundef %64) #4
  br label %65

65:                                               ; preds = %56, %52
  br label %66

66:                                               ; preds = %65, %51, %38, %25
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %155 [
    i32 1, label %69
    i32 2, label %103
    i32 4, label %129
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %93

78:                                               ; preds = %74, %69
  %79 = getelementptr inbounds i8, i8* %7, i64 8
  %80 = bitcast i8* %79 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @grayscale_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %80, align 8
  br label %81

81:                                               ; preds = %90, %78
  %.0 = phi i32 [ 1, %78 ], [ %91, %90 ]
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %.0, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %86, align 8
  %88 = zext i32 %.0 to i64
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i64 %88, i32 12
  store i32 0, i32* %89, align 8
  br label %90

90:                                               ; preds = %85
  %91 = add nuw nsw i32 %.0, 1
  br label %81, !llvm.loop !4

92:                                               ; preds = %81
  br label %102

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %95 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %94, align 8
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %95, i64 0, i32 5
  store i32 25, i32* %96, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i64 0, i32 0
  %100 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %99, align 8
  %101 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %100(%struct.jpeg_common_struct* noundef %101) #4
  br label %102

102:                                              ; preds = %93, %92
  br label %177

103:                                              ; preds = %66
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 3, i32* %104, align 8
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 3
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = getelementptr inbounds i8, i8* %7, i64 8
  %110 = bitcast i8* %109 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycc_rgb_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %110, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0)
  br label %128

111:                                              ; preds = %103
  %112 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = getelementptr inbounds i8, i8* %7, i64 8
  %117 = bitcast i8* %116 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %117, align 8
  br label %127

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i64 0, i32 5
  store i32 25, i32* %121, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i64 0, i32 0
  %125 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %124, align 8
  %126 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* noundef %126) #4
  br label %127

127:                                              ; preds = %118, %115
  br label %128

128:                                              ; preds = %127, %108
  br label %177

129:                                              ; preds = %66
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 4, i32* %130, align 8
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 5
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = getelementptr inbounds i8, i8* %7, i64 8
  %136 = bitcast i8* %135 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @ycck_cmyk_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %136, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0)
  br label %154

137:                                              ; preds = %129
  %138 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 4
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds i8, i8* %7, i64 8
  %143 = bitcast i8* %142 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %143, align 8
  br label %153

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %145, align 8
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i64 0, i32 5
  store i32 25, i32* %147, align 8
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %149 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %148, align 8
  %150 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %149, i64 0, i32 0
  %151 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %150, align 8
  %152 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %151(%struct.jpeg_common_struct* noundef %152) #4
  br label %153

153:                                              ; preds = %144, %141
  br label %154

154:                                              ; preds = %153, %134
  br label %177

155:                                              ; preds = %66
  %156 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %157 = load i32, i32* %156, align 8
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 %163, i32* %164, align 8
  %165 = getelementptr inbounds i8, i8* %7, i64 8
  %166 = bitcast i8* %165 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* @null_convert, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %166, align 8
  br label %176

167:                                              ; preds = %155
  %168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %168, align 8
  %170 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i64 0, i32 5
  store i32 25, i32* %170, align 8
  %171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %172 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %171, align 8
  %173 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %172, i64 0, i32 0
  %174 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %173, align 8
  %175 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %174(%struct.jpeg_common_struct* noundef %175) #4
  br label %176

176:                                              ; preds = %167, %161
  br label %177

177:                                              ; preds = %176, %154, %128, %102
  %178 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %179 = load i32, i32* %178, align 4
  %.not1 = icmp eq i32 %179, 0
  br i1 %.not1, label %182, label %180

180:                                              ; preds = %177
  %181 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  store i32 1, i32* %181, align 4
  br label %186

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  store i32 %184, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %180
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @start_pass_dcolor(%struct.jpeg_decompress_struct* nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** noundef %3, i32 noundef %4) #0 {
  %6 = load i8**, i8*** %1, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %8 = load i32, i32* %7, align 8
  call void @jcopy_sample_rows(i8** noundef %6, i32 noundef %2, i8** noundef %3, i32 noundef 0, i32 noundef %4, i32 noundef %8) #4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @ycc_rgb_convert(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %7 = bitcast %struct.jpeg_color_deconverter** %6 to %struct.my_color_deconverter**
  %8 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 4
  %20 = load i64*, i64** %19, align 8
  br label %21

21:                                               ; preds = %87, %5
  %.04 = phi i32 [ %4, %5 ], [ %22, %87 ]
  %.03 = phi i8** [ %3, %5 ], [ %40, %87 ]
  %.02 = phi i32 [ %2, %5 ], [ %39, %87 ]
  %22 = add nsw i32 %.04, -1
  %23 = icmp sgt i32 %.04, 0
  br i1 %23, label %24, label %88

24:                                               ; preds = %21
  %25 = load i8**, i8*** %1, align 8
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8**, i8*** %1, i64 1
  %30 = load i8**, i8*** %29, align 8
  %31 = zext i32 %.02 to i64
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8**, i8*** %1, i64 2
  %35 = load i8**, i8*** %34, align 8
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = add i32 %.02, 1
  %40 = getelementptr inbounds i8*, i8** %.03, i64 1
  %41 = load i8*, i8** %.03, align 8
  br label %42

42:                                               ; preds = %84, %24
  %.01 = phi i8* [ %41, %24 ], [ %85, %84 ]
  %.0 = phi i32 [ 0, %24 ], [ %86, %84 ]
  %43 = icmp ult i32 %.0, %10
  br i1 %43, label %44, label %87

44:                                               ; preds = %42
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds i8, i8* %28, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = zext i32 %.0 to i64
  %50 = getelementptr inbounds i8, i8* %33, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i32 %.0 to i64
  %53 = getelementptr inbounds i8, i8* %38, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i32, i32* %14, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, %48
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %12, i64 %59
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %.01, align 1
  %62 = zext i8 %51 to i64
  %63 = getelementptr inbounds i64, i64* %20, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = zext i8 %54 to i64
  %66 = getelementptr inbounds i64, i64* %18, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = lshr i64 %68, 16
  %70 = trunc i64 %69 to i32
  %71 = add nsw i32 %48, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %12, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %74, i8* %75, align 1
  %76 = zext i8 %51 to i64
  %77 = getelementptr inbounds i32, i32* %16, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %48
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %12, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %82, i8* %83, align 1
  br label %84

84:                                               ; preds = %44
  %85 = getelementptr inbounds i8, i8* %.01, i64 3
  %86 = add i32 %.0, 1
  br label %42, !llvm.loop !6

87:                                               ; preds = %42
  br label %21, !llvm.loop !7

88:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %3 = bitcast %struct.jpeg_color_deconverter** %2 to %struct.my_color_deconverter**
  %4 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 1, i64 noundef 1024) #4
  %11 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 1
  %12 = bitcast i32** %11 to i8**
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i64 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %15, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %18 = call i8* %16(%struct.jpeg_common_struct* noundef %17, i32 noundef 1, i64 noundef 1024) #4
  %19 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 2
  %20 = bitcast i32** %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i64 0, i32 0
  %24 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %23, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %26 = call i8* %24(%struct.jpeg_common_struct* noundef %25, i32 noundef 1, i64 noundef 2048) #4
  %27 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 3
  %28 = bitcast i64** %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %30 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %30, i64 0, i32 0
  %32 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %31, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %34 = call i8* %32(%struct.jpeg_common_struct* noundef %33, i32 noundef 1, i64 noundef 2048) #4
  %35 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 4
  %36 = bitcast i64** %35 to i8**
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %67, %1
  %.01 = phi i32 [ 0, %1 ], [ %68, %67 ]
  %.0 = phi i64 [ -128, %1 ], [ %69, %67 ]
  %38 = icmp ult i32 %.01, 256
  br i1 %38, label %39, label %70

39:                                               ; preds = %37
  %40 = mul nsw i64 %.0, 91881
  %41 = add nsw i64 %40, 32768
  %42 = lshr i64 %41, 16
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = mul nsw i64 %.0, 116130
  %49 = add nsw i64 %48, 32768
  %50 = lshr i64 %49, 16
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = mul nsw i64 %.0, -46802
  %57 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 3
  %58 = load i64*, i64** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = mul nsw i64 %.0, -22554
  %62 = add nsw i64 %61, 32768
  %63 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %4, i64 0, i32 4
  %64 = load i64*, i64** %63, align 8
  %65 = zext i32 %.01 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %39
  %68 = add nuw nsw i32 %.01, 1
  %69 = add nsw i64 %.0, 1
  br label %37, !llvm.loop !8

70:                                               ; preds = %37
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @null_convert(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %9 = load i32, i32* %8, align 8
  br label %10

10:                                               ; preds = %37, %5
  %.04 = phi i32 [ %4, %5 ], [ %11, %37 ]
  %.03 = phi i8** [ %3, %5 ], [ %39, %37 ]
  %.02 = phi i32 [ %2, %5 ], [ %38, %37 ]
  %11 = add nsw i32 %.04, -1
  %12 = icmp sgt i32 %.04, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %35, %13
  %.0 = phi i32 [ 0, %13 ], [ %36, %35 ]
  %15 = icmp slt i32 %.0, %7
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i8**, i8*** %1, i64 %17
  %19 = load i8**, i8*** %18, align 8
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = load i8*, i8** %.03, align 8
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  br label %26

26:                                               ; preds = %29, %16
  %.06 = phi i8* [ %25, %16 ], [ %31, %29 ]
  %.05 = phi i8* [ %22, %16 ], [ %32, %29 ]
  %.01 = phi i32 [ %9, %16 ], [ %33, %29 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %34, label %27

27:                                               ; preds = %26
  %28 = load i8, i8* %.05, align 1
  store i8 %28, i8* %.06, align 1
  br label %29

29:                                               ; preds = %27
  %30 = sext i32 %7 to i64
  %31 = getelementptr inbounds i8, i8* %.06, i64 %30
  %32 = getelementptr inbounds i8, i8* %.05, i64 1
  %33 = add i32 %.01, -1
  br label %26, !llvm.loop !9

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !10

37:                                               ; preds = %14
  %38 = add i32 %.02, 1
  %39 = getelementptr inbounds i8*, i8** %.03, i64 1
  br label %10, !llvm.loop !11

40:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @ycck_cmyk_convert(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %7 = bitcast %struct.jpeg_color_deconverter** %6 to %struct.my_color_deconverter**
  %8 = load %struct.my_color_deconverter*, %struct.my_color_deconverter** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %10 = load i32, i32* %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 3
  %18 = load i64*, i64** %17, align 8
  %19 = getelementptr inbounds %struct.my_color_deconverter, %struct.my_color_deconverter* %8, i64 0, i32 4
  %20 = load i64*, i64** %19, align 8
  br label %21

21:                                               ; preds = %99, %5
  %.04 = phi i32 [ %4, %5 ], [ %22, %99 ]
  %.03 = phi i8** [ %3, %5 ], [ %45, %99 ]
  %.02 = phi i32 [ %2, %5 ], [ %44, %99 ]
  %22 = add nsw i32 %.04, -1
  %23 = icmp sgt i32 %.04, 0
  br i1 %23, label %24, label %100

24:                                               ; preds = %21
  %25 = load i8**, i8*** %1, align 8
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8**, i8*** %1, i64 1
  %30 = load i8**, i8*** %29, align 8
  %31 = zext i32 %.02 to i64
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8**, i8*** %1, i64 2
  %35 = load i8**, i8*** %34, align 8
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds i8*, i8** %35, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8**, i8*** %1, i64 3
  %40 = load i8**, i8*** %39, align 8
  %41 = zext i32 %.02 to i64
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = add i32 %.02, 1
  %45 = getelementptr inbounds i8*, i8** %.03, i64 1
  %46 = load i8*, i8** %.03, align 8
  br label %47

47:                                               ; preds = %96, %24
  %.01 = phi i8* [ %46, %24 ], [ %97, %96 ]
  %.0 = phi i32 [ 0, %24 ], [ %98, %96 ]
  %48 = icmp ult i32 %.0, %10
  br i1 %48, label %49, label %99

49:                                               ; preds = %47
  %50 = zext i32 %.0 to i64
  %51 = getelementptr inbounds i8, i8* %28, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = zext i32 %.0 to i64
  %55 = getelementptr inbounds i8, i8* %33, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds i8, i8* %38, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32, i32* %14, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %53
  %64 = sub nsw i32 255, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %12, i64 %65
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %.01, align 1
  %68 = zext i8 %56 to i64
  %69 = getelementptr inbounds i64, i64* %20, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = zext i8 %59 to i64
  %72 = getelementptr inbounds i64, i64* %18, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = lshr i64 %74, 16
  %76 = trunc i64 %75 to i32
  %77 = add nsw i32 %53, %76
  %78 = sub nsw i32 255, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %12, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %81, i8* %82, align 1
  %83 = zext i8 %56 to i64
  %84 = getelementptr inbounds i32, i32* %16, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %53
  %87 = sub nsw i32 255, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %12, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %90, i8* %91, align 1
  %92 = zext i32 %.0 to i64
  %93 = getelementptr inbounds i8, i8* %43, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = getelementptr inbounds i8, i8* %.01, i64 3
  store i8 %94, i8* %95, align 1
  br label %96

96:                                               ; preds = %49
  %97 = getelementptr inbounds i8, i8* %.01, i64 4
  %98 = add i32 %.0, 1
  br label %47, !llvm.loop !12

99:                                               ; preds = %47
  br label %21, !llvm.loop !13

100:                                              ; preds = %21
  ret void
}

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
