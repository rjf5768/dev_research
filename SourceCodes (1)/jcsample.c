; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcsample.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_downsampler(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_downsampler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_component_info*, align 8
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 1
  %9 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %8, align 8
  %10 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %9, i32 0, i32 0
  %11 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %10, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = bitcast %struct.jpeg_compress_struct* %12 to %struct.jpeg_common_struct*
  %14 = call i8* %11(%struct.jpeg_common_struct* noundef %13, i32 noundef 1, i64 noundef 104)
  %15 = bitcast i8* %14 to %struct.my_downsampler*
  store %struct.my_downsampler* %15, %struct.my_downsampler** %3, align 8
  %16 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %17 = bitcast %struct.my_downsampler* %16 to %struct.jpeg_downsampler*
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 57
  store %struct.jpeg_downsampler* %17, %struct.jpeg_downsampler** %19, align 8
  %20 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %21 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @start_pass_downsample, void (%struct.jpeg_compress_struct*)** %23, align 8
  %24 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %25 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %25, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)* @sep_downsample, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %26, align 8
  %27 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %28 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %28, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 26
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %1
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 0
  %37 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %37, i32 0, i32 5
  store i32 23, i32* %38, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %45 = bitcast %struct.jpeg_compress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %45)
  br label %46

46:                                               ; preds = %34, %1
  store i32 0, i32* %4, align 4
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 14
  %49 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %48, align 8
  store %struct.jpeg_component_info* %49, %struct.jpeg_component_info** %5, align 8
  br label %50

50:                                               ; preds = %195, %46
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 12
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %200

56:                                               ; preds = %50
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 38
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %93

64:                                               ; preds = %56
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 39
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %64
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %73, i32 0, i32 27
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %79 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %78, i32 0, i32 1
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %79, i64 0, i64 %81
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %82, align 8
  %83 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %84 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %84, i32 0, i32 2
  store i32 1, i32* %85, align 8
  br label %92

86:                                               ; preds = %72
  %87 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %88 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %87, i32 0, i32 1
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %88, i64 0, i64 %90
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @fullsize_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %91, align 8
  br label %92

92:                                               ; preds = %86, %77
  br label %194

93:                                               ; preds = %64, %56
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %95 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = mul nsw i32 %96, 2
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %99 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 38
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %93
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 39
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %105, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  %111 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %112 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %111, i32 0, i32 1
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %112, i64 0, i64 %114
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v1_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %115, align 8
  br label %193

116:                                              ; preds = %102, %93
  %117 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %118 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %119, 2
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 38
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %120, %123
  br i1 %124, label %125, label %155

125:                                              ; preds = %116
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %128, 2
  %130 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %131 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %130, i32 0, i32 39
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %129, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %125
  %135 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %136 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %135, i32 0, i32 27
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %141 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %140, i32 0, i32 1
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %141, i64 0, i64 %143
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_smooth_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %144, align 8
  %145 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %146 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %146, i32 0, i32 2
  store i32 1, i32* %147, align 8
  br label %154

148:                                              ; preds = %134
  %149 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %150 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %149, i32 0, i32 1
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %150, i64 0, i64 %152
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @h2v2_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %153, align 8
  br label %154

154:                                              ; preds = %148, %139
  br label %192

155:                                              ; preds = %125, %116
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 38
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %160 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = srem i32 %158, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %179

164:                                              ; preds = %155
  %165 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %166 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %165, i32 0, i32 39
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %169 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = srem i32 %167, %170
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %164
  store i32 0, i32* %6, align 4
  %174 = load %struct.my_downsampler*, %struct.my_downsampler** %3, align 8
  %175 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %174, i32 0, i32 1
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %175, i64 0, i64 %177
  store void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)* @int_downsample, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %178, align 8
  br label %191

179:                                              ; preds = %164, %155
  %180 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %181 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %180, i32 0, i32 0
  %182 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %181, align 8
  %183 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %182, i32 0, i32 5
  store i32 37, i32* %183, align 8
  %184 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %185 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %184, i32 0, i32 0
  %186 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %185, align 8
  %187 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %186, i32 0, i32 0
  %188 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %187, align 8
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %190 = bitcast %struct.jpeg_compress_struct* %189 to %struct.jpeg_common_struct*
  call void %188(%struct.jpeg_common_struct* noundef %190)
  br label %191

191:                                              ; preds = %179, %173
  br label %192

192:                                              ; preds = %191, %154
  br label %193

193:                                              ; preds = %192, %110
  br label %194

194:                                              ; preds = %193, %92
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %4, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %4, align 4
  %198 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %199 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %198, i32 1
  store %struct.jpeg_component_info* %199, %struct.jpeg_component_info** %5, align 8
  br label %50, !llvm.loop !4

200:                                              ; preds = %50
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %202 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %201, i32 0, i32 27
  %203 = load i32, i32* %202, align 8
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load i32, i32* %6, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205
  %209 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %210 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %209, i32 0, i32 0
  %211 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %210, align 8
  %212 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %211, i32 0, i32 5
  store i32 98, i32* %212, align 8
  %213 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %214 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %213, i32 0, i32 0
  %215 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %214, align 8
  %216 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %215, i32 0, i32 1
  %217 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %216, align 8
  %218 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %219 = bitcast %struct.jpeg_compress_struct* %218 to %struct.jpeg_common_struct*
  call void %217(%struct.jpeg_common_struct* noundef %219, i32 noundef 0)
  br label %220

220:                                              ; preds = %208, %205, %200
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_downsample(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sep_downsample(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8*** noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.my_downsampler*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.jpeg_component_info*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i8*** %1, i8**** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8*** %3, i8**** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 57
  %18 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %17, align 8
  %19 = bitcast %struct.jpeg_downsampler* %18 to %struct.my_downsampler*
  store %struct.my_downsampler* %19, %struct.my_downsampler** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 14
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %21, align 8
  store %struct.jpeg_component_info* %22, %struct.jpeg_component_info** %13, align 8
  br label %23

23:                                               ; preds = %60, %5
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %23
  %30 = load i8***, i8**** %7, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8**, i8*** %30, i64 %32
  %34 = load i8**, i8*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8** %37, i8*** %14, align 8
  %38 = load i8***, i8**** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8**, i8*** %38, i64 %40
  %42 = load i8**, i8*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %13, align 8
  %45 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %43, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %42, i64 %48
  store i8** %49, i8*** %15, align 8
  %50 = load %struct.my_downsampler*, %struct.my_downsampler** %11, align 8
  %51 = getelementptr inbounds %struct.my_downsampler, %struct.my_downsampler* %50, i32 0, i32 1
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*], [10 x void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*]* %51, i64 0, i64 %53
  %55 = load void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, i8**)** %54, align 8
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %13, align 8
  %58 = load i8**, i8*** %14, align 8
  %59 = load i8**, i8*** %15, align 8
  call void %55(%struct.jpeg_compress_struct* noundef %56, %struct.jpeg_component_info* noundef %57, i8** noundef %58, i8** noundef %59)
  br label %60

60:                                               ; preds = %29
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %13, align 8
  %64 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %63, i32 1
  store %struct.jpeg_component_info* %64, %struct.jpeg_component_info** %13, align 8
  br label %23, !llvm.loop !6

65:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_smooth_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %25, 8
  store i32 %26, i32* %11, align 4
  %27 = load i8**, i8*** %7, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 -1
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 39
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  call void @expand_right_edge(i8** noundef %28, i32 noundef %32, i32 noundef %35, i32 noundef %36)
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 27
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %40, 512
  %42 = sub nsw i64 65536, %41
  store i64 %42, i64* %18, align 8
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 27
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 64
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %19, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %212, %4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %215

54:                                               ; preds = %48
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %15, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %12, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %13, align 8
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %14, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %13, align 8
  %79 = load i8, i8* %77, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** %14, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %14, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  %85 = add nsw i32 %80, %84
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %85, %88
  store i32 %89, i32* %20, align 4
  %90 = load i8*, i8** %12, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %12, align 8
  %92 = load i8, i8* %90, align 1
  %93 = zext i8 %92 to i32
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %16, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8*, i8** %14, align 8
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %97, %100
  %102 = load i8*, i8** %12, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %22, align 4
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %16, align 8
  %111 = sub nsw i64 %109, %110
  %112 = add nsw i64 %107, %111
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  store i64 %115, i64* %17, align 8
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %18, align 8
  %118 = mul nsw i64 %116, %117
  %119 = load i64, i64* %17, align 8
  %120 = load i64, i64* %19, align 8
  %121 = mul nsw i64 %119, %120
  %122 = add nsw i64 %118, %121
  store i64 %122, i64* %16, align 8
  %123 = load i64, i64* %16, align 8
  %124 = add nsw i64 %123, 32768
  %125 = ashr i64 %124, 16
  %126 = trunc i64 %125 to i8
  %127 = load i8*, i8** %15, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %15, align 8
  store i8 %126, i8* %127, align 1
  %129 = load i32, i32* %20, align 4
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub i32 %131, 2
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %182, %54
  %134 = load i32, i32* %10, align 4
  %135 = icmp ugt i32 %134, 0
  br i1 %135, label %136, label %185

136:                                              ; preds = %133
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %12, align 8
  %139 = load i8, i8* %137, align 1
  %140 = zext i8 %139 to i32
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %16, align 8
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %13, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %14, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i8*, i8** %14, align 8
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = add nsw i32 %148, %151
  %153 = load i8*, i8** %12, align 8
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %152, %155
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %21, align 4
  %158 = sext i32 %157 to i64
  %159 = load i32, i32* %20, align 4
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %16, align 8
  %162 = sub nsw i64 %160, %161
  %163 = add nsw i64 %158, %162
  %164 = load i32, i32* %22, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  store i64 %166, i64* %17, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* %18, align 8
  %169 = mul nsw i64 %167, %168
  %170 = load i64, i64* %17, align 8
  %171 = load i64, i64* %19, align 8
  %172 = mul nsw i64 %170, %171
  %173 = add nsw i64 %169, %172
  store i64 %173, i64* %16, align 8
  %174 = load i64, i64* %16, align 8
  %175 = add nsw i64 %174, 32768
  %176 = ashr i64 %175, 16
  %177 = trunc i64 %176 to i8
  %178 = load i8*, i8** %15, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %15, align 8
  store i8 %177, i8* %178, align 1
  %180 = load i32, i32* %20, align 4
  store i32 %180, i32* %21, align 4
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %20, align 4
  br label %182

182:                                              ; preds = %136
  %183 = load i32, i32* %10, align 4
  %184 = add i32 %183, -1
  store i32 %184, i32* %10, align 4
  br label %133, !llvm.loop !7

185:                                              ; preds = %133
  %186 = load i8*, i8** %12, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = sext i32 %188 to i64
  store i64 %189, i64* %16, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = load i64, i64* %16, align 8
  %195 = sub nsw i64 %193, %194
  %196 = add nsw i64 %191, %195
  %197 = load i32, i32* %20, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  store i64 %199, i64* %17, align 8
  %200 = load i64, i64* %16, align 8
  %201 = load i64, i64* %18, align 8
  %202 = mul nsw i64 %200, %201
  %203 = load i64, i64* %17, align 8
  %204 = load i64, i64* %19, align 8
  %205 = mul nsw i64 %203, %204
  %206 = add nsw i64 %202, %205
  store i64 %206, i64* %16, align 8
  %207 = load i64, i64* %16, align 8
  %208 = add nsw i64 %207, 32768
  %209 = ashr i64 %208, 16
  %210 = trunc i64 %209 to i8
  %211 = load i8*, i8** %15, align 8
  store i8 %210, i8* %211, align 1
  br label %212

212:                                              ; preds = %185
  %213 = load i32, i32* %9, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %9, align 4
  br label %48, !llvm.loop !8

215:                                              ; preds = %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fullsize_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %9 = load i8**, i8*** %7, align 8
  %10 = load i8**, i8*** %8, align 8
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 39
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  call void @jcopy_sample_rows(i8** noundef %9, i32 noundef 0, i8** noundef %10, i32 noundef 0, i32 noundef %13, i32 noundef %16)
  %17 = load i8**, i8*** %8, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 39
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %25 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = mul i32 %26, 8
  call void @expand_right_edge(i8** noundef %17, i32 noundef %20, i32 noundef %23, i32 noundef %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %15 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %16 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = mul i32 %17, 8
  store i32 %18, i32* %11, align 4
  %19 = load i8**, i8*** %7, align 8
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 39
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = mul i32 %26, 2
  call void @expand_right_edge(i8** noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %27)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %72, %4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %28
  %35 = load i8**, i8*** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i8**, i8*** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %68, %34
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %45
  %50 = load i8*, i8** %12, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %52, %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %57, %58
  %60 = ashr i32 %59, 1
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %13, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i32, i32* %14, align 4
  %65 = xor i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %12, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %45, !llvm.loop !9

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %28, !llvm.loop !10

75:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_smooth_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %22 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %23 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = mul i32 %24, 8
  store i32 %25, i32* %12, align 4
  %26 = load i8**, i8*** %7, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 -1
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 39
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 2
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = mul i32 %35, 2
  call void @expand_right_edge(i8** noundef %27, i32 noundef %31, i32 noundef %34, i32 noundef %36)
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 27
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 80
  %41 = sub nsw i32 16384, %40
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %20, align 8
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 27
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 16
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %21, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %388, %4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %391

54:                                               ; preds = %48
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %17, align 8
  %60 = load i8**, i8*** %7, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %13, align 8
  %65 = load i8**, i8*** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %14, align 8
  %71 = load i8**, i8*** %7, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %71, i64 %74
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %15, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %77, i64 %80
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add nsw i32 %85, %89
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 %90, %93
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = add nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %18, align 8
  %101 = load i8*, i8** %15, align 8
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %103, %107
  %109 = load i8*, i8** %16, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = add nsw i32 %108, %111
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %112, %116
  %118 = load i8*, i8** %13, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %117, %120
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %121, %125
  %127 = load i8*, i8** %14, align 8
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = add nsw i32 %126, %129
  %131 = load i8*, i8** %14, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %130, %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %19, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %19, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %19, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i8*, i8** %15, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 2
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = add nsw i32 %142, %146
  %148 = load i8*, i8** %16, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = add nsw i32 %147, %150
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = add nsw i32 %151, %155
  %157 = sext i32 %156 to i64
  %158 = load i64, i64* %19, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %19, align 8
  %160 = load i64, i64* %18, align 8
  %161 = load i64, i64* %20, align 8
  %162 = mul nsw i64 %160, %161
  %163 = load i64, i64* %19, align 8
  %164 = load i64, i64* %21, align 8
  %165 = mul nsw i64 %163, %164
  %166 = add nsw i64 %162, %165
  store i64 %166, i64* %18, align 8
  %167 = load i64, i64* %18, align 8
  %168 = add nsw i64 %167, 32768
  %169 = ashr i64 %168, 16
  %170 = trunc i64 %169 to i8
  %171 = load i8*, i8** %17, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %17, align 8
  store i8 %170, i8* %171, align 1
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  store i8* %174, i8** %13, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 2
  store i8* %176, i8** %14, align 8
  %177 = load i8*, i8** %15, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  store i8* %178, i8** %15, align 8
  %179 = load i8*, i8** %16, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8* %180, i8** %16, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sub i32 %181, 2
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %289, %54
  %184 = load i32, i32* %11, align 4
  %185 = icmp ugt i32 %184, 0
  br i1 %185, label %186, label %292

186:                                              ; preds = %183
  %187 = load i8*, i8** %13, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8*, i8** %13, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %189, %193
  %195 = load i8*, i8** %14, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = add nsw i32 %194, %197
  %199 = load i8*, i8** %14, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = add nsw i32 %198, %202
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %18, align 8
  %205 = load i8*, i8** %15, align 8
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = load i8*, i8** %15, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = add nsw i32 %207, %211
  %213 = load i8*, i8** %16, align 8
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = add nsw i32 %212, %215
  %217 = load i8*, i8** %16, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = add nsw i32 %216, %220
  %222 = load i8*, i8** %13, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 -1
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %221, %225
  %227 = load i8*, i8** %13, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 2
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = add nsw i32 %226, %230
  %232 = load i8*, i8** %14, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 -1
  %234 = load i8, i8* %233, align 1
  %235 = zext i8 %234 to i32
  %236 = add nsw i32 %231, %235
  %237 = load i8*, i8** %14, align 8
  %238 = getelementptr inbounds i8, i8* %237, i64 2
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = add nsw i32 %236, %240
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %19, align 8
  %243 = load i64, i64* %19, align 8
  %244 = load i64, i64* %19, align 8
  %245 = add nsw i64 %244, %243
  store i64 %245, i64* %19, align 8
  %246 = load i8*, i8** %15, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 -1
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = load i8*, i8** %15, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 2
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = add nsw i32 %249, %253
  %255 = load i8*, i8** %16, align 8
  %256 = getelementptr inbounds i8, i8* %255, i64 -1
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = add nsw i32 %254, %258
  %260 = load i8*, i8** %16, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 2
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = add nsw i32 %259, %263
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %19, align 8
  %267 = add nsw i64 %266, %265
  store i64 %267, i64* %19, align 8
  %268 = load i64, i64* %18, align 8
  %269 = load i64, i64* %20, align 8
  %270 = mul nsw i64 %268, %269
  %271 = load i64, i64* %19, align 8
  %272 = load i64, i64* %21, align 8
  %273 = mul nsw i64 %271, %272
  %274 = add nsw i64 %270, %273
  store i64 %274, i64* %18, align 8
  %275 = load i64, i64* %18, align 8
  %276 = add nsw i64 %275, 32768
  %277 = ashr i64 %276, 16
  %278 = trunc i64 %277 to i8
  %279 = load i8*, i8** %17, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %17, align 8
  store i8 %278, i8* %279, align 1
  %281 = load i8*, i8** %13, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 2
  store i8* %282, i8** %13, align 8
  %283 = load i8*, i8** %14, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 2
  store i8* %284, i8** %14, align 8
  %285 = load i8*, i8** %15, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 2
  store i8* %286, i8** %15, align 8
  %287 = load i8*, i8** %16, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 2
  store i8* %288, i8** %16, align 8
  br label %289

289:                                              ; preds = %186
  %290 = load i32, i32* %11, align 4
  %291 = add i32 %290, -1
  store i32 %291, i32* %11, align 4
  br label %183, !llvm.loop !11

292:                                              ; preds = %183
  %293 = load i8*, i8** %13, align 8
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = load i8*, i8** %13, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = add nsw i32 %295, %299
  %301 = load i8*, i8** %14, align 8
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = add nsw i32 %300, %303
  %305 = load i8*, i8** %14, align 8
  %306 = getelementptr inbounds i8, i8* %305, i64 1
  %307 = load i8, i8* %306, align 1
  %308 = zext i8 %307 to i32
  %309 = add nsw i32 %304, %308
  %310 = sext i32 %309 to i64
  store i64 %310, i64* %18, align 8
  %311 = load i8*, i8** %15, align 8
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = load i8*, i8** %15, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 1
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = add nsw i32 %313, %317
  %319 = load i8*, i8** %16, align 8
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = add nsw i32 %318, %321
  %323 = load i8*, i8** %16, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 1
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  %327 = add nsw i32 %322, %326
  %328 = load i8*, i8** %13, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 -1
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = add nsw i32 %327, %331
  %333 = load i8*, i8** %13, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 1
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = add nsw i32 %332, %336
  %338 = load i8*, i8** %14, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 -1
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = add nsw i32 %337, %341
  %343 = load i8*, i8** %14, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = add nsw i32 %342, %346
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %19, align 8
  %349 = load i64, i64* %19, align 8
  %350 = load i64, i64* %19, align 8
  %351 = add nsw i64 %350, %349
  store i64 %351, i64* %19, align 8
  %352 = load i8*, i8** %15, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 -1
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = load i8*, i8** %15, align 8
  %357 = getelementptr inbounds i8, i8* %356, i64 1
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = add nsw i32 %355, %359
  %361 = load i8*, i8** %16, align 8
  %362 = getelementptr inbounds i8, i8* %361, i64 -1
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = add nsw i32 %360, %364
  %366 = load i8*, i8** %16, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 1
  %368 = load i8, i8* %367, align 1
  %369 = zext i8 %368 to i32
  %370 = add nsw i32 %365, %369
  %371 = sext i32 %370 to i64
  %372 = load i64, i64* %19, align 8
  %373 = add nsw i64 %372, %371
  store i64 %373, i64* %19, align 8
  %374 = load i64, i64* %18, align 8
  %375 = load i64, i64* %20, align 8
  %376 = mul nsw i64 %374, %375
  %377 = load i64, i64* %19, align 8
  %378 = load i64, i64* %21, align 8
  %379 = mul nsw i64 %377, %378
  %380 = add nsw i64 %376, %379
  store i64 %380, i64* %18, align 8
  %381 = load i64, i64* %18, align 8
  %382 = add nsw i64 %381, 32768
  %383 = ashr i64 %382, 16
  %384 = trunc i64 %383 to i8
  %385 = load i8*, i8** %17, align 8
  store i8 %384, i8* %385, align 1
  %386 = load i32, i32* %9, align 4
  %387 = add nsw i32 %386, 2
  store i32 %387, i32* %9, align 4
  br label %388

388:                                              ; preds = %292
  %389 = load i32, i32* %10, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %10, align 4
  br label %48, !llvm.loop !12

391:                                              ; preds = %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %17 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %18 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %19, 8
  store i32 %20, i32* %12, align 4
  %21 = load i8**, i8*** %7, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 39
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = mul i32 %28, 2
  call void @expand_right_edge(i8** noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %29)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %93, %4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %96

36:                                               ; preds = %30
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %15, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %13, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %47, i64 %50
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %14, align 8
  store i32 1, i32* %16, align 4
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %87, %36
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %90

57:                                               ; preds = %53
  %58 = load i8*, i8** %13, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %60, %64
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %65, %68
  %70 = load i8*, i8** %14, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %74, %75
  %77 = ashr i32 %76, 2
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %15, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %15, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i32, i32* %16, align 4
  %82 = xor i32 %81, 3
  store i32 %82, i32* %16, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 2
  store i8* %84, i8** %13, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %14, align 8
  br label %87

87:                                               ; preds = %57
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %53, !llvm.loop !13

90:                                               ; preds = %53
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %30, !llvm.loop !14

96:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @int_downsample(%struct.jpeg_compress_struct* noundef %0, %struct.jpeg_component_info* noundef %1, i8** noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.jpeg_component_info* %1, %struct.jpeg_component_info** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** %3, i8*** %8, align 8
  %23 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %24 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = mul i32 %25, 8
  store i32 %26, i32* %19, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 38
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %29, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 39
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %36, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %14, align 4
  %46 = load i8**, i8*** %7, align 8
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 39
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %11, align 4
  %55 = mul i32 %53, %54
  call void @expand_right_edge(i8** noundef %46, i32 noundef %49, i32 noundef %52, i32 noundef %55)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %128, %4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %56
  %63 = load i8**, i8*** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %21, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %68

68:                                               ; preds = %118, %62
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  store i64 0, i64* %22, align 8
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %104, %72
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  %78 = load i8**, i8*** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %78, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %18, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8* %87, i8** %20, align 8
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %100, %77
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i8*, i8** %20, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %20, align 8
  %95 = load i8, i8* %93, align 1
  %96 = zext i8 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %22, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %22, align 8
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %15, align 4
  br label %88, !llvm.loop !15

103:                                              ; preds = %88
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %73, !llvm.loop !16

107:                                              ; preds = %73
  %108 = load i64, i64* %22, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = sdiv i64 %111, %113
  %115 = trunc i64 %114 to i8
  %116 = load i8*, i8** %21, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %21, align 8
  store i8 %115, i8* %116, align 1
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %17, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add i32 %122, %121
  store i32 %123, i32* %18, align 4
  br label %68, !llvm.loop !17

124:                                              ; preds = %68
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %56, !llvm.loop !18

131:                                              ; preds = %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @expand_right_edge(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub i32 %14, %15
  store i32 %16, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %48, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 -1
  %35 = load i8, i8* %34, align 1
  store i8 %35, i8* %10, align 1
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %44, %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8, i8* %10, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  store i8 %41, i8* %42, align 1
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  br label %37, !llvm.loop !19

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %20, !llvm.loop !20

51:                                               ; preds = %20
  br label %52

52:                                               ; preds = %51, %4
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
