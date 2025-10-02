; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jctrans.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jctrans.c"
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
%struct.jpeg_destination_mgr = type { i8*, i64, void (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.jpeg_comp_master = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, i32, i32 }
%struct.jpeg_c_main_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32)* }
%struct.jpeg_c_prep_controller = type { void (%struct.jpeg_compress_struct*, i32)*, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* }
%struct.jpeg_c_coef_controller = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, i8***)* }
%struct.jpeg_marker_writer = type { void (%struct.jpeg_compress_struct*, i32, i8*, i32)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_color_converter = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)* }
%struct.jpeg_downsampler = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, i32 }
%struct.jpeg_forward_dct = type { void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*, %struct.jpeg_component_info*, i8**, [64 x i16]*, i32, i32, i32)* }
%struct.jpeg_entropy_encoder = type { void (%struct.jpeg_compress_struct*, i32)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.jpeg_decompress_struct = type { %struct.jpeg_error_mgr*, %struct.jpeg_memory_mgr*, %struct.jpeg_progress_mgr*, i32, i32, %struct.jpeg_source_mgr*, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i32, i32, [64 x i32]*, [4 x %struct.JQUANT_TBL*], [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*], i32, %struct.jpeg_component_info*, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, i8*, i32, [4 x %struct.jpeg_component_info*], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, %struct.jpeg_decomp_master*, %struct.jpeg_d_main_controller*, %struct.jpeg_d_coef_controller*, %struct.jpeg_d_post_controller*, %struct.jpeg_input_controller*, %struct.jpeg_marker_reader*, %struct.jpeg_entropy_decoder*, %struct.jpeg_inverse_dct*, %struct.jpeg_upsampler*, %struct.jpeg_color_deconverter*, %struct.jpeg_color_quantizer* }
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.jpeg_decomp_master = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 }
%struct.jpeg_d_main_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i32*, i32)* }
%struct.jpeg_d_coef_controller = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, i8***)*, %struct.jvirt_barray_control** }
%struct.jpeg_d_post_controller = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* }
%struct.jpeg_input_controller = type { i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)*, i32, i32 }
%struct.jpeg_marker_reader = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, [16 x i32 (%struct.jpeg_decompress_struct*)*], i32, i32, i32, i32 }
%struct.jpeg_entropy_decoder = type { void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*, [64 x i16]**)* }
%struct.jpeg_inverse_dct = type { void (%struct.jpeg_decompress_struct*)*, [10 x void (%struct.jpeg_decompress_struct*, %struct.jpeg_component_info*, i16*, i8**, i32)*] }
%struct.jpeg_upsampler = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)*, i32 }
%struct.jpeg_color_deconverter = type { void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**, i32)* }
%struct.jpeg_color_quantizer = type { void (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*, i8**, i8**, i32)*, void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)* }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, %struct.jvirt_barray_control**, [10 x [64 x i16]*] }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_write_coefficients(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.jvirt_barray_control** %1, %struct.jvirt_barray_control*** %4, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 100
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i32 0, i32 5
  store i32 18, i32* %13, align 8
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 6
  %21 = bitcast %union.anon* %20 to [8 x i32]*
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 0
  store i32 %16, i32* %22, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %9, %2
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef %31, i32 noundef 0)
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 4
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %38)
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 5
  %41 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %41, i32 0, i32 2
  %43 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %42, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void %43(%struct.jpeg_compress_struct* noundef %44)
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %46 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %4, align 8
  call void @transencode_master_selection(%struct.jpeg_compress_struct* noundef %45, %struct.jvirt_barray_control** noundef %46)
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 36
  store i32 0, i32* %48, align 8
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %49, i32 0, i32 4
  store i32 103, i32* %50, align 4
  ret void
}

declare dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_master_selection(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.jvirt_barray_control**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.jvirt_barray_control** %1, %struct.jvirt_barray_control*** %4, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 8
  store i32 1, i32* %6, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef %7, i32 noundef 1)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 24
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 1, i32* %16, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %23)
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 37
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef %30)
  br label %33

31:                                               ; preds = %24
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef %32)
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %12
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %36 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %4, align 8
  call void @transencode_coef_controller(%struct.jpeg_compress_struct* noundef %35, %struct.jvirt_barray_control** noundef %36)
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %37)
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 1
  %40 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %40, i32 0, i32 6
  %42 = bitcast {}** %41 to void (%struct.jpeg_common_struct*)**
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = bitcast %struct.jpeg_compress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %45)
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 55
  %48 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %48, i32 0, i32 1
  %50 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %49, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void %50(%struct.jpeg_compress_struct* noundef %51)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* noundef %0, %struct.jpeg_compress_struct* noundef %1) #0 {
  %3 = alloca %struct.jpeg_decompress_struct*, align 8
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca %struct.JQUANT_TBL**, align 8
  %6 = alloca %struct.jpeg_component_info*, align 8
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca %struct.JQUANT_TBL*, align 8
  %9 = alloca %struct.JQUANT_TBL*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %3, align 8
  store %struct.jpeg_compress_struct* %1, %struct.jpeg_compress_struct** %4, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 100
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 18, i32* %21, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 6
  %29 = bitcast %union.anon* %28 to [8 x i32]*
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 0
  store i32 %24, i32* %30, align 4
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %37 = bitcast %struct.jpeg_compress_struct* %36 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %37)
  br label %38

38:                                               ; preds = %17, %2
  %39 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 8
  %54 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %55 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %59)
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %61 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %60, i32 noundef %63)
  %64 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %64, i32 0, i32 42
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 8
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 56
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %72, i32 0, i32 26
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %10, align 4
  br label %74

74:                                               ; preds = %118, %38
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %121

77:                                               ; preds = %74
  %78 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %78, i32 0, i32 39
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %79, i64 0, i64 %81
  %83 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %82, align 8
  %84 = icmp ne %struct.JQUANT_TBL* %83, null
  br i1 %84, label %85, label %117

85:                                               ; preds = %77
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %86, i32 0, i32 15
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %87, i64 0, i64 %89
  store %struct.JQUANT_TBL** %90, %struct.JQUANT_TBL*** %5, align 8
  %91 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %5, align 8
  %92 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %91, align 8
  %93 = icmp eq %struct.JQUANT_TBL* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %96 = bitcast %struct.jpeg_compress_struct* %95 to %struct.jpeg_common_struct*
  %97 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %96)
  %98 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %5, align 8
  store %struct.JQUANT_TBL* %97, %struct.JQUANT_TBL** %98, align 8
  br label %99

99:                                               ; preds = %94, %85
  %100 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %5, align 8
  %101 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %100, align 8
  %102 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %101, i32 0, i32 0
  %103 = getelementptr inbounds [64 x i16], [64 x i16]* %102, i64 0, i64 0
  %104 = bitcast i16* %103 to i8*
  %105 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %106 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %105, i32 0, i32 39
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %106, i64 0, i64 %108
  %110 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %109, align 8
  %111 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %110, i32 0, i32 0
  %112 = getelementptr inbounds [64 x i16], [64 x i16]* %111, i64 0, i64 0
  %113 = bitcast i16* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %113, i64 128, i1 false)
  %114 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %5, align 8
  %115 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %114, align 8
  %116 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %99, %77
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %74, !llvm.loop !4

121:                                              ; preds = %74
  %122 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %125, i32 0, i32 12
  store i32 %124, i32* %126, align 4
  %127 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %128 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %136, label %131

131:                                              ; preds = %121
  %132 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %133 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %132, i32 0, i32 12
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %134, 10
  br i1 %135, label %136, label %163

136:                                              ; preds = %131, %121
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 0
  %139 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %138, align 8
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %139, i32 0, i32 5
  store i32 24, i32* %140, align 8
  %141 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %142 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %145 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %144, i32 0, i32 0
  %146 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %145, align 8
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %146, i32 0, i32 6
  %148 = bitcast %union.anon* %147 to [8 x i32]*
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %148, i64 0, i64 0
  store i32 %143, i32* %149, align 4
  %150 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %150, i32 0, i32 0
  %152 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %151, align 8
  %153 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %152, i32 0, i32 6
  %154 = bitcast %union.anon* %153 to [8 x i32]*
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %154, i64 0, i64 1
  store i32 10, i32* %155, align 4
  %156 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %156, i32 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %157, align 8
  %159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i32 0, i32 0
  %160 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %159, align 8
  %161 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %162 = bitcast %struct.jpeg_compress_struct* %161 to %struct.jpeg_common_struct*
  call void %160(%struct.jpeg_common_struct* noundef %162)
  br label %163

163:                                              ; preds = %136, %131
  store i32 0, i32* %11, align 4
  %164 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %165 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %164, i32 0, i32 43
  %166 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %165, align 8
  store %struct.jpeg_component_info* %166, %struct.jpeg_component_info** %6, align 8
  %167 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %168 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %167, i32 0, i32 14
  %169 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %168, align 8
  store %struct.jpeg_component_info* %169, %struct.jpeg_component_info** %7, align 8
  br label %170

170:                                              ; preds = %289, %163
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %173 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %172, i32 0, i32 12
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %171, %174
  br i1 %175, label %176, label %296

176:                                              ; preds = %170
  %177 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %178 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %181 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %183 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %188 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %191 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %190, i32 0, i32 3
  store i32 %189, i32* %191, align 4
  %192 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %193 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %10, align 4
  %200 = load i32, i32* %10, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %176
  %203 = load i32, i32* %10, align 4
  %204 = icmp sge i32 %203, 4
  br i1 %204, label %213, label %205

205:                                              ; preds = %202
  %206 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %207 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %206, i32 0, i32 39
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %207, i64 0, i64 %209
  %211 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %210, align 8
  %212 = icmp eq %struct.JQUANT_TBL* %211, null
  br i1 %212, label %213, label %232

213:                                              ; preds = %205, %202, %176
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 0
  %216 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %215, align 8
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %216, i32 0, i32 5
  store i32 51, i32* %217, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %220 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %219, i32 0, i32 0
  %221 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %220, align 8
  %222 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %221, i32 0, i32 6
  %223 = bitcast %union.anon* %222 to [8 x i32]*
  %224 = getelementptr inbounds [8 x i32], [8 x i32]* %223, i64 0, i64 0
  store i32 %218, i32* %224, align 4
  %225 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %226 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %225, i32 0, i32 0
  %227 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %226, align 8
  %228 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %227, i32 0, i32 0
  %229 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %228, align 8
  %230 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %231 = bitcast %struct.jpeg_compress_struct* %230 to %struct.jpeg_common_struct*
  call void %229(%struct.jpeg_common_struct* noundef %231)
  br label %232

232:                                              ; preds = %213, %205
  %233 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %3, align 8
  %234 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %233, i32 0, i32 39
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %234, i64 0, i64 %236
  %238 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %237, align 8
  store %struct.JQUANT_TBL* %238, %struct.JQUANT_TBL** %9, align 8
  %239 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %240 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %239, i32 0, i32 19
  %241 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %240, align 8
  store %struct.JQUANT_TBL* %241, %struct.JQUANT_TBL** %8, align 8
  %242 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %8, align 8
  %243 = icmp ne %struct.JQUANT_TBL* %242, null
  br i1 %243, label %244, label %288

244:                                              ; preds = %232
  store i32 0, i32* %12, align 4
  br label %245

245:                                              ; preds = %284, %244
  %246 = load i32, i32* %12, align 4
  %247 = icmp slt i32 %246, 64
  br i1 %247, label %248, label %287

248:                                              ; preds = %245
  %249 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %8, align 8
  %250 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %249, i32 0, i32 0
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [64 x i16], [64 x i16]* %250, i64 0, i64 %252
  %254 = load i16, i16* %253, align 2
  %255 = zext i16 %254 to i32
  %256 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %9, align 8
  %257 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %256, i32 0, i32 0
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [64 x i16], [64 x i16]* %257, i64 0, i64 %259
  %261 = load i16, i16* %260, align 2
  %262 = zext i16 %261 to i32
  %263 = icmp ne i32 %255, %262
  br i1 %263, label %264, label %283

264:                                              ; preds = %248
  %265 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %266 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %265, i32 0, i32 0
  %267 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %266, align 8
  %268 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %267, i32 0, i32 5
  store i32 43, i32* %268, align 8
  %269 = load i32, i32* %10, align 4
  %270 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %271 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %270, i32 0, i32 0
  %272 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %271, align 8
  %273 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %272, i32 0, i32 6
  %274 = bitcast %union.anon* %273 to [8 x i32]*
  %275 = getelementptr inbounds [8 x i32], [8 x i32]* %274, i64 0, i64 0
  store i32 %269, i32* %275, align 4
  %276 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %277 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %276, i32 0, i32 0
  %278 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %277, align 8
  %279 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %278, i32 0, i32 0
  %280 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %279, align 8
  %281 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %282 = bitcast %struct.jpeg_compress_struct* %281 to %struct.jpeg_common_struct*
  call void %280(%struct.jpeg_common_struct* noundef %282)
  br label %283

283:                                              ; preds = %264, %248
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %12, align 4
  br label %245, !llvm.loop !6

287:                                              ; preds = %245
  br label %288

288:                                              ; preds = %287, %232
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %11, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  %292 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %293 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %292, i32 1
  store %struct.jpeg_component_info* %293, %struct.jpeg_component_info** %6, align 8
  %294 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %295 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %294, i32 1
  store %struct.jpeg_component_info* %295, %struct.jpeg_component_info** %7, align 8
  br label %170, !llvm.loop !7

296:                                              ; preds = %170
  ret void
}

declare dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_coef_controller(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca %struct.jvirt_barray_control**, align 8
  %5 = alloca %struct.my_coef_controller*, align 8
  %6 = alloca [64 x i16]*, align 8
  %7 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store %struct.jvirt_barray_control** %1, %struct.jvirt_barray_control*** %4, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 1
  %10 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %10, i32 0, i32 0
  %12 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %11, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  %15 = call i8* %12(%struct.jpeg_common_struct* noundef %14, i32 noundef 1, i64 noundef 120)
  %16 = bitcast i8* %15 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %16, %struct.my_coef_controller** %5, align 8
  %17 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %18 = bitcast %struct.my_coef_controller* %17 to %struct.jpeg_c_coef_controller*
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 54
  store %struct.jpeg_c_coef_controller* %18, %struct.jpeg_c_coef_controller** %20, align 8
  %21 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %22 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %22, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %23, align 8
  %24 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %25 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.jpeg_c_coef_controller, %struct.jpeg_c_coef_controller* %25, i32 0, i32 1
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %26, align 8
  %27 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %4, align 8
  %28 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %29 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %28, i32 0, i32 5
  store %struct.jvirt_barray_control** %27, %struct.jvirt_barray_control*** %29, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 1
  %32 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %31, align 8
  %33 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %32, i32 0, i32 1
  %34 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %33, align 8
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %36 = bitcast %struct.jpeg_compress_struct* %35 to %struct.jpeg_common_struct*
  %37 = call i8* %34(%struct.jpeg_common_struct* noundef %36, i32 noundef 1, i64 noundef 1280)
  %38 = bitcast i8* %37 to [64 x i16]*
  store [64 x i16]* %38, [64 x i16]** %6, align 8
  %39 = load [64 x i16]*, [64 x i16]** %6, align 8
  %40 = bitcast [64 x i16]* %39 to i8*
  call void @jzero_far(i8* noundef %40, i64 noundef 1280)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %54, %2
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load [64 x i16]*, [64 x i16]** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [64 x i16], [64 x i16]* %45, i64 %47
  %49 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %50 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %49, i32 0, i32 6
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %50, i64 0, i64 %52
  store [64 x i16]* %48, [64 x i16]** %53, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %41, !llvm.loop !8

57:                                               ; preds = %41
  ret void
}

declare dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 54
  %8 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %7, align 8
  %9 = bitcast %struct.jpeg_c_coef_controller* %8 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %9, %struct.my_coef_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i32 0, i32 5
  store i32 4, i32* %16, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i32 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %23)
  br label %24

24:                                               ; preds = %12, %2
  %25 = load %struct.my_coef_controller*, %struct.my_coef_controller** %5, align 8
  %26 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %25, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %27)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* noundef %0, i8*** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca %struct.my_coef_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x [64 x i16]**], align 16
  %18 = alloca [10 x [64 x i16]*], align 16
  %19 = alloca [64 x i16]*, align 8
  %20 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i8*** %1, i8**** %5, align 8
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 54
  %23 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %22, align 8
  %24 = bitcast %struct.jpeg_c_coef_controller* %23 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %24, %struct.my_coef_controller** %6, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 43
  %27 = load i32, i32* %26, align 8
  %28 = sub i32 %27, 1
  store i32 %28, i32* %8, align 4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 40
  %31 = load i32, i32* %30, align 8
  %32 = sub i32 %31, 1
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %76, %2
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 41
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %33
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 42
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %41, i64 0, i64 %43
  %45 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %44, align 8
  store %struct.jpeg_component_info* %45, %struct.jpeg_component_info** %20, align 8
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 1
  %48 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %48, i32 0, i32 8
  %50 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %49, align 8
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %52 = bitcast %struct.jpeg_compress_struct* %51 to %struct.jpeg_common_struct*
  %53 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %54 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %53, i32 0, i32 5
  %55 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %54, align 8
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %55, i64 %59
  %61 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %60, align 8
  %62 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %63 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %64, %67
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %70 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call [64 x i16]** %50(%struct.jpeg_common_struct* noundef %52, %struct.jvirt_barray_control* noundef %61, i32 noundef %68, i32 noundef %71, i32 noundef 0)
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %17, i64 0, i64 %74
  store [64 x i16]** %72, [64 x i16]*** %75, align 8
  br label %76

76:                                               ; preds = %39
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %33, !llvm.loop !9

79:                                               ; preds = %33
  %80 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %81 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %249, %79
  %84 = load i32, i32* %14, align 4
  %85 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %86 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %252

89:                                               ; preds = %83
  %90 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %91 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %243, %89
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 43
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %246

99:                                               ; preds = %93
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %222, %99
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 41
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %225

106:                                              ; preds = %100
  %107 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %108 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %107, i32 0, i32 42
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %108, i64 0, i64 %110
  %112 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %111, align 8
  store %struct.jpeg_component_info* %112, %struct.jpeg_component_info** %20, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %115 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 4
  %117 = mul i32 %113, %116
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %106
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  br label %129

125:                                              ; preds = %106
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i32 0, i32 17
  %128 = load i32, i32* %127, align 4
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  store i32 %130, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %218, %129
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %134 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %221

137:                                              ; preds = %131
  %138 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %139 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* %14, align 4
  %146 = add nsw i32 %144, %145
  %147 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %148 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %147, i32 0, i32 18
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %143, %137
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %17, i64 0, i64 %153
  %155 = load [64 x i16]**, [64 x i16]*** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [64 x i16]*, [64 x i16]** %155, i64 %159
  %161 = load [64 x i16]*, [64 x i16]** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [64 x i16], [64 x i16]* %161, i64 %163
  store [64 x i16]* %164, [64 x i16]** %19, align 8
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %176, %151
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = load [64 x i16]*, [64 x i16]** %19, align 8
  %171 = getelementptr inbounds [64 x i16], [64 x i16]* %170, i32 1
  store [64 x i16]* %171, [64 x i16]** %19, align 8
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %18, i64 0, i64 %174
  store [64 x i16]* %170, [64 x i16]** %175, align 8
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %165, !llvm.loop !10

179:                                              ; preds = %165
  br label %181

180:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  br label %181

181:                                              ; preds = %180, %179
  br label %182

182:                                              ; preds = %214, %181
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %185 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %217

188:                                              ; preds = %182
  %189 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %190 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %189, i32 0, i32 6
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %190, i64 0, i64 %192
  %194 = load [64 x i16]*, [64 x i16]** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %18, i64 0, i64 %196
  store [64 x i16]* %194, [64 x i16]** %197, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %18, i64 0, i64 %200
  %202 = load [64 x i16]*, [64 x i16]** %201, align 8
  %203 = getelementptr inbounds [64 x i16], [64 x i16]* %202, i64 0
  %204 = getelementptr inbounds [64 x i16], [64 x i16]* %203, i64 0, i64 0
  %205 = load i16, i16* %204, align 2
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %18, i64 0, i64 %207
  %209 = load [64 x i16]*, [64 x i16]** %208, align 8
  %210 = getelementptr inbounds [64 x i16], [64 x i16]* %209, i64 0
  %211 = getelementptr inbounds [64 x i16], [64 x i16]* %210, i64 0, i64 0
  store i16 %205, i16* %211, align 2
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %188
  %215 = load i32, i32* %12, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %12, align 4
  br label %182, !llvm.loop !11

217:                                              ; preds = %182
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %131, !llvm.loop !12

221:                                              ; preds = %131
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %11, align 4
  br label %100, !llvm.loop !13

225:                                              ; preds = %100
  %226 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %227 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %226, i32 0, i32 59
  %228 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %227, align 8
  %229 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %228, i32 0, i32 1
  %230 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %229, align 8
  %231 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %232 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %18, i64 0, i64 0
  %233 = call i32 %230(%struct.jpeg_compress_struct* noundef %231, [64 x i16]** noundef %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %242, label %235

235:                                              ; preds = %225
  %236 = load i32, i32* %14, align 4
  %237 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %238 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 8
  %239 = load i32, i32* %7, align 4
  %240 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %241 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 4
  store i32 0, i32* %3, align 4
  br label %258

242:                                              ; preds = %225
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %7, align 4
  %245 = add i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %93, !llvm.loop !14

246:                                              ; preds = %93
  %247 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %248 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %247, i32 0, i32 2
  store i32 0, i32* %248, align 4
  br label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %14, align 4
  br label %83, !llvm.loop !15

252:                                              ; preds = %83
  %253 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %254 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = add i32 %255, 1
  store i32 %256, i32* %254, align 8
  %257 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %257)
  store i32 1, i32* %3, align 4
  br label %258

258:                                              ; preds = %252, %235
  %259 = load i32, i32* %3, align 4
  ret i32 %259
}

declare dso_local void @jzero_far(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_coef_controller*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 54
  %6 = load %struct.jpeg_c_coef_controller*, %struct.jpeg_c_coef_controller** %5, align 8
  %7 = bitcast %struct.jpeg_c_coef_controller* %6 to %struct.my_coef_controller*
  store %struct.my_coef_controller* %7, %struct.my_coef_controller** %3, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 41
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %14 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %13, i32 0, i32 4
  store i32 1, i32* %14, align 4
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %17 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 40
  %21 = load i32, i32* %20, align 8
  %22 = sub i32 %21, 1
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 42
  %27 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %26, i64 0, i64 0
  %28 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %42

33:                                               ; preds = %15
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 42
  %36 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %35, i64 0, i64 0
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 18
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %41 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %24
  br label %43

43:                                               ; preds = %42, %12
  %44 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %45 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %44, i32 0, i32 2
  store i32 0, i32* %45, align 4
  %46 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %47 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %46, i32 0, i32 3
  store i32 0, i32* %47, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
