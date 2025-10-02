; ModuleID = './jdsample.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 256) #5
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %9 = bitcast %struct.jpeg_upsampler** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_upsample, void (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @sep_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %12, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 56
  %16 = load i32, i32* %15, align 8
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %26, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 5
  store i32 23, i32* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i64 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* noundef %25) #5
  br label %26

26:                                               ; preds = %17, %1
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 17
  %28 = load i32, i32* %27, align 4
  %.not3 = icmp eq i32 %28, 0
  br i1 %.not3, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 1
  %phi.cast = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ 0, %26 ], [ %phi.cast, %29 ]
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %35, align 8
  br label %37

37:                                               ; preds = %184, %33
  %.02 = phi i32 [ 0, %33 ], [ %185, %184 ]
  %.01 = phi %struct.jpeg_component_info* [ %36, %33 ], [ %186, %184 ]
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %.02, %39
  br i1 %40, label %41, label %187

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %46, %48
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %51, %53
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 59
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %54, %56
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds i8, i8* %7, i64 192
  %63 = bitcast i8* %62 to [10 x i32]*
  %64 = zext i32 %.02 to i64
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* %63, i64 0, i64 %64
  store i32 %57, i32* %65, align 4
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 12
  %67 = load i32, i32* %66, align 8
  %.not4 = icmp eq i32 %67, 0
  br i1 %.not4, label %68, label %73

68:                                               ; preds = %41
  %69 = getelementptr inbounds i8, i8* %7, i64 104
  %70 = bitcast i8* %69 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %71 = zext i32 %.02 to i64
  %72 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %70, i64 0, i64 %71
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @noop_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %72, align 8
  br label %161

73:                                               ; preds = %41
  %74 = icmp eq i32 %49, %59
  br i1 %74, label %75, label %82

75:                                               ; preds = %73
  %76 = icmp eq i32 %57, %61
  br i1 %76, label %77, label %82

77:                                               ; preds = %75
  %78 = getelementptr inbounds i8, i8* %7, i64 104
  %79 = bitcast i8* %78 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %80 = zext i32 %.02 to i64
  %81 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %79, i64 0, i64 %80
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @fullsize_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %81, align 8
  br label %160

82:                                               ; preds = %75, %73
  %83 = shl nsw i32 %49, 1
  %84 = icmp eq i32 %83, %59
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = icmp eq i32 %57, %61
  br i1 %86, label %87, label %103

87:                                               ; preds = %85
  %.not7 = icmp eq i32 %34, 0
  br i1 %.not7, label %97, label %88

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, i8* %7, i64 104
  %94 = bitcast i8* %93 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %95 = zext i32 %.02 to i64
  %96 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %94, i64 0, i64 %95
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %96, align 8
  br label %102

97:                                               ; preds = %88, %87
  %98 = getelementptr inbounds i8, i8* %7, i64 104
  %99 = bitcast i8* %98 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %100 = zext i32 %.02 to i64
  %101 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %99, i64 0, i64 %100
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v1_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %159

103:                                              ; preds = %85, %82
  %104 = shl nsw i32 %49, 1
  %105 = icmp eq i32 %104, %59
  br i1 %105, label %106, label %127

106:                                              ; preds = %103
  %107 = shl nsw i32 %57, 1
  %108 = icmp eq i32 %107, %61
  br i1 %108, label %109, label %127

109:                                              ; preds = %106
  %.not6 = icmp eq i32 %34, 0
  br i1 %.not6, label %121, label %110

110:                                              ; preds = %109
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = icmp ugt i32 %112, 2
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = getelementptr inbounds i8, i8* %7, i64 104
  %116 = bitcast i8* %115 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %117 = zext i32 %.02 to i64
  %118 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %116, i64 0, i64 %117
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_fancy_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %118, align 8
  %119 = getelementptr inbounds i8, i8* %7, i64 16
  %120 = bitcast i8* %119 to i32*
  store i32 1, i32* %120, align 8
  br label %126

121:                                              ; preds = %110, %109
  %122 = getelementptr inbounds i8, i8* %7, i64 104
  %123 = bitcast i8* %122 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %124 = zext i32 %.02 to i64
  %125 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %123, i64 0, i64 %124
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @h2v2_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %125, align 8
  br label %126

126:                                              ; preds = %121, %114
  br label %158

127:                                              ; preds = %106, %103
  %128 = srem i32 %59, %49
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %127
  %131 = srem i32 %61, %57
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = getelementptr inbounds i8, i8* %7, i64 104
  %135 = bitcast i8* %134 to [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]*
  %136 = zext i32 %.02 to i64
  %137 = getelementptr inbounds [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*], [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*]* %135, i64 0, i64 %136
  store void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)* @int_upsample, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %137, align 8
  %138 = sdiv i32 %59, %49
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds i8, i8* %7, i64 232
  %141 = zext i32 %.02 to i64
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 %139, i8* %142, align 1
  %143 = sdiv i32 %61, %57
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, i8* %7, i64 242
  %146 = zext i32 %.02 to i64
  %147 = getelementptr inbounds i8, i8* %145, i64 %146
  store i8 %144, i8* %147, align 1
  br label %157

148:                                              ; preds = %130, %127
  %149 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %149, align 8
  %151 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i64 0, i32 5
  store i32 37, i32* %151, align 8
  %152 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %152, align 8
  %154 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i64 0, i32 0
  %155 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %154, align 8
  %156 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %155(%struct.jpeg_common_struct* noundef %156) #5
  br label %157

157:                                              ; preds = %148, %133
  br label %158

158:                                              ; preds = %157, %126
  br label %159

159:                                              ; preds = %158, %102
  br label %160

160:                                              ; preds = %159, %77
  %.0 = phi i32 [ 0, %77 ], [ 1, %159 ]
  br label %161

161:                                              ; preds = %160, %68
  %.1 = phi i32 [ %.0, %160 ], [ 0, %68 ]
  %.not5 = icmp eq i32 %.1, 0
  br i1 %.not5, label %183, label %162

162:                                              ; preds = %161
  %163 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %164 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %163, align 8
  %165 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %164, i64 0, i32 2
  %166 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %165, align 8
  %167 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %168 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %169 = load i32, i32* %168, align 8
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 57
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = call i64 @jround_up(i64 noundef %170, i64 noundef %173) #5
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %177 = load i32, i32* %176, align 8
  %178 = call i8** %166(%struct.jpeg_common_struct* noundef %167, i32 noundef 1, i32 noundef %175, i32 noundef %177) #5
  %179 = getelementptr inbounds i8, i8* %7, i64 24
  %180 = bitcast i8* %179 to [10 x i8**]*
  %181 = zext i32 %.02 to i64
  %182 = getelementptr inbounds [10 x i8**], [10 x i8**]* %180, i64 0, i64 %181
  store i8** %178, i8*** %182, align 8
  br label %183

183:                                              ; preds = %162, %161
  br label %184

184:                                              ; preds = %183
  %185 = add nuw nsw i32 %.02, 1
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 1
  br label %37, !llvm.loop !4

187:                                              ; preds = %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @start_pass_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %3 = bitcast %struct.jpeg_upsampler** %2 to %struct.my_upsampler**
  %4 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 3
  store i32 %6, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 4
  store i32 %9, i32* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** nocapture noundef readonly %1, i32* nocapture noundef %2, i32 noundef %3, i8** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %9 = bitcast %struct.jpeg_upsampler** %8 to %struct.my_upsampler**
  %10 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %14 = load i32, i32* %13, align 8
  %.not = icmp slt i32 %12, %14
  br i1 %.not, label %43, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %16, align 8
  br label %18

18:                                               ; preds = %38, %15
  %.02 = phi i32 [ 0, %15 ], [ %39, %38 ]
  %.01 = phi %struct.jpeg_component_info* [ %17, %15 ], [ %40, %38 ]
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %.02, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = zext i32 %.02 to i64
  %24 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 2, i64 %23
  %25 = load void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)*, void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i8**, i8***)** %24, align 8
  %26 = zext i32 %.02 to i64
  %27 = getelementptr inbounds i8**, i8*** %1, i64 %26
  %28 = load i8**, i8*** %27, align 8
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 5, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = mul i32 %29, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %28, i64 %34
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 1, i64 %36
  call void %25(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_component_info* noundef %.01, i8** noundef %35, i8*** noundef nonnull %37) #5
  br label %38

38:                                               ; preds = %22
  %39 = add nuw nsw i32 %.02, 1
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 1
  br label %18, !llvm.loop !6

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 3
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %41, %7
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %45, %47
  %49 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 4
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %52, %43
  %.0 = phi i32 [ %54, %52 ], [ %48, %43 ]
  %56 = load i32, i32* %5, align 4
  %57 = sub i32 %6, %56
  %58 = icmp ugt i32 %.0, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %55
  %.1 = phi i32 [ %57, %59 ], [ %.0, %55 ]
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 82
  %62 = load %struct.jpeg_color_deconverter*, %struct.jpeg_color_deconverter** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_color_deconverter, %struct.jpeg_color_deconverter* %62, i64 0, i32 1
  %64 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)** %63, align 8
  %65 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 1, i64 0
  %66 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %4, i64 %69
  call void %64(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef nonnull %65, i32 noundef %67, i8** noundef %70, i32 noundef %.1) #5
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, %.1
  store i32 %72, i32* %5, align 4
  %73 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sub i32 %74, %.1
  store i32 %75, i32* %73, align 4
  %76 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add i32 %77, %.1
  store i32 %78, i32* %76, align 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %80 = load i32, i32* %79, align 8
  %.not3 = icmp slt i32 %78, %80
  br i1 %.not3, label %84, label %81

81:                                               ; preds = %60
  %82 = load i32, i32* %2, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @noop_upsample(%struct.jpeg_decompress_struct* nocapture noundef readnone %0, %struct.jpeg_component_info* nocapture noundef readnone %1, i8** nocapture noundef readnone %2, i8*** nocapture noundef writeonly %3) #2 {
  store i8** null, i8*** %3, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @fullsize_upsample(%struct.jpeg_decompress_struct* nocapture noundef readnone %0, %struct.jpeg_component_info* nocapture noundef readnone %1, i8** noundef %2, i8*** nocapture noundef writeonly %3) #2 {
  store i8** %2, i8*** %3, align 8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v1_fancy_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8*** nocapture noundef readonly %3) #3 {
  %5 = load i8**, i8*** %3, align 8
  br label %6

6:                                                ; preds = %65, %4
  %.0 = phi i32 [ 0, %4 ], [ %66, %65 ]
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i8*, i8** %2, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %5, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %13, i64 1
  %18 = load i8, i8* %13, align 1
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 %18, i8* %16, align 1
  %21 = mul nuw nsw i16 %19, 3
  %22 = load i8, i8* %17, align 1
  %23 = zext i8 %22 to i16
  %24 = add nuw nsw i16 %21, %23
  %25 = add nuw nsw i16 %24, 2
  %26 = lshr i16 %25, 2
  %27 = trunc i16 %26 to i8
  store i8 %27, i8* %20, align 1
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %29, -2
  br label %31

31:                                               ; preds = %51, %10
  %.03 = phi i8* [ %17, %10 ], [ %33, %51 ]
  %.pn = phi i8* [ %16, %10 ], [ %.02, %51 ]
  %.01 = phi i32 [ %30, %10 ], [ %52, %51 ]
  %.02 = getelementptr inbounds i8, i8* %.pn, i64 2
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %53, label %32

32:                                               ; preds = %31
  %33 = getelementptr inbounds i8, i8* %.03, i64 1
  %34 = load i8, i8* %.03, align 1
  %35 = zext i8 %34 to i32
  %36 = mul nuw nsw i32 %35, 3
  %37 = getelementptr inbounds i8, i8* %.03, i64 -1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %36, %39
  %41 = add nuw nsw i32 %40, 1
  %42 = lshr i32 %41, 2
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds i8, i8* %.pn, i64 3
  store i8 %43, i8* %.02, align 1
  %45 = load i8, i8* %33, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %36, %46
  %48 = add nuw nsw i32 %47, 2
  %49 = lshr i32 %48, 2
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %44, align 1
  br label %51

51:                                               ; preds = %32
  %52 = add i32 %.01, -1
  br label %31, !llvm.loop !7

53:                                               ; preds = %31
  %54 = load i8, i8* %.03, align 1
  %55 = zext i8 %54 to i16
  %56 = mul nuw nsw i16 %55, 3
  %57 = getelementptr inbounds i8, i8* %.03, i64 -1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i16
  %60 = add nuw nsw i16 %56, %59
  %61 = add nuw nsw i16 %60, 1
  %62 = lshr i16 %61, 2
  %63 = trunc i16 %62 to i8
  %64 = getelementptr inbounds i8, i8* %.pn, i64 3
  store i8 %63, i8* %.02, align 1
  store i8 %54, i8* %64, align 1
  br label %65

65:                                               ; preds = %53
  %66 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !8

67:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v1_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readnone %1, i8** nocapture noundef readonly %2, i8*** nocapture noundef readonly %3) #3 {
  %5 = load i8**, i8*** %3, align 8
  br label %6

6:                                                ; preds = %29, %4
  %.0 = phi i32 [ 0, %4 ], [ %30, %29 ]
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i8*, i8** %2, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %5, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  br label %21

21:                                               ; preds = %23, %10
  %.02 = phi i8* [ %13, %10 ], [ %24, %23 ]
  %.01 = phi i8* [ %16, %10 ], [ %27, %23 ]
  %22 = icmp ult i8* %.01, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.02, i64 1
  %25 = load i8, i8* %.02, align 1
  %26 = getelementptr inbounds i8, i8* %.01, i64 1
  store i8 %25, i8* %.01, align 1
  %27 = getelementptr inbounds i8, i8* %.01, i64 2
  store i8 %25, i8* %26, align 1
  br label %21, !llvm.loop !9

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !10

31:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v2_fancy_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8*** nocapture noundef readonly %3) #3 {
  %5 = load i8**, i8*** %3, align 8
  br label %6

6:                                                ; preds = %94, %4
  %.02 = phi i32 [ 0, %4 ], [ %95, %94 ]
  %.01 = phi i32 [ 0, %4 ], [ %.1, %94 ]
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.01, %8
  br i1 %9, label %10, label %96

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %92, %10
  %.1 = phi i32 [ %.01, %10 ], [ %25, %92 ]
  %.0 = phi i32 [ 0, %10 ], [ %93, %92 ]
  %12 = icmp ult i32 %.0, 2
  br i1 %12, label %13, label %94

13:                                               ; preds = %11
  %14 = zext i32 %.02 to i64
  %15 = getelementptr inbounds i8*, i8** %2, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i32 %.0, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add nsw i32 %.02, -1
  %20 = sext i32 %19 to i64
  br label %24

21:                                               ; preds = %13
  %22 = add nuw nsw i32 %.02, 1
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %21, %18
  %.pn = phi i64 [ %20, %18 ], [ %23, %21 ]
  %.05.in = getelementptr inbounds i8*, i8** %2, i64 %.pn
  %.05 = load i8*, i8** %.05.in, align 8
  %25 = add nsw i32 %.1, 1
  %26 = sext i32 %.1 to i64
  %27 = getelementptr inbounds i8*, i8** %5, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %16, i64 1
  %30 = load i8, i8* %16, align 1
  %31 = zext i8 %30 to i32
  %32 = mul nuw nsw i32 %31, 3
  %33 = getelementptr inbounds i8, i8* %.05, i64 1
  %34 = load i8, i8* %.05, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %32, %35
  %37 = getelementptr inbounds i8, i8* %16, i64 2
  %38 = load i8, i8* %29, align 1
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 3
  %41 = getelementptr inbounds i8, i8* %.05, i64 2
  %42 = load i8, i8* %33, align 1
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %40, %43
  %45 = shl nuw nsw i32 %36, 2
  %46 = add nuw nsw i32 %45, 8
  %47 = lshr i32 %46, 4
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, i8* %28, i64 1
  store i8 %48, i8* %28, align 1
  %50 = mul nuw nsw i32 %36, 3
  %51 = add nuw nsw i32 %50, %44
  %52 = add nuw nsw i32 %51, 7
  %53 = lshr i32 %52, 4
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %49, align 1
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = add i32 %56, -2
  br label %58

58:                                               ; preds = %77, %24
  %.09 = phi i32 [ %36, %24 ], [ %.08, %77 ]
  %.08 = phi i32 [ %44, %24 ], [ %65, %77 ]
  %.pn10 = phi i8* [ %28, %24 ], [ %.07, %77 ]
  %.16 = phi i8* [ %41, %24 ], [ %78, %77 ]
  %.04 = phi i8* [ %37, %24 ], [ %79, %77 ]
  %.03 = phi i32 [ %57, %24 ], [ %80, %77 ]
  %.07 = getelementptr inbounds i8, i8* %.pn10, i64 2
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %81, label %59

59:                                               ; preds = %58
  %60 = load i8, i8* %.04, align 1
  %61 = zext i8 %60 to i32
  %62 = mul nuw nsw i32 %61, 3
  %63 = load i8, i8* %.16, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %62, %64
  %66 = mul nsw i32 %.08, 3
  %67 = add nsw i32 %66, %.09
  %68 = add nsw i32 %67, 8
  %69 = lshr i32 %68, 4
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds i8, i8* %.pn10, i64 3
  store i8 %70, i8* %.07, align 1
  %72 = mul nsw i32 %.08, 3
  %73 = add nsw i32 %72, %65
  %74 = add nsw i32 %73, 7
  %75 = lshr i32 %74, 4
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %71, align 1
  br label %77

77:                                               ; preds = %59
  %78 = getelementptr inbounds i8, i8* %.16, i64 1
  %79 = getelementptr inbounds i8, i8* %.04, i64 1
  %80 = add i32 %.03, -1
  br label %58, !llvm.loop !11

81:                                               ; preds = %58
  %82 = mul nsw i32 %.08, 3
  %83 = add nsw i32 %82, %.09
  %84 = add nsw i32 %83, 8
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, i8* %.pn10, i64 3
  store i8 %86, i8* %.07, align 1
  %88 = shl nsw i32 %.08, 2
  %89 = add nsw i32 %88, 7
  %90 = lshr i32 %89, 4
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  br label %92

92:                                               ; preds = %81
  %93 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !12

94:                                               ; preds = %11
  %95 = add nuw nsw i32 %.02, 1
  br label %6, !llvm.loop !13

96:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readnone %1, i8** nocapture noundef readonly %2, i8*** nocapture noundef readonly %3) #0 {
  %5 = load i8**, i8*** %3, align 8
  br label %6

6:                                                ; preds = %28, %4
  %.01 = phi i32 [ 0, %4 ], [ %32, %28 ]
  %.0 = phi i32 [ 0, %4 ], [ %33, %28 ]
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.0, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds i8*, i8** %2, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds i8*, i8** %5, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  br label %21

21:                                               ; preds = %23, %10
  %.03 = phi i8* [ %13, %10 ], [ %24, %23 ]
  %.02 = phi i8* [ %16, %10 ], [ %27, %23 ]
  %22 = icmp ult i8* %.02, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.03, i64 1
  %25 = load i8, i8* %.03, align 1
  %26 = getelementptr inbounds i8, i8* %.02, i64 1
  store i8 %25, i8* %.02, align 1
  %27 = getelementptr inbounds i8, i8* %.02, i64 2
  store i8 %25, i8* %26, align 1
  br label %21, !llvm.loop !14

28:                                               ; preds = %21
  %29 = or i32 %.0, 1
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %31 = load i32, i32* %30, align 8
  call void @jcopy_sample_rows(i8** noundef %5, i32 noundef %.0, i8** noundef %5, i32 noundef %29, i32 noundef 1, i32 noundef %31) #5
  %32 = add nuw nsw i32 %.01, 1
  %33 = add nuw nsw i32 %.0, 2
  br label %6, !llvm.loop !15

34:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8*** nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %6 = bitcast %struct.jpeg_upsampler** %5 to %struct.my_upsampler**
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %6, align 8
  %8 = load i8**, i8*** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 6, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = sext i32 %10 to i64
  %16 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 7, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  br label %19

19:                                               ; preds = %53, %4
  %.01 = phi i32 [ 0, %4 ], [ %54, %53 ]
  %.0 = phi i32 [ 0, %4 ], [ %55, %53 ]
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %.0, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds i8*, i8** %2, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds i8*, i8** %8, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  br label %34

34:                                               ; preds = %45, %23
  %.04 = phi i8* [ %26, %23 ], [ %37, %45 ]
  %.03 = phi i8* [ %29, %23 ], [ %.1, %45 ]
  %35 = icmp ult i8* %.03, %33
  br i1 %35, label %36, label %46

36:                                               ; preds = %34
  %37 = getelementptr inbounds i8, i8* %.04, i64 1
  %38 = load i8, i8* %.04, align 1
  br label %39

39:                                               ; preds = %42, %36
  %.1 = phi i8* [ %.03, %36 ], [ %43, %42 ]
  %.02 = phi i32 [ %14, %36 ], [ %44, %42 ]
  %40 = icmp sgt i32 %.02, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  store i8 %38, i8* %.1, align 1
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds i8, i8* %.1, i64 1
  %44 = add nsw i32 %.02, -1
  br label %39, !llvm.loop !16

45:                                               ; preds = %39
  br label %34, !llvm.loop !17

46:                                               ; preds = %34
  %47 = icmp ugt i8 %17, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = add nuw nsw i32 %.0, 1
  %50 = add nsw i32 %18, -1
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %52 = load i32, i32* %51, align 8
  call void @jcopy_sample_rows(i8** noundef %8, i32 noundef %.0, i8** noundef %8, i32 noundef %49, i32 noundef %50, i32 noundef %52) #5
  br label %53

53:                                               ; preds = %48, %46
  %54 = add nuw nsw i32 %.01, 1
  %55 = add nuw nsw i32 %.0, %18
  br label %19, !llvm.loop !18

56:                                               ; preds = %19
  ret void
}

declare dso_local i64 @jround_up(i64 noundef, i64 noundef) #4

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
