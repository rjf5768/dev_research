; ModuleID = './jccolor.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 24) #3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %9 = bitcast %struct.jpeg_color_converter** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @null_method, void (%struct.jpeg_compress_struct*)** %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %52 [
    i32 1, label %13
    i32 2, label %26
    i32 3, label %26
    i32 4, label %39
    i32 5, label %39
  ]

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %15 = load i32, i32* %14, align 8
  %.not9 = icmp eq i32 %15, 1
  br i1 %.not9, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 5
  store i32 7, i32* %19, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 0
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #3
  br label %25

25:                                               ; preds = %16, %13
  br label %66

26:                                               ; preds = %1, %1
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %28 = load i32, i32* %27, align 8
  %.not8 = icmp eq i32 %28, 3
  br i1 %.not8, label %38, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 5
  store i32 7, i32* %32, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i64 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %37) #3
  br label %38

38:                                               ; preds = %29, %26
  br label %66

39:                                               ; preds = %1, %1
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %41 = load i32, i32* %40, align 8
  %.not = icmp eq i32 %41, 4
  br i1 %.not, label %51, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 7, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %47 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %46, align 8
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %47, i64 0, i32 0
  %49 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %48, align 8
  %50 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %49(%struct.jpeg_common_struct* noundef %50) #3
  br label %51

51:                                               ; preds = %42, %39
  br label %66

52:                                               ; preds = %1
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 1
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %58 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %57, align 8
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %58, i64 0, i32 5
  store i32 7, i32* %59, align 8
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %61 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %61, i64 0, i32 0
  %63 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %62, align 8
  %64 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %63(%struct.jpeg_common_struct* noundef %64) #3
  br label %65

65:                                               ; preds = %56, %52
  br label %66

66:                                               ; preds = %65, %51, %38, %25
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %249 [
    i32 1, label %69
    i32 2, label %115
    i32 3, label %144
    i32 4, label %182
    i32 5, label %211
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %71 = load i32, i32* %70, align 4
  %.not5 = icmp eq i32 %71, 1
  br i1 %.not5, label %81, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i64 0, i32 5
  store i32 8, i32* %75, align 8
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i64 0, i32 0
  %79 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %78, align 8
  %80 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %79(%struct.jpeg_common_struct* noundef %80) #3
  br label %81

81:                                               ; preds = %72, %69
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, i8* %7, i64 8
  %87 = bitcast i8* %86 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %87, align 8
  br label %114

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %93, align 8
  %94 = getelementptr inbounds i8, i8* %7, i64 8
  %95 = bitcast i8* %94 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_gray_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %95, align 8
  br label %113

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, i8* %7, i64 8
  %102 = bitcast i8* %101 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @grayscale_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %102, align 8
  br label %112

103:                                              ; preds = %96
  %104 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %105 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %104, align 8
  %106 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %105, i64 0, i32 5
  store i32 25, i32* %106, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i64 0, i32 0
  %110 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %109, align 8
  %111 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %110(%struct.jpeg_common_struct* noundef %111) #3
  br label %112

112:                                              ; preds = %103, %100
  br label %113

113:                                              ; preds = %112, %92
  br label %114

114:                                              ; preds = %113, %85
  br label %271

115:                                              ; preds = %66
  %116 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %117 = load i32, i32* %116, align 4
  %.not4 = icmp eq i32 %117, 3
  br i1 %.not4, label %127, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %120 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %120, i64 0, i32 5
  store i32 8, i32* %121, align 8
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i64 0, i32 0
  %125 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %124, align 8
  %126 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %125(%struct.jpeg_common_struct* noundef %126) #3
  br label %127

127:                                              ; preds = %118, %115
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = getelementptr inbounds i8, i8* %7, i64 8
  %133 = bitcast i8* %132 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %133, align 8
  br label %143

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %136 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %135, align 8
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %136, i64 0, i32 5
  store i32 25, i32* %137, align 8
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %139 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %138, align 8
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %139, i64 0, i32 0
  %141 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %140, align 8
  %142 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %141(%struct.jpeg_common_struct* noundef %142) #3
  br label %143

143:                                              ; preds = %134, %131
  br label %271

144:                                              ; preds = %66
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %146 = load i32, i32* %145, align 4
  %.not3 = icmp eq i32 %146, 3
  br i1 %.not3, label %156, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %149 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %148, align 8
  %150 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %149, i64 0, i32 5
  store i32 8, i32* %150, align 8
  %151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %152 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %151, align 8
  %153 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %152, i64 0, i32 0
  %154 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %153, align 8
  %155 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %154(%struct.jpeg_common_struct* noundef %155) #3
  br label %156

156:                                              ; preds = %147, %144
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %161, align 8
  %162 = getelementptr inbounds i8, i8* %7, i64 8
  %163 = bitcast i8* %162 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @rgb_ycc_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %163, align 8
  br label %181

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = getelementptr inbounds i8, i8* %7, i64 8
  %170 = bitcast i8* %169 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %170, align 8
  br label %180

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %173 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %172, align 8
  %174 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %173, i64 0, i32 5
  store i32 25, i32* %174, align 8
  %175 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %176 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %175, align 8
  %177 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %176, i64 0, i32 0
  %178 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %177, align 8
  %179 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %178(%struct.jpeg_common_struct* noundef %179) #3
  br label %180

180:                                              ; preds = %171, %168
  br label %181

181:                                              ; preds = %180, %160
  br label %271

182:                                              ; preds = %66
  %183 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %184 = load i32, i32* %183, align 4
  %.not2 = icmp eq i32 %184, 4
  br i1 %.not2, label %194, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %187 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %186, align 8
  %188 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %187, i64 0, i32 5
  store i32 8, i32* %188, align 8
  %189 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %190 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %189, align 8
  %191 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %190, i64 0, i32 0
  %192 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %191, align 8
  %193 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %192(%struct.jpeg_common_struct* noundef %193) #3
  br label %194

194:                                              ; preds = %185, %182
  %195 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 4
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = getelementptr inbounds i8, i8* %7, i64 8
  %200 = bitcast i8* %199 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %200, align 8
  br label %210

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %203 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %202, align 8
  %204 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %203, i64 0, i32 5
  store i32 25, i32* %204, align 8
  %205 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %206 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %205, align 8
  %207 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %206, i64 0, i32 0
  %208 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %207, align 8
  %209 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %208(%struct.jpeg_common_struct* noundef %209) #3
  br label %210

210:                                              ; preds = %201, %198
  br label %271

211:                                              ; preds = %66
  %212 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %213 = load i32, i32* %212, align 4
  %.not1 = icmp eq i32 %213, 4
  br i1 %.not1, label %223, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %216 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %215, align 8
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %216, i64 0, i32 5
  store i32 8, i32* %217, align 8
  %218 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %219 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %218, align 8
  %220 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %219, i64 0, i32 0
  %221 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %220, align 8
  %222 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %221(%struct.jpeg_common_struct* noundef %222) #3
  br label %223

223:                                              ; preds = %214, %211
  %224 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 4
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  %228 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @rgb_ycc_start, void (%struct.jpeg_compress_struct*)** %228, align 8
  %229 = getelementptr inbounds i8, i8* %7, i64 8
  %230 = bitcast i8* %229 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @cmyk_ycck_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %230, align 8
  br label %248

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = icmp eq i32 %233, 5
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = getelementptr inbounds i8, i8* %7, i64 8
  %237 = bitcast i8* %236 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %237, align 8
  br label %247

238:                                              ; preds = %231
  %239 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %240 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %239, align 8
  %241 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %240, i64 0, i32 5
  store i32 25, i32* %241, align 8
  %242 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %243 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %242, align 8
  %244 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %243, i64 0, i32 0
  %245 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %244, align 8
  %246 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %245(%struct.jpeg_common_struct* noundef %246) #3
  br label %247

247:                                              ; preds = %238, %235
  br label %248

248:                                              ; preds = %247, %227
  br label %271

249:                                              ; preds = %66
  %250 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %253 = load i32, i32* %252, align 4
  %.not6 = icmp eq i32 %251, %253
  br i1 %.not6, label %254, label %259

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %258 = load i32, i32* %257, align 8
  %.not7 = icmp eq i32 %256, %258
  br i1 %.not7, label %268, label %259

259:                                              ; preds = %254, %249
  %260 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %261 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %260, align 8
  %262 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %261, i64 0, i32 5
  store i32 25, i32* %262, align 8
  %263 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %264 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %263, align 8
  %265 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %264, i64 0, i32 0
  %266 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %265, align 8
  %267 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %266(%struct.jpeg_common_struct* noundef %267) #3
  br label %268

268:                                              ; preds = %259, %254
  %269 = getelementptr inbounds i8, i8* %7, i64 8
  %270 = bitcast i8* %269 to void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)**
  store void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* @null_convert, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %270, align 8
  br label %271

271:                                              ; preds = %268, %248, %210, %181, %143, %114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @null_method(%struct.jpeg_compress_struct* nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @grayscale_convert(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8*** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %9 = load i32, i32* %8, align 8
  br label %10

10:                                               ; preds = %31, %5
  %.04 = phi i32 [ %4, %5 ], [ %11, %31 ]
  %.03 = phi i32 [ %3, %5 ], [ %20, %31 ]
  %.01 = phi i8** [ %1, %5 ], [ %14, %31 ]
  %11 = add nsw i32 %.04, -1
  %12 = icmp sgt i32 %.04, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8*, i8** %.01, i64 1
  %15 = load i8*, i8** %.01, align 8
  %16 = load i8**, i8*** %2, align 8
  %17 = zext i32 %.03 to i64
  %18 = getelementptr inbounds i8*, i8** %16, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = add i32 %.03, 1
  br label %21

21:                                               ; preds = %27, %13
  %.02 = phi i8* [ %15, %13 ], [ %29, %27 ]
  %.0 = phi i32 [ 0, %13 ], [ %30, %27 ]
  %22 = icmp ult i32 %.0, %7
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = load i8, i8* %.02, align 1
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds i8, i8* %19, i64 %25
  store i8 %24, i8* %26, align 1
  br label %27

27:                                               ; preds = %23
  %28 = sext i32 %9 to i64
  %29 = getelementptr inbounds i8, i8* %.02, i64 %28
  %30 = add i32 %.0, 1
  br label %21, !llvm.loop !4

31:                                               ; preds = %21
  br label %10, !llvm.loop !6

32:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @rgb_ycc_start(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %3 = bitcast %struct.jpeg_color_converter** %2 to %struct.my_color_converter**
  %4 = load %struct.my_color_converter*, %struct.my_color_converter** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 1, i64 noundef 16384) #3
  %11 = bitcast i8* %10 to i64*
  %12 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %4, i64 0, i32 1
  %13 = bitcast i64** %12 to i8**
  store i8* %10, i8** %13, align 8
  br label %14

14:                                               ; preds = %42, %1
  %.0 = phi i64 [ 0, %1 ], [ %43, %42 ]
  %15 = icmp ult i64 %.0, 256
  br i1 %15, label %16, label %44

16:                                               ; preds = %14
  %17 = mul nsw i64 %.0, 19595
  %18 = getelementptr inbounds i64, i64* %11, i64 %.0
  store i64 %17, i64* %18, align 8
  %19 = mul nsw i64 %.0, 38470
  %20 = add nuw nsw i64 %.0, 256
  %21 = getelementptr inbounds i64, i64* %11, i64 %20
  store i64 %19, i64* %21, align 8
  %22 = mul nsw i64 %.0, 7471
  %23 = add nuw nsw i64 %22, 32768
  %24 = add nuw nsw i64 %.0, 512
  %25 = getelementptr inbounds i64, i64* %11, i64 %24
  store i64 %23, i64* %25, align 8
  %26 = mul nsw i64 %.0, -11059
  %27 = add nuw nsw i64 %.0, 768
  %28 = getelementptr inbounds i64, i64* %11, i64 %27
  store i64 %26, i64* %28, align 8
  %29 = mul nsw i64 %.0, -21709
  %30 = add nuw nsw i64 %.0, 1024
  %31 = getelementptr inbounds i64, i64* %11, i64 %30
  store i64 %29, i64* %31, align 8
  %32 = shl nsw i64 %.0, 15
  %33 = add nuw nsw i64 %32, 8421375
  %34 = add nuw nsw i64 %.0, 1280
  %35 = getelementptr inbounds i64, i64* %11, i64 %34
  store i64 %33, i64* %35, align 8
  %36 = mul nsw i64 %.0, -27439
  %37 = add nuw nsw i64 %.0, 1536
  %38 = getelementptr inbounds i64, i64* %11, i64 %37
  store i64 %36, i64* %38, align 8
  %39 = mul nsw i64 %.0, -5329
  %40 = add nuw nsw i64 %.0, 1792
  %41 = getelementptr inbounds i64, i64* %11, i64 %40
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %16
  %43 = add nuw nsw i64 %.0, 1
  br label %14, !llvm.loop !7

44:                                               ; preds = %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @rgb_gray_convert(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8*** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %7 = bitcast %struct.jpeg_color_converter** %6 to %struct.my_color_converter**
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %7, align 8
  %9 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i64 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %52, %5
  %.04 = phi i32 [ %4, %5 ], [ %14, %52 ]
  %.03 = phi i32 [ %3, %5 ], [ %23, %52 ]
  %.01 = phi i8** [ %1, %5 ], [ %17, %52 ]
  %14 = add nsw i32 %.04, -1
  %15 = icmp sgt i32 %.04, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8*, i8** %.01, i64 1
  %18 = load i8*, i8** %.01, align 8
  %19 = load i8**, i8*** %2, align 8
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = add i32 %.03, 1
  br label %24

24:                                               ; preds = %49, %16
  %.02 = phi i8* [ %18, %16 ], [ %50, %49 ]
  %.0 = phi i32 [ 0, %16 ], [ %51, %49 ]
  %25 = icmp ult i32 %.0, %12
  br i1 %25, label %26, label %52

26:                                               ; preds = %24
  %27 = load i8, i8* %.02, align 1
  %28 = getelementptr inbounds i8, i8* %.02, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i8, i8* %.02, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = zext i8 %27 to i64
  %35 = getelementptr inbounds i64, i64* %10, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %30, 256
  %38 = getelementptr inbounds i64, i64* %10, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = or i64 %33, 512
  %42 = getelementptr inbounds i64, i64* %10, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = lshr i64 %44, 16
  %46 = trunc i64 %45 to i8
  %47 = zext i32 %.0 to i64
  %48 = getelementptr inbounds i8, i8* %22, i64 %47
  store i8 %46, i8* %48, align 1
  br label %49

49:                                               ; preds = %26
  %50 = getelementptr inbounds i8, i8* %.02, i64 3
  %51 = add i32 %.0, 1
  br label %24, !llvm.loop !8

52:                                               ; preds = %24
  br label %13, !llvm.loop !9

53:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @null_convert(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8*** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %9 = load i32, i32* %8, align 8
  br label %10

10:                                               ; preds = %39, %5
  %.04 = phi i32 [ %4, %5 ], [ %11, %39 ]
  %.03 = phi i32 [ %3, %5 ], [ %41, %39 ]
  %.01 = phi i8** [ %1, %5 ], [ %40, %39 ]
  %11 = add nsw i32 %.04, -1
  %12 = icmp sgt i32 %.04, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %37, %13
  %.0 = phi i32 [ 0, %13 ], [ %38, %37 ]
  %15 = icmp slt i32 %.0, %7
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  %17 = load i8*, i8** %.01, align 8
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds i8**, i8*** %2, i64 %18
  %20 = load i8**, i8*** %19, align 8
  %21 = zext i32 %.03 to i64
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %32, %16
  %.05 = phi i8* [ %17, %16 ], [ %34, %32 ]
  %.02 = phi i32 [ 0, %16 ], [ %35, %32 ]
  %25 = icmp ult i32 %.02, %9
  br i1 %25, label %26, label %36

26:                                               ; preds = %24
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds i8, i8* %.05, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds i8, i8* %23, i64 %30
  store i8 %29, i8* %31, align 1
  br label %32

32:                                               ; preds = %26
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds i8, i8* %.05, i64 %33
  %35 = add i32 %.02, 1
  br label %24, !llvm.loop !10

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !11

39:                                               ; preds = %14
  %40 = getelementptr inbounds i8*, i8** %.01, i64 1
  %41 = add i32 %.03, 1
  br label %10, !llvm.loop !12

42:                                               ; preds = %10
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @rgb_ycc_convert(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8*** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %7 = bitcast %struct.jpeg_color_converter** %6 to %struct.my_color_converter**
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %7, align 8
  %9 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i64 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %101, %5
  %.04 = phi i32 [ %4, %5 ], [ %14, %101 ]
  %.03 = phi i32 [ %3, %5 ], [ %33, %101 ]
  %.01 = phi i8** [ %1, %5 ], [ %17, %101 ]
  %14 = add nsw i32 %.04, -1
  %15 = icmp sgt i32 %.04, 0
  br i1 %15, label %16, label %102

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8*, i8** %.01, i64 1
  %18 = load i8*, i8** %.01, align 8
  %19 = load i8**, i8*** %2, align 8
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8**, i8*** %2, i64 1
  %24 = load i8**, i8*** %23, align 8
  %25 = zext i32 %.03 to i64
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8**, i8*** %2, i64 2
  %29 = load i8**, i8*** %28, align 8
  %30 = zext i32 %.03 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = add i32 %.03, 1
  br label %34

34:                                               ; preds = %98, %16
  %.02 = phi i8* [ %18, %16 ], [ %99, %98 ]
  %.0 = phi i32 [ 0, %16 ], [ %100, %98 ]
  %35 = icmp ult i32 %.0, %12
  br i1 %35, label %36, label %101

36:                                               ; preds = %34
  %37 = load i8, i8* %.02, align 1
  %38 = zext i8 %37 to i32
  %39 = getelementptr inbounds i8, i8* %.02, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds i8, i8* %.02, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = zext i8 %37 to i64
  %46 = getelementptr inbounds i64, i64* %10, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = or i32 %41, 256
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %10, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %47, %51
  %53 = or i32 %44, 512
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %10, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = lshr i64 %57, 16
  %59 = trunc i64 %58 to i8
  %60 = zext i32 %.0 to i64
  %61 = getelementptr inbounds i8, i8* %22, i64 %60
  store i8 %59, i8* %61, align 1
  %62 = or i32 %38, 768
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %10, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = or i32 %41, 1024
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %10, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %65, %69
  %71 = or i32 %44, 1280
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %10, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add nsw i64 %70, %74
  %76 = lshr i64 %75, 16
  %77 = trunc i64 %76 to i8
  %78 = zext i32 %.0 to i64
  %79 = getelementptr inbounds i8, i8* %27, i64 %78
  store i8 %77, i8* %79, align 1
  %80 = or i32 %38, 1280
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %10, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = or i32 %41, 1536
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %10, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %83, %87
  %89 = or i32 %44, 1792
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %10, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %88, %92
  %94 = lshr i64 %93, 16
  %95 = trunc i64 %94 to i8
  %96 = zext i32 %.0 to i64
  %97 = getelementptr inbounds i8, i8* %32, i64 %96
  store i8 %95, i8* %97, align 1
  br label %98

98:                                               ; preds = %36
  %99 = getelementptr inbounds i8, i8* %.02, i64 3
  %100 = add i32 %.0, 1
  br label %34, !llvm.loop !13

101:                                              ; preds = %34
  br label %13, !llvm.loop !14

102:                                              ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @cmyk_ycck_convert(%struct.jpeg_compress_struct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1, i8*** nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 56
  %7 = bitcast %struct.jpeg_color_converter** %6 to %struct.my_color_converter**
  %8 = load %struct.my_color_converter*, %struct.my_color_converter** %7, align 8
  %9 = getelementptr inbounds %struct.my_color_converter, %struct.my_color_converter* %8, i64 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  br label %13

13:                                               ; preds = %113, %5
  %.04 = phi i32 [ %4, %5 ], [ %14, %113 ]
  %.03 = phi i32 [ %3, %5 ], [ %38, %113 ]
  %.01 = phi i8** [ %1, %5 ], [ %17, %113 ]
  %14 = add nsw i32 %.04, -1
  %15 = icmp sgt i32 %.04, 0
  br i1 %15, label %16, label %114

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8*, i8** %.01, i64 1
  %18 = load i8*, i8** %.01, align 8
  %19 = load i8**, i8*** %2, align 8
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8**, i8*** %2, i64 1
  %24 = load i8**, i8*** %23, align 8
  %25 = zext i32 %.03 to i64
  %26 = getelementptr inbounds i8*, i8** %24, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8**, i8*** %2, i64 2
  %29 = load i8**, i8*** %28, align 8
  %30 = zext i32 %.03 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8**, i8*** %2, i64 3
  %34 = load i8**, i8*** %33, align 8
  %35 = zext i32 %.03 to i64
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = add i32 %.03, 1
  br label %39

39:                                               ; preds = %110, %16
  %.02 = phi i8* [ %18, %16 ], [ %111, %110 ]
  %.0 = phi i32 [ 0, %16 ], [ %112, %110 ]
  %40 = icmp ult i32 %.0, %12
  br i1 %40, label %41, label %113

41:                                               ; preds = %39
  %42 = load i8, i8* %.02, align 1
  %43 = xor i8 %42, -1
  %44 = zext i8 %43 to i32
  %45 = getelementptr inbounds i8, i8* %.02, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, i8* %.02, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, i8* %.02, i64 3
  %54 = load i8, i8* %53, align 1
  %55 = zext i32 %.0 to i64
  %56 = getelementptr inbounds i8, i8* %37, i64 %55
  store i8 %54, i8* %56, align 1
  %57 = zext i8 %43 to i64
  %58 = getelementptr inbounds i64, i64* %10, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = or i32 %48, 256
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %10, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %59, %63
  %65 = or i32 %52, 512
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %10, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %64, %68
  %70 = lshr i64 %69, 16
  %71 = trunc i64 %70 to i8
  %72 = zext i32 %.0 to i64
  %73 = getelementptr inbounds i8, i8* %22, i64 %72
  store i8 %71, i8* %73, align 1
  %74 = or i32 %44, 768
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %10, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = or i32 %48, 1024
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %10, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %77, %81
  %83 = or i32 %52, 1280
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %10, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %82, %86
  %88 = lshr i64 %87, 16
  %89 = trunc i64 %88 to i8
  %90 = zext i32 %.0 to i64
  %91 = getelementptr inbounds i8, i8* %27, i64 %90
  store i8 %89, i8* %91, align 1
  %92 = or i32 %44, 1280
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %10, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = or i32 %48, 1536
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %10, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %95, %99
  %101 = or i32 %52, 1792
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %10, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %100, %104
  %106 = lshr i64 %105, 16
  %107 = trunc i64 %106 to i8
  %108 = zext i32 %.0 to i64
  %109 = getelementptr inbounds i8, i8* %32, i64 %108
  store i8 %107, i8* %109, align 1
  br label %110

110:                                              ; preds = %41
  %111 = getelementptr inbounds i8, i8* %.02, i64 4
  %112 = add i32 %.0, 1
  br label %39, !llvm.loop !15

113:                                              ; preds = %39
  br label %13, !llvm.loop !16

114:                                              ; preds = %13
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
