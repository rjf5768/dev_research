; ModuleID = './jcparam.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcparam.c"
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

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32* nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 15, i64 %6
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %.not = icmp eq i32 %9, 100
  br i1 %.not, label %24, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 18, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i64 0, i32 6, i32 0, i64 0
  store i32 %15, i32* %18, align 4
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i64 0, i32 0
  %22 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %21, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %22(%struct.jpeg_common_struct* noundef %23) #6
  br label %24

24:                                               ; preds = %10, %5
  %25 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %7, align 8
  %26 = icmp eq %struct.JQUANT_TBL* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %29 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %28) #6
  store %struct.JQUANT_TBL* %29, %struct.JQUANT_TBL** %7, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %56, %30
  %.01 = phi i32 [ 0, %30 ], [ %57, %56 ]
  %32 = icmp ult i32 %.01, 64
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds i32, i32* %2, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = sext i32 %3 to i64
  %39 = mul nsw i64 %37, %38
  %40 = add nsw i64 %39, 50
  %41 = sdiv i64 %40, 100
  %42 = icmp slt i64 %39, 50
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %33
  %.0 = phi i64 [ 1, %43 ], [ %41, %33 ]
  %45 = icmp sgt i64 %.0, 32767
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %44
  %.1 = phi i64 [ 32767, %46 ], [ %.0, %44 ]
  %.not2 = icmp eq i32 %4, 0
  br i1 %.not2, label %51, label %48

48:                                               ; preds = %47
  %49 = icmp sgt i64 %.1, 255
  br i1 %49, label %50, label %51

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %48, %47
  %.2 = phi i64 [ 255, %50 ], [ %.1, %48 ], [ %.1, %47 ]
  %52 = trunc i64 %.2 to i16
  %53 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %7, align 8
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %53, i64 0, i32 0, i64 %54
  store i16 %52, i16* %55, align 2
  br label %56

56:                                               ; preds = %51
  %57 = add nuw nsw i32 %.01, 1
  br label %31, !llvm.loop !4

58:                                               ; preds = %31
  %59 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %7, align 8
  %60 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %59, i64 0, i32 1
  store i32 0, i32* %60, align 4
  ret void
}

declare dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0, i32* noundef getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_luminance_quant_tbl, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1, i32* noundef getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_chrominance_quant_tbl, i64 0, i64 0), i32 noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @jpeg_quality_scaling(i32 noundef %0) #2 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %3, %1
  %.0 = phi i32 [ 1, %3 ], [ %0, %1 ]
  %5 = icmp sgt i32 %.0, 100
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %7

7:                                                ; preds = %6, %4
  %.1 = phi i32 [ 100, %6 ], [ %.0, %4 ]
  %8 = icmp slt i32 %.1, 50
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = sdiv i32 5000, %.1
  br label %13

11:                                               ; preds = %7
  %.neg = mul i32 %.1, -2
  %12 = add i32 %.neg, 200
  br label %13

13:                                               ; preds = %11, %9
  %.2 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %.2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @jpeg_quality_scaling(i32 noundef %1)
  call void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %4, i32 noundef %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %.not = icmp eq i32 %3, 100
  br i1 %.not, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %6 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %6, i64 0, i32 5
  store i32 18, i32* %7, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 6, i32 0, i64 0
  store i32 %9, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i64 0, i32 0
  %16 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %15, align 8
  %17 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %16(%struct.jpeg_common_struct* noundef %17) #6
  br label %18

18:                                               ; preds = %4, %1
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %20 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  %21 = icmp eq %struct.jpeg_component_info* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %24 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %24, i64 0, i32 0
  %26 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %25, align 8
  %27 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %28 = call i8* %26(%struct.jpeg_common_struct* noundef %27, i32 noundef 0, i64 noundef 960) #6
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %30 = bitcast %struct.jpeg_component_info** %29 to i8**
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %22, %18
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  store i32 8, i32* %32, align 8
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef 75, i32 noundef 1)
  call void @std_huff_tables(%struct.jpeg_compress_struct* noundef %0)
  br label %33

33:                                               ; preds = %42, %31
  %.0 = phi i32 [ 0, %31 ], [ %43, %42 ]
  %34 = icmp ult i32 %.0, 16
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = zext i32 %.0 to i64
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 18, i64 %36
  store i8 0, i8* %37, align 1
  %38 = zext i32 %.0 to i64
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 19, i64 %38
  store i8 1, i8* %39, align 1
  %40 = zext i32 %.0 to i64
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 20, i64 %40
  store i8 5, i8* %41, align 1
  br label %42

42:                                               ; preds = %35
  %43 = add nuw nsw i32 %.0, 1
  br label %33, !llvm.loop !6

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 22
  store %struct.jpeg_scan_info* null, %struct.jpeg_scan_info** %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 21
  store i32 0, i32* %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 23
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 24
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 25
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 11
  %51 = load i32, i32* %50, align 8
  %52 = icmp sgt i32 %51, 8
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 25
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %53, %44
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 26
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 27
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 28
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 29
  store i32 0, i32* %59, align 8
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 30
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 32
  store i8 0, i8* %61, align 4
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 33
  store i16 1, i16* %62, align 2
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 34
  store i16 1, i16* %63, align 8
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef %0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @std_huff_tables(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** noundef nonnull %2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_luminance, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_luminance, i64 0, i64 0))
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** noundef nonnull %3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_luminance, i64 0, i64 0), i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_luminance, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 16, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** noundef nonnull %4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_chrominance, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_chrominance, i64 0, i64 0))
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 17, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** noundef nonnull %5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_chrominance, i64 0, i64 0), i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_chrominance, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 9
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 0, label %9
  ]

4:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 1)
  br label %19

5:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 3)
  br label %19

6:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 3)
  br label %19

7:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 4)
  br label %19

8:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 5)
  br label %19

9:                                                ; preds = %1
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef 0)
  br label %19

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %12 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %11, align 8
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %12, i64 0, i32 5
  store i32 7, i32* %13, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 0
  %17 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %16, align 8
  %18 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %17(%struct.jpeg_common_struct* noundef %18) #6
  br label %19

19:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
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
  call void %17(%struct.jpeg_common_struct* noundef %18) #6
  br label %19

19:                                               ; preds = %5, %2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  store i32 %1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 31
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 35
  store i32 0, i32* %22, align 4
  switch i32 %1, label %202 [
    i32 1, label %23
    i32 2, label %34
    i32 3, label %61
    i32 4, label %88
    i32 5, label %123
    i32 0, label %158
  ]

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 31
  store i32 1, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 4
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i64 0, i32 6
  store i32 0, i32* %33, align 8
  br label %211

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 35
  store i32 1, i32* %35, align 4
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 3, i32* %36, align 4
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %38 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 0
  store i32 82, i32* %39, align 8
  %40 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 4
  store i32 0, i32* %42, align 8
  %43 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 5
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %38, i64 0, i32 6
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %46 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 0
  store i32 71, i32* %47, align 8
  %48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 2
  store i32 1, i32* %48, align 8
  %49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 3
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 4
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 5
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %46, i64 1, i32 6
  store i32 0, i32* %52, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %53, align 8
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 0
  store i32 66, i32* %55, align 8
  %56 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 2
  store i32 1, i32* %56, align 8
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 3
  store i32 1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 4
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 5
  store i32 0, i32* %59, align 4
  %60 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i64 2, i32 6
  store i32 0, i32* %60, align 8
  br label %211

61:                                               ; preds = %19
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 31
  store i32 1, i32* %62, align 8
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 3, i32* %63, align 4
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %64, align 8
  %66 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 2
  store i32 2, i32* %67, align 8
  %68 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 3
  store i32 2, i32* %68, align 4
  %69 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 4
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 5
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %65, i64 0, i32 6
  store i32 0, i32* %71, align 8
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %72, align 8
  %74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 0
  store i32 2, i32* %74, align 8
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 2
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 3
  store i32 1, i32* %76, align 4
  %77 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 4
  store i32 1, i32* %77, align 8
  %78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 5
  store i32 1, i32* %78, align 4
  %79 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i64 1, i32 6
  store i32 1, i32* %79, align 8
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 0
  store i32 3, i32* %82, align 8
  %83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 2
  store i32 1, i32* %83, align 8
  %84 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 3
  store i32 1, i32* %84, align 4
  %85 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 4
  store i32 1, i32* %85, align 8
  %86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 5
  store i32 1, i32* %86, align 4
  %87 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i64 2, i32 6
  store i32 1, i32* %87, align 8
  br label %211

88:                                               ; preds = %19
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 35
  store i32 1, i32* %89, align 4
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 4, i32* %90, align 4
  %91 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %92 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %91, align 8
  %93 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 0
  store i32 67, i32* %93, align 8
  %94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 3
  store i32 1, i32* %95, align 4
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 4
  store i32 0, i32* %96, align 8
  %97 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 5
  store i32 0, i32* %97, align 4
  %98 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %92, i64 0, i32 6
  store i32 0, i32* %98, align 8
  %99 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %100 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %99, align 8
  %101 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 0
  store i32 77, i32* %101, align 8
  %102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 2
  store i32 1, i32* %102, align 8
  %103 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 3
  store i32 1, i32* %103, align 4
  %104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 4
  store i32 0, i32* %104, align 8
  %105 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 5
  store i32 0, i32* %105, align 4
  %106 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %100, i64 1, i32 6
  store i32 0, i32* %106, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %108 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %107, align 8
  %109 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 0
  store i32 89, i32* %109, align 8
  %110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 2
  store i32 1, i32* %110, align 8
  %111 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 3
  store i32 1, i32* %111, align 4
  %112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 4
  store i32 0, i32* %112, align 8
  %113 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 5
  store i32 0, i32* %113, align 4
  %114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %108, i64 2, i32 6
  store i32 0, i32* %114, align 8
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %116 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %115, align 8
  %117 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 0
  store i32 75, i32* %117, align 8
  %118 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 2
  store i32 1, i32* %118, align 8
  %119 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 3
  store i32 1, i32* %119, align 4
  %120 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 4
  store i32 0, i32* %120, align 8
  %121 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 5
  store i32 0, i32* %121, align 4
  %122 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %116, i64 3, i32 6
  store i32 0, i32* %122, align 8
  br label %211

123:                                              ; preds = %19
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 35
  store i32 1, i32* %124, align 4
  %125 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 4, i32* %125, align 4
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %127 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %126, align 8
  %128 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 2
  store i32 2, i32* %129, align 8
  %130 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 3
  store i32 2, i32* %130, align 4
  %131 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 4
  store i32 0, i32* %131, align 8
  %132 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 5
  store i32 0, i32* %132, align 4
  %133 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %127, i64 0, i32 6
  store i32 0, i32* %133, align 8
  %134 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %135 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %134, align 8
  %136 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 0
  store i32 2, i32* %136, align 8
  %137 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 2
  store i32 1, i32* %137, align 8
  %138 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 3
  store i32 1, i32* %138, align 4
  %139 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 4
  store i32 1, i32* %139, align 8
  %140 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 5
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %135, i64 1, i32 6
  store i32 1, i32* %141, align 8
  %142 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %143 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %142, align 8
  %144 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 0
  store i32 3, i32* %144, align 8
  %145 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 2
  store i32 1, i32* %145, align 8
  %146 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 3
  store i32 1, i32* %146, align 4
  %147 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 4
  store i32 1, i32* %147, align 8
  %148 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 5
  store i32 1, i32* %148, align 4
  %149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %143, i64 2, i32 6
  store i32 1, i32* %149, align 8
  %150 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %151 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %150, align 8
  %152 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 0
  store i32 4, i32* %152, align 8
  %153 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 2
  store i32 2, i32* %153, align 8
  %154 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 3
  store i32 2, i32* %154, align 4
  %155 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 4
  store i32 0, i32* %155, align 8
  %156 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 5
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %151, i64 3, i32 6
  store i32 0, i32* %157, align 8
  br label %211

158:                                              ; preds = %19
  %159 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  store i32 %160, i32* %161, align 4
  %162 = icmp slt i32 %160, 1
  br i1 %162, label %167, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %165, 10
  br i1 %166, label %167, label %184

167:                                              ; preds = %163, %158
  %168 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %169 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %168, align 8
  %170 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %169, i64 0, i32 5
  store i32 24, i32* %170, align 8
  %171 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %174 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %173, align 8
  %175 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %174, i64 0, i32 6, i32 0, i64 0
  store i32 %172, i32* %175, align 4
  %176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %177 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %176, align 8
  %178 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %177, i64 0, i32 6, i32 0, i64 1
  store i32 10, i32* %178, align 4
  %179 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %180 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %179, align 8
  %181 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %180, i64 0, i32 0
  %182 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %181, align 8
  %183 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %182(%struct.jpeg_common_struct* noundef %183) #6
  br label %184

184:                                              ; preds = %167, %163
  br label %185

185:                                              ; preds = %199, %184
  %.0 = phi i32 [ 0, %184 ], [ %200, %199 ]
  %186 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %.0, %187
  br i1 %188, label %189, label %201

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 14
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %190, align 8
  %192 = zext i32 %.0 to i64
  %193 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 0
  store i32 %.0, i32* %193, align 8
  %194 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 2
  store i32 1, i32* %194, align 8
  %195 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 3
  store i32 1, i32* %195, align 4
  %196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 4
  store i32 0, i32* %196, align 8
  %197 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 5
  store i32 0, i32* %197, align 4
  %198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 %192, i32 6
  store i32 0, i32* %198, align 8
  br label %199

199:                                              ; preds = %189
  %200 = add nuw nsw i32 %.0, 1
  br label %185, !llvm.loop !7

201:                                              ; preds = %185
  br label %211

202:                                              ; preds = %19
  %203 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %204 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %203, align 8
  %205 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %204, i64 0, i32 5
  store i32 8, i32* %205, align 8
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %207 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %206, align 8
  %208 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %207, i64 0, i32 0
  %209 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %208, align 8
  %210 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %209(%struct.jpeg_common_struct* noundef %210) #6
  br label %211

211:                                              ; preds = %202, %201, %123, %88, %61, %34, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 12
  %3 = load i32, i32* %2, align 4
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %.not = icmp eq i32 %5, 100
  br i1 %.not, label %20, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %8 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %7, align 8
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %8, i64 0, i32 5
  store i32 18, i32* %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 6, i32 0, i64 0
  store i32 %11, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #6
  br label %20

20:                                               ; preds = %6, %1
  %21 = icmp eq i32 %3, 3
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %35

27:                                               ; preds = %22, %20
  %28 = icmp sgt i32 %3, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = mul nsw i32 %3, 6
  br label %34

31:                                               ; preds = %27
  %32 = shl nsw i32 %3, 2
  %33 = or i32 %32, 2
  br label %34

34:                                               ; preds = %31, %29
  %.0 = phi i32 [ %30, %29 ], [ %33, %31 ]
  br label %35

35:                                               ; preds = %34, %26
  %.1 = phi i32 [ 10, %26 ], [ %.0, %34 ]
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 1
  %37 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %37, i64 0, i32 0
  %39 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %38, align 8
  %40 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %41 = sext i32 %.1 to i64
  %42 = mul nsw i64 %41, 36
  %43 = call i8* %39(%struct.jpeg_common_struct* noundef %40, i32 noundef 0, i64 noundef %42) #6
  %44 = bitcast i8* %43 to %struct.jpeg_scan_info*
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 22
  %46 = bitcast %struct.jpeg_scan_info** %45 to i8**
  store i8* %43, i8** %46, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 21
  store i32 %.1, i32* %47, align 8
  %48 = icmp eq i32 %3, 3
  br i1 %48, label %49, label %64

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %0, i64 0, i32 13
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %44, i32 noundef %3, i32 noundef 0, i32 noundef 1)
  %55 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %54, i32 noundef 0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  %56 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %55, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  %57 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %56, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  %58 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %57, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  %59 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %58, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  %60 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef nonnull %59, i32 noundef %3, i32 noundef 1, i32 noundef 0)
  %61 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %60, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  %62 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %61, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  %63 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef nonnull %62, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  br label %71

64:                                               ; preds = %49, %35
  %65 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %44, i32 noundef %3, i32 noundef 0, i32 noundef 1)
  %66 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %65, i32 noundef %3, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  %67 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %66, i32 noundef %3, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  %68 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %67, i32 noundef %3, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  %69 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %68, i32 noundef %3, i32 noundef 1, i32 noundef 0)
  %70 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %69, i32 noundef %3, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  br label %71

71:                                               ; preds = %64, %53
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = icmp slt i32 %1, 5
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 0
  store i32 %1, i32* %7, align 4
  br label %8

8:                                                ; preds = %13, %6
  %.01 = phi i32 [ 0, %6 ], [ %14, %13 ]
  %9 = icmp slt i32 %.01, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = zext i32 %.01 to i64
  %12 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 1, i64 %11
  store i32 %.01, i32* %12, align 4
  br label %13

13:                                               ; preds = %10
  %14 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !8

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 3
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 2
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 4
  store i32 %2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 5
  store i32 %3, i32* %19, align 4
  %20 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 1
  br label %23

21:                                               ; preds = %4
  %22 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef %2, i32 noundef %3)
  br label %23

23:                                               ; preds = %21, %15
  %.0 = phi %struct.jpeg_scan_info* [ %20, %15 ], [ %22, %21 ]
  ret %struct.jpeg_scan_info* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal nonnull %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
  %7 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 1, i64 0
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 2
  store i32 %2, i32* %9, align 4
  %10 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 3
  store i32 %3, i32* %10, align 4
  %11 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 4
  store i32 %4, i32* %11, align 4
  %12 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 0, i32 5
  store i32 %5, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %0, i64 1
  ret %struct.jpeg_scan_info* %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #3 {
  br label %7

7:                                                ; preds = %16, %6
  %.01 = phi i32 [ 0, %6 ], [ %18, %16 ]
  %.0 = phi %struct.jpeg_scan_info* [ %0, %6 ], [ %17, %16 ]
  %8 = icmp slt i32 %.01, %1
  br i1 %8, label %9, label %19

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 1, i64 0
  store i32 %.01, i32* %11, align 4
  %12 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 2
  store i32 %2, i32* %12, align 4
  %13 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 3
  store i32 %3, i32* %13, align 4
  %14 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 4
  store i32 %4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 0, i32 5
  store i32 %5, i32* %15, align 4
  br label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %.0, i64 1
  %18 = add nuw nsw i32 %.01, 1
  br label %7, !llvm.loop !9

19:                                               ; preds = %7
  ret %struct.jpeg_scan_info* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** nocapture noundef %1, i8* nocapture noundef readonly %2, i8* nocapture noundef readonly %3) #0 {
  %5 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %1, align 8
  %6 = icmp eq %struct.JHUFF_TBL* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = bitcast %struct.jpeg_compress_struct* %0 to %struct.jpeg_common_struct*
  %9 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef %8) #6
  store %struct.JHUFF_TBL* %9, %struct.JHUFF_TBL** %1, align 8
  br label %10

10:                                               ; preds = %7, %4
  %11 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %1, align 8
  %12 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %11, i64 0, i32 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(17) %12, i8* noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  %13 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %1, align 8
  %14 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %13, i64 0, i32 1, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(256) %14, i8* noundef nonnull align 1 dereferenceable(256) %3, i64 256, i1 false)
  %15 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %1, align 8
  %16 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %15, i64 0, i32 2
  store i32 0, i32* %16, align 4
  ret void
}

declare dso_local %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }

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
