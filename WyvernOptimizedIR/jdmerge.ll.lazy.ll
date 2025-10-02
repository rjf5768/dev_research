; ModuleID = './jdmerge.ll'
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
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %3 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %3, i64 0, i32 0
  %5 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %4, align 8
  %6 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %7 = call i8* %5(%struct.jpeg_common_struct* noundef %6, i32 noundef 1, i64 noundef 88) #4
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %9 = bitcast %struct.jpeg_upsampler** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = bitcast i8* %7 to void (%struct.jpeg_decompress_struct*)**
  store void (%struct.jpeg_decompress_struct*)* @start_pass_merged_upsample, void (%struct.jpeg_decompress_struct*)** %10, align 8
  %11 = getelementptr inbounds i8, i8* %7, i64 16
  %12 = bitcast i8* %11 to i32*
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 28
  %16 = load i32, i32* %15, align 8
  %17 = mul i32 %14, %16
  %18 = getelementptr inbounds i8, i8* %7, i64 76
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 58
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = getelementptr inbounds i8, i8* %7, i64 8
  %25 = bitcast i8* %24 to void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_2v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %25, align 8
  %26 = getelementptr inbounds i8, i8* %7, i64 24
  %27 = bitcast i8* %26 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v2_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %27, align 8
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %29 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %29, i64 0, i32 1
  %31 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %30, align 8
  %32 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %33 = getelementptr inbounds i8, i8* %7, i64 76
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* %31(%struct.jpeg_common_struct* noundef %32, i32 noundef 1, i64 noundef %36) #4
  %38 = getelementptr inbounds i8, i8* %7, i64 64
  %39 = bitcast i8* %38 to i8**
  store i8* %37, i8** %39, align 8
  br label %47

40:                                               ; preds = %1
  %41 = getelementptr inbounds i8, i8* %7, i64 8
  %42 = bitcast i8* %41 to void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)* @merged_1v_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32*, i32, i8**, i32*, i32)** %42, align 8
  %43 = getelementptr inbounds i8, i8* %7, i64 24
  %44 = bitcast i8* %43 to void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)**
  store void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)* @h2v1_merged_upsample, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %44, align 8
  %45 = getelementptr inbounds i8, i8* %7, i64 64
  %46 = bitcast i8* %45 to i8**
  store i8* null, i8** %46, align 8
  br label %47

47:                                               ; preds = %40, %23
  call void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define internal void @start_pass_merged_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %3 = bitcast %struct.jpeg_upsampler** %2 to %struct.my_upsampler**
  %4 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %5 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 7
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 9
  store i32 %7, i32* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_2v_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* nocapture noundef %2, i32 noundef %3, i8** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca [2 x i8*], align 16
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %10 = bitcast %struct.jpeg_upsampler** %9 to %struct.my_upsampler**
  %11 = load %struct.my_upsampler*, %struct.my_upsampler** %10, align 8
  %12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 7
  %13 = load i32, i32* %12, align 8
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 6
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %4, i64 %17
  %19 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 8
  %20 = load i32, i32* %19, align 4
  call void @jcopy_sample_rows(i8** noundef nonnull %15, i32 noundef 0, i8** noundef %18, i32 noundef 0, i32 noundef 1, i32 noundef %20) #4
  %21 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 7
  store i32 0, i32* %21, align 8
  br label %58

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = icmp ult i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 9
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %26, %22
  %.0 = phi i32 [ %28, %26 ], [ 2, %22 ]
  %30 = load i32, i32* %5, align 4
  %31 = sub i32 %6, %30
  %32 = icmp ugt i32 %.0, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %29
  %.1 = phi i32 [ %31, %33 ], [ %.0, %29 ]
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %4, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %38, i8** %39, align 16
  %40 = icmp ugt i32 %.1, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %4, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  store i8* %46, i8** %47, align 8
  br label %53

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 1
  store i8* %50, i8** %51, align 8
  %52 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 7
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 1
  %55 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %54, align 8
  %56 = load i32, i32* %2, align 4
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  call void %55(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %56, i8** noundef nonnull %57) #4
  br label %58

58:                                               ; preds = %53, %14
  %.2 = phi i32 [ 1, %14 ], [ %.1, %53 ]
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, %.2
  store i32 %60, i32* %5, align 4
  %61 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = sub i32 %62, %.2
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %11, i64 0, i32 7
  %65 = load i32, i32* %64, align 8
  %.not1 = icmp eq i32 %65, 0
  br i1 %.not1, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %2, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %66, %58
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v2_merged_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %6 = bitcast %struct.jpeg_upsampler** %5 to %struct.my_upsampler**
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 4
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 5
  %17 = load i64*, i64** %16, align 8
  %18 = load i8**, i8*** %1, align 8
  %19 = shl i32 %2, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = shl i32 %2, 1
  %24 = or i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %18, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8**, i8*** %1, i64 1
  %29 = load i8**, i8*** %28, align 8
  %30 = zext i32 %2 to i64
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8**, i8*** %1, i64 2
  %34 = load i8**, i8*** %33, align 8
  %35 = zext i32 %2 to i64
  %36 = getelementptr inbounds i8*, i8** %34, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8*, i8** %3, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %42 = load i32, i32* %41, align 8
  %43 = lshr i32 %42, 1
  br label %44

44:                                               ; preds = %131, %4
  %.06 = phi i8* [ %40, %4 ], [ %132, %131 ]
  %.05 = phi i8* [ %38, %4 ], [ %134, %131 ]
  %.04 = phi i8* [ %22, %4 ], [ %135, %131 ]
  %.03 = phi i8* [ %27, %4 ], [ %133, %131 ]
  %.02 = phi i8* [ %32, %4 ], [ %137, %131 ]
  %.01 = phi i8* [ %37, %4 ], [ %136, %131 ]
  %.0 = phi i32 [ %43, %4 ], [ %138, %131 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %139, label %45

45:                                               ; preds = %44
  %46 = load i8, i8* %.02, align 1
  %47 = load i8, i8* %.01, align 1
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, i32* %11, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = zext i8 %46 to i64
  %52 = getelementptr inbounds i64, i64* %17, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = zext i8 %47 to i64
  %55 = getelementptr inbounds i64, i64* %15, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = lshr i64 %57, 16
  %59 = trunc i64 %58 to i32
  %60 = zext i8 %46 to i64
  %61 = getelementptr inbounds i32, i32* %13, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds i8, i8* %.04, i64 1
  %64 = load i8, i8* %.04, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %50, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %9, i64 %67
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %.05, align 1
  %70 = add nsw i32 %65, %59
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %9, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds i8, i8* %.05, i64 1
  store i8 %73, i8* %74, align 1
  %75 = add nsw i32 %62, %65
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %9, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = getelementptr inbounds i8, i8* %.05, i64 2
  store i8 %78, i8* %79, align 1
  %80 = getelementptr inbounds i8, i8* %.05, i64 3
  %81 = load i8, i8* %63, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %50, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %9, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %80, align 1
  %87 = add nsw i32 %82, %59
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %9, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = getelementptr inbounds i8, i8* %.05, i64 4
  store i8 %90, i8* %91, align 1
  %92 = add nsw i32 %62, %82
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %9, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = getelementptr inbounds i8, i8* %.05, i64 5
  store i8 %95, i8* %96, align 1
  %97 = getelementptr inbounds i8, i8* %.03, i64 1
  %98 = load i8, i8* %.03, align 1
  %99 = zext i8 %98 to i32
  %100 = add nsw i32 %50, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %9, i64 %101
  %103 = load i8, i8* %102, align 1
  store i8 %103, i8* %.06, align 1
  %104 = add nsw i32 %99, %59
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %9, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = getelementptr inbounds i8, i8* %.06, i64 1
  store i8 %107, i8* %108, align 1
  %109 = add nsw i32 %62, %99
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %9, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = getelementptr inbounds i8, i8* %.06, i64 2
  store i8 %112, i8* %113, align 1
  %114 = getelementptr inbounds i8, i8* %.06, i64 3
  %115 = load i8, i8* %97, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %50, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %9, i64 %118
  %120 = load i8, i8* %119, align 1
  store i8 %120, i8* %114, align 1
  %121 = add nsw i32 %116, %59
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %9, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = getelementptr inbounds i8, i8* %.06, i64 4
  store i8 %124, i8* %125, align 1
  %126 = add nsw i32 %62, %116
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %9, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = getelementptr inbounds i8, i8* %.06, i64 5
  store i8 %129, i8* %130, align 1
  br label %131

131:                                              ; preds = %45
  %132 = getelementptr inbounds i8, i8* %.06, i64 6
  %133 = getelementptr inbounds i8, i8* %.03, i64 2
  %134 = getelementptr inbounds i8, i8* %.05, i64 6
  %135 = getelementptr inbounds i8, i8* %.04, i64 2
  %136 = getelementptr inbounds i8, i8* %.01, i64 1
  %137 = getelementptr inbounds i8, i8* %.02, i64 1
  %138 = add i32 %.0, -1
  br label %44, !llvm.loop !4

139:                                              ; preds = %44
  %140 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 1
  %.not7 = icmp eq i32 %142, 0
  br i1 %.not7, label %193, label %143

143:                                              ; preds = %139
  %144 = load i8, i8* %.02, align 1
  %145 = load i8, i8* %.01, align 1
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds i32, i32* %11, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = zext i8 %144 to i64
  %150 = getelementptr inbounds i64, i64* %17, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = zext i8 %145 to i64
  %153 = getelementptr inbounds i64, i64* %15, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %151, %154
  %156 = lshr i64 %155, 16
  %157 = trunc i64 %156 to i32
  %158 = zext i8 %144 to i64
  %159 = getelementptr inbounds i32, i32* %13, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i8, i8* %.04, align 1
  %162 = zext i8 %161 to i32
  %163 = add nsw i32 %148, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %9, i64 %164
  %166 = load i8, i8* %165, align 1
  store i8 %166, i8* %.05, align 1
  %167 = add nsw i32 %162, %157
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %9, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = getelementptr inbounds i8, i8* %.05, i64 1
  store i8 %170, i8* %171, align 1
  %172 = add nsw i32 %160, %162
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %9, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = getelementptr inbounds i8, i8* %.05, i64 2
  store i8 %175, i8* %176, align 1
  %177 = load i8, i8* %.03, align 1
  %178 = zext i8 %177 to i32
  %179 = add nsw i32 %148, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %9, i64 %180
  %182 = load i8, i8* %181, align 1
  store i8 %182, i8* %.06, align 1
  %183 = add nsw i32 %178, %157
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %9, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = getelementptr inbounds i8, i8* %.06, i64 1
  store i8 %186, i8* %187, align 1
  %188 = add nsw i32 %160, %178
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %9, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = getelementptr inbounds i8, i8* %.06, i64 2
  store i8 %191, i8* %192, align 1
  br label %193

193:                                              ; preds = %143, %139
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @merged_1v_upsample(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32* nocapture noundef %2, i32 noundef %3, i8** noundef %4, i32* nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %9 = bitcast %struct.jpeg_upsampler** %8 to %struct.my_upsampler**
  %10 = load %struct.my_upsampler*, %struct.my_upsampler** %9, align 8
  %11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %10, i64 0, i32 1
  %12 = load void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)*, void (%struct.jpeg_decompress_struct*, i8***, i32, i8**)** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %4, i64 %15
  call void %12(%struct.jpeg_decompress_struct* noundef %0, i8*** noundef %1, i32 noundef %13, i8** noundef %16) #4
  %17 = load i32, i32* %5, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %2, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @h2v1_merged_upsample(%struct.jpeg_decompress_struct* nocapture noundef readonly %0, i8*** nocapture noundef readonly %1, i32 noundef %2, i8** nocapture noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %6 = bitcast %struct.jpeg_upsampler** %5 to %struct.my_upsampler**
  %7 = load %struct.my_upsampler*, %struct.my_upsampler** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 61
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 4
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %7, i64 0, i32 5
  %17 = load i64*, i64** %16, align 8
  %18 = load i8**, i8*** %1, align 8
  %19 = zext i32 %2 to i64
  %20 = getelementptr inbounds i8*, i8** %18, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8**, i8*** %1, i64 1
  %23 = load i8**, i8*** %22, align 8
  %24 = zext i32 %2 to i64
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8**, i8*** %1, i64 2
  %28 = load i8**, i8*** %27, align 8
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %34 = load i32, i32* %33, align 8
  %35 = lshr i32 %34, 1
  br label %36

36:                                               ; preds = %89, %4
  %.04 = phi i8* [ %32, %4 ], [ %90, %89 ]
  %.03 = phi i8* [ %21, %4 ], [ %91, %89 ]
  %.02 = phi i8* [ %26, %4 ], [ %93, %89 ]
  %.01 = phi i8* [ %31, %4 ], [ %92, %89 ]
  %.0 = phi i32 [ %35, %4 ], [ %94, %89 ]
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %95, label %37

37:                                               ; preds = %36
  %38 = load i8, i8* %.02, align 1
  %39 = load i8, i8* %.01, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = zext i8 %38 to i64
  %44 = getelementptr inbounds i64, i64* %17, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = zext i8 %39 to i64
  %47 = getelementptr inbounds i64, i64* %15, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = lshr i64 %49, 16
  %51 = trunc i64 %50 to i32
  %52 = zext i8 %38 to i64
  %53 = getelementptr inbounds i32, i32* %13, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds i8, i8* %.03, i64 1
  %56 = load i8, i8* %.03, align 1
  %57 = zext i8 %56 to i32
  %58 = add nsw i32 %42, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %9, i64 %59
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %.04, align 1
  %62 = add nsw i32 %57, %51
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %9, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = getelementptr inbounds i8, i8* %.04, i64 1
  store i8 %65, i8* %66, align 1
  %67 = add nsw i32 %54, %57
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %9, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = getelementptr inbounds i8, i8* %.04, i64 2
  store i8 %70, i8* %71, align 1
  %72 = getelementptr inbounds i8, i8* %.04, i64 3
  %73 = load i8, i8* %55, align 1
  %74 = zext i8 %73 to i32
  %75 = add nsw i32 %42, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %9, i64 %76
  %78 = load i8, i8* %77, align 1
  store i8 %78, i8* %72, align 1
  %79 = add nsw i32 %74, %51
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %9, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = getelementptr inbounds i8, i8* %.04, i64 4
  store i8 %82, i8* %83, align 1
  %84 = add nsw i32 %54, %74
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %9, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = getelementptr inbounds i8, i8* %.04, i64 5
  store i8 %87, i8* %88, align 1
  br label %89

89:                                               ; preds = %37
  %90 = getelementptr inbounds i8, i8* %.04, i64 6
  %91 = getelementptr inbounds i8, i8* %.03, i64 2
  %92 = getelementptr inbounds i8, i8* %.01, i64 1
  %93 = getelementptr inbounds i8, i8* %.02, i64 1
  %94 = add i32 %.0, -1
  br label %36, !llvm.loop !6

95:                                               ; preds = %36
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 26
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 1
  %.not5 = icmp eq i32 %98, 0
  br i1 %.not5, label %133, label %99

99:                                               ; preds = %95
  %100 = load i8, i8* %.02, align 1
  %101 = load i8, i8* %.01, align 1
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds i32, i32* %11, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = zext i8 %100 to i64
  %106 = getelementptr inbounds i64, i64* %17, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = zext i8 %101 to i64
  %109 = getelementptr inbounds i64, i64* %15, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = lshr i64 %111, 16
  %113 = trunc i64 %112 to i32
  %114 = zext i8 %100 to i64
  %115 = getelementptr inbounds i32, i32* %13, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i8, i8* %.03, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %104, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %9, i64 %120
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %.04, align 1
  %123 = add nsw i32 %118, %113
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %9, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = getelementptr inbounds i8, i8* %.04, i64 1
  store i8 %126, i8* %127, align 1
  %128 = add nsw i32 %116, %118
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %9, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = getelementptr inbounds i8, i8* %.04, i64 2
  store i8 %131, i8* %132, align 1
  br label %133

133:                                              ; preds = %99, %95
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_ycc_rgb_table(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 81
  %3 = bitcast %struct.jpeg_upsampler** %2 to %struct.my_upsampler**
  %4 = load %struct.my_upsampler*, %struct.my_upsampler** %3, align 8
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %6 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %6, i64 0, i32 0
  %8 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %7, align 8
  %9 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %10 = call i8* %8(%struct.jpeg_common_struct* noundef %9, i32 noundef 1, i64 noundef 1024) #4
  %11 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 2
  %12 = bitcast i32** %11 to i8**
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %14 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %14, i64 0, i32 0
  %16 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %15, align 8
  %17 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %18 = call i8* %16(%struct.jpeg_common_struct* noundef %17, i32 noundef 1, i64 noundef 1024) #4
  %19 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 3
  %20 = bitcast i32** %19 to i8**
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %22 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %21, align 8
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %22, i64 0, i32 0
  %24 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %23, align 8
  %25 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %26 = call i8* %24(%struct.jpeg_common_struct* noundef %25, i32 noundef 1, i64 noundef 2048) #4
  %27 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 4
  %28 = bitcast i64** %27 to i8**
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  %30 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %30, i64 0, i32 0
  %32 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %31, align 8
  %33 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  %34 = call i8* %32(%struct.jpeg_common_struct* noundef %33, i32 noundef 1, i64 noundef 2048) #4
  %35 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 5
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
  %44 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = zext i32 %.01 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = mul nsw i64 %.0, 116130
  %49 = add nsw i64 %48, 32768
  %50 = lshr i64 %49, 16
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = mul nsw i64 %.0, -46802
  %57 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 4
  %58 = load i64*, i64** %57, align 8
  %59 = zext i32 %.01 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64 %56, i64* %60, align 8
  %61 = mul nsw i64 %.0, -22554
  %62 = add nsw i64 %61, 32768
  %63 = getelementptr inbounds %struct.my_upsampler, %struct.my_upsampler* %4, i64 0, i32 5
  %64 = load i64*, i64** %63, align 8
  %65 = zext i32 %.01 to i64
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %62, i64* %66, align 8
  br label %67

67:                                               ; preds = %39
  %68 = add nuw nsw i32 %.01, 1
  %69 = add nsw i64 %.0, 1
  br label %37, !llvm.loop !7

70:                                               ; preds = %37
  ret void
}

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
