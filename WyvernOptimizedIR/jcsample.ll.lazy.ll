; ModuleID = './jcsample.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcsample.c"
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
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*] }
%_wyvern_thunk_type.0 = type { i8** (%_wyvern_thunk_type.0*)*, i8**, i1, i8** }
%_wyvern_thunk_type.6 = type { i8** (%_wyvern_thunk_type.6*)*, i8**, i1, i8** }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_downsampler(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 104) #5
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 57
  %9 = bitcast %struct.jpeg_downsampler** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_downsample, void (%struct.jpeg_compress_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 8
  %12 = bitcast i8* %11 to void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)**
  store void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)* @sep_downsample, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %12, align 8
  %13 = getelementptr inbounds i8, i8* %7, i64 16
  %14 = bitcast i8* %13 to i32*
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 26
  %16 = load i32, i32* %15, align 4
  %.not = icmp eq i32 %16, 0
  br i1 %.not, label %26, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 5
  store i32 23, i32* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %22 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %22, i64 0, i32 0
  %24 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %23, align 8
  %25 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %24(%struct.jpeg_common_struct* noundef %25) #5
  br label %26

26:                                               ; preds = %17, %1
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %27, align 8
  br label %29

29:                                               ; preds = %141, %26
  %.02 = phi i32 [ 0, %26 ], [ %142, %141 ]
  %.01 = phi %struct.jpeg_component_info* [ %28, %26 ], [ %143, %141 ]
  %.0 = phi i32 [ 1, %26 ], [ %.4, %141 ]
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %.02, %31
  br i1 %32, label %33, label %144

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  %47 = load i32, i32* %46, align 8
  %.not6 = icmp eq i32 %47, 0
  br i1 %.not6, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %7, i64 24
  %50 = bitcast i8* %49 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %51 = zext i32 %.02 to i64
  %52 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %50, i64 0, i64 %51
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %52, align 8
  %53 = getelementptr inbounds i8, i8* %7, i64 16
  %54 = bitcast i8* %53 to i32*
  store i32 1, i32* %54, align 8
  br label %60

55:                                               ; preds = %45
  %56 = getelementptr inbounds i8, i8* %7, i64 24
  %57 = bitcast i8* %56 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %58 = zext i32 %.02 to i64
  %59 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %57, i64 0, i64 %58
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %59, align 8
  br label %60

60:                                               ; preds = %55, %48
  br label %140

61:                                               ; preds = %39, %33
  %62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = shl nsw i32 %63, 1
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds i8, i8* %7, i64 24
  %76 = bitcast i8* %75 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %77 = zext i32 %.02 to i64
  %78 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %76, i64 0, i64 %77
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v1_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %78, align 8
  br label %139

79:                                               ; preds = %68, %61
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl nsw i32 %81, 1
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %79
  %87 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = shl nsw i32 %88, 1
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  %95 = load i32, i32* %94, align 8
  %.not5 = icmp eq i32 %95, 0
  br i1 %.not5, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds i8, i8* %7, i64 24
  %98 = bitcast i8* %97 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %99 = zext i32 %.02 to i64
  %100 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %98, i64 0, i64 %99
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %100, align 8
  %101 = getelementptr inbounds i8, i8* %7, i64 16
  %102 = bitcast i8* %101 to i32*
  store i32 1, i32* %102, align 8
  br label %108

103:                                              ; preds = %93
  %104 = getelementptr inbounds i8, i8* %7, i64 24
  %105 = bitcast i8* %104 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %106 = zext i32 %.02 to i64
  %107 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %105, i64 0, i64 %106
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %107, align 8
  br label %108

108:                                              ; preds = %103, %96
  br label %138

109:                                              ; preds = %86, %79
  %110 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = srem i32 %111, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = srem i32 %118, %120
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = getelementptr inbounds i8, i8* %7, i64 24
  %125 = bitcast i8* %124 to [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]*
  %126 = zext i32 %.02 to i64
  %127 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %125, i64 0, i64 %126
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @int_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %127, align 8
  br label %137

128:                                              ; preds = %116, %109
  %129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %130 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %129, align 8
  %131 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %130, i64 0, i32 5
  store i32 37, i32* %131, align 8
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %133 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %132, align 8
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %133, i64 0, i32 0
  %135 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %134, align 8
  %136 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %135(%struct.jpeg_common_struct* noundef %136) #5
  br label %137

137:                                              ; preds = %128, %123
  %.1 = phi i32 [ 0, %123 ], [ %.0, %128 ]
  br label %138

138:                                              ; preds = %137, %108
  %.2 = phi i32 [ %.0, %108 ], [ %.1, %137 ]
  br label %139

139:                                              ; preds = %138, %74
  %.3 = phi i32 [ 0, %74 ], [ %.2, %138 ]
  br label %140

140:                                              ; preds = %139, %60
  %.4 = phi i32 [ %.0, %60 ], [ %.3, %139 ]
  br label %141

141:                                              ; preds = %140
  %142 = add nuw nsw i32 %.02, 1
  %143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.01, i64 1
  br label %29, !llvm.loop !4

144:                                              ; preds = %29
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  %146 = load i32, i32* %145, align 8
  %.not3 = icmp eq i32 %146, 0
  br i1 %.not3, label %157, label %147

147:                                              ; preds = %144
  %.not4 = icmp eq i32 %.0, 0
  br i1 %.not4, label %148, label %157

148:                                              ; preds = %147
  %149 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %150 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %149, align 8
  %151 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %150, i64 0, i32 5
  store i32 98, i32* %151, align 8
  %152 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %153 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %152, align 8
  %154 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %153, i64 0, i32 1
  %155 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %154, align 8
  %156 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %155(%struct.jpeg_common_struct* noundef %156, i32 noundef 0) #5
  br label %157

157:                                              ; preds = %148, %147, %144
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal void @start_pass_downsample(%struct.jpeg_compress_struct* nocapture noundef %0) #1 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_downsample(%struct.jpeg_compress_struct* noundef %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8*** nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 57
  %7 = bitcast %struct.jpeg_downsampler** %6 to %struct.my_downsampler**
  %8 = load %struct.my_downsampler*, %struct.my_downsampler** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %10 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %9, align 8
  br label %11

11:                                               ; preds = %32, %5
  %.01 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %.0 = phi %struct.jpeg_component_info* [ %10, %5 ], [ %34, %32 ]
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %.01, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds i8**, i8*** %1, i64 %16
  %18 = load i8**, i8*** %17, align 8
  %19 = zext i32 %2 to i64
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds i8**, i8*** %3, i64 %21
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %25, %4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  %29 = zext i32 %.01 to i64
  %30 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %8, i64 0, i32 1, i64 %29
  %31 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %30, align 8
  call void %31(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %.0, i8** noundef %20, i8** noundef %28) #5
  br label %32

32:                                               ; preds = %15
  %33 = add nuw nsw i32 %.01, 1
  %34 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.0, i64 1
  br label %11, !llvm.loop !6

35:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @fullsize_smooth_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8** (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_fullsize_smooth_downsample_701653576, i8** (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8** %2, i8*** %_wyvern_thunk_arg_gep_, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  call void @_wyvern_calleeclone_expand_right_edge_0245676775(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %10, i32 noundef %12, i32 noundef %7)
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %.neg = mul nsw i64 %15, -512
  %16 = add nsw i64 %.neg, 65536
  %17 = shl nsw i32 %14, 6
  %18 = sext i32 %17 to i64
  br label %19

19:                                               ; preds = %115, %4
  %.02 = phi i32 [ 0, %4 ], [ %116, %115 ]
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %.02, %21
  br i1 %22, label %23, label %117

23:                                               ; preds = %19
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds i8*, i8** %3, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = zext i32 %.02 to i64
  %28 = getelementptr inbounds i8*, i8** %2, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = add nsw i32 %.02, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %2, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = add nuw nsw i32 %.02, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %2, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %33, i64 1
  %39 = load i8, i8* %33, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr inbounds i8, i8* %37, i64 1
  %42 = load i8, i8* %37, align 1
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %40, %43
  %45 = load i8, i8* %29, align 1
  %46 = zext i8 %45 to i32
  %47 = add nuw nsw i32 %44, %46
  %48 = getelementptr inbounds i8, i8* %29, i64 1
  %49 = zext i8 %45 to i64
  %50 = load i8, i8* %38, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %41, align 1
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %51, %53
  %55 = load i8, i8* %48, align 1
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %54, %56
  %58 = zext i32 %47 to i64
  %59 = zext i32 %47 to i64
  %60 = sub nsw i64 %59, %49
  %61 = add nsw i64 %60, %58
  %62 = zext i32 %57 to i64
  %63 = add nsw i64 %61, %62
  %64 = mul nsw i64 %16, %49
  %65 = mul nsw i64 %63, %18
  %66 = add nsw i64 %64, %65
  %67 = add nsw i64 %66, 32768
  %68 = lshr i64 %67, 16
  %69 = trunc i64 %68 to i8
  store i8 %69, i8* %26, align 1
  %70 = add i32 %7, -2
  br label %71

71:                                               ; preds = %98, %23
  %.pn = phi i8* [ %26, %23 ], [ %.07, %98 ]
  %.06 = phi i8* [ %41, %23 ], [ %77, %98 ]
  %.05 = phi i8* [ %38, %23 ], [ %76, %98 ]
  %.04 = phi i8* [ %48, %23 ], [ %73, %98 ]
  %.03 = phi i32 [ %70, %23 ], [ %99, %98 ]
  %.01 = phi i32 [ %57, %23 ], [ %85, %98 ]
  %.0 = phi i32 [ %47, %23 ], [ %.01, %98 ]
  %.07 = getelementptr inbounds i8, i8* %.pn, i64 1
  %.not = icmp eq i32 %.03, 0
  br i1 %.not, label %100, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds i8, i8* %.04, i64 1
  %74 = load i8, i8* %.04, align 1
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds i8, i8* %.05, i64 1
  %77 = getelementptr inbounds i8, i8* %.06, i64 1
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* %77, align 1
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %79, %81
  %83 = load i8, i8* %73, align 1
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %82, %84
  %86 = sext i32 %.0 to i64
  %87 = sext i32 %.01 to i64
  %88 = sub nsw i64 %87, %75
  %89 = add nsw i64 %88, %86
  %90 = zext i32 %85 to i64
  %91 = add nsw i64 %89, %90
  %92 = mul nsw i64 %16, %75
  %93 = mul nsw i64 %91, %18
  %94 = add nsw i64 %92, %93
  %95 = add nsw i64 %94, 32768
  %96 = lshr i64 %95, 16
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %.07, align 1
  br label %98

98:                                               ; preds = %72
  %99 = add i32 %.03, -1
  br label %71, !llvm.loop !7

100:                                              ; preds = %71
  %101 = load i8, i8* %.04, align 1
  %102 = zext i8 %101 to i64
  %103 = sext i32 %.0 to i64
  %104 = sext i32 %.01 to i64
  %105 = sub nsw i64 %104, %102
  %106 = add nsw i64 %105, %103
  %107 = sext i32 %.01 to i64
  %108 = add nsw i64 %106, %107
  %109 = mul nsw i64 %16, %102
  %110 = mul nsw i64 %108, %18
  %111 = add nsw i64 %109, %110
  %112 = add nsw i64 %111, 32768
  %113 = lshr i64 %112, 16
  %114 = trunc i64 %113 to i8
  store i8 %114, i8* %.07, align 1
  br label %115

115:                                              ; preds = %100
  %116 = add nuw nsw i32 %.02, 1
  br label %19, !llvm.loop !8

117:                                              ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %8 = load i32, i32* %7, align 8
  call void @jcopy_sample_rows(i8** noundef %2, i32 noundef 0, i8** noundef %3, i32 noundef 0, i32 noundef %6, i32 noundef %8) #5
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 3
  call void @expand_right_edge(i8** noundef %3, i32 noundef %10, i32 noundef %12, i32 noundef %15)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v1_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %6, 4
  call void @expand_right_edge(i8** noundef %2, i32 noundef %9, i32 noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %42, %4
  %.04 = phi i32 [ 0, %4 ], [ %43, %42 ]
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.04, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = zext i32 %.04 to i64
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %.04 to i64
  %22 = getelementptr inbounds i8*, i8** %2, i64 %21
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %36, %17
  %.03 = phi i32 [ 0, %17 ], [ %40, %36 ]
  %.02 = phi i8* [ %23, %17 ], [ %37, %36 ]
  %.01 = phi i8* [ %20, %17 ], [ %39, %36 ]
  %.0 = phi i32 [ 0, %17 ], [ %38, %36 ]
  %25 = icmp ult i32 %.03, %7
  br i1 %25, label %26, label %41

26:                                               ; preds = %24
  %27 = load i8, i8* %.02, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds i8, i8* %.02, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %28, %31
  %33 = add nsw i32 %32, %.0
  %34 = lshr i32 %33, 1
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %.01, align 1
  br label %36

36:                                               ; preds = %26
  %37 = getelementptr inbounds i8, i8* %.02, i64 2
  %38 = xor i32 %.0, 1
  %39 = getelementptr inbounds i8, i8* %.01, i64 1
  %40 = add i32 %.03, 1
  br label %24, !llvm.loop !9

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = add nuw nsw i32 %.04, 1
  br label %13, !llvm.loop !10

44:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v2_smooth_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.6, align 8
  %5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 0
  store i8** (%_wyvern_thunk_type.6*)* @_wyvern_slice_memo_h2v2_smooth_downsample_754506799, i8** (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 3
  store i8** %2, i8*** %_wyvern_thunk_arg_gep_, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %6, 4
  call void @_wyvern_calleeclone_expand_right_edge_0502157423(%_wyvern_thunk_type.6* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %10, i32 noundef %12, i32 noundef %13)
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  %15 = load i32, i32* %14, align 8
  %.neg = mul i32 %15, -80
  %16 = add i32 %.neg, 16384
  %17 = sext i32 %16 to i64
  %18 = shl nsw i32 %15, 4
  %19 = sext i32 %18 to i64
  br label %20

20:                                               ; preds = %240, %4
  %.03 = phi i32 [ 0, %4 ], [ %242, %240 ]
  %.02 = phi i32 [ 0, %4 ], [ %241, %240 ]
  %21 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %.03, %22
  br i1 %23, label %24, label %243

24:                                               ; preds = %20
  %25 = zext i32 %.03 to i64
  %26 = getelementptr inbounds i8*, i8** %3, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = zext i32 %.02 to i64
  %29 = getelementptr inbounds i8*, i8** %2, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = or i32 %.02, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %2, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = add nsw i32 %.02, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %2, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = add nuw nsw i32 %.02, 2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %2, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %30, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, i8* %30, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = add nuw nsw i64 %44, %47
  %49 = load i8, i8* %34, align 1
  %50 = zext i8 %49 to i64
  %51 = add nuw nsw i64 %48, %50
  %52 = getelementptr inbounds i8, i8* %34, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i64
  %55 = add nuw nsw i64 %51, %54
  %56 = load i8, i8* %38, align 1
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds i8, i8* %38, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = add nuw nsw i64 %57, %60
  %62 = load i8, i8* %42, align 1
  %63 = zext i8 %62 to i64
  %64 = add nuw nsw i64 %61, %63
  %65 = getelementptr inbounds i8, i8* %42, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = add nuw nsw i64 %64, %67
  %69 = load i8, i8* %30, align 1
  %70 = zext i8 %69 to i64
  %71 = add nuw nsw i64 %68, %70
  %72 = getelementptr inbounds i8, i8* %30, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = add nuw nsw i64 %71, %74
  %76 = load i8, i8* %34, align 1
  %77 = zext i8 %76 to i64
  %78 = add nuw nsw i64 %75, %77
  %79 = getelementptr inbounds i8, i8* %34, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i64
  %82 = add i64 %78, %81
  %sext = shl i64 %82, 32
  %83 = ashr exact i64 %sext, 31
  %84 = load i8, i8* %38, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i8, i8* %38, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i64
  %89 = add nuw nsw i64 %85, %88
  %90 = load i8, i8* %42, align 1
  %91 = zext i8 %90 to i64
  %92 = add nuw nsw i64 %89, %91
  %93 = getelementptr inbounds i8, i8* %42, i64 2
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i64
  %96 = add nuw nsw i64 %92, %95
  %97 = add nsw i64 %83, %96
  %98 = mul nsw i64 %55, %17
  %99 = mul nsw i64 %97, %19
  %100 = add nsw i64 %98, %99
  %101 = add nsw i64 %100, 32768
  %102 = lshr i64 %101, 16
  %103 = trunc i64 %102 to i8
  store i8 %103, i8* %27, align 1
  %104 = add i32 %7, -2
  br label %105

105:                                              ; preds = %172, %24
  %.pn = phi i8* [ %34, %24 ], [ %.07, %172 ]
  %.pn8 = phi i8* [ %30, %24 ], [ %.06, %172 ]
  %.pn9 = phi i8* [ %38, %24 ], [ %.05, %172 ]
  %.04 = phi i32 [ %104, %24 ], [ %173, %172 ]
  %.pn10 = phi i8* [ %42, %24 ], [ %.01, %172 ]
  %.pn13 = phi i8* [ %27, %24 ], [ %.0, %172 ]
  %.0 = getelementptr inbounds i8, i8* %.pn13, i64 1
  %.01 = getelementptr inbounds i8, i8* %.pn10, i64 2
  %.05 = getelementptr inbounds i8, i8* %.pn9, i64 2
  %.06 = getelementptr inbounds i8, i8* %.pn8, i64 2
  %.07 = getelementptr inbounds i8, i8* %.pn, i64 2
  %.not = icmp eq i32 %.04, 0
  br i1 %.not, label %174, label %106

106:                                              ; preds = %105
  %107 = load i8, i8* %.06, align 1
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds i8, i8* %.pn8, i64 3
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i64
  %112 = add nuw nsw i64 %108, %111
  %113 = load i8, i8* %.07, align 1
  %114 = zext i8 %113 to i64
  %115 = add nuw nsw i64 %112, %114
  %116 = getelementptr inbounds i8, i8* %.pn, i64 3
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  %119 = add nuw nsw i64 %115, %118
  %120 = load i8, i8* %.05, align 1
  %121 = zext i8 %120 to i64
  %122 = getelementptr inbounds i8, i8* %.pn9, i64 3
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  %125 = add nuw nsw i64 %121, %124
  %126 = load i8, i8* %.01, align 1
  %127 = zext i8 %126 to i64
  %128 = add nuw nsw i64 %125, %127
  %129 = getelementptr inbounds i8, i8* %.pn10, i64 3
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i64
  %132 = add nuw nsw i64 %128, %131
  %133 = getelementptr inbounds i8, i8* %.pn8, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i64
  %136 = add nuw nsw i64 %132, %135
  %137 = getelementptr inbounds i8, i8* %.pn8, i64 4
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i64
  %140 = add nuw nsw i64 %136, %139
  %141 = getelementptr inbounds i8, i8* %.pn, i64 1
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i64
  %144 = add nuw nsw i64 %140, %143
  %145 = getelementptr inbounds i8, i8* %.pn, i64 4
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i64
  %148 = add i64 %144, %147
  %sext12 = shl i64 %148, 32
  %149 = ashr exact i64 %sext12, 31
  %150 = getelementptr inbounds i8, i8* %.pn9, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i64
  %153 = getelementptr inbounds i8, i8* %.pn9, i64 4
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i64
  %156 = add nuw nsw i64 %152, %155
  %157 = getelementptr inbounds i8, i8* %.pn10, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i64
  %160 = add nuw nsw i64 %156, %159
  %161 = getelementptr inbounds i8, i8* %.pn10, i64 4
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i64
  %164 = add nuw nsw i64 %160, %163
  %165 = add nsw i64 %149, %164
  %166 = mul nsw i64 %119, %17
  %167 = mul nsw i64 %165, %19
  %168 = add nsw i64 %166, %167
  %169 = add nsw i64 %168, 32768
  %170 = lshr i64 %169, 16
  %171 = trunc i64 %170 to i8
  store i8 %171, i8* %.0, align 1
  br label %172

172:                                              ; preds = %106
  %173 = add i32 %.04, -1
  br label %105, !llvm.loop !11

174:                                              ; preds = %105
  %175 = load i8, i8* %.06, align 1
  %176 = zext i8 %175 to i64
  %177 = getelementptr inbounds i8, i8* %.pn8, i64 3
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i64
  %180 = add nuw nsw i64 %176, %179
  %181 = load i8, i8* %.07, align 1
  %182 = zext i8 %181 to i64
  %183 = add nuw nsw i64 %180, %182
  %184 = getelementptr inbounds i8, i8* %.pn, i64 3
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i64
  %187 = add nuw nsw i64 %183, %186
  %188 = load i8, i8* %.05, align 1
  %189 = zext i8 %188 to i64
  %190 = getelementptr inbounds i8, i8* %.pn9, i64 3
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i64
  %193 = add nuw nsw i64 %189, %192
  %194 = load i8, i8* %.01, align 1
  %195 = zext i8 %194 to i64
  %196 = add nuw nsw i64 %193, %195
  %197 = getelementptr inbounds i8, i8* %.pn10, i64 3
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i64
  %200 = add nuw nsw i64 %196, %199
  %201 = getelementptr inbounds i8, i8* %.pn8, i64 1
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i64
  %204 = add nuw nsw i64 %200, %203
  %205 = getelementptr inbounds i8, i8* %.pn8, i64 3
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i64
  %208 = add nuw nsw i64 %204, %207
  %209 = getelementptr inbounds i8, i8* %.pn, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i64
  %212 = add nuw nsw i64 %208, %211
  %213 = getelementptr inbounds i8, i8* %.pn, i64 3
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i64
  %216 = add i64 %212, %215
  %sext11 = shl i64 %216, 32
  %217 = ashr exact i64 %sext11, 31
  %218 = getelementptr inbounds i8, i8* %.pn9, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i64
  %221 = getelementptr inbounds i8, i8* %.pn9, i64 3
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i64
  %224 = add nuw nsw i64 %220, %223
  %225 = getelementptr inbounds i8, i8* %.pn10, i64 1
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i64
  %228 = add nuw nsw i64 %224, %227
  %229 = getelementptr inbounds i8, i8* %.pn10, i64 3
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i64
  %232 = add nuw nsw i64 %228, %231
  %233 = add nsw i64 %217, %232
  %234 = mul nsw i64 %187, %17
  %235 = mul nsw i64 %233, %19
  %236 = add nsw i64 %234, %235
  %237 = add nsw i64 %236, 32768
  %238 = lshr i64 %237, 16
  %239 = trunc i64 %238 to i8
  store i8 %239, i8* %.0, align 1
  br label %240

240:                                              ; preds = %174
  %241 = add nuw nsw i32 %.02, 2
  %242 = add nuw nsw i32 %.03, 1
  br label %20, !llvm.loop !12

243:                                              ; preds = %20
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v2_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 %6, 4
  call void @expand_right_edge(i8** noundef %2, i32 noundef %9, i32 noundef %11, i32 noundef %12)
  br label %13

13:                                               ; preds = %54, %4
  %.05 = phi i32 [ 0, %4 ], [ %56, %54 ]
  %.04 = phi i32 [ 0, %4 ], [ %55, %54 ]
  %14 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %.05, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = zext i32 %.05 to i64
  %19 = getelementptr inbounds i8*, i8** %3, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = zext i32 %.04 to i64
  %22 = getelementptr inbounds i8*, i8** %2, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = or i32 %.04, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %2, i64 %25
  %27 = load i8*, i8** %26, align 8
  br label %28

28:                                               ; preds = %47, %17
  %.06 = phi i32 [ 0, %17 ], [ %52, %47 ]
  %.03 = phi i8* [ %23, %17 ], [ %49, %47 ]
  %.02 = phi i8* [ %27, %17 ], [ %48, %47 ]
  %.01 = phi i8* [ %20, %17 ], [ %51, %47 ]
  %.0 = phi i32 [ 1, %17 ], [ %50, %47 ]
  %29 = icmp ult i32 %.06, %7
  br i1 %29, label %30, label %53

30:                                               ; preds = %28
  %31 = load i8, i8* %.03, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr inbounds i8, i8* %.03, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %32, %35
  %37 = load i8, i8* %.02, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %36, %38
  %40 = getelementptr inbounds i8, i8* %.02, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %39, %42
  %44 = add nsw i32 %43, %.0
  %45 = lshr i32 %44, 2
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %.01, align 1
  br label %47

47:                                               ; preds = %30
  %48 = getelementptr inbounds i8, i8* %.02, i64 2
  %49 = getelementptr inbounds i8, i8* %.03, i64 2
  %50 = xor i32 %.0, 3
  %51 = getelementptr inbounds i8, i8* %.01, i64 1
  %52 = add i32 %.06, 1
  br label %28, !llvm.loop !13

53:                                               ; preds = %28
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.04, 2
  %56 = add nuw nsw i32 %.05, 1
  br label %13, !llvm.loop !14

57:                                               ; preds = %13
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @int_downsample(%struct.jpeg_compress_struct* nocapture noundef readonly %0, %struct.jpeg_component_info* nocapture noundef readonly %1, i8** nocapture noundef readonly %2, i8** nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 38
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = sdiv i32 %14, %16
  %18 = mul nsw i32 %12, %17
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 39
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = mul i32 %7, %12
  call void @expand_right_edge(i8** noundef %2, i32 noundef %21, i32 noundef %23, i32 noundef %24)
  br label %25

25:                                               ; preds = %68, %4
  %.05 = phi i32 [ 0, %4 ], [ %70, %68 ]
  %.04 = phi i32 [ 0, %4 ], [ %69, %68 ]
  %26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %1, i64 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %.05, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = zext i32 %.05 to i64
  %31 = getelementptr inbounds i8*, i8** %3, i64 %30
  %32 = load i8*, i8** %31, align 8
  br label %33

33:                                               ; preds = %63, %29
  %.06 = phi i32 [ 0, %29 ], [ %65, %63 ]
  %.03 = phi i32 [ 0, %29 ], [ %66, %63 ]
  %.01 = phi i8* [ %32, %29 ], [ %64, %63 ]
  %34 = icmp ult i32 %.06, %7
  br i1 %34, label %35, label %67

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %55, %35
  %.07 = phi i32 [ 0, %35 ], [ %56, %55 ]
  %.0 = phi i64 [ 0, %35 ], [ %.1, %55 ]
  %37 = icmp slt i32 %.07, %17
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  %39 = add nsw i32 %.04, %.07
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %2, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = zext i32 %.03 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  br label %45

45:                                               ; preds = %48, %38
  %.08 = phi i32 [ 0, %38 ], [ %53, %48 ]
  %.02 = phi i8* [ %44, %38 ], [ %52, %48 ]
  %.1 = phi i64 [ %.0, %38 ], [ %51, %48 ]
  %46 = icmp slt i32 %.08, %12
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47
  %49 = load i8, i8* %.02, align 1
  %50 = zext i8 %49 to i64
  %51 = add nsw i64 %.1, %50
  %52 = getelementptr inbounds i8, i8* %.02, i64 1
  %53 = add nuw nsw i32 %.08, 1
  br label %45, !llvm.loop !15

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.07, 1
  br label %36, !llvm.loop !16

57:                                               ; preds = %36
  %58 = sext i32 %19 to i64
  %59 = add nsw i64 %.0, %58
  %60 = sext i32 %18 to i64
  %61 = sdiv i64 %59, %60
  %62 = trunc i64 %61 to i8
  store i8 %62, i8* %.01, align 1
  br label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds i8, i8* %.01, i64 1
  %65 = add i32 %.06, 1
  %66 = add i32 %.03, %12
  br label %33, !llvm.loop !17

67:                                               ; preds = %33
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %.04, %17
  %70 = add nuw nsw i32 %.05, 1
  br label %25, !llvm.loop !18

71:                                               ; preds = %25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @expand_right_edge(i8** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = sub i32 %3, %2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %25, %7
  %.0 = phi i32 [ 0, %7 ], [ %26, %25 ]
  %9 = icmp slt i32 %.0, %1
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i8*, i8** %0, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = zext i32 %2 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = getelementptr inbounds i8, i8* %15, i64 -1
  %17 = load i8, i8* %16, align 1
  br label %18

18:                                               ; preds = %21, %10
  %.02 = phi i8* [ %15, %10 ], [ %22, %21 ]
  %.01 = phi i32 [ %5, %10 ], [ %23, %21 ]
  %19 = icmp sgt i32 %.01, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  store i8 %17, i8* %.02, align 1
  br label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds i8, i8* %.02, i64 1
  %23 = add nsw i32 %.01, -1
  br label %18, !llvm.loop !19

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24
  %26 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !20

27:                                               ; preds = %8
  br label %28

28:                                               ; preds = %27, %4
  ret void
}

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind readonly willreturn
define i8** @_wyvern_slice_memo_fullsize_smooth_downsample_701653576(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8**, i8*** %_wyvern_memo_val_addr, align 8
  ret i8** %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8**, i8*** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds i8*, i8** %_wyvern_arg_, i64 -1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8** %0, i8*** %_wyvern_memo_val_addr, align 8
  ret i8** %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_expand_right_edge_0245676775(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = sub i32 %2, %1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %24, %6
  %.0 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %8 = icmp slt i32 %.0, %0
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8** (%_wyvern_thunk_type.0*)*, i8** (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8** %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #5
  %11 = getelementptr inbounds i8*, i8** %_wyvern_thunkcall, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  %16 = load i8, i8* %15, align 1
  br label %17

17:                                               ; preds = %20, %9
  %.02 = phi i8* [ %14, %9 ], [ %21, %20 ]
  %.01 = phi i32 [ %4, %9 ], [ %22, %20 ]
  %18 = icmp sgt i32 %.01, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  store i8 %16, i8* %.02, align 1
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds i8, i8* %.02, i64 1
  %22 = add nsw i32 %.01, -1
  br label %17, !llvm.loop !19

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !20

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i8** @_wyvern_slice_memo_h2v2_smooth_downsample_754506799(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #4 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i8**, i8*** %_wyvern_memo_val_addr, align 8
  ret i8** %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i8**, i8*** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds i8*, i8** %_wyvern_arg_, i64 -1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i8** %0, i8*** %_wyvern_memo_val_addr, align 8
  ret i8** %0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @_wyvern_calleeclone_expand_right_edge_0502157423(%_wyvern_thunk_type.6* noundef %_wyvern_thunkptr, i32 noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = sub i32 %2, %1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %24, %6
  %.0 = phi i32 [ 0, %6 ], [ %25, %24 ]
  %8 = icmp slt i32 %.0, %0
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i8** (%_wyvern_thunk_type.6*)*, i8** (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i8** %_wyvern_thunkfptr(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #5
  %11 = getelementptr inbounds i8*, i8** %_wyvern_thunkcall, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = zext i32 %1 to i64
  %14 = getelementptr inbounds i8, i8* %12, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -1
  %16 = load i8, i8* %15, align 1
  br label %17

17:                                               ; preds = %20, %9
  %.02 = phi i8* [ %14, %9 ], [ %21, %20 ]
  %.01 = phi i32 [ %4, %9 ], [ %22, %20 ]
  %18 = icmp sgt i32 %.01, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  store i8 %16, i8* %.02, align 1
  br label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds i8, i8* %.02, i64 1
  %22 = add nsw i32 %.01, -1
  br label %17, !llvm.loop !19

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !20

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26, %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
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
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
