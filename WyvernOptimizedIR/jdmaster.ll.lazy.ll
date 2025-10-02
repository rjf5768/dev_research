; ModuleID = './jdmaster.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 202
  br i1 %.not, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 5
  store i32 18, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 6, i32 0, i64 0
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #5
  br label %18

18:                                               ; preds = %4, %1
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 11
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 3
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 12
  %23 = load i32, i32* %22, align 8
  %.not4 = icmp ugt i32 %21, %23
  br i1 %.not4, label %38, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = call i64 @jdiv_round_up(i64 noundef %27, i64 noundef 8) #5
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %32 to i64
  %34 = call i64 @jdiv_round_up(i64 noundef %33, i64 noundef 8) #5
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  store i32 1, i32* %37, align 4
  br label %88

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 11
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 2
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 12
  %43 = load i32, i32* %42, align 8
  %.not5 = icmp ugt i32 %41, %43
  br i1 %.not5, label %58, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = call i64 @jdiv_round_up(i64 noundef %47, i64 noundef 4) #5
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = call i64 @jdiv_round_up(i64 noundef %53, i64 noundef 4) #5
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  store i32 2, i32* %57, align 4
  br label %87

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 1
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 12
  %63 = load i32, i32* %62, align 8
  %.not6 = icmp ugt i32 %61, %63
  br i1 %.not6, label %78, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = zext i32 %66 to i64
  %68 = call i64 @jdiv_round_up(i64 noundef %67, i64 noundef 2) #5
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  %74 = call i64 @jdiv_round_up(i64 noundef %73, i64 noundef 2) #5
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  store i32 4, i32* %77, align 4
  br label %86

78:                                               ; preds = %58
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  store i32 8, i32* %85, align 4
  br label %86

86:                                               ; preds = %78, %64
  br label %87

87:                                               ; preds = %86, %44
  br label %88

88:                                               ; preds = %87, %24
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %90 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %89, align 8
  br label %91

91:                                               ; preds = %127, %88
  %.02 = phi %struct.jpeg_component_info* [ %90, %88 ], [ %129, %127 ]
  %.01 = phi i32 [ 0, %88 ], [ %128, %127 ]
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %.01, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %97 = load i32, i32* %96, align 4
  br label %98

98:                                               ; preds = %123, %95
  %.0 = phi i32 [ %97, %95 ], [ %124, %123 ]
  %99 = icmp slt i32 %.0, 8
  br i1 %99, label %100, label %121

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = mul nsw i32 %102, %.0
  %104 = shl nsw i32 %103, 1
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %106, %108
  %.not9 = icmp sgt i32 %104, %109
  br i1 %.not9, label %121, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %112, %.0
  %114 = shl nsw i32 %113, 1
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %116 = load i32, i32* %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  %120 = icmp sle i32 %114, %119
  br label %121

121:                                              ; preds = %110, %100, %98
  %122 = phi i1 [ false, %100 ], [ false, %98 ], [ %120, %110 ]
  br i1 %122, label %123, label %125

123:                                              ; preds = %121
  %124 = shl nsw i32 %.0, 1
  br label %98, !llvm.loop !4

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 0, i32 9
  store i32 %.0, i32* %126, align 4
  br label %127

127:                                              ; preds = %125
  %128 = add nuw nsw i32 %.01, 1
  %129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.02, i64 1
  br label %91, !llvm.loop !6

130:                                              ; preds = %91
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %132 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %131, align 8
  br label %133

133:                                              ; preds = %172, %130
  %.13 = phi %struct.jpeg_component_info* [ %132, %130 ], [ %174, %172 ]
  %.1 = phi i32 [ 0, %130 ], [ %173, %172 ]
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %.1, %135
  br i1 %136, label %137, label %175

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %142, %144
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %140, %146
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %149 = load i32, i32* %148, align 4
  %150 = shl nsw i32 %149, 3
  %151 = sext i32 %150 to i64
  %152 = call i64 @jdiv_round_up(i64 noundef %147, i64 noundef %151) #5
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 10
  store i32 %153, i32* %154, align 8
  %155 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %159, %161
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %157, %163
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %166 = load i32, i32* %165, align 8
  %167 = shl nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = call i64 @jdiv_round_up(i64 noundef %164, i64 noundef %168) #5
  %170 = trunc i64 %169 to i32
  %171 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 0, i32 11
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %137
  %173 = add nuw nsw i32 %.1, 1
  %174 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.13, i64 1
  br label %133, !llvm.loop !7

175:                                              ; preds = %133
  %176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %177 = load i32, i32* %176, align 8
  switch i32 %177, label %184 [
    i32 1, label %178
    i32 2, label %180
    i32 3, label %180
    i32 4, label %182
    i32 5, label %182
  ]

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 1, i32* %179, align 8
  br label %188

180:                                              ; preds = %175, %175
  %181 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 3, i32* %181, align 8
  br label %188

182:                                              ; preds = %175, %175
  %183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 4, i32* %183, align 8
  br label %188

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  store i32 %186, i32* %187, align 8
  br label %188

188:                                              ; preds = %184, %182, %180, %178
  %189 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %190 = load i32, i32* %189, align 4
  %.not7 = icmp eq i32 %190, 0
  br i1 %.not7, label %192, label %191

191:                                              ; preds = %188
  br label %195

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %194 = load i32, i32* %193, align 8
  br label %195

195:                                              ; preds = %192, %191
  %196 = phi i32 [ 1, %191 ], [ %194, %192 ]
  %197 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 29
  store i32 %196, i32* %197, align 4
  %198 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* noundef %0)
  %.not8 = icmp eq i32 %198, 0
  br i1 %.not8, label %203, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 30
  store i32 %201, i32* %202, align 8
  br label %205

203:                                              ; preds = %195
  %204 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 30
  store i32 1, i32* %204, align 8
  br label %205

205:                                              ; preds = %203, %199
  ret void
}

declare dso_local i64 @jdiv_round_up(i64 noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @use_merged_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 17
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 56
  %6 = load i32, i32* %5, align 8
  %.not1 = icmp eq i32 %6, 0
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4, %1
  br label %76

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %10 = load i32, i32* %9, align 4
  %.not2 = icmp eq i32 %10, 3
  br i1 %.not2, label %11, label %20

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %13 = load i32, i32* %12, align 8
  %.not3 = icmp eq i32 %13, 3
  br i1 %.not3, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  %16 = load i32, i32* %15, align 8
  %.not4 = icmp eq i32 %16, 2
  br i1 %.not4, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %19 = load i32, i32* %18, align 8
  %.not5 = icmp eq i32 %19, 3
  br i1 %.not5, label %21, label %20

20:                                               ; preds = %17, %14, %11, %8
  br label %76

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %.not6 = icmp eq i32 %25, 2
  br i1 %.not6, label %26, label %52

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i64 1, i32 2
  %30 = load i32, i32* %29, align 8
  %.not7 = icmp eq i32 %30, 1
  br i1 %.not7, label %31, label %52

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %33 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %33, i64 2, i32 2
  %35 = load i32, i32* %34, align 8
  %.not8 = icmp eq i32 %35, 1
  br i1 %.not8, label %36, label %52

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 2
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i64 1, i32 3
  %46 = load i32, i32* %45, align 4
  %.not9 = icmp eq i32 %46, 1
  br i1 %.not9, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %49, i64 2, i32 3
  %51 = load i32, i32* %50, align 4
  %.not10 = icmp eq i32 %51, 1
  br i1 %.not10, label %53, label %52

52:                                               ; preds = %47, %42, %36, %31, %26, %21
  br label %76

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %55 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %54, align 8
  %56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %55, i64 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %59 = load i32, i32* %58, align 4
  %.not11 = icmp eq i32 %57, %59
  br i1 %.not11, label %60, label %74

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %62 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %62, i64 1, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %66 = load i32, i32* %65, align 4
  %.not12 = icmp eq i32 %64, %66
  br i1 %.not12, label %67, label %74

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i64 2, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %73 = load i32, i32* %72, align 4
  %.not13 = icmp eq i32 %71, %73
  br i1 %.not13, label %75, label %74

74:                                               ; preds = %67, %60, %53
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %74, %52, %20, %7
  %.0 = phi i32 [ 0, %7 ], [ 0, %20 ], [ 0, %52 ], [ 0, %74 ], [ 1, %75 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_new_colormap(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %3 = bitcast %struct.jpeg_decomp_master** %2 to %struct.my_decomp_master**
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 207
  br i1 %.not, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %9 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %9, i64 0, i32 5
  store i32 18, i32* %10, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 6, i32 0, i64 0
  store i32 %12, i32* %15, align 4
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %20) #5
  br label %21

21:                                               ; preds = %7, %1
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %23 = load i32, i32* %22, align 4
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %38, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  %26 = load i32, i32* %25, align 8
  %.not2 = icmp eq i32 %26, 0
  br i1 %.not2, label %38, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %29 = load i8**, i8*** %28, align 8
  %.not3 = icmp eq i8** %29, null
  br i1 %.not3, label %38, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 4
  %32 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  store %struct.jpeg_color_quantizer* %32, %struct.jpeg_color_quantizer** %33, align 8
  %34 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %32, i64 0, i32 3
  %35 = bitcast {}** %34 to void (%struct.jpeg_decompress_struct*)**
  %36 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %35, align 8
  call void %36(%struct.jpeg_decompress_struct* noundef %0) #5
  %37 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  store i32 0, i32* %37, align 8
  br label %47

38:                                               ; preds = %27, %24, %21
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %40 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %40, i64 0, i32 5
  store i32 45, i32* %41, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %43 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %43, i64 0, i32 0
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %44, align 8
  %46 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* noundef %46) #5
  br label %47

47:                                               ; preds = %38, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 48) #5
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %9 = bitcast %struct.jpeg_decomp_master** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @prepare_for_output_pass, void (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @finish_output_pass, void (%struct.jpeg_decompress_struct*)** %12, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 8
  call void @master_selection(%struct.jpeg_decompress_struct* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_for_output_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %3 = bitcast %struct.jpeg_decomp_master** %2 to %struct.my_decomp_master**
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %5 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %10 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %10, i64 0, i32 0
  %12 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %11, align 8
  call void %12(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 0) #5
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %14 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %15, align 8
  call void %16(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 2) #5
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %18 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %18, i64 0, i32 0
  %20 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %19, align 8
  call void %20(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 2) #5
  br label %104

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %23 = load i32, i32* %22, align 4
  %.not1 = icmp eq i32 %23, 0
  br i1 %.not1, label %57, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %26 = load i8**, i8*** %25, align 8
  %27 = icmp eq i8** %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 21
  %30 = load i32, i32* %29, align 4
  %.not11 = icmp eq i32 %30, 0
  br i1 %.not11, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  %33 = load i32, i32* %32, align 4
  %.not13 = icmp eq i32 %33, 0
  br i1 %.not13, label %39, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 4
  %36 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %35, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  store %struct.jpeg_color_quantizer* %36, %struct.jpeg_color_quantizer** %37, align 8
  %38 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  store i32 1, i32* %38, align 8
  br label %56

39:                                               ; preds = %31, %28
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  %41 = load i32, i32* %40, align 4
  %.not12 = icmp eq i32 %41, 0
  br i1 %.not12, label %46, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 3
  %44 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  store %struct.jpeg_color_quantizer* %44, %struct.jpeg_color_quantizer** %45, align 8
  br label %55

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i64 0, i32 5
  store i32 45, i32* %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %51 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %51, i64 0, i32 0
  %53 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %52, align 8
  %54 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %53(%struct.jpeg_common_struct* noundef %54) #5
  br label %55

55:                                               ; preds = %46, %42
  br label %56

56:                                               ; preds = %55, %34
  br label %57

57:                                               ; preds = %56, %24, %21
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 80
  %59 = bitcast %struct.jpeg_inverse_dct** %58 to void (%struct.jpeg_decompress_struct*)***
  %60 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %59, align 8
  %61 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %60, align 8
  call void %61(%struct.jpeg_decompress_struct* noundef %0) #5
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 75
  %63 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %62, align 8
  %64 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %63, i64 0, i32 2
  %65 = bitcast {}** %64 to void (%struct.jpeg_decompress_struct*)**
  %66 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %65, align 8
  call void %66(%struct.jpeg_decompress_struct* noundef %0) #5
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  %68 = load i32, i32* %67, align 4
  %.not2 = icmp eq i32 %68, 0
  br i1 %.not2, label %69, label %103

69:                                               ; preds = %57
  %70 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 2
  %71 = load i32, i32* %70, align 4
  %.not3 = icmp eq i32 %71, 0
  br i1 %.not3, label %72, label %77

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %74 = bitcast %struct.jpeg_color_deconverter** %73 to void (%struct.jpeg_decompress_struct*)***
  %75 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %74, align 8
  %76 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %75, align 8
  call void %76(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %77

77:                                               ; preds = %72, %69
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %79 = bitcast %struct.jpeg_upsampler** %78 to void (%struct.jpeg_decompress_struct*)***
  %80 = load void (%struct.jpeg_decompress_struct*)**, void (%struct.jpeg_decompress_struct*)*** %79, align 8
  %81 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %80, align 8
  call void %81(%struct.jpeg_decompress_struct* noundef %0) #5
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %83 = load i32, i32* %82, align 4
  %.not4 = icmp eq i32 %83, 0
  br i1 %.not4, label %91, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %86 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %85, align 8
  %87 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %86, i64 0, i32 0
  %88 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %87, align 8
  %89 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  call void %88(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %90) #5
  br label %91

91:                                               ; preds = %84, %77
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 76
  %93 = load %struct.jpeg_d_post_controller*, %struct.jpeg_d_post_controller** %92, align 8
  %94 = getelementptr inbounds %struct.jpeg_d_post_controller, %struct.jpeg_d_post_controller* %93, i64 0, i32 0
  %95 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %94, align 8
  %96 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %.not5 = icmp eq i32 %97, 0
  %98 = select i1 %.not5, i32 0, i32 3
  call void %95(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %98) #5
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 74
  %100 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %100, i64 0, i32 0
  %102 = load void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i32)** %101, align 8
  call void %102(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 0) #5
  br label %103

103:                                              ; preds = %91, %57
  br label %104

104:                                              ; preds = %103, %7
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %106 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %105, align 8
  %.not6 = icmp eq %struct.jpeg_progress_mgr* %106, null
  br i1 %.not6, label %139, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %111 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %111, i64 0, i32 3
  store i32 %109, i32* %112, align 8
  %113 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %.not7 = icmp eq i32 %116, 0
  %117 = select i1 %.not7, i32 1, i32 2
  %118 = add nsw i32 %114, %117
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %120 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %119, align 8
  %121 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %120, i64 0, i32 4
  store i32 %118, i32* %121, align 4
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %123 = load i32, i32* %122, align 8
  %.not8 = icmp eq i32 %123, 0
  br i1 %.not8, label %138, label %124

124:                                              ; preds = %107
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %126 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %125, align 8
  %127 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %126, i64 0, i32 5
  %128 = load i32, i32* %127, align 4
  %.not9 = icmp eq i32 %128, 0
  br i1 %.not9, label %129, label %138

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  %131 = load i32, i32* %130, align 4
  %.not10 = icmp eq i32 %131, 0
  %132 = select i1 %.not10, i32 1, i32 2
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %134 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %133, align 8
  %135 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %134, i64 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %132
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %129, %124, %107
  br label %139

139:                                              ; preds = %138, %104
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @finish_output_pass(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %3 = bitcast %struct.jpeg_decomp_master** %2 to %struct.my_decomp_master**
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %6 = load i32, i32* %5, align 4
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %9 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_color_quantizer, %struct.jpeg_color_quantizer* %9, i64 0, i32 2
  %11 = bitcast {}** %10 to void (%struct.jpeg_decompress_struct*)**
  %12 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %11, align 8
  call void %12(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %13

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @master_selection(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %3 = bitcast %struct.jpeg_decomp_master** %2 to %struct.my_decomp_master**
  %4 = load %struct.my_decomp_master*, %struct.my_decomp_master** %3, align 8
  call void @jpeg_calc_output_dimensions(%struct.jpeg_decompress_struct* noundef %0)
  call void @prepare_range_limit_table(%struct.jpeg_decompress_struct* noundef %0)
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %7, %10
  %12 = icmp ult i64 %11, 4294967296
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 5
  store i32 69, i32* %16, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %19, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* noundef %21) #5
  br label %22

22:                                               ; preds = %13, %1
  %23 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 1
  store i32 0, i32* %23, align 8
  %24 = call i32 @use_merged_upsample(%struct.jpeg_decompress_struct* noundef %0)
  %25 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 3
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %26, align 8
  %27 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 4
  store %struct.jpeg_color_quantizer* null, %struct.jpeg_color_quantizer** %27, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %29 = load i32, i32* %28, align 4
  %.not = icmp eq i32 %29, 0
  br i1 %.not, label %33, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %32 = load i32, i32* %31, align 8
  %.not20 = icmp eq i32 %32, 0
  br i1 %.not20, label %33, label %37

33:                                               ; preds = %30, %22
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  store i32 0, i32* %35, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  %39 = load i32, i32* %38, align 4
  %.not1 = icmp eq i32 %39, 0
  br i1 %.not1, label %92, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  %42 = load i32, i32* %41, align 4
  %.not13 = icmp eq i32 %42, 0
  br i1 %.not13, label %52, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i64 0, i32 5
  store i32 46, i32* %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i64 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %49, align 8
  %51 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* noundef %51) #5
  br label %52

52:                                               ; preds = %43, %40
  %53 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %54 = load i32, i32* %53, align 8
  %.not14 = icmp eq i32 %54, 3
  br i1 %.not14, label %60, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  store i32 1, i32* %56, align 4
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  store i8** null, i8*** %59, align 8
  br label %74

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  %62 = load i8**, i8*** %61, align 8
  %.not15 = icmp eq i8** %62, null
  br i1 %.not15, label %65, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  store i32 1, i32* %64, align 8
  br label %73

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 21
  %67 = load i32, i32* %66, align 4
  %.not16 = icmp eq i32 %67, 0
  br i1 %.not16, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  store i32 1, i32* %69, align 4
  br label %72

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %63
  br label %74

74:                                               ; preds = %73, %55
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  %76 = load i32, i32* %75, align 4
  %.not17 = icmp eq i32 %76, 0
  br i1 %.not17, label %81, label %77

77:                                               ; preds = %74
  call void @jinit_1pass_quantizer(%struct.jpeg_decompress_struct* noundef %0) #5
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %79 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %78, align 8
  %80 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 3
  store %struct.jpeg_color_quantizer* %79, %struct.jpeg_color_quantizer** %80, align 8
  br label %81

81:                                               ; preds = %77, %74
  %82 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  %83 = load i32, i32* %82, align 4
  %.not18 = icmp eq i32 %83, 0
  br i1 %.not18, label %84, label %87

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  %86 = load i32, i32* %85, align 8
  %.not19 = icmp eq i32 %86, 0
  br i1 %.not19, label %91, label %87

87:                                               ; preds = %84, %81
  call void @jinit_2pass_quantizer(%struct.jpeg_decompress_struct* noundef %0) #5
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 83
  %89 = load %struct.jpeg_color_quantizer*, %struct.jpeg_color_quantizer** %88, align 8
  %90 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 4
  store %struct.jpeg_color_quantizer* %89, %struct.jpeg_color_quantizer** %90, align 8
  br label %91

91:                                               ; preds = %87, %84
  br label %92

92:                                               ; preds = %91, %37
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  %94 = load i32, i32* %93, align 4
  %.not2 = icmp eq i32 %94, 0
  br i1 %.not2, label %95, label %103

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 2
  %97 = load i32, i32* %96, align 4
  %.not3 = icmp eq i32 %97, 0
  br i1 %.not3, label %99, label %98

98:                                               ; preds = %95
  call void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %100

99:                                               ; preds = %95
  call void @jinit_color_deconverter(%struct.jpeg_decompress_struct* noundef %0) #5
  call void @jinit_upsampler(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %100

100:                                              ; preds = %99, %98
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  %102 = load i32, i32* %101, align 4
  call void @jinit_d_post_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %102) #5
  br label %103

103:                                              ; preds = %100, %92
  call void @jinit_inverse_dct(%struct.jpeg_decompress_struct* noundef %0) #5
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 45
  %105 = load i32, i32* %104, align 4
  %.not4 = icmp eq i32 %105, 0
  br i1 %.not4, label %115, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %108 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %108, i64 0, i32 5
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %111 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %111, i64 0, i32 0
  %113 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %112, align 8
  %114 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %113(%struct.jpeg_common_struct* noundef %114) #5
  br label %121

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 44
  %117 = load i32, i32* %116, align 8
  %.not5 = icmp eq i32 %117, 0
  br i1 %.not5, label %119, label %118

118:                                              ; preds = %115
  call void @jinit_phuff_decoder(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %120

119:                                              ; preds = %115
  call void @jinit_huff_decoder(%struct.jpeg_decompress_struct* noundef %0) #5
  br label %120

120:                                              ; preds = %119, %118
  br label %121

121:                                              ; preds = %120, %106
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %123 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %123, i64 0, i32 4
  %125 = load i32, i32* %124, align 8
  %.not6 = icmp eq i32 %125, 0
  br i1 %.not6, label %126, label %130

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  %phi.cast = zext i1 %129 to i32
  br label %130

130:                                              ; preds = %126, %121
  %131 = phi i32 [ 1, %121 ], [ %phi.cast, %126 ]
  call void @jinit_d_coef_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %131) #5
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  %133 = load i32, i32* %132, align 4
  %.not7 = icmp eq i32 %133, 0
  br i1 %.not7, label %134, label %135

134:                                              ; preds = %130
  call void @jinit_d_main_controller(%struct.jpeg_decompress_struct* noundef %0, i32 noundef 0) #5
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %137 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %136, align 8
  %138 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %137, i64 0, i32 6
  %139 = bitcast {}** %138 to void (%struct.jpeg_common_struct*)**
  %140 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %139, align 8
  %141 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %140(%struct.jpeg_common_struct* noundef %141) #5
  %142 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %143 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %143, i64 0, i32 2
  %145 = bitcast {}** %144 to void (%struct.jpeg_decompress_struct*)**
  %146 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %145, align 8
  call void %146(%struct.jpeg_decompress_struct* noundef %0) #5
  %147 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %148 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %147, align 8
  %.not8 = icmp eq %struct.jpeg_progress_mgr* %148, null
  br i1 %.not8, label %192, label %149

149:                                              ; preds = %135
  %150 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %151 = load i32, i32* %150, align 8
  %.not9 = icmp eq i32 %151, 0
  br i1 %.not9, label %152, label %192

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %154 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %153, align 8
  %155 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %154, i64 0, i32 4
  %156 = load i32, i32* %155, align 8
  %.not10 = icmp eq i32 %156, 0
  br i1 %.not10, label %192, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 44
  %159 = load i32, i32* %158, align 8
  %.not11 = icmp eq i32 %159, 0
  br i1 %.not11, label %165, label %160

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %162, 3
  %164 = add nsw i32 %163, 2
  br label %168

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %167 = load i32, i32* %166, align 8
  br label %168

168:                                              ; preds = %165, %160
  %.0 = phi i32 [ %164, %160 ], [ %167, %165 ]
  %169 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %170 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %169, align 8
  %171 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %170, i64 0, i32 1
  store i64 0, i64* %171, align 8
  %172 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 60
  %173 = load i32, i32* %172, align 8
  %174 = zext i32 %173 to i64
  %175 = sext i32 %.0 to i64
  %176 = mul nsw i64 %174, %175
  %177 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %178 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %177, align 8
  %179 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %178, i64 0, i32 2
  store i64 %176, i64* %179, align 8
  %180 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %181 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %180, align 8
  %182 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %181, i64 0, i32 3
  store i32 0, i32* %182, align 8
  %183 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  %184 = load i32, i32* %183, align 4
  %.not12 = icmp eq i32 %184, 0
  %185 = select i1 %.not12, i32 2, i32 3
  %186 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  %187 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %186, align 8
  %188 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %187, i64 0, i32 4
  store i32 %185, i32* %188, align 4
  %189 = getelementptr inbounds %struct.my_decomp_master, %struct.my_decomp_master* %4, i64 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %168, %152, %149, %135
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_range_limit_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 1408) #5
  %8 = getelementptr inbounds i8, i8* %7, i64 256
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  store i8* %8, i8** %9, align 8
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %7, i8 0, i64 256, i1 false)
  br label %10

10:                                               ; preds = %16, %1
  %.0 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %11 = icmp ult i32 %.0, 256
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = trunc i32 %.0 to i8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8, i8* %8, i64 %14
  store i8 %13, i8* %15, align 1
  br label %16

16:                                               ; preds = %12
  %17 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !8

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, i8* %7, i64 384
  br label %20

20:                                               ; preds = %25, %18
  %.1 = phi i32 [ 128, %18 ], [ %26, %25 ]
  %21 = icmp ult i32 %.1, 512
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8 -1, i8* %24, align 1
  br label %25

25:                                               ; preds = %22
  %26 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !9

27:                                               ; preds = %20
  %28 = getelementptr inbounds i8, i8* %7, i64 896
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(384) %28, i8 0, i64 384, i1 false)
  %29 = getelementptr inbounds i8, i8* %7, i64 1280
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %31 = load i8*, i8** %30, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(128) %29, i8* noundef nonnull align 1 dereferenceable(128) %31, i64 128, i1 false)
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

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind }

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
