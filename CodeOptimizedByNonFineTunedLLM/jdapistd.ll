; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapistd.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapistd.c"
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, {}*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { {}*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, {}*, {}*, {}*, [16 x {}*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 202
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef %10)
  %11 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 4
  store i32 207, i32* %17, align 4
  store i32 1, i32* %2, align 4
  br label %138

18:                                               ; preds = %9
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 4
  store i32 203, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 203
  br i1 %25, label %26, label %108

26:                                               ; preds = %21
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 77
  %29 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %100, %33
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 2
  %37 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %36, align 8
  %38 = icmp ne %struct.jpeg_progress_mgr* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 2
  %42 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to void (%struct.jpeg_common_struct*)**
  %45 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %44, align 8
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %47 = bitcast %struct.jpeg_decompress_struct* %46 to %struct.jpeg_common_struct*
  call void %45(%struct.jpeg_common_struct* noundef %47)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 77
  %51 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %50, align 8
  %52 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.jpeg_decompress_struct*)**
  %54 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %53, align 8
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %56 = call i32 %54(%struct.jpeg_decompress_struct* noundef %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %138

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %101

64:                                               ; preds = %60
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %66 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %65, i32 0, i32 2
  %67 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %66, align 8
  %68 = icmp ne %struct.jpeg_progress_mgr* %67, null
  br i1 %68, label %69, label %100

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %100

75:                                               ; preds = %72, %69
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %79, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %82, i32 0, i32 2
  %84 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %83, align 8
  %85 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sge i64 %81, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %75
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %90 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %89, i32 0, i32 60
  %91 = load i32, i32* %90, align 8
  %92 = zext i32 %91 to i64
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 2
  %95 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %94, align 8
  %96 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, %92
  store i64 %98, i64* %96, align 8
  br label %99

99:                                               ; preds = %88, %75
  br label %100

100:                                              ; preds = %99, %72, %64
  br label %34

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %26
  %103 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %104 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %103, i32 0, i32 34
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %107 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %106, i32 0, i32 36
  store i32 %105, i32* %107, align 4
  br label %135

108:                                              ; preds = %21
  %109 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 204
  br i1 %112, label %113, label %134

113:                                              ; preds = %108
  %114 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %114, i32 0, i32 0
  %116 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %116, i32 0, i32 5
  store i32 18, i32* %117, align 8
  %118 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %121, i32 0, i32 0
  %123 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %122, align 8
  %124 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %123, i32 0, i32 6
  %125 = bitcast %union.anon* %124 to [8 x i32]*
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %125, i64 0, i64 0
  store i32 %120, i32* %126, align 4
  %127 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %127, i32 0, i32 0
  %129 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %128, align 8
  %130 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %129, i32 0, i32 0
  %131 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %130, align 8
  %132 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %133 = bitcast %struct.jpeg_decompress_struct* %132 to %struct.jpeg_common_struct*
  call void %131(%struct.jpeg_common_struct* noundef %133)
  br label %134

134:                                              ; preds = %113, %108
  br label %135

135:                                              ; preds = %134, %102
  %136 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %137 = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %136)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %135, %59, %15
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local void @jinit_master_decompress(%struct.jpeg_decompress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 204
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 73
  %12 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %12, i32 0, i32 0
  %14 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %13, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %14(%struct.jpeg_decompress_struct* noundef %15)
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 33
  store i32 0, i32* %17, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 4
  store i32 204, i32* %19, align 4
  br label %20

20:                                               ; preds = %9, %1
  br label %21

21:                                               ; preds = %86, %20
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 73
  %24 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %85, %28
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 33
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 27
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %29
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 2
  %40 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %39, align 8
  %41 = icmp ne %struct.jpeg_progress_mgr* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %37
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 33
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 2
  %49 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %49, i32 0, i32 1
  store i64 %46, i64* %50, align 8
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %52 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %51, i32 0, i32 27
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 2
  %57 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %57, i32 0, i32 2
  store i64 %54, i64* %58, align 8
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 2
  %61 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to void (%struct.jpeg_common_struct*)**
  %64 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %63, align 8
  %65 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %66 = bitcast %struct.jpeg_decompress_struct* %65 to %struct.jpeg_common_struct*
  call void %64(%struct.jpeg_common_struct* noundef %66)
  br label %67

67:                                               ; preds = %42, %37
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 33
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %4, align 4
  %71 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %72 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %71, i32 0, i32 74
  %73 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %73, i32 0, i32 1
  %75 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %74, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %77 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %78 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %77, i32 0, i32 33
  call void %75(%struct.jpeg_decompress_struct* noundef %76, i8** noundef null, i32* noundef %78, i32 noundef 0)
  %79 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %80 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %79, i32 0, i32 33
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %110

85:                                               ; preds = %67
  br label %29, !llvm.loop !4

86:                                               ; preds = %29
  %87 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %88 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %87, i32 0, i32 73
  %89 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %88, align 8
  %90 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %89, i32 0, i32 1
  %91 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %90, align 8
  %92 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %91(%struct.jpeg_decompress_struct* noundef %92)
  %93 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %93, i32 0, i32 73
  %95 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %94, align 8
  %96 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %95, i32 0, i32 0
  %97 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %96, align 8
  %98 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %97(%struct.jpeg_decompress_struct* noundef %98)
  %99 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %99, i32 0, i32 33
  store i32 0, i32* %100, align 8
  br label %21, !llvm.loop !6

101:                                              ; preds = %21
  %102 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %103 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %102, i32 0, i32 15
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 206, i32 205
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %101, %84
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_scanlines(%struct.jpeg_decompress_struct* noundef %0, i8** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 205
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 18, i32* %17, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %13, %3
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 33
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 27
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 119, i32* %46, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %51 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %50, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53, i32 noundef -1)
  store i32 0, i32* %4, align 4
  br label %99

54:                                               ; preds = %34
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 2
  %57 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %56, align 8
  %58 = icmp ne %struct.jpeg_progress_mgr* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 33
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 2
  %66 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 27
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 2
  %74 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %74, i32 0, i32 2
  store i64 %71, i64* %75, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to void (%struct.jpeg_common_struct*)**
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %80, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %83 = bitcast %struct.jpeg_decompress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* noundef %83)
  br label %84

84:                                               ; preds = %59, %54
  store i32 0, i32* %8, align 4
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 74
  %87 = load %struct.jpeg_d_main_controller*, %struct.jpeg_d_main_controller** %86, align 8
  %88 = getelementptr inbounds %struct.jpeg_d_main_controller, %struct.jpeg_d_main_controller* %87, i32 0, i32 1
  %89 = load void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)** %88, align 8
  %90 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %91 = load i8**, i8*** %6, align 8
  %92 = load i32, i32* %7, align 4
  call void %89(%struct.jpeg_decompress_struct* noundef %90, i8** noundef %91, i32* noundef %8, i32 noundef %92)
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %95 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %94, i32 0, i32 33
  %96 = load i32, i32* %95, align 8
  %97 = add i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %84, %42
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_raw_data(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 206
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 18, i32* %17, align 8
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %13, %3
  %35 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %35, i32 0, i32 33
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %38, i32 0, i32 27
  %40 = load i32, i32* %39, align 4
  %41 = icmp uge i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 5
  store i32 119, i32* %46, align 8
  %47 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %47, i32 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i32 0, i32 1
  %51 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %50, align 8
  %52 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %53 = bitcast %struct.jpeg_decompress_struct* %52 to %struct.jpeg_common_struct*
  call void %51(%struct.jpeg_common_struct* noundef %53, i32 noundef -1)
  store i32 0, i32* %4, align 4
  br label %125

54:                                               ; preds = %34
  %55 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %55, i32 0, i32 2
  %57 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %56, align 8
  %58 = icmp ne %struct.jpeg_progress_mgr* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %54
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %61 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %60, i32 0, i32 33
  %62 = load i32, i32* %61, align 8
  %63 = zext i32 %62 to i64
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 2
  %66 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %66, i32 0, i32 1
  store i64 %63, i64* %67, align 8
  %68 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %69 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %68, i32 0, i32 27
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %72, i32 0, i32 2
  %74 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %74, i32 0, i32 2
  store i64 %71, i64* %75, align 8
  %76 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %77 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %76, i32 0, i32 2
  %78 = load %struct.jpeg_progress_mgr*, %struct.jpeg_progress_mgr** %77, align 8
  %79 = getelementptr inbounds %struct.jpeg_progress_mgr, %struct.jpeg_progress_mgr* %78, i32 0, i32 0
  %80 = bitcast {}** %79 to void (%struct.jpeg_common_struct*)**
  %81 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %80, align 8
  %82 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %83 = bitcast %struct.jpeg_decompress_struct* %82 to %struct.jpeg_common_struct*
  call void %81(%struct.jpeg_common_struct* noundef %83)
  br label %84

84:                                               ; preds = %59, %54
  %85 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %85, i32 0, i32 58
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %88, i32 0, i32 59
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %84
  %96 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %97 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %96, i32 0, i32 0
  %98 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %97, align 8
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %98, i32 0, i32 5
  store i32 21, i32* %99, align 8
  %100 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %101 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %100, i32 0, i32 0
  %102 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %101, align 8
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %102, i32 0, i32 0
  %104 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %103, align 8
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %106 = bitcast %struct.jpeg_decompress_struct* %105 to %struct.jpeg_common_struct*
  call void %104(%struct.jpeg_common_struct* noundef %106)
  br label %107

107:                                              ; preds = %95, %84
  %108 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %108, i32 0, i32 75
  %110 = load %struct.jpeg_d_coef_controller*, %struct.jpeg_d_coef_controller** %109, align 8
  %111 = getelementptr inbounds %struct.jpeg_d_coef_controller, %struct.jpeg_d_coef_controller* %110, i32 0, i32 3
  %112 = load i32 (%struct.jpeg_decompress_struct*, i8***)*, i32 (%struct.jpeg_decompress_struct*, i8***)** %111, align 8
  %113 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %114 = load i8***, i8**** %6, align 8
  %115 = call i32 %112(%struct.jpeg_decompress_struct* noundef %113, i8*** noundef %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %125

118:                                              ; preds = %107
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %120, i32 0, i32 33
  %122 = load i32, i32* %121, align 8
  %123 = add i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %118, %117, %42
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_start_output(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 207
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 204
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 5
  store i32 18, i32* %18, align 8
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 6
  %26 = bitcast %union.anon* %25 to [8 x i32]*
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 0
  store i32 %21, i32* %27, align 4
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 0
  %32 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %31, align 8
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %33 to %struct.jpeg_common_struct*
  call void %32(%struct.jpeg_common_struct* noundef %34)
  br label %35

35:                                               ; preds = %14, %9, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 77
  %42 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %48, i32 0, i32 34
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %53, i32 0, i32 34
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %46, %39
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %59 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %58, i32 0, i32 36
  store i32 %57, i32* %59, align 4
  %60 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %61 = call i32 @output_pass_setup(%struct.jpeg_decompress_struct* noundef %60)
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_output(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 205
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 206
  br i1 %12, label %13, label %27

13:                                               ; preds = %8, %1
  %14 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %19, i32 0, i32 73
  %21 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %21, i32 0, i32 1
  %23 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %22, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  call void %23(%struct.jpeg_decompress_struct* noundef %24)
  %25 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %25, i32 0, i32 4
  store i32 208, i32* %26, align 4
  br label %54

27:                                               ; preds = %13, %8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 208
  br i1 %31, label %32, label %53

32:                                               ; preds = %27
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 5
  store i32 18, i32* %36, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %40, i32 0, i32 0
  %42 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %41, align 8
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %42, i32 0, i32 6
  %44 = bitcast %union.anon* %43 to [8 x i32]*
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %44, i64 0, i64 0
  store i32 %39, i32* %45, align 4
  %46 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %46, i32 0, i32 0
  %48 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %48, i32 0, i32 0
  %50 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %49, align 8
  %51 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %52 = bitcast %struct.jpeg_decompress_struct* %51 to %struct.jpeg_common_struct*
  call void %50(%struct.jpeg_common_struct* noundef %52)
  br label %53

53:                                               ; preds = %32, %27
  br label %54

54:                                               ; preds = %53, %18
  br label %55

55:                                               ; preds = %84, %54
  %56 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %57 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %56, i32 0, i32 34
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %59, i32 0, i32 36
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 77
  %66 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %63, %55
  %72 = phi i1 [ false, %55 ], [ %70, %63 ]
  br i1 %72, label %73, label %85

73:                                               ; preds = %71
  %74 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %75 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %74, i32 0, i32 77
  %76 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %75, align 8
  %77 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.jpeg_decompress_struct*)**
  %79 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %78, align 8
  %80 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %81 = call i32 %79(%struct.jpeg_decompress_struct* noundef %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 0, i32* %2, align 4
  br label %88

84:                                               ; preds = %73
  br label %55, !llvm.loop !7

85:                                               ; preds = %71
  %86 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %86, i32 0, i32 4
  store i32 207, i32* %87, align 4
  store i32 1, i32* %2, align 4
  br label %88

88:                                               ; preds = %85, %83
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

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
