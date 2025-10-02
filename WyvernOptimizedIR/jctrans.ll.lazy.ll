; ModuleID = './jctrans.ll'
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
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 100
  br i1 %.not, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 18, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 6, i32 0, i64 0
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #4
  br label %19

19:                                               ; preds = %5, %2
  call void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0) #4
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 4
  %23 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %22, align 8
  %24 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %23(%struct.jpeg_common_struct* noundef %24) #4
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 5
  %26 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %26, i64 0, i32 2
  %28 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %27, align 8
  call void %28(%struct.jpeg_compress_struct* noundef %0) #4
  call void @transencode_master_selection(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1)
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 36
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  store i32 103, i32* %30, align 4
  ret void
}

declare dso_local void @jpeg_suppress_tables(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_master_selection(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  store i32 1, i32* %3, align 8
  call void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1) #4
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #4
  br label %21

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 37
  %17 = load i32, i32* %16, align 4
  %.not1 = icmp eq i32 %17, 0
  br i1 %.not1, label %19, label %18

18:                                               ; preds = %15
  call void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef %0) #4
  br label %20

19:                                               ; preds = %15
  call void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef %0) #4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %20, %6
  call void @transencode_coef_controller(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1)
  call void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %0) #4
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i64 0, i32 6
  %25 = bitcast {}** %24 to void (%struct.jpeg_common_struct*)**
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %27) #4
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 55
  %29 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %29, i64 0, i32 1
  %31 = load void (%struct.jpeg_compress_struct*)*, void (%struct.jpeg_compress_struct*)** %30, align 8
  call void %31(%struct.jpeg_compress_struct* noundef %0) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_copy_critical_parameters(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, %struct.jpeg_compress_struct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 100
  br i1 %.not, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 18, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 6, i32 0, i64 0
  store i32 %10, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %1 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #4
  br label %19

19:                                               ; preds = %5, %2
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 6
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 7
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 8
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 9
  store i32 %30, i32* %31, align 4
  call void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %1) #4
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  %33 = load i32, i32* %32, align 4
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %1, i32 noundef %33) #4
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 42
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 11
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 56
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 26
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %64, %19
  %.02 = phi i32 [ 0, %19 ], [ %65, %64 ]
  %41 = icmp ult i32 %.02, 4
  br i1 %41, label %42, label %66

42:                                               ; preds = %40
  %43 = zext i32 %.02 to i64
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %43
  %45 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %44, align 8
  %.not7 = icmp eq %struct.JQUANT_TBL* %45, null
  br i1 %.not7, label %63, label %46

46:                                               ; preds = %42
  %47 = zext i32 %.02 to i64
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 15, i64 %47
  %49 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %48, align 8
  %50 = icmp eq %struct.JQUANT_TBL* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = bitcast %struct.jpeg_compress_struct* %1 to %struct.jpeg_common_struct*
  %53 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %52) #4
  store %struct.JQUANT_TBL* %53, %struct.JQUANT_TBL** %48, align 8
  br label %54

54:                                               ; preds = %51, %46
  %55 = bitcast %struct.JQUANT_TBL** %48 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = zext i32 %.02 to i64
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %57
  %59 = bitcast %struct.JQUANT_TBL** %58 to i8**
  %60 = load i8*, i8** %59, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(128) %56, i8* noundef nonnull align 4 dereferenceable(128) %60, i64 128, i1 false)
  %61 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %48, align 8
  %62 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %61, i64 0, i32 1
  store i32 0, i32* %62, align 4
  br label %63

63:                                               ; preds = %54, %42
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.02, 1
  br label %40, !llvm.loop !4

66:                                               ; preds = %40
  %67 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 12
  store i32 %68, i32* %69, align 4
  %70 = icmp slt i32 %68, 1
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 12
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, 10
  br i1 %74, label %75, label %92

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %77 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %76, align 8
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %77, i64 0, i32 5
  store i32 24, i32* %78, align 8
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %82 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %81, align 8
  %83 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %82, i64 0, i32 6, i32 0, i64 0
  store i32 %80, i32* %83, align 4
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i64 0, i32 6, i32 0, i64 1
  store i32 10, i32* %86, align 4
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %88 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %87, align 8
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %88, i64 0, i32 0
  %90 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %89, align 8
  %91 = bitcast %struct.jpeg_compress_struct* %1 to %struct.jpeg_common_struct*
  call void %90(%struct.jpeg_common_struct* noundef %91) #4
  br label %92

92:                                               ; preds = %75, %71
  %93 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %94 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %93, align 8
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 14
  %96 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %95, align 8
  br label %97

97:                                               ; preds = %167, %92
  %.04 = phi %struct.jpeg_component_info* [ %96, %92 ], [ %170, %167 ]
  %.03 = phi %struct.jpeg_component_info* [ %94, %92 ], [ %169, %167 ]
  %.01 = phi i32 [ 0, %92 ], [ %168, %167 ]
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %.01, %99
  br i1 %100, label %101, label %171

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 2
  store i32 %106, i32* %107, align 8
  %108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 3
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = icmp slt i32 %112, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %101
  %116 = icmp sgt i32 %112, 3
  br i1 %116, label %122, label %117

117:                                              ; preds = %115
  %118 = sext i32 %112 to i64
  %119 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %118
  %120 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %119, align 8
  %121 = icmp eq %struct.JQUANT_TBL* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %117, %115, %101
  %123 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %124 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %123, align 8
  %125 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %124, i64 0, i32 5
  store i32 51, i32* %125, align 8
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %127 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %126, align 8
  %128 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %127, i64 0, i32 6, i32 0, i64 0
  store i32 %112, i32* %128, align 4
  %129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %130 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %129, align 8
  %131 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %130, i64 0, i32 0
  %132 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %131, align 8
  %133 = bitcast %struct.jpeg_compress_struct* %1 to %struct.jpeg_common_struct*
  call void %132(%struct.jpeg_common_struct* noundef %133) #4
  br label %134

134:                                              ; preds = %122, %117
  %135 = sext i32 %112 to i64
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %135
  %137 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %136, align 8
  %138 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 0, i32 19
  %139 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %138, align 8
  %.not5 = icmp eq %struct.JQUANT_TBL* %139, null
  br i1 %.not5, label %166, label %140

140:                                              ; preds = %134
  br label %141

141:                                              ; preds = %163, %140
  %.0 = phi i32 [ 0, %140 ], [ %164, %163 ]
  %142 = icmp ult i32 %.0, 64
  br i1 %142, label %143, label %165

143:                                              ; preds = %141
  %144 = zext i32 %.0 to i64
  %145 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %139, i64 0, i32 0, i64 %144
  %146 = load i16, i16* %145, align 2
  %147 = zext i32 %.0 to i64
  %148 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %137, i64 0, i32 0, i64 %147
  %149 = load i16, i16* %148, align 2
  %.not6 = icmp eq i16 %146, %149
  br i1 %.not6, label %162, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %152 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %151, align 8
  %153 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %152, i64 0, i32 5
  store i32 43, i32* %153, align 8
  %154 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %155 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %154, align 8
  %156 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %155, i64 0, i32 6, i32 0, i64 0
  store i32 %112, i32* %156, align 4
  %157 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %1, i64 0, i32 0
  %158 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %157, align 8
  %159 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %158, i64 0, i32 0
  %160 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %159, align 8
  %161 = bitcast %struct.jpeg_compress_struct* %1 to %struct.jpeg_common_struct*
  call void %160(%struct.jpeg_common_struct* noundef %161) #4
  br label %162

162:                                              ; preds = %150, %143
  br label %163

163:                                              ; preds = %162
  %164 = add nuw nsw i32 %.0, 1
  br label %141, !llvm.loop !6

165:                                              ; preds = %141
  br label %166

166:                                              ; preds = %165, %134
  br label %167

167:                                              ; preds = %166
  %168 = add nuw nsw i32 %.01, 1
  %169 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.03, i64 1
  %170 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %.04, i64 1
  br label %97, !llvm.loop !7

171:                                              ; preds = %97
  ret void
}

declare dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @jinit_c_master_control(%struct.jpeg_compress_struct* noundef, i32 noundef) #1

declare dso_local void @jinit_phuff_encoder(%struct.jpeg_compress_struct* noundef) #1

declare dso_local void @jinit_huff_encoder(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @transencode_coef_controller(%struct.jpeg_compress_struct* noundef %0, %struct.jvirt_barray_control** noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %4 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %4, i64 0, i32 0
  %6 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %5, align 8
  %7 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %8 = call i8* %6(%struct.jpeg_common_struct* noundef %7, i32 noundef 1, i64 noundef 120) #4
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %10 = bitcast %struct.jpeg_c_coef_controller** %9 to i8**
  store i8* %8, i8** %10, align 8
  %11 = bitcast i8* %8 to void (%struct.jpeg_compress_struct*, i32)**
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_coef, void (%struct.jpeg_compress_struct*, i32)** %11, align 8
  %12 = getelementptr inbounds i8, i8* %8, i64 8
  %13 = bitcast i8* %12 to i32 (%struct.jpeg_compress_struct*, i8***)**
  store i32 (%struct.jpeg_compress_struct*, i8***)* @compress_output, i32 (%struct.jpeg_compress_struct*, i8***)** %13, align 8
  %14 = getelementptr inbounds i8, i8* %8, i64 32
  %15 = bitcast i8* %14 to %struct.jvirt_barray_control***
  store %struct.jvirt_barray_control** %1, %struct.jvirt_barray_control*** %15, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %17 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %17, i64 0, i32 1
  %19 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %18, align 8
  %20 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %21 = call i8* %19(%struct.jpeg_common_struct* noundef %20, i32 noundef 1, i64 noundef 1280) #4
  %22 = bitcast i8* %21 to [64 x i16]*
  call void @jzero_far(i8* noundef %21, i64 noundef 1280) #4
  br label %23

23:                                               ; preds = %32, %2
  %.0 = phi i32 [ 0, %2 ], [ %33, %32 ]
  %24 = icmp ult i32 %.0, 10
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = zext i32 %.0 to i64
  %27 = getelementptr inbounds [64 x i16], [64 x i16]* %22, i64 %26
  %28 = getelementptr inbounds i8, i8* %8, i64 40
  %29 = bitcast i8* %28 to [10 x [64 x i16]*]*
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %29, i64 0, i64 %30
  store [64 x i16]* %27, [64 x i16]** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = add nuw nsw i32 %.0, 1
  br label %23, !llvm.loop !8

34:                                               ; preds = %23
  ret void
}

declare dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_coef(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %4 = bitcast %struct.jpeg_c_coef_controller** %3 to %struct.my_coef_controller**
  %5 = load %struct.my_coef_controller*, %struct.my_coef_controller** %4, align 8
  %.not = icmp eq i32 %1, 2
  br i1 %.not, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 4, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 0
  %13 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %12, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %13(%struct.jpeg_common_struct* noundef %14) #4
  br label %15

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %5, i64 0, i32 1
  store i32 0, i32* %16, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compress_output(%struct.jpeg_compress_struct* noundef %0, i8*** nocapture noundef readnone %1) #0 {
  %3 = alloca [4 x [64 x i16]**], align 16
  %4 = alloca [10 x [64 x i16]*], align 16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %6 = bitcast %struct.jpeg_c_coef_controller** %5 to %struct.my_coef_controller**
  %7 = load %struct.my_coef_controller*, %struct.my_coef_controller** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 43
  %9 = load i32, i32* %8, align 8
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %12 = load i32, i32* %11, align 8
  %13 = add i32 %12, -1
  br label %14

14:                                               ; preds = %42, %2
  %.09 = phi i32 [ 0, %2 ], [ %43, %42 ]
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %.09, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %14
  %19 = zext i32 %.09 to i64
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %19
  %21 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i64 0, i32 8
  %25 = load [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)*, [64 x i16]** (%struct.jpeg_common_struct*, %struct.jvirt_barray_control*, i32, i32, i32)** %24, align 8
  %26 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %27 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 5
  %28 = load %struct.jvirt_barray_control**, %struct.jvirt_barray_control*** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i64 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %28, i64 %31
  %33 = load %struct.jvirt_barray_control*, %struct.jvirt_barray_control** %32, align 8
  %34 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %21, i64 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = mul i32 %35, %37
  %39 = call [64 x i16]** %25(%struct.jpeg_common_struct* noundef %26, %struct.jvirt_barray_control* noundef %33, i32 noundef %38, i32 noundef %37, i32 noundef 0) #4
  %40 = zext i32 %.09 to i64
  %41 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %3, i64 0, i64 %40
  store [64 x i16]** %39, [64 x i16]*** %41, align 8
  br label %42

42:                                               ; preds = %18
  %43 = add nuw nsw i32 %.09, 1
  br label %14, !llvm.loop !9

44:                                               ; preds = %14
  %45 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 3
  %46 = load i32, i32* %45, align 8
  br label %47

47:                                               ; preds = %156, %44
  %.02 = phi i32 [ %46, %44 ], [ %157, %156 ]
  %48 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %.02, %49
  br i1 %50, label %51, label %158

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 2
  %53 = load i32, i32* %52, align 4
  br label %54

54:                                               ; preds = %152, %51
  %.03 = phi i32 [ %53, %51 ], [ %153, %152 ]
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 43
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %.03, %56
  br i1 %57, label %58, label %154

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %139, %58
  %.110 = phi i32 [ 0, %58 ], [ %140, %139 ]
  %.06 = phi i32 [ 0, %58 ], [ %.17, %139 ]
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %.110, %61
  br i1 %62, label %63, label %141

63:                                               ; preds = %59
  %64 = zext i32 %.110 to i64
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 %64
  %66 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %.03, %68
  %70 = icmp ult i32 %.03, %10
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 13
  br label %75

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 17
  br label %75

75:                                               ; preds = %73, %71
  %.in = phi i32* [ %72, %71 ], [ %74, %73 ]
  %76 = load i32, i32* %.in, align 4
  br label %77

77:                                               ; preds = %136, %75
  %.17 = phi i32 [ %.06, %75 ], [ %.4, %136 ]
  %.04 = phi i32 [ 0, %75 ], [ %137, %136 ]
  %78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 14
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %.04, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %83, %13
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = add nsw i32 %.04, %.02
  %87 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 18
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %85, %81
  %91 = zext i32 %.110 to i64
  %92 = getelementptr inbounds [4 x [64 x i16]**], [4 x [64 x i16]**]* %3, i64 0, i64 %91
  %93 = load [64 x i16]**, [64 x i16]*** %92, align 8
  %94 = add nsw i32 %.04, %.02
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [64 x i16]*, [64 x i16]** %93, i64 %95
  %97 = load [64 x i16]*, [64 x i16]** %96, align 8
  %98 = zext i32 %69 to i64
  %99 = getelementptr inbounds [64 x i16], [64 x i16]* %97, i64 %98
  br label %100

100:                                              ; preds = %105, %90
  %.28 = phi i32 [ %.17, %90 ], [ %106, %105 ]
  %.05 = phi i32 [ 0, %90 ], [ %108, %105 ]
  %.01 = phi [64 x i16]* [ %99, %90 ], [ %107, %105 ]
  %101 = icmp slt i32 %.05, %76
  br i1 %101, label %102, label %109

102:                                              ; preds = %100
  %103 = sext i32 %.28 to i64
  %104 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %4, i64 0, i64 %103
  store [64 x i16]* %.01, [64 x i16]** %104, align 8
  br label %105

105:                                              ; preds = %102
  %106 = add nsw i32 %.28, 1
  %107 = getelementptr inbounds [64 x i16], [64 x i16]* %.01, i64 1
  %108 = add nuw nsw i32 %.05, 1
  br label %100, !llvm.loop !10

109:                                              ; preds = %100
  br label %111

110:                                              ; preds = %85
  br label %111

111:                                              ; preds = %110, %109
  %.3 = phi i32 [ %.28, %109 ], [ %.17, %110 ]
  %.1 = phi i32 [ %.05, %109 ], [ 0, %110 ]
  br label %112

112:                                              ; preds = %132, %111
  %.4 = phi i32 [ %.3, %111 ], [ %133, %132 ]
  %.2 = phi i32 [ %.1, %111 ], [ %134, %132 ]
  %113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %66, i64 0, i32 13
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %.2, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = sext i32 %.4 to i64
  %118 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 6, i64 %117
  %119 = load [64 x i16]*, [64 x i16]** %118, align 8
  %120 = sext i32 %.4 to i64
  %121 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %4, i64 0, i64 %120
  store [64 x i16]* %119, [64 x i16]** %121, align 8
  %122 = add nsw i32 %.4, -1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %4, i64 0, i64 %123
  %125 = load [64 x i16]*, [64 x i16]** %124, align 8
  %126 = getelementptr inbounds [64 x i16], [64 x i16]* %125, i64 0, i64 0
  %127 = load i16, i16* %126, align 2
  %128 = sext i32 %.4 to i64
  %129 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %4, i64 0, i64 %128
  %130 = load [64 x i16]*, [64 x i16]** %129, align 8
  %131 = getelementptr inbounds [64 x i16], [64 x i16]* %130, i64 0, i64 0
  store i16 %127, i16* %131, align 2
  br label %132

132:                                              ; preds = %116
  %133 = add nsw i32 %.4, 1
  %134 = add nuw nsw i32 %.2, 1
  br label %112, !llvm.loop !11

135:                                              ; preds = %112
  br label %136

136:                                              ; preds = %135
  %137 = add nuw nsw i32 %.04, 1
  br label %77, !llvm.loop !12

138:                                              ; preds = %77
  br label %139

139:                                              ; preds = %138
  %140 = add nuw nsw i32 %.110, 1
  br label %59, !llvm.loop !13

141:                                              ; preds = %59
  %142 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 59
  %143 = load %struct.jpeg_entropy_encoder*, %struct.jpeg_entropy_encoder** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_entropy_encoder, %struct.jpeg_entropy_encoder* %143, i64 0, i32 1
  %145 = load i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)** %144, align 8
  %146 = getelementptr inbounds [10 x [64 x i16]*], [10 x [64 x i16]*]* %4, i64 0, i64 0
  %147 = call i32 %145(%struct.jpeg_compress_struct* noundef %0, [64 x i16]** noundef nonnull %146) #4
  %.not = icmp eq i32 %147, 0
  br i1 %.not, label %148, label %151

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 3
  store i32 %.02, i32* %149, align 8
  %150 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 2
  store i32 %.03, i32* %150, align 4
  br label %162

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151
  %153 = add i32 %.03, 1
  br label %54, !llvm.loop !14

154:                                              ; preds = %54
  %155 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 2
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %154
  %157 = add nsw i32 %.02, 1
  br label %47, !llvm.loop !15

158:                                              ; preds = %47
  %159 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %7, i64 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = add i32 %160, 1
  store i32 %161, i32* %159, align 8
  call void @start_iMCU_row(%struct.jpeg_compress_struct* noundef %0)
  br label %162

162:                                              ; preds = %158, %148
  %.0 = phi i32 [ 0, %148 ], [ 1, %158 ]
  ret i32 %.0
}

declare dso_local void @jzero_far(i8* noundef, i64 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @start_iMCU_row(%struct.jpeg_compress_struct* nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 54
  %3 = bitcast %struct.jpeg_c_coef_controller** %2 to %struct.my_coef_controller**
  %4 = load %struct.my_coef_controller*, %struct.my_coef_controller** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 41
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 1, i32* %9, align 4
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 40
  %14 = load i32, i32* %13, align 8
  %15 = add i32 %14, -1
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 0
  %19 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %19, i64 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 %21, i32* %22, align 4
  br label %29

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 42, i64 0
  %25 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %25, i64 0, i32 18
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 4
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %17
  br label %30

30:                                               ; preds = %29, %8
  %31 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 2
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.my_coef_controller, %struct.my_coef_controller* %4, i64 0, i32 3
  store i32 0, i32* %32, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
