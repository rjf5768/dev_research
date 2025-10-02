; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcparam.c'
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
define dso_local void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32* noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.jpeg_compress_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.JQUANT_TBL**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 15
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %15, i64 0, i64 %17
  store %struct.JQUANT_TBL** %18, %struct.JQUANT_TBL*** %11, align 8
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 100
  br i1 %22, label %23, label %44

23:                                               ; preds = %5
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i32 0, i32 5
  store i32 18, i32* %27, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %31, i32 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i32 0, i32 6
  %35 = bitcast %union.anon* %34 to [8 x i32]*
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %35, i64 0, i64 0
  store i32 %30, i32* %36, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 0
  %41 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %40, align 8
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %43 = bitcast %struct.jpeg_compress_struct* %42 to %struct.jpeg_common_struct*
  call void %41(%struct.jpeg_common_struct* noundef %43)
  br label %44

44:                                               ; preds = %23, %5
  %45 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %11, align 8
  %46 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %45, align 8
  %47 = icmp eq %struct.JQUANT_TBL* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %6, align 8
  %50 = bitcast %struct.jpeg_compress_struct* %49 to %struct.jpeg_common_struct*
  %51 = call %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef %50)
  %52 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %11, align 8
  store %struct.JQUANT_TBL* %51, %struct.JQUANT_TBL** %52, align 8
  br label %53

53:                                               ; preds = %48, %44
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %92, %53
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 64
  br i1 %56, label %57, label %95

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %63, %65
  %67 = add nsw i64 %66, 50
  %68 = sdiv i64 %67, 100
  store i64 %68, i64* %13, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp sle i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %57
  store i64 1, i64* %13, align 8
  br label %72

72:                                               ; preds = %71, %57
  %73 = load i64, i64* %13, align 8
  %74 = icmp sgt i64 %73, 32767
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i64 32767, i64* %13, align 8
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* %13, align 8
  %81 = icmp sgt i64 %80, 255
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i64 255, i64* %13, align 8
  br label %83

83:                                               ; preds = %82, %79, %76
  %84 = load i64, i64* %13, align 8
  %85 = trunc i64 %84 to i16
  %86 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %11, align 8
  %87 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %86, align 8
  %88 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %87, i32 0, i32 0
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [64 x i16], [64 x i16]* %88, i64 0, i64 %90
  store i16 %85, i16* %91, align 2
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %54, !llvm.loop !4

95:                                               ; preds = %54
  %96 = load %struct.JQUANT_TBL**, %struct.JQUANT_TBL*** %11, align 8
  %97 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %96, align 8
  %98 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  ret void
}

declare dso_local %struct.JQUANT_TBL* @jpeg_alloc_quant_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %7, i32 noundef 0, i32* noundef getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_luminance_quant_tbl, i64 0, i64 0), i32 noundef %8, i32 noundef %9)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  call void @jpeg_add_quant_table(%struct.jpeg_compress_struct* noundef %10, i32 noundef 1, i32* noundef getelementptr inbounds ([64 x i32], [64 x i32]* @jpeg_set_linear_quality.std_chrominance_quant_tbl, i64 0, i64 0), i32 noundef %11, i32 noundef %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_quality_scaling(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, i32* %2, align 4
  %8 = icmp sgt i32 %7, 100
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 100, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 50
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 5000, %14
  store i32 %15, i32* %2, align 4
  br label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %17, 2
  %19 = sub nsw i32 200, %18
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @jpeg_quality_scaling(i32 noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  call void @jpeg_set_linear_quality(%struct.jpeg_compress_struct* noundef %9, i32 noundef %10, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_defaults(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 100
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i32 0, i32 5
  store i32 18, i32* %12, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i32 0, i32 6
  %20 = bitcast %union.anon* %19 to [8 x i32]*
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 0
  store i32 %15, i32* %21, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i32 0, i32 0
  %26 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %25, align 8
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %28 = bitcast %struct.jpeg_compress_struct* %27 to %struct.jpeg_common_struct*
  call void %26(%struct.jpeg_common_struct* noundef %28)
  br label %29

29:                                               ; preds = %8, %1
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 14
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %31, align 8
  %33 = icmp eq %struct.jpeg_component_info* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 1
  %37 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %36, align 8
  %38 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %37, i32 0, i32 0
  %39 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %38, align 8
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %41 = bitcast %struct.jpeg_compress_struct* %40 to %struct.jpeg_common_struct*
  %42 = call i8* %39(%struct.jpeg_common_struct* noundef %41, i32 noundef 0, i64 noundef 960)
  %43 = bitcast i8* %42 to %struct.jpeg_component_info*
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 14
  store %struct.jpeg_component_info* %43, %struct.jpeg_component_info** %45, align 8
  br label %46

46:                                               ; preds = %34, %29
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %47, i32 0, i32 11
  store i32 8, i32* %48, align 8
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_quality(%struct.jpeg_compress_struct* noundef %49, i32 noundef 75, i32 noundef 1)
  %50 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @std_huff_tables(%struct.jpeg_compress_struct* noundef %50)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %70, %46
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 18
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %56, i64 0, i64 %58
  store i8 0, i8* %59, align 1
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 19
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %61, i64 0, i64 %63
  store i8 1, i8* %64, align 1
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 20
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %66, i64 0, i64 %68
  store i8 5, i8* %69, align 1
  br label %70

70:                                               ; preds = %54
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %51, !llvm.loop !6

73:                                               ; preds = %51
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %74, i32 0, i32 22
  store %struct.jpeg_scan_info* null, %struct.jpeg_scan_info** %75, align 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 21
  store i32 0, i32* %77, align 8
  %78 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %78, i32 0, i32 23
  store i32 0, i32* %79, align 8
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %80, i32 0, i32 24
  store i32 0, i32* %81, align 4
  %82 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %82, i32 0, i32 25
  store i32 0, i32* %83, align 8
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %85 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 8
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 25
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %73
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 26
  store i32 0, i32* %93, align 4
  %94 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %95 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %94, i32 0, i32 27
  store i32 0, i32* %95, align 8
  %96 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %96, i32 0, i32 28
  store i32 0, i32* %97, align 4
  %98 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %99 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %98, i32 0, i32 29
  store i32 0, i32* %99, align 8
  %100 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %101 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %100, i32 0, i32 30
  store i32 0, i32* %101, align 4
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %102, i32 0, i32 32
  store i8 0, i8* %103, align 4
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 33
  store i16 1, i16* %105, align 2
  %106 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %106, i32 0, i32 34
  store i16 1, i16* %107, align 8
  %108 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef %108)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @std_huff_tables(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 16
  %6 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %5, i64 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %3, %struct.JHUFF_TBL** noundef %6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_luminance, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_luminance, i64 0, i64 0))
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %8, i32 0, i32 17
  %10 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %9, i64 0, i64 0
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %7, %struct.JHUFF_TBL** noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_luminance, i64 0, i64 0), i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_luminance, i64 0, i64 0))
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 16
  %14 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %13, i64 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %11, %struct.JHUFF_TBL** noundef %14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_dc_chrominance, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @std_huff_tables.val_dc_chrominance, i64 0, i64 0))
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 17
  %18 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %17, i64 0, i64 1
  call void @add_huff_table(%struct.jpeg_compress_struct* noundef %15, %struct.JHUFF_TBL** noundef %18, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @std_huff_tables.bits_ac_chrominance, i64 0, i64 0), i8* noundef getelementptr inbounds ([162 x i8], [162 x i8]* @std_huff_tables.val_ac_chrominance, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_default_colorspace(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 9
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %18 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
    i32 5, label %14
    i32 0, label %16
  ]

6:                                                ; preds = %1
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %7, i32 noundef 1)
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %9, i32 noundef 3)
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %11, i32 noundef 3)
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %13, i32 noundef 4)
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %15, i32 noundef 5)
  br label %30

16:                                               ; preds = %1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %17, i32 noundef 0)
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 5
  store i32 7, i32* %22, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 0
  %27 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %26, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  call void %27(%struct.jpeg_common_struct* noundef %29)
  br label %30

30:                                               ; preds = %18, %16, %14, %12, %10, %8, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_colorspace(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_component_info*, align 8
  %6 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 100
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 0
  %14 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %14, i32 0, i32 5
  store i32 18, i32* %15, align 8
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i32 0, i32 6
  %23 = bitcast %union.anon* %22 to [8 x i32]*
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i32 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %28, align 8
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %31 = bitcast %struct.jpeg_compress_struct* %30 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* noundef %31)
  br label %32

32:                                               ; preds = %11, %2
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %36, i32 0, i32 31
  store i32 0, i32* %37, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 35
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  switch i32 %40, label %379 [
    i32 1, label %41
    i32 2, label %62
    i32 3, label %115
    i32 4, label %168
    i32 5, label %237
    i32 0, label %306
  ]

41:                                               ; preds = %32
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %42, i32 0, i32 31
  store i32 1, i32* %43, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 12
  store i32 1, i32* %45, align 4
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 14
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %47, align 8
  %49 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %48, i64 0
  store %struct.jpeg_component_info* %49, %struct.jpeg_component_info** %5, align 8
  %50 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %51 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %53 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %55 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %54, i32 0, i32 3
  store i32 1, i32* %55, align 4
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 4
  store i32 0, i32* %57, align 8
  %58 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %59 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %58, i32 0, i32 5
  store i32 0, i32* %59, align 4
  %60 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %61 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %60, i32 0, i32 6
  store i32 0, i32* %61, align 8
  br label %391

62:                                               ; preds = %32
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 35
  store i32 1, i32* %64, align 4
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %65, i32 0, i32 12
  store i32 3, i32* %66, align 4
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %67, i32 0, i32 14
  %69 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %68, align 8
  %70 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %69, i64 0
  store %struct.jpeg_component_info* %70, %struct.jpeg_component_info** %5, align 8
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %72 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 0
  store i32 82, i32* %72, align 8
  %73 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %74 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %76 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %75, i32 0, i32 3
  store i32 1, i32* %76, align 4
  %77 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %78 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %77, i32 0, i32 4
  store i32 0, i32* %78, align 8
  %79 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %80 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %79, i32 0, i32 5
  store i32 0, i32* %80, align 4
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 6
  store i32 0, i32* %82, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 14
  %85 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %85, i64 1
  store %struct.jpeg_component_info* %86, %struct.jpeg_component_info** %5, align 8
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %88 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 0
  store i32 71, i32* %88, align 8
  %89 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %90 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  %91 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %92 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %91, i32 0, i32 3
  store i32 1, i32* %92, align 4
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 0, i32 4
  store i32 0, i32* %94, align 8
  %95 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %96 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %95, i32 0, i32 5
  store i32 0, i32* %96, align 4
  %97 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %98 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %97, i32 0, i32 6
  store i32 0, i32* %98, align 8
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 14
  %101 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %100, align 8
  %102 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %101, i64 2
  store %struct.jpeg_component_info* %102, %struct.jpeg_component_info** %5, align 8
  %103 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %104 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %103, i32 0, i32 0
  store i32 66, i32* %104, align 8
  %105 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %106 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %105, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %108 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %107, i32 0, i32 3
  store i32 1, i32* %108, align 4
  %109 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %110 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %109, i32 0, i32 4
  store i32 0, i32* %110, align 8
  %111 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %112 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %111, i32 0, i32 5
  store i32 0, i32* %112, align 4
  %113 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %114 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %113, i32 0, i32 6
  store i32 0, i32* %114, align 8
  br label %391

115:                                              ; preds = %32
  %116 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %117 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %116, i32 0, i32 31
  store i32 1, i32* %117, align 8
  %118 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %119 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %118, i32 0, i32 12
  store i32 3, i32* %119, align 4
  %120 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %121 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %120, i32 0, i32 14
  %122 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %121, align 8
  %123 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %122, i64 0
  store %struct.jpeg_component_info* %123, %struct.jpeg_component_info** %5, align 8
  %124 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %125 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %127 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %126, i32 0, i32 2
  store i32 2, i32* %127, align 8
  %128 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %129 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %128, i32 0, i32 3
  store i32 2, i32* %129, align 4
  %130 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %131 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %130, i32 0, i32 4
  store i32 0, i32* %131, align 8
  %132 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %133 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %132, i32 0, i32 5
  store i32 0, i32* %133, align 4
  %134 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %135 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %134, i32 0, i32 6
  store i32 0, i32* %135, align 8
  %136 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %137 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %136, i32 0, i32 14
  %138 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %137, align 8
  %139 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %138, i64 1
  store %struct.jpeg_component_info* %139, %struct.jpeg_component_info** %5, align 8
  %140 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %141 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %140, i32 0, i32 0
  store i32 2, i32* %141, align 8
  %142 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %143 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %142, i32 0, i32 2
  store i32 1, i32* %143, align 8
  %144 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %145 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %144, i32 0, i32 3
  store i32 1, i32* %145, align 4
  %146 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %147 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %146, i32 0, i32 4
  store i32 1, i32* %147, align 8
  %148 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %149 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %148, i32 0, i32 5
  store i32 1, i32* %149, align 4
  %150 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %151 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %150, i32 0, i32 6
  store i32 1, i32* %151, align 8
  %152 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %153 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %152, i32 0, i32 14
  %154 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %153, align 8
  %155 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %154, i64 2
  store %struct.jpeg_component_info* %155, %struct.jpeg_component_info** %5, align 8
  %156 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %157 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %156, i32 0, i32 0
  store i32 3, i32* %157, align 8
  %158 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %159 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %161 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %160, i32 0, i32 3
  store i32 1, i32* %161, align 4
  %162 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %163 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %162, i32 0, i32 4
  store i32 1, i32* %163, align 8
  %164 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %165 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %164, i32 0, i32 5
  store i32 1, i32* %165, align 4
  %166 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %167 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %166, i32 0, i32 6
  store i32 1, i32* %167, align 8
  br label %391

168:                                              ; preds = %32
  %169 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %170 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %169, i32 0, i32 35
  store i32 1, i32* %170, align 4
  %171 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %172 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %171, i32 0, i32 12
  store i32 4, i32* %172, align 4
  %173 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %174 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %173, i32 0, i32 14
  %175 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %174, align 8
  %176 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %175, i64 0
  store %struct.jpeg_component_info* %176, %struct.jpeg_component_info** %5, align 8
  %177 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %178 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %177, i32 0, i32 0
  store i32 67, i32* %178, align 8
  %179 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %180 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  %181 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %182 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %181, i32 0, i32 3
  store i32 1, i32* %182, align 4
  %183 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %184 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %183, i32 0, i32 4
  store i32 0, i32* %184, align 8
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i32 0, i32 5
  store i32 0, i32* %186, align 4
  %187 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %188 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %187, i32 0, i32 6
  store i32 0, i32* %188, align 8
  %189 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %190 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %189, i32 0, i32 14
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %190, align 8
  %192 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i64 1
  store %struct.jpeg_component_info* %192, %struct.jpeg_component_info** %5, align 8
  %193 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %194 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %193, i32 0, i32 0
  store i32 77, i32* %194, align 8
  %195 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %196 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %195, i32 0, i32 2
  store i32 1, i32* %196, align 8
  %197 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %198 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %197, i32 0, i32 3
  store i32 1, i32* %198, align 4
  %199 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %200 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %199, i32 0, i32 4
  store i32 0, i32* %200, align 8
  %201 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %202 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %201, i32 0, i32 5
  store i32 0, i32* %202, align 4
  %203 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %204 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %203, i32 0, i32 6
  store i32 0, i32* %204, align 8
  %205 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %205, i32 0, i32 14
  %207 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %206, align 8
  %208 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %207, i64 2
  store %struct.jpeg_component_info* %208, %struct.jpeg_component_info** %5, align 8
  %209 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %210 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %209, i32 0, i32 0
  store i32 89, i32* %210, align 8
  %211 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %212 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %211, i32 0, i32 2
  store i32 1, i32* %212, align 8
  %213 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %214 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %213, i32 0, i32 3
  store i32 1, i32* %214, align 4
  %215 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %216 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %215, i32 0, i32 4
  store i32 0, i32* %216, align 8
  %217 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %218 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %217, i32 0, i32 5
  store i32 0, i32* %218, align 4
  %219 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %220 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %219, i32 0, i32 6
  store i32 0, i32* %220, align 8
  %221 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %222 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %221, i32 0, i32 14
  %223 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %222, align 8
  %224 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %223, i64 3
  store %struct.jpeg_component_info* %224, %struct.jpeg_component_info** %5, align 8
  %225 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %226 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %225, i32 0, i32 0
  store i32 75, i32* %226, align 8
  %227 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %228 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %227, i32 0, i32 2
  store i32 1, i32* %228, align 8
  %229 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %230 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %229, i32 0, i32 3
  store i32 1, i32* %230, align 4
  %231 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %232 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %231, i32 0, i32 4
  store i32 0, i32* %232, align 8
  %233 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %234 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %233, i32 0, i32 5
  store i32 0, i32* %234, align 4
  %235 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %236 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %235, i32 0, i32 6
  store i32 0, i32* %236, align 8
  br label %391

237:                                              ; preds = %32
  %238 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %239 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %238, i32 0, i32 35
  store i32 1, i32* %239, align 4
  %240 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %241 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %240, i32 0, i32 12
  store i32 4, i32* %241, align 4
  %242 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %243 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %242, i32 0, i32 14
  %244 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %243, align 8
  %245 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %244, i64 0
  store %struct.jpeg_component_info* %245, %struct.jpeg_component_info** %5, align 8
  %246 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %247 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %246, i32 0, i32 0
  store i32 1, i32* %247, align 8
  %248 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %249 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %248, i32 0, i32 2
  store i32 2, i32* %249, align 8
  %250 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %251 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %250, i32 0, i32 3
  store i32 2, i32* %251, align 4
  %252 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %253 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %252, i32 0, i32 4
  store i32 0, i32* %253, align 8
  %254 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %255 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %254, i32 0, i32 5
  store i32 0, i32* %255, align 4
  %256 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %257 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %256, i32 0, i32 6
  store i32 0, i32* %257, align 8
  %258 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %259 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %258, i32 0, i32 14
  %260 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %259, align 8
  %261 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %260, i64 1
  store %struct.jpeg_component_info* %261, %struct.jpeg_component_info** %5, align 8
  %262 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %263 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %262, i32 0, i32 0
  store i32 2, i32* %263, align 8
  %264 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %265 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %264, i32 0, i32 2
  store i32 1, i32* %265, align 8
  %266 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %267 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %266, i32 0, i32 3
  store i32 1, i32* %267, align 4
  %268 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %269 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %268, i32 0, i32 4
  store i32 1, i32* %269, align 8
  %270 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %271 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %270, i32 0, i32 5
  store i32 1, i32* %271, align 4
  %272 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %273 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %272, i32 0, i32 6
  store i32 1, i32* %273, align 8
  %274 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %275 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %274, i32 0, i32 14
  %276 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %275, align 8
  %277 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %276, i64 2
  store %struct.jpeg_component_info* %277, %struct.jpeg_component_info** %5, align 8
  %278 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %279 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %278, i32 0, i32 0
  store i32 3, i32* %279, align 8
  %280 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %281 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %280, i32 0, i32 2
  store i32 1, i32* %281, align 8
  %282 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %283 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %282, i32 0, i32 3
  store i32 1, i32* %283, align 4
  %284 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %285 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %284, i32 0, i32 4
  store i32 1, i32* %285, align 8
  %286 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %287 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %286, i32 0, i32 5
  store i32 1, i32* %287, align 4
  %288 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %289 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %288, i32 0, i32 6
  store i32 1, i32* %289, align 8
  %290 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %291 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %290, i32 0, i32 14
  %292 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %291, align 8
  %293 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %292, i64 3
  store %struct.jpeg_component_info* %293, %struct.jpeg_component_info** %5, align 8
  %294 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %295 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %294, i32 0, i32 0
  store i32 4, i32* %295, align 8
  %296 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %297 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %296, i32 0, i32 2
  store i32 2, i32* %297, align 8
  %298 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %299 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %298, i32 0, i32 3
  store i32 2, i32* %299, align 4
  %300 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %301 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %300, i32 0, i32 4
  store i32 0, i32* %301, align 8
  %302 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %303 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %302, i32 0, i32 5
  store i32 0, i32* %303, align 4
  %304 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %305 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %304, i32 0, i32 6
  store i32 0, i32* %305, align 8
  br label %391

306:                                              ; preds = %32
  %307 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %308 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %307, i32 0, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %311 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %310, i32 0, i32 12
  store i32 %309, i32* %311, align 4
  %312 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %313 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %312, i32 0, i32 12
  %314 = load i32, i32* %313, align 4
  %315 = icmp slt i32 %314, 1
  br i1 %315, label %321, label %316

316:                                              ; preds = %306
  %317 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %318 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %317, i32 0, i32 12
  %319 = load i32, i32* %318, align 4
  %320 = icmp sgt i32 %319, 10
  br i1 %320, label %321, label %348

321:                                              ; preds = %316, %306
  %322 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %323 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %322, i32 0, i32 0
  %324 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %323, align 8
  %325 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %324, i32 0, i32 5
  store i32 24, i32* %325, align 8
  %326 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %327 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %326, i32 0, i32 12
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %330 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %329, i32 0, i32 0
  %331 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %330, align 8
  %332 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %331, i32 0, i32 6
  %333 = bitcast %union.anon* %332 to [8 x i32]*
  %334 = getelementptr inbounds [8 x i32], [8 x i32]* %333, i64 0, i64 0
  store i32 %328, i32* %334, align 4
  %335 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %336 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %335, i32 0, i32 0
  %337 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %336, align 8
  %338 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %337, i32 0, i32 6
  %339 = bitcast %union.anon* %338 to [8 x i32]*
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* %339, i64 0, i64 1
  store i32 10, i32* %340, align 4
  %341 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %342 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %341, i32 0, i32 0
  %343 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %342, align 8
  %344 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %343, i32 0, i32 0
  %345 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %344, align 8
  %346 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %347 = bitcast %struct.jpeg_compress_struct* %346 to %struct.jpeg_common_struct*
  call void %345(%struct.jpeg_common_struct* noundef %347)
  br label %348

348:                                              ; preds = %321, %316
  store i32 0, i32* %6, align 4
  br label %349

349:                                              ; preds = %375, %348
  %350 = load i32, i32* %6, align 4
  %351 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %352 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %351, i32 0, i32 12
  %353 = load i32, i32* %352, align 4
  %354 = icmp slt i32 %350, %353
  br i1 %354, label %355, label %378

355:                                              ; preds = %349
  %356 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %357 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %356, i32 0, i32 14
  %358 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %357, align 8
  %359 = load i32, i32* %6, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %358, i64 %360
  store %struct.jpeg_component_info* %361, %struct.jpeg_component_info** %5, align 8
  %362 = load i32, i32* %6, align 4
  %363 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %364 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %363, i32 0, i32 0
  store i32 %362, i32* %364, align 8
  %365 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %366 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %365, i32 0, i32 2
  store i32 1, i32* %366, align 8
  %367 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %368 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %367, i32 0, i32 3
  store i32 1, i32* %368, align 4
  %369 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %370 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %369, i32 0, i32 4
  store i32 0, i32* %370, align 8
  %371 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %372 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %371, i32 0, i32 5
  store i32 0, i32* %372, align 4
  %373 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %5, align 8
  %374 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %373, i32 0, i32 6
  store i32 0, i32* %374, align 8
  br label %375

375:                                              ; preds = %355
  %376 = load i32, i32* %6, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %6, align 4
  br label %349, !llvm.loop !7

378:                                              ; preds = %349
  br label %391

379:                                              ; preds = %32
  %380 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %381 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %380, i32 0, i32 0
  %382 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %381, align 8
  %383 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %382, i32 0, i32 5
  store i32 8, i32* %383, align 8
  %384 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %385 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %384, i32 0, i32 0
  %386 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %385, align 8
  %387 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %386, i32 0, i32 0
  %388 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %387, align 8
  %389 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %390 = bitcast %struct.jpeg_compress_struct* %389 to %struct.jpeg_common_struct*
  call void %388(%struct.jpeg_common_struct* noundef %390)
  br label %391

391:                                              ; preds = %379, %378, %237, %168, %115, %62, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_simple_progression(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_scan_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 12
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 100
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i32 0, i32 5
  store i32 18, i32* %17, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i32 0, i32 6
  %25 = bitcast %union.anon* %24 to [8 x i32]*
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 0
  %29 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %29, i32 0, i32 0
  %31 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %30, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %33 = bitcast %struct.jpeg_compress_struct* %32 to %struct.jpeg_common_struct*
  call void %31(%struct.jpeg_common_struct* noundef %33)
  br label %34

34:                                               ; preds = %13, %1
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 10, i32* %4, align 4
  br label %54

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %3, align 4
  %45 = icmp sgt i32 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 6, %47
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 4, %50
  %52 = add nsw i32 2, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %55, i32 0, i32 1
  %57 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %56, align 8
  %58 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %57, i32 0, i32 0
  %59 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %58, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %61 = bitcast %struct.jpeg_compress_struct* %60 to %struct.jpeg_common_struct*
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 36
  %65 = call i8* %59(%struct.jpeg_common_struct* noundef %61, i32 noundef 0, i64 noundef %64)
  %66 = bitcast i8* %65 to %struct.jpeg_scan_info*
  store %struct.jpeg_scan_info* %66, %struct.jpeg_scan_info** %5, align 8
  %67 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 22
  store %struct.jpeg_scan_info* %67, %struct.jpeg_scan_info** %69, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %71, i32 0, i32 21
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %75, label %103

75:                                               ; preds = %54
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 13
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %82 = load i32, i32* %3, align 4
  %83 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %81, i32 noundef %82, i32 noundef 0, i32 noundef 1)
  store %struct.jpeg_scan_info* %83, %struct.jpeg_scan_info** %5, align 8
  %84 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %85 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %84, i32 noundef 0, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store %struct.jpeg_scan_info* %85, %struct.jpeg_scan_info** %5, align 8
  %86 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %87 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %86, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store %struct.jpeg_scan_info* %87, %struct.jpeg_scan_info** %5, align 8
  %88 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %89 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %88, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 0, i32 noundef 1)
  store %struct.jpeg_scan_info* %89, %struct.jpeg_scan_info** %5, align 8
  %90 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %91 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %90, i32 noundef 0, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store %struct.jpeg_scan_info* %91, %struct.jpeg_scan_info** %5, align 8
  %92 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %93 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %92, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store %struct.jpeg_scan_info* %93, %struct.jpeg_scan_info** %5, align 8
  %94 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %95 = load i32, i32* %3, align 4
  %96 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %94, i32 noundef %95, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %96, %struct.jpeg_scan_info** %5, align 8
  %97 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %98 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %97, i32 noundef 2, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %98, %struct.jpeg_scan_info** %5, align 8
  %99 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %100 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %99, i32 noundef 1, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %100, %struct.jpeg_scan_info** %5, align 8
  %101 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %102 = call %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %101, i32 noundef 0, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %102, %struct.jpeg_scan_info** %5, align 8
  br label %122

103:                                              ; preds = %75, %54
  %104 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %104, i32 noundef %105, i32 noundef 0, i32 noundef 1)
  store %struct.jpeg_scan_info* %106, %struct.jpeg_scan_info** %5, align 8
  %107 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %108 = load i32, i32* %3, align 4
  %109 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %107, i32 noundef %108, i32 noundef 1, i32 noundef 5, i32 noundef 0, i32 noundef 2)
  store %struct.jpeg_scan_info* %109, %struct.jpeg_scan_info** %5, align 8
  %110 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %111 = load i32, i32* %3, align 4
  %112 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %110, i32 noundef %111, i32 noundef 6, i32 noundef 63, i32 noundef 0, i32 noundef 2)
  store %struct.jpeg_scan_info* %112, %struct.jpeg_scan_info** %5, align 8
  %113 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %113, i32 noundef %114, i32 noundef 1, i32 noundef 63, i32 noundef 2, i32 noundef 1)
  store %struct.jpeg_scan_info* %115, %struct.jpeg_scan_info** %5, align 8
  %116 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %117 = load i32, i32* %3, align 4
  %118 = call %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %116, i32 noundef %117, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %118, %struct.jpeg_scan_info** %5, align 8
  %119 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %120 = load i32, i32* %3, align 4
  %121 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %119, i32 noundef %120, i32 noundef 1, i32 noundef 63, i32 noundef 1, i32 noundef 0)
  store %struct.jpeg_scan_info* %121, %struct.jpeg_scan_info** %5, align 8
  br label %122

122:                                              ; preds = %103, %80
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.jpeg_scan_info* @fill_dc_scans(%struct.jpeg_scan_info* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_scan_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jpeg_scan_info* %0, %struct.jpeg_scan_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 4
  br i1 %11, label %12, label %43

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %15 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %27, %12
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %23 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %22, i32 0, i32 1
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 %25
  store i32 %21, i32* %26, align 4
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %16, !llvm.loop !8

30:                                               ; preds = %16
  %31 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %32 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %34 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %37 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %40 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %42 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %41, i32 1
  store %struct.jpeg_scan_info* %42, %struct.jpeg_scan_info** %5, align 8
  br label %49

43:                                               ; preds = %4
  %44 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %44, i32 noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef %46, i32 noundef %47)
  store %struct.jpeg_scan_info* %48, %struct.jpeg_scan_info** %5, align 8
  br label %49

49:                                               ; preds = %43, %30
  %50 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %5, align 8
  ret %struct.jpeg_scan_info* %50
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.jpeg_scan_info* @fill_a_scan(%struct.jpeg_scan_info* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.jpeg_scan_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.jpeg_scan_info* %0, %struct.jpeg_scan_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %14 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %17 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %21 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %24 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %27 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %30 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %32 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %31, i32 1
  store %struct.jpeg_scan_info* %32, %struct.jpeg_scan_info** %7, align 8
  %33 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  ret %struct.jpeg_scan_info* %33
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.jpeg_scan_info* @fill_scans(%struct.jpeg_scan_info* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.jpeg_scan_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.jpeg_scan_info* %0, %struct.jpeg_scan_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %39, %6
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %20 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %23 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %27 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %30 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %33 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %36 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  %38 = getelementptr inbounds %struct.jpeg_scan_info, %struct.jpeg_scan_info* %37, i32 1
  store %struct.jpeg_scan_info* %38, %struct.jpeg_scan_info** %7, align 8
  br label %39

39:                                               ; preds = %18
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %14, !llvm.loop !9

42:                                               ; preds = %14
  %43 = load %struct.jpeg_scan_info*, %struct.jpeg_scan_info** %7, align 8
  ret %struct.jpeg_scan_info* %43
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_huff_table(%struct.jpeg_compress_struct* noundef %0, %struct.JHUFF_TBL** noundef %1, i8* noundef %2, i8* noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca %struct.JHUFF_TBL**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store %struct.JHUFF_TBL** %1, %struct.JHUFF_TBL*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %6, align 8
  %10 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %9, align 8
  %11 = icmp eq %struct.JHUFF_TBL* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %14 = bitcast %struct.jpeg_compress_struct* %13 to %struct.jpeg_common_struct*
  %15 = call %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef %14)
  %16 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %6, align 8
  store %struct.JHUFF_TBL* %15, %struct.JHUFF_TBL** %16, align 8
  br label %17

17:                                               ; preds = %12, %4
  %18 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %6, align 8
  %19 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %18, align 8
  %20 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %19, i32 0, i32 0
  %21 = getelementptr inbounds [17 x i8], [17 x i8]* %20, i64 0, i64 0
  %22 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 1 %22, i64 17, i1 false)
  %23 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %6, align 8
  %24 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %23, align 8
  %25 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %24, i32 0, i32 1
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i64 0, i64 0
  %27 = load i8*, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 %27, i64 256, i1 false)
  %28 = load %struct.JHUFF_TBL**, %struct.JHUFF_TBL*** %6, align 8
  %29 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %28, align 8
  %30 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  ret void
}

declare dso_local %struct.JHUFF_TBL* @jpeg_alloc_huff_table(%struct.jpeg_common_struct* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

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
