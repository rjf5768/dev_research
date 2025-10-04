; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmerge.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdmerge.c"
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
%struct.my_upsampler = type { %struct.jpeg_upsampler, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, i32*, i32*, i64*, i64*, i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_merged_upsampler(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i32 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %10 = bitcast %struct.jpeg_decompress_struct* %9 to %struct.jpeg_common_struct*
  %11 = call i8* %8(%struct.jpeg_common_struct* noundef %10, i32 noundef 1, i64 noundef 88)
  %12 = bitcast i8* %11 to %struct.my_upsampler*
  store %struct.my_upsampler* %12, %struct.my_upsampler** %3, align 8
  %13 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %14 = bitcast %struct.my_upsampler* %13 to %struct.jpeg_upsampler*
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %15, i32 0, i32 81
  store %struct.jpeg_upsampler* %14, %struct.jpeg_upsampler** %16, align 8
  %17 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %18 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_merged_upsample, void (%struct.jpeg_decompress_struct*)** %20, align 8
  %21 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %22 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %22, i32 0, i32 2
  store i32 0, i32* %23, align 8
  %24 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %24, i32 0, i32 26
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %27, i32 0, i32 28
  %29 = load i32, i32* %28, align 8
  %30 = mul i32 %26, %29
  %31 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %32 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %33, i32 0, i32 58
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %58

37:                                               ; preds = %1
  %38 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %39 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %39, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_2v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %40, align 8
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v2_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %42, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 1
  %45 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %45, i32 0, i32 1
  %47 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %46, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  %50 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %51 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = call i8* %47(%struct.jpeg_common_struct* noundef %49, i32 noundef 1, i64 noundef %54)
  %56 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %57 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  br label %66

58:                                               ; preds = %1
  %59 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %60 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.jpeg_upsampler, %struct.jpeg_upsampler* %60, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_1v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %61, align 8
  %62 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %63 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %62, i32 0, i32 1
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v1_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %63, align 8
  %64 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %65 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %64, i32 0, i32 6
  store i8* null, i8** %65, align 8
  br label %66

66:                                               ; preds = %58, %37
  %67 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %67)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_merged_upsample(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %4 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %4, i32 0, i32 81
  %6 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %5, align 8
  %7 = bitcast %struct.jpeg_upsampler* %6 to %struct.my_upsampler*
  store %struct.my_upsampler* %7, %struct.my_upsampler** %3, align 8
  %8 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %9 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %8, i32 0, i32 7
  store i32 0, i32* %9, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 27
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_2v_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_upsampler*, align 8
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i32, align 4
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %18 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %18, i32 0, i32 81
  %20 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %19, align 8
  %21 = bitcast %struct.jpeg_upsampler* %20 to %struct.my_upsampler*
  store %struct.my_upsampler* %21, %struct.my_upsampler** %15, align 8
  %22 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %23 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %7
  %27 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %28 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %27, i32 0, i32 6
  %29 = load i8**, i8*** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %35 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 4
  call void @jcopy_sample_rows(i8** noundef %28, i32 noundef 0, i8** noundef %33, i32 noundef 0, i32 noundef 1, i32 noundef %36)
  store i32 1, i32* %17, align 4
  %37 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %38 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %37, i32 0, i32 7
  store i32 0, i32* %38, align 8
  br label %94

39:                                               ; preds = %7
  store i32 2, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = icmp ugt i32 %40, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %47 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %45, %39
  %50 = load i32*, i32** %13, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %14, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %17, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i8**, i8*** %12, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  store i8* %65, i8** %66, align 16
  %67 = load i32, i32* %17, align 4
  %68 = icmp ugt i32 %67, 1
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i8**, i8*** %12, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %70, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  store i8* %76, i8** %77, align 8
  br label %85

78:                                               ; preds = %59
  %79 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %80 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %79, i32 0, i32 6
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 1
  store i8* %81, i8** %82, align 8
  %83 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %84 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %83, i32 0, i32 7
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %78, %69
  %86 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %87 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %86, i32 0, i32 1
  %88 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %87, align 8
  %89 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %90 = load i8***, i8**** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0
  call void %88(%struct.jpeg_decompress_struct* noundef %89, i8*** noundef %90, i32 noundef %92, i8** noundef %93)
  br label %94

94:                                               ; preds = %85, %26
  %95 = load i32, i32* %17, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %101 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 8
  %103 = sub i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %105 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %94
  %109 = load i32*, i32** %10, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %108, %94
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v2_merged_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.my_upsampler*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %28 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %28, i32 0, i32 81
  %30 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %29, align 8
  %31 = bitcast %struct.jpeg_upsampler* %30 to %struct.my_upsampler*
  store %struct.my_upsampler* %31, %struct.my_upsampler** %9, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 61
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %23, align 8
  %35 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %36 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %24, align 8
  %38 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %39 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %25, align 8
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %26, align 8
  %44 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %45 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %44, i32 0, i32 5
  %46 = load i64*, i64** %45, align 8
  store i64* %46, i64** %27, align 8
  %47 = load i8***, i8**** %6, align 8
  %48 = getelementptr inbounds i8**, i8*** %47, i64 0
  %49 = load i8**, i8*** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = mul i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %18, align 8
  %55 = load i8***, i8**** %6, align 8
  %56 = getelementptr inbounds i8**, i8*** %55, i64 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = mul i32 %58, 2
  %60 = add i32 %59, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %57, i64 %61
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %19, align 8
  %64 = load i8***, i8**** %6, align 8
  %65 = getelementptr inbounds i8**, i8*** %64, i64 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %66, i64 %68
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %20, align 8
  %71 = load i8***, i8**** %6, align 8
  %72 = getelementptr inbounds i8**, i8*** %71, i64 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  store i8* %77, i8** %21, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %16, align 8
  %81 = load i8**, i8*** %8, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %17, align 8
  %84 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %85 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %84, i32 0, i32 26
  %86 = load i32, i32* %85, align 8
  %87 = lshr i32 %86, 1
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %255, %4
  %89 = load i32, i32* %22, align 4
  %90 = icmp ugt i32 %89, 0
  br i1 %90, label %91, label %258

91:                                               ; preds = %88
  %92 = load i8*, i8** %20, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %20, align 8
  %94 = load i8, i8* %92, align 1
  %95 = zext i8 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i8*, i8** %21, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %21, align 8
  %98 = load i8, i8* %96, align 1
  %99 = zext i8 %98 to i32
  store i32 %99, i32* %15, align 4
  %100 = load i32*, i32** %24, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %11, align 4
  %105 = load i64*, i64** %27, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %26, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %109, %114
  %116 = ashr i64 %115, 16
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %12, align 4
  %118 = load i32*, i32** %25, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i8*, i8** %18, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %18, align 8
  %125 = load i8, i8* %123, align 1
  %126 = zext i8 %125 to i32
  store i32 %126, i32* %10, align 4
  %127 = load i8*, i8** %23, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %127, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = load i8*, i8** %16, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  store i8 %133, i8* %135, align 1
  %136 = load i8*, i8** %23, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %16, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 1
  store i8 %142, i8* %144, align 1
  %145 = load i8*, i8** %23, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %145, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** %16, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 3
  store i8* %155, i8** %16, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %18, align 8
  %158 = load i8, i8* %156, align 1
  %159 = zext i8 %158 to i32
  store i32 %159, i32* %10, align 4
  %160 = load i8*, i8** %23, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %160, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %16, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 0
  store i8 %166, i8* %168, align 1
  %169 = load i8*, i8** %23, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = load i8*, i8** %16, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  store i8 %175, i8* %177, align 1
  %178 = load i8*, i8** %23, align 8
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = load i8*, i8** %16, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  store i8 %184, i8* %186, align 1
  %187 = load i8*, i8** %16, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 3
  store i8* %188, i8** %16, align 8
  %189 = load i8*, i8** %19, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %19, align 8
  %191 = load i8, i8* %189, align 1
  %192 = zext i8 %191 to i32
  store i32 %192, i32* %10, align 4
  %193 = load i8*, i8** %23, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %17, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  store i8 %199, i8* %201, align 1
  %202 = load i8*, i8** %23, align 8
  %203 = load i32, i32* %10, align 4
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %202, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = load i8*, i8** %17, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 1
  store i8 %208, i8* %210, align 1
  %211 = load i8*, i8** %23, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %211, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = load i8*, i8** %17, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 2
  store i8 %217, i8* %219, align 1
  %220 = load i8*, i8** %17, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 3
  store i8* %221, i8** %17, align 8
  %222 = load i8*, i8** %19, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %19, align 8
  %224 = load i8, i8* %222, align 1
  %225 = zext i8 %224 to i32
  store i32 %225, i32* %10, align 4
  %226 = load i8*, i8** %23, align 8
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %227, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %226, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = load i8*, i8** %17, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 0
  store i8 %232, i8* %234, align 1
  %235 = load i8*, i8** %23, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %236, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %235, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = load i8*, i8** %17, align 8
  %243 = getelementptr inbounds i8, i8* %242, i64 1
  store i8 %241, i8* %243, align 1
  %244 = load i8*, i8** %23, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %245, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %244, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = load i8*, i8** %17, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 2
  store i8 %250, i8* %252, align 1
  %253 = load i8*, i8** %17, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 3
  store i8* %254, i8** %17, align 8
  br label %255

255:                                              ; preds = %91
  %256 = load i32, i32* %22, align 4
  %257 = add i32 %256, -1
  store i32 %257, i32* %22, align 4
  br label %88, !llvm.loop !4

258:                                              ; preds = %88
  %259 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %260 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %259, i32 0, i32 26
  %261 = load i32, i32* %260, align 8
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %354

264:                                              ; preds = %258
  %265 = load i8*, i8** %20, align 8
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  store i32 %267, i32* %14, align 4
  %268 = load i8*, i8** %21, align 8
  %269 = load i8, i8* %268, align 1
  %270 = zext i8 %269 to i32
  store i32 %270, i32* %15, align 4
  %271 = load i32*, i32** %24, align 8
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  store i32 %275, i32* %11, align 4
  %276 = load i64*, i64** %27, align 8
  %277 = load i32, i32* %14, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = load i64*, i64** %26, align 8
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %280, %285
  %287 = ashr i64 %286, 16
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %12, align 4
  %289 = load i32*, i32** %25, align 8
  %290 = load i32, i32* %14, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  store i32 %293, i32* %13, align 4
  %294 = load i8*, i8** %18, align 8
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  store i32 %296, i32* %10, align 4
  %297 = load i8*, i8** %23, align 8
  %298 = load i32, i32* %10, align 4
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i8, i8* %297, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = load i8*, i8** %16, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 0
  store i8 %303, i8* %305, align 1
  %306 = load i8*, i8** %23, align 8
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %307, %308
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %306, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = load i8*, i8** %16, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 1
  store i8 %312, i8* %314, align 1
  %315 = load i8*, i8** %23, align 8
  %316 = load i32, i32* %10, align 4
  %317 = load i32, i32* %13, align 4
  %318 = add nsw i32 %316, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %315, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = load i8*, i8** %16, align 8
  %323 = getelementptr inbounds i8, i8* %322, i64 2
  store i8 %321, i8* %323, align 1
  %324 = load i8*, i8** %19, align 8
  %325 = load i8, i8* %324, align 1
  %326 = zext i8 %325 to i32
  store i32 %326, i32* %10, align 4
  %327 = load i8*, i8** %23, align 8
  %328 = load i32, i32* %10, align 4
  %329 = load i32, i32* %11, align 4
  %330 = add nsw i32 %328, %329
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i8, i8* %327, i64 %331
  %333 = load i8, i8* %332, align 1
  %334 = load i8*, i8** %17, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 0
  store i8 %333, i8* %335, align 1
  %336 = load i8*, i8** %23, align 8
  %337 = load i32, i32* %10, align 4
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %337, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %336, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = load i8*, i8** %17, align 8
  %344 = getelementptr inbounds i8, i8* %343, i64 1
  store i8 %342, i8* %344, align 1
  %345 = load i8*, i8** %23, align 8
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %13, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i8, i8* %345, i64 %349
  %351 = load i8, i8* %350, align 1
  %352 = load i8*, i8** %17, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 2
  store i8 %351, i8* %353, align 1
  br label %354

354:                                              ; preds = %264, %258
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_1v_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* noundef %2, i32 noundef %3, i8** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_decompress_struct*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_upsampler*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %8, align 8
  store i8*** %1, i8**** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %16, i32 0, i32 81
  %18 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %17, align 8
  %19 = bitcast %struct.jpeg_upsampler* %18 to %struct.my_upsampler*
  store %struct.my_upsampler* %19, %struct.my_upsampler** %15, align 8
  %20 = load %struct.my_upsampler*, %struct.my_upsampler** %15, align 8
  %21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %20, i32 0, i32 1
  %22 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %21, align 8
  %23 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %8, align 8
  %24 = load i8***, i8**** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i8**, i8*** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  call void %22(%struct.jpeg_decompress_struct* noundef %23, i8*** noundef %24, i32 noundef %26, i8** noundef %31)
  %32 = load i32*, i32** %13, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @h2v1_merged_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %2, i8** noundef %3) #0 {
  %5 = alloca %struct.jpeg_decompress_struct*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca %struct.my_upsampler*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i64*, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %26, i32 0, i32 81
  %28 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %27, align 8
  %29 = bitcast %struct.jpeg_upsampler* %28 to %struct.my_upsampler*
  store %struct.my_upsampler* %29, %struct.my_upsampler** %9, align 8
  %30 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %31 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %30, i32 0, i32 61
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %21, align 8
  %33 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %34 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %22, align 8
  %36 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %37 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %23, align 8
  %39 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %40 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %39, i32 0, i32 4
  %41 = load i64*, i64** %40, align 8
  store i64* %41, i64** %24, align 8
  %42 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %43 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %42, i32 0, i32 5
  %44 = load i64*, i64** %43, align 8
  store i64* %44, i64** %25, align 8
  %45 = load i8***, i8**** %6, align 8
  %46 = getelementptr inbounds i8**, i8*** %45, i64 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %17, align 8
  %52 = load i8***, i8**** %6, align 8
  %53 = getelementptr inbounds i8**, i8*** %52, i64 1
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %18, align 8
  %59 = load i8***, i8**** %6, align 8
  %60 = getelementptr inbounds i8**, i8*** %59, i64 2
  %61 = load i8**, i8*** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %19, align 8
  %66 = load i8**, i8*** %8, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %16, align 8
  %69 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %69, i32 0, i32 26
  %71 = load i32, i32* %70, align 8
  %72 = lshr i32 %71, 1
  store i32 %72, i32* %20, align 4
  br label %73

73:                                               ; preds = %174, %4
  %74 = load i32, i32* %20, align 4
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %177

76:                                               ; preds = %73
  %77 = load i8*, i8** %18, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %18, align 8
  %79 = load i8, i8* %77, align 1
  %80 = zext i8 %79 to i32
  store i32 %80, i32* %14, align 4
  %81 = load i8*, i8** %19, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %19, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load i32*, i32** %22, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i64*, i64** %25, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** %24, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %94, %99
  %101 = ashr i64 %100, 16
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32*, i32** %23, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %13, align 4
  %108 = load i8*, i8** %17, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %17, align 8
  %110 = load i8, i8* %108, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %10, align 4
  %112 = load i8*, i8** %21, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %16, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 %118, i8* %120, align 1
  %121 = load i8*, i8** %21, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  store i8 %127, i8* %129, align 1
  %130 = load i8*, i8** %21, align 8
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %16, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  store i8 %136, i8* %138, align 1
  %139 = load i8*, i8** %16, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 3
  store i8* %140, i8** %16, align 8
  %141 = load i8*, i8** %17, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %17, align 8
  %143 = load i8, i8* %141, align 1
  %144 = zext i8 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i8*, i8** %21, align 8
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %145, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %16, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 0
  store i8 %151, i8* %153, align 1
  %154 = load i8*, i8** %21, align 8
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %154, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = load i8*, i8** %16, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 1
  store i8 %160, i8* %162, align 1
  %163 = load i8*, i8** %21, align 8
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %163, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load i8*, i8** %16, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  store i8 %169, i8* %171, align 1
  %172 = load i8*, i8** %16, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  store i8* %173, i8** %16, align 8
  br label %174

174:                                              ; preds = %76
  %175 = load i32, i32* %20, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %20, align 4
  br label %73, !llvm.loop !6

177:                                              ; preds = %73
  %178 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %5, align 8
  %179 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %178, i32 0, i32 26
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %243

183:                                              ; preds = %177
  %184 = load i8*, i8** %18, align 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  store i32 %186, i32* %14, align 4
  %187 = load i8*, i8** %19, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  store i32 %189, i32* %15, align 4
  %190 = load i32*, i32** %22, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  store i32 %194, i32* %11, align 4
  %195 = load i64*, i64** %25, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64*, i64** %24, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %199, %204
  %206 = ashr i64 %205, 16
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %12, align 4
  %208 = load i32*, i32** %23, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %13, align 4
  %213 = load i8*, i8** %17, align 8
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  store i32 %215, i32* %10, align 4
  %216 = load i8*, i8** %21, align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %216, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = load i8*, i8** %16, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  store i8 %222, i8* %224, align 1
  %225 = load i8*, i8** %21, align 8
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %225, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = load i8*, i8** %16, align 8
  %233 = getelementptr inbounds i8, i8* %232, i64 1
  store i8 %231, i8* %233, align 1
  %234 = load i8*, i8** %21, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %234, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = load i8*, i8** %16, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 2
  store i8 %240, i8* %242, align 1
  br label %243

243:                                              ; preds = %183, %177
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_decompress_struct*, align 8
  %3 = alloca %struct.my_upsampler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.jpeg_decompress_struct* %0, %struct.jpeg_decompress_struct** %2, align 8
  %6 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %6, i32 0, i32 81
  %8 = load %struct.jpeg_upsampler*, %struct.jpeg_upsampler** %7, align 8
  %9 = bitcast %struct.jpeg_upsampler* %8 to %struct.my_upsampler*
  store %struct.my_upsampler* %9, %struct.my_upsampler** %3, align 8
  %10 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %10, i32 0, i32 1
  %12 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %12, i32 0, i32 0
  %14 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %13, align 8
  %15 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %16 = bitcast %struct.jpeg_decompress_struct* %15 to %struct.jpeg_common_struct*
  %17 = call i8* %14(%struct.jpeg_common_struct* noundef %16, i32 noundef 1, i64 noundef 1024)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %20 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %19, i32 0, i32 2
  store i32* %18, i32** %20, align 8
  %21 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %21, i32 0, i32 1
  %23 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %23, i32 0, i32 0
  %25 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %24, align 8
  %26 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %27 = bitcast %struct.jpeg_decompress_struct* %26 to %struct.jpeg_common_struct*
  %28 = call i8* %25(%struct.jpeg_common_struct* noundef %27, i32 noundef 1, i64 noundef 1024)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %31 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %32, i32 0, i32 1
  %34 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %34, i32 0, i32 0
  %36 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %35, align 8
  %37 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %38 = bitcast %struct.jpeg_decompress_struct* %37 to %struct.jpeg_common_struct*
  %39 = call i8* %36(%struct.jpeg_common_struct* noundef %38, i32 noundef 1, i64 noundef 2048)
  %40 = bitcast i8* %39 to i64*
  %41 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %42 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %41, i32 0, i32 4
  store i64* %40, i64** %42, align 8
  %43 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %43, i32 0, i32 1
  %45 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %45, i32 0, i32 0
  %47 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %46, align 8
  %48 = load %struct.jpeg_decompress_struct*, %struct.jpeg_decompress_struct** %2, align 8
  %49 = bitcast %struct.jpeg_decompress_struct* %48 to %struct.jpeg_common_struct*
  %50 = call i8* %47(%struct.jpeg_common_struct* noundef %49, i32 noundef 1, i64 noundef 2048)
  %51 = bitcast i8* %50 to i64*
  %52 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %53 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %52, i32 0, i32 5
  store i64* %51, i64** %53, align 8
  store i32 0, i32* %4, align 4
  store i64 -128, i64* %5, align 8
  br label %54

54:                                               ; preds = %97, %1
  %55 = load i32, i32* %4, align 4
  %56 = icmp sle i32 %55, 255
  br i1 %56, label %57, label %102

57:                                               ; preds = %54
  %58 = load i64, i64* %5, align 8
  %59 = mul nsw i64 91881, %58
  %60 = add nsw i64 %59, 32768
  %61 = ashr i64 %60, 16
  %62 = trunc i64 %61 to i32
  %63 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %64 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i64, i64* %5, align 8
  %70 = mul nsw i64 116130, %69
  %71 = add nsw i64 %70, 32768
  %72 = ashr i64 %71, 16
  %73 = trunc i64 %72 to i32
  %74 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %75 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  %80 = load i64, i64* %5, align 8
  %81 = mul nsw i64 -46802, %80
  %82 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %83 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %82, i32 0, i32 4
  %84 = load i64*, i64** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %81, i64* %87, align 8
  %88 = load i64, i64* %5, align 8
  %89 = mul nsw i64 -22554, %88
  %90 = add nsw i64 %89, 32768
  %91 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %92 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  br label %97

97:                                               ; preds = %57
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  %100 = load i64, i64* %5, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %54, !llvm.loop !7

102:                                              ; preds = %54
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
