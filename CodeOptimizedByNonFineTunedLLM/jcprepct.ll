; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcprepct.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcprepct.c"
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
%struct.jpeg_entropy_encoder = type { {}*, i32 (%struct.jpeg_compress_struct*, [64 x i16]**)*, void (%struct.jpeg_compress_struct*)* }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x i8**], i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_c_prep_controller(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_prep_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i32 0, i32 5
  store i32 4, i32* %14, align 8
  %15 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %15, i32 0, i32 0
  %17 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %16, align 8
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %17, i32 0, i32 0
  %19 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %18, align 8
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %21 = bitcast %struct.jpeg_compress_struct* %20 to %struct.jpeg_common_struct*
  call void %19(%struct.jpeg_common_struct* noundef %21)
  br label %22

22:                                               ; preds = %10, %2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 1
  %25 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %25, i32 0, i32 0
  %27 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %26, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = bitcast %struct.jpeg_compress_struct* %28 to %struct.jpeg_common_struct*
  %30 = call i8* %27(%struct.jpeg_common_struct* noundef %29, i32 noundef 1, i64 noundef 112)
  %31 = bitcast i8* %30 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %31, %struct.my_prep_controller** %5, align 8
  %32 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %33 = bitcast %struct.my_prep_controller* %32 to %struct.jpeg_c_prep_controller*
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 53
  store %struct.jpeg_c_prep_controller* %33, %struct.jpeg_c_prep_controller** %35, align 8
  %36 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %37 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %37, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32)* @start_pass_prep, void (%struct.jpeg_compress_struct*, i32)** %38, align 8
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 57
  %41 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %22
  %46 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %47 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %47, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_context, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %48, align 8
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @create_context_buffer(%struct.jpeg_compress_struct* noundef %49)
  br label %102

50:                                               ; preds = %22
  %51 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %52 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.jpeg_c_prep_controller, %struct.jpeg_c_prep_controller* %52, i32 0, i32 1
  store void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)* @pre_process_data, void (%struct.jpeg_compress_struct*, i8**, i32*, i32, i8***, i32*, i32)** %53, align 8
  store i32 0, i32* %6, align 4
  %54 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %54, i32 0, i32 14
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %55, align 8
  store %struct.jpeg_component_info* %56, %struct.jpeg_component_info** %7, align 8
  br label %57

57:                                               ; preds = %96, %50
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %57
  %64 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %65 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %64, i32 0, i32 1
  %66 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %66, i32 0, i32 2
  %68 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %67, align 8
  %69 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %70 = bitcast %struct.jpeg_compress_struct* %69 to %struct.jpeg_common_struct*
  %71 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %72 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = zext i32 %73 to i64
  %75 = mul nsw i64 %74, 8
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %76, i32 0, i32 38
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %75, %79
  %81 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %82 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = sdiv i64 %80, %84
  %86 = trunc i64 %85 to i32
  %87 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %87, i32 0, i32 39
  %89 = load i32, i32* %88, align 4
  %90 = call i8** %68(%struct.jpeg_common_struct* noundef %70, i32 noundef 1, i32 noundef %86, i32 noundef %89)
  %91 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %92 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %91, i32 0, i32 1
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i8**], [10 x i8**]* %92, i64 0, i64 %94
  store i8** %90, i8*** %95, align 8
  br label %96

96:                                               ; preds = %63
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %100 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %99, i32 1
  store %struct.jpeg_component_info* %100, %struct.jpeg_component_info** %7, align 8
  br label %57, !llvm.loop !4

101:                                              ; preds = %57
  br label %102

102:                                              ; preds = %101, %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_pass_prep(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.my_prep_controller*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 53
  %8 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %7, align 8
  %9 = bitcast %struct.jpeg_c_prep_controller* %8 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %9, %struct.my_prep_controller** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
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
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %29 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %31 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %30, i32 0, i32 3
  store i32 0, i32* %31, align 4
  %32 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %33 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %32, i32 0, i32 4
  store i32 0, i32* %33, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 39
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 2, %36
  %38 = load %struct.my_prep_controller*, %struct.my_prep_controller** %5, align 8
  %39 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_context(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3, i8*** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_compress_struct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_prep_controller*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %21, i32 0, i32 53
  %23 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %22, align 8
  %24 = bitcast %struct.jpeg_c_prep_controller* %23 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %24, %struct.my_prep_controller** %15, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 39
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  store i32 %28, i32* %18, align 4
  br label %29

29:                                               ; preds = %248, %7
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %249

34:                                               ; preds = %29
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %140

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sub i32 %40, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %45 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %48 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %16, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %16, align 4
  br label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %19, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %16, align 4
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 56
  %62 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %61, align 8
  %63 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %62, i32 0, i32 1
  %64 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %63, align 8
  %65 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %66 = load i8**, i8*** %9, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %66, i64 %69
  %71 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %72 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %71, i32 0, i32 1
  %73 = getelementptr inbounds [10 x i8**], [10 x i8**]* %72, i64 0, i64 0
  %74 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %75 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  call void %64(%struct.jpeg_compress_struct* noundef %65, i8** noundef %70, i8*** noundef %73, i32 noundef %76, i32 noundef %77)
  %78 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %79 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %58
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %121, %85
  %87 = load i32, i32* %17, align 4
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %86
  store i32 1, i32* %20, align 4
  br label %93

93:                                               ; preds = %117, %92
  %94 = load i32, i32* %20, align 4
  %95 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %95, i32 0, i32 39
  %97 = load i32, i32* %96, align 4
  %98 = icmp sle i32 %94, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %93
  %100 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %101 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %100, i32 0, i32 1
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10 x i8**], [10 x i8**]* %101, i64 0, i64 %103
  %105 = load i8**, i8*** %104, align 8
  %106 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %107 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %106, i32 0, i32 1
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [10 x i8**], [10 x i8**]* %107, i64 0, i64 %109
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sub nsw i32 0, %112
  %114 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  call void @jcopy_sample_rows(i8** noundef %105, i32 noundef 0, i8** noundef %111, i32 noundef %113, i32 noundef 1, i32 noundef %116)
  br label %117

117:                                              ; preds = %99
  %118 = load i32, i32* %20, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %20, align 4
  br label %93, !llvm.loop !6

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %17, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %17, align 4
  br label %86, !llvm.loop !7

124:                                              ; preds = %86
  br label %125

125:                                              ; preds = %124, %58
  %126 = load i32, i32* %16, align 4
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %16, align 4
  %131 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %132 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* %16, align 4
  %136 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %137 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sub i32 %138, %135
  store i32 %139, i32* %137, align 8
  br label %187

140:                                              ; preds = %34
  %141 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %142 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %249

146:                                              ; preds = %140
  %147 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %148 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %151 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %146
  store i32 0, i32* %17, align 4
  br label %155

155:                                              ; preds = %177, %154
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %158 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %157, i32 0, i32 12
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %155
  %162 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %163 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %162, i32 0, i32 1
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [10 x i8**], [10 x i8**]* %163, i64 0, i64 %165
  %167 = load i8**, i8*** %166, align 8
  %168 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %169 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %172 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %175 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  call void @expand_bottom_edge(i8** noundef %167, i32 noundef %170, i32 noundef %173, i32 noundef %176)
  br label %177

177:                                              ; preds = %161
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %155, !llvm.loop !8

180:                                              ; preds = %155
  %181 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %182 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %185 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %180, %146
  br label %187

187:                                              ; preds = %186, %125
  %188 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %189 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %192 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %195, label %248

195:                                              ; preds = %187
  %196 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %197 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %196, i32 0, i32 57
  %198 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %197, align 8
  %199 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %198, i32 0, i32 1
  %200 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %199, align 8
  %201 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %202 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %203 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %202, i32 0, i32 1
  %204 = getelementptr inbounds [10 x i8**], [10 x i8**]* %203, i64 0, i64 0
  %205 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %206 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 8
  %208 = load i8***, i8**** %12, align 8
  %209 = load i32*, i32** %13, align 8
  %210 = load i32, i32* %209, align 4
  call void %200(%struct.jpeg_compress_struct* noundef %201, i8*** noundef %204, i32 noundef %207, i8*** noundef %208, i32 noundef %210)
  %211 = load i32*, i32** %13, align 8
  %212 = load i32, i32* %211, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %211, align 4
  %214 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %215 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %214, i32 0, i32 39
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %218 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, %216
  store i32 %220, i32* %218, align 8
  %221 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %222 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %18, align 4
  %225 = icmp sge i32 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %195
  %227 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %228 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %227, i32 0, i32 4
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %226, %195
  %230 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %231 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp sge i32 %232, %233
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %237 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %236, i32 0, i32 3
  store i32 0, i32* %237, align 4
  br label %238

238:                                              ; preds = %235, %229
  %239 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %240 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %243 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %242, i32 0, i32 39
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %241, %244
  %246 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %247 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %238, %187
  br label %29, !llvm.loop !9

249:                                              ; preds = %145, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_context_buffer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca %struct.my_prep_controller*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.jpeg_component_info*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 53
  %12 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %11, align 8
  %13 = bitcast %struct.jpeg_c_prep_controller* %12 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %13, %struct.my_prep_controller** %3, align 8
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 39
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 1
  %19 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %19, i32 0, i32 0
  %21 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %20, align 8
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = bitcast %struct.jpeg_compress_struct* %22 to %struct.jpeg_common_struct*
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %24, i32 0, i32 12
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 5
  %28 = load i32, i32* %4, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 8
  %32 = call i8* %21(%struct.jpeg_common_struct* noundef %23, i32 noundef 1, i64 noundef %31)
  %33 = bitcast i8* %32 to i8**
  store i8** %33, i8*** %9, align 8
  store i32 0, i32* %5, align 4
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 14
  %36 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %35, align 8
  store %struct.jpeg_component_info* %36, %struct.jpeg_component_info** %7, align 8
  br label %37

37:                                               ; preds = %128, %1
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %133

43:                                               ; preds = %37
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %44, i32 0, i32 1
  %46 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %45, align 8
  %47 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %46, i32 0, i32 2
  %48 = load i8** (%struct.jpeg_common_struct*, i32, i32, i32)*, i8** (%struct.jpeg_common_struct*, i32, i32, i32)** %47, align 8
  %49 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %50 = bitcast %struct.jpeg_compress_struct* %49 to %struct.jpeg_common_struct*
  %51 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %52 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = mul nsw i64 %54, 8
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 38
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %55, %59
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sdiv i64 %60, %64
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = mul nsw i32 3, %67
  %69 = call i8** %48(%struct.jpeg_common_struct* noundef %50, i32 noundef 1, i32 noundef %66, i32 noundef %68)
  store i8** %69, i8*** %8, align 8
  %70 = load i8**, i8*** %9, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = bitcast i8** %73 to i8*
  %75 = load i8**, i8*** %8, align 8
  %76 = bitcast i8** %75 to i8*
  %77 = load i32, i32* %4, align 4
  %78 = mul nsw i32 3, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %74, i8* align 1 %76, i64 %80, i1 false)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %110, %43
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %113

85:                                               ; preds = %81
  %86 = load i8**, i8*** %8, align 8
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 2, %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %86, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %9, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %93, i8** %97, align 8
  %98 = load i8**, i8*** %8, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8*, i8** %98, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load i8**, i8*** %9, align 8
  %104 = load i32, i32* %4, align 4
  %105 = mul nsw i32 4, %104
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %103, i64 %108
  store i8* %102, i8** %109, align 8
  br label %110

110:                                              ; preds = %85
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %81, !llvm.loop !10

113:                                              ; preds = %81
  %114 = load i8**, i8*** %9, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load %struct.my_prep_controller*, %struct.my_prep_controller** %3, align 8
  %119 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %118, i32 0, i32 1
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i8**], [10 x i8**]* %119, i64 0, i64 %121
  store i8** %117, i8*** %122, align 8
  %123 = load i32, i32* %4, align 4
  %124 = mul nsw i32 5, %123
  %125 = load i8**, i8*** %9, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8*, i8** %125, i64 %126
  store i8** %127, i8*** %9, align 8
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %5, align 4
  %131 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %7, align 8
  %132 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %131, i32 1
  store %struct.jpeg_component_info* %132, %struct.jpeg_component_info** %7, align 8
  br label %37, !llvm.loop !11

133:                                              ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @pre_process_data(%struct.jpeg_compress_struct* noundef %0, i8** noundef %1, i32* noundef %2, i32 noundef %3, i8*** noundef %4, i32* noundef %5, i32 noundef %6) #0 {
  %8 = alloca %struct.jpeg_compress_struct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8***, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_prep_controller*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8*** %4, i8**** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %20 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %20, i32 0, i32 53
  %22 = load %struct.jpeg_c_prep_controller*, %struct.jpeg_c_prep_controller** %21, align 8
  %23 = bitcast %struct.jpeg_c_prep_controller* %22 to %struct.my_prep_controller*
  store %struct.my_prep_controller* %23, %struct.my_prep_controller** %15, align 8
  br label %24

24:                                               ; preds = %208, %7
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ult i32 %31, %32
  br label %34

34:                                               ; preds = %29, %24
  %35 = phi i1 [ false, %24 ], [ %33, %29 ]
  br i1 %35, label %36, label %209

36:                                               ; preds = %34
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = sub i32 %37, %39
  store i32 %40, i32* %18, align 4
  %41 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %41, i32 0, i32 39
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %45 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %36
  %52 = load i32, i32* %16, align 4
  br label %55

53:                                               ; preds = %36
  %54 = load i32, i32* %18, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %16, align 4
  %57 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %57, i32 0, i32 56
  %59 = load %struct.jpeg_color_converter*, %struct.jpeg_color_converter** %58, align 8
  %60 = getelementptr inbounds %struct.jpeg_color_converter, %struct.jpeg_color_converter* %59, i32 0, i32 1
  %61 = load void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)*, void (%struct.jpeg_compress_struct*, i8**, i8***, i32, i32)** %60, align 8
  %62 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %63 = load i8**, i8*** %9, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %64, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %63, i64 %66
  %68 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %69 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %68, i32 0, i32 1
  %70 = getelementptr inbounds [10 x i8**], [10 x i8**]* %69, i64 0, i64 0
  %71 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %72 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %16, align 4
  call void %61(%struct.jpeg_compress_struct* noundef %62, i8** noundef %67, i8*** noundef %70, i32 noundef %73, i32 noundef %74)
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, %75
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %81 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %86 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %90 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %55
  %94 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %95 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %97, i32 0, i32 39
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %93
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %124, %101
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %110 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %109, i32 0, i32 1
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i8**], [10 x i8**]* %110, i64 0, i64 %112
  %114 = load i8**, i8*** %113, align 8
  %115 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %116 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %119 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %122 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %121, i32 0, i32 39
  %123 = load i32, i32* %122, align 4
  call void @expand_bottom_edge(i8** noundef %114, i32 noundef %117, i32 noundef %120, i32 noundef %123)
  br label %124

124:                                              ; preds = %108
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %102, !llvm.loop !12

127:                                              ; preds = %102
  %128 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %129 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %128, i32 0, i32 39
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %132 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %131, i32 0, i32 3
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %127, %93, %55
  %134 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %135 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %137, i32 0, i32 39
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %133
  %142 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %143 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %142, i32 0, i32 57
  %144 = load %struct.jpeg_downsampler*, %struct.jpeg_downsampler** %143, align 8
  %145 = getelementptr inbounds %struct.jpeg_downsampler, %struct.jpeg_downsampler* %144, i32 0, i32 1
  %146 = load void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)*, void (%struct.jpeg_compress_struct*, i8***, i32, i8***, i32)** %145, align 8
  %147 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %148 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %149 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %148, i32 0, i32 1
  %150 = getelementptr inbounds [10 x i8**], [10 x i8**]* %149, i64 0, i64 0
  %151 = load i8***, i8**** %12, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %152, align 4
  call void %146(%struct.jpeg_compress_struct* noundef %147, i8*** noundef %150, i32 noundef 0, i8*** noundef %151, i32 noundef %153)
  %154 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %155 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %154, i32 0, i32 3
  store i32 0, i32* %155, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %141, %133
  %160 = load %struct.my_prep_controller*, %struct.my_prep_controller** %15, align 8
  %161 = getelementptr inbounds %struct.my_prep_controller, %struct.my_prep_controller* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %208

164:                                              ; preds = %159
  %165 = load i32*, i32** %13, align 8
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %169, label %208

169:                                              ; preds = %164
  store i32 0, i32* %17, align 4
  %170 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %171 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %170, i32 0, i32 14
  %172 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %171, align 8
  store %struct.jpeg_component_info* %172, %struct.jpeg_component_info** %19, align 8
  br label %173

173:                                              ; preds = %200, %169
  %174 = load i32, i32* %17, align 4
  %175 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %8, align 8
  %176 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %205

179:                                              ; preds = %173
  %180 = load i8***, i8**** %12, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8**, i8*** %180, i64 %182
  %184 = load i8**, i8*** %183, align 8
  %185 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  %186 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 4
  %188 = mul i32 %187, 8
  %189 = load i32*, i32** %13, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  %192 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = mul i32 %190, %193
  %195 = load i32, i32* %14, align 4
  %196 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  %197 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = mul i32 %195, %198
  call void @expand_bottom_edge(i8** noundef %184, i32 noundef %188, i32 noundef %194, i32 noundef %199)
  br label %200

200:                                              ; preds = %179
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  %203 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %19, align 8
  %204 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %203, i32 1
  store %struct.jpeg_component_info* %204, %struct.jpeg_component_info** %19, align 8
  br label %173, !llvm.loop !13

205:                                              ; preds = %173
  %206 = load i32, i32* %14, align 4
  %207 = load i32*, i32** %13, align 8
  store i32 %206, i32* %207, align 4
  br label %209

208:                                              ; preds = %164, %159
  br label %24, !llvm.loop !14

209:                                              ; preds = %205, %34
  ret void
}

declare dso_local void @jcopy_sample_rows(i8** noundef, i32 noundef, i8** noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @expand_bottom_edge(i8** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %22, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i8**, i8*** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  call void @jcopy_sample_rows(i8** noundef %16, i32 noundef %18, i8** noundef %19, i32 noundef %20, i32 noundef 1, i32 noundef %21)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  br label %11, !llvm.loop !15

25:                                               ; preds = %11
  ret void
}

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
