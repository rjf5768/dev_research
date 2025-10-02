; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmarker.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jcmarker.c"
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

@jpeg_natural_order = external dso_local constant [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @jinit_marker_writer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %3, i32 0, i32 1
  %5 = load %struct.jpeg_memory_mgr*, %struct.jpeg_memory_mgr** %4, align 8
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr, %struct.jpeg_memory_mgr* %5, i32 0, i32 0
  %7 = load i8* (%struct.jpeg_common_struct*, i32, i64)*, i8* (%struct.jpeg_common_struct*, i32, i64)** %6, align 8
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = bitcast %struct.jpeg_compress_struct* %8 to %struct.jpeg_common_struct*
  %10 = call i8* %7(%struct.jpeg_common_struct* noundef %9, i32 noundef 1, i64 noundef 48)
  %11 = bitcast i8* %10 to %struct.jpeg_marker_writer*
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 55
  store %struct.jpeg_marker_writer* %11, %struct.jpeg_marker_writer** %13, align 8
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 55
  %16 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %16, i32 0, i32 0
  store void (%struct.jpeg_compress_struct*, i32, i8*, i32)* @write_any_marker, void (%struct.jpeg_compress_struct*, i32, i8*, i32)** %17, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 55
  %20 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %20, i32 0, i32 1
  %22 = bitcast {}** %21 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_header, void (%struct.jpeg_compress_struct*)** %22, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 55
  %25 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %25, i32 0, i32 2
  %27 = bitcast {}** %26 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_frame_header, void (%struct.jpeg_compress_struct*)** %27, align 8
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 55
  %30 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %30, i32 0, i32 3
  %32 = bitcast {}** %31 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_scan_header, void (%struct.jpeg_compress_struct*)** %32, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 55
  %35 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %35, i32 0, i32 4
  %37 = bitcast {}** %36 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_file_trailer, void (%struct.jpeg_compress_struct*)** %37, align 8
  %38 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %38, i32 0, i32 55
  %40 = load %struct.jpeg_marker_writer*, %struct.jpeg_marker_writer** %39, align 8
  %41 = getelementptr inbounds %struct.jpeg_marker_writer, %struct.jpeg_marker_writer* %40, i32 0, i32 5
  %42 = bitcast {}** %41 to void (%struct.jpeg_compress_struct*)**
  store void (%struct.jpeg_compress_struct*)* @write_tables_only, void (%struct.jpeg_compress_struct*)** %42, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_any_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.jpeg_compress_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ule i32 %9, 65533
  br i1 %10, label %11, label %29

11:                                               ; preds = %4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %13 = load i32, i32* %6, align 4
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %12, i32 noundef %13)
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = add i32 %15, 2
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %14, i32 noundef %16)
  br label %17

17:                                               ; preds = %21, %11
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %5, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %22, i32 noundef %25)
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  br label %17, !llvm.loop !4

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %3, i32 noundef 216)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %4, i32 0, i32 31
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_jfif_app0(%struct.jpeg_compress_struct* noundef %9)
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %11, i32 0, i32 35
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_adobe_app14(%struct.jpeg_compress_struct* noundef %16)
  br label %17

17:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_frame_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %7, i32 0, i32 14
  %9 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %8, align 8
  store %struct.jpeg_component_info* %9, %struct.jpeg_component_info** %6, align 8
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %10
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %19 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %17, i32 noundef %20)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  %27 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %28 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %27, i32 1
  store %struct.jpeg_component_info* %28, %struct.jpeg_component_info** %6, align 8
  br label %10, !llvm.loop !6

29:                                               ; preds = %10
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 24
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %29
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 37
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 8
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34, %29
  store i32 0, i32* %5, align 4
  br label %91

45:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %46, i32 0, i32 14
  %48 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %47, align 8
  store %struct.jpeg_component_info* %48, %struct.jpeg_component_info** %6, align 8
  br label %49

49:                                               ; preds = %67, %45
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %57 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %62 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %60
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  %70 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %71 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %70, i32 1
  store %struct.jpeg_component_info* %71, %struct.jpeg_component_info** %6, align 8
  br label %49, !llvm.loop !7

72:                                               ; preds = %49
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %79, i32 0, i32 0
  %81 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %80, align 8
  %82 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %81, i32 0, i32 5
  store i32 74, i32* %82, align 8
  %83 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %83, i32 0, i32 0
  %85 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %84, align 8
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %85, i32 0, i32 1
  %87 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %86, align 8
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %89 = bitcast %struct.jpeg_compress_struct* %88 to %struct.jpeg_common_struct*
  call void %87(%struct.jpeg_common_struct* noundef %89, i32 noundef 0)
  br label %90

90:                                               ; preds = %78, %75, %72
  br label %91

91:                                               ; preds = %90, %44
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %93 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %92, i32 0, i32 24
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %97, i32 noundef 201)
  br label %114

98:                                               ; preds = %91
  %99 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %99, i32 0, i32 37
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %104, i32 noundef 194)
  br label %113

105:                                              ; preds = %98
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %109, i32 noundef 192)
  br label %112

110:                                              ; preds = %105
  %111 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_sof(%struct.jpeg_compress_struct* noundef %111, i32 noundef 193)
  br label %112

112:                                              ; preds = %110, %108
  br label %113

113:                                              ; preds = %112, %103
  br label %114

114:                                              ; preds = %113, %96
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_scan_header(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %5, i32 0, i32 24
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_dac(%struct.jpeg_compress_struct* noundef %10)
  br label %65

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %61, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %14, i32 0, i32 41
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %12
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %19, i32 0, i32 42
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %20, i64 0, i64 %22
  %24 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %23, align 8
  store %struct.jpeg_component_info* %24, %struct.jpeg_component_info** %4, align 8
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 37
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %18
  %30 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %30, i32 0, i32 47
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %35, i32 0, i32 49
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %40, i32 noundef %43, i32 noundef 0)
  br label %44

44:                                               ; preds = %39, %34
  br label %50

45:                                               ; preds = %29
  %46 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %47 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %48 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %46, i32 noundef %49, i32 noundef 1)
  br label %50

50:                                               ; preds = %45, %44
  br label %60

51:                                               ; preds = %18
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %53 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %54 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %52, i32 noundef %55, i32 noundef 0)
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %57 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %4, align 8
  %58 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %56, i32 noundef %59, i32 noundef 1)
  br label %60

60:                                               ; preds = %51, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %12, !llvm.loop !8

64:                                               ; preds = %12
  br label %65

65:                                               ; preds = %64, %9
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %66, i32 0, i32 29
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_dri(%struct.jpeg_compress_struct* noundef %71)
  br label %72

72:                                               ; preds = %70, %65
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_sos(%struct.jpeg_compress_struct* noundef %73)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_file_trailer(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %3, i32 noundef 217)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @write_tables_only(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %4, i32 noundef 216)
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 15
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %10, i64 0, i64 %12
  %14 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %13, align 8
  %15 = icmp ne %struct.JQUANT_TBL* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %17, i32 noundef %18)
  br label %20

20:                                               ; preds = %16, %8
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5, !llvm.loop !9

24:                                               ; preds = %5
  %25 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %25, i32 0, i32 24
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %60, label %29

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %34, i32 0, i32 16
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %35, i64 0, i64 %37
  %39 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %38, align 8
  %40 = icmp ne %struct.JHUFF_TBL* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %43 = load i32, i32* %3, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %42, i32 noundef %43, i32 noundef 0)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %45, i32 0, i32 17
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %46, i64 0, i64 %48
  %50 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %49, align 8
  %51 = icmp ne %struct.JHUFF_TBL* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %54 = load i32, i32* %3, align 4
  call void @emit_dht(%struct.jpeg_compress_struct* noundef %53, i32 noundef %54, i32 noundef 1)
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %30, !llvm.loop !10

59:                                               ; preds = %30
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %61, i32 noundef 217)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_marker(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %5, i32 noundef 255)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = load i32, i32* %4, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_2bytes(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 8
  %8 = and i32 %7, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %5, i32 noundef %8)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %9, i32 noundef %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_byte(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.jpeg_destination_mgr*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 5
  %8 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %7, align 8
  store %struct.jpeg_destination_mgr* %8, %struct.jpeg_destination_mgr** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = trunc i32 %9 to i8
  %11 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %5, align 8
  %12 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %12, align 8
  store i8 %10, i8* %13, align 1
  %15 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %5, align 8
  %16 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %2
  %21 = load %struct.jpeg_destination_mgr*, %struct.jpeg_destination_mgr** %5, align 8
  %22 = getelementptr inbounds %struct.jpeg_destination_mgr, %struct.jpeg_destination_mgr* %21, i32 0, i32 3
  %23 = load i32 (%struct.jpeg_compress_struct*)*, i32 (%struct.jpeg_compress_struct*)** %22, align 8
  %24 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %25 = call i32 %23(%struct.jpeg_compress_struct* noundef %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %20
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %28, i32 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i32 0, i32 5
  store i32 22, i32* %31, align 8
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 0
  %36 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %35, align 8
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %38 = bitcast %struct.jpeg_compress_struct* %37 to %struct.jpeg_common_struct*
  call void %36(%struct.jpeg_common_struct* noundef %38)
  br label %39

39:                                               ; preds = %27, %20
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_jfif_app0(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %3, i32 noundef 224)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %4, i32 noundef 16)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %5, i32 noundef 74)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %6, i32 noundef 70)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %7, i32 noundef 73)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %8, i32 noundef 70)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %9, i32 noundef 0)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %10, i32 noundef 1)
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %11, i32 noundef 1)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 32
  %15 = load i8, i8* %14, align 4
  %16 = zext i8 %15 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %12, i32 noundef %16)
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 33
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %17, i32 noundef %21)
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 34
  %25 = load i16, i16* %24, align 8
  %26 = zext i16 %25 to i32
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %22, i32 noundef %26)
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %27, i32 noundef 0)
  %28 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %28, i32 noundef 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_adobe_app14(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %3, i32 noundef 238)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %4, i32 noundef 14)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %5, i32 noundef 65)
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %6, i32 noundef 100)
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %7, i32 noundef 111)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %8, i32 noundef 98)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %9, i32 noundef 101)
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %10, i32 noundef 100)
  %11 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %11, i32 noundef 0)
  %12 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %12, i32 noundef 0)
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 13
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %20 [
    i32 3, label %16
    i32 5, label %18
  ]

16:                                               ; preds = %1
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %17, i32 noundef 1)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %19, i32 noundef 2)
  br label %22

20:                                               ; preds = %1
  %21 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %21, i32 noundef 0)
  br label %22

22:                                               ; preds = %20, %18, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @emit_dqt(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.JQUANT_TBL*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 15
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x %struct.JQUANT_TBL*], [4 x %struct.JQUANT_TBL*]* %10, i64 0, i64 %12
  %14 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %13, align 8
  store %struct.JQUANT_TBL* %14, %struct.JQUANT_TBL** %5, align 8
  %15 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %5, align 8
  %16 = icmp eq %struct.JQUANT_TBL* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %18, i32 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i32 0, i32 5
  store i32 51, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 0
  %25 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %25, i32 0, i32 6
  %27 = bitcast %union.anon* %26 to [8 x i32]*
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 0
  store i32 %22, i32* %28, align 4
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %35 = bitcast %struct.jpeg_compress_struct* %34 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %35)
  br label %36

36:                                               ; preds = %17, %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 64
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %5, align 8
  %42 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %41, i32 0, i32 0
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [64 x i16], [64 x i16]* %42, i64 0, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = icmp sgt i32 %47, 255
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %37, !llvm.loop !11

54:                                               ; preds = %37
  %55 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %5, align 8
  %56 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %101, label %59

59:                                               ; preds = %54
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %60, i32 noundef 219)
  %61 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 131, i32 67
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %61, i32 noundef %65)
  %66 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %68, 4
  %70 = add nsw i32 %67, %69
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %66, i32 noundef %70)
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %95, %59
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 64
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %5, align 8
  %76 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %75, i32 0, i32 0
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [0 x i32], [0 x i32]* @jpeg_natural_order, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [64 x i16], [64 x i16]* %76, i64 0, i64 %81
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %74
  %88 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %89 = load i32, i32* %8, align 4
  %90 = lshr i32 %89, 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %88, i32 noundef %90)
  br label %91

91:                                               ; preds = %87, %74
  %92 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, 255
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %92, i32 noundef %94)
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %71, !llvm.loop !12

98:                                               ; preds = %71
  %99 = load %struct.JQUANT_TBL*, %struct.JQUANT_TBL** %5, align 8
  %100 = getelementptr inbounds %struct.JQUANT_TBL, %struct.JQUANT_TBL* %99, i32 0, i32 1
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %54
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sof(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.jpeg_compress_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %8 = load i32, i32* %4, align 4
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %7, i32 noundef %8)
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %10 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 3, %12
  %14 = add nsw i32 %13, 2
  %15 = add nsw i32 %14, 5
  %16 = add nsw i32 %15, 1
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %9, i32 noundef %16)
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = icmp sgt i64 %20, 65535
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = icmp sgt i64 %26, 65535
  br i1 %27, label %28, label %46

28:                                               ; preds = %22, %2
  %29 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %29, i32 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i32 0, i32 5
  store i32 40, i32* %32, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %33, i32 0, i32 0
  %35 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %34, align 8
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %35, i32 0, i32 6
  %37 = bitcast %union.anon* %36 to [8 x i32]*
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %37, i64 0, i64 0
  store i32 65535, i32* %38, align 4
  %39 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %39, i32 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i32 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %45 = bitcast %struct.jpeg_compress_struct* %44 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %45)
  br label %46

46:                                               ; preds = %28, %22
  %47 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %47, i32 noundef %50)
  %51 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %52 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %51, i32 noundef %54)
  %55 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %55, i32 noundef %58)
  %59 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %60 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %59, i32 noundef %62)
  store i32 0, i32* %5, align 4
  %63 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %63, i32 0, i32 14
  %65 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %64, align 8
  store %struct.jpeg_component_info* %65, %struct.jpeg_component_info** %6, align 8
  br label %66

66:                                               ; preds = %90, %46
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %68, i32 0, i32 12
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %66
  %73 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %74 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %75 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %73, i32 noundef %76)
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %78 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %79 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 %80, 4
  %82 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %83 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %77, i32 noundef %85)
  %86 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %3, align 8
  %87 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %88 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %86, i32 noundef %89)
  br label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %94 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %93, i32 1
  store %struct.jpeg_component_info* %94, %struct.jpeg_component_info** %6, align 8
  br label %66, !llvm.loop !13

95:                                               ; preds = %66
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dac(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dht(%struct.jpeg_compress_struct* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.jpeg_compress_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.JHUFF_TBL*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %13, i32 0, i32 17
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %14, i64 0, i64 %16
  %18 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %17, align 8
  store %struct.JHUFF_TBL* %18, %struct.JHUFF_TBL** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 16
  store i32 %20, i32* %5, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 16
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x %struct.JHUFF_TBL*], [4 x %struct.JHUFF_TBL*]* %23, i64 0, i64 %25
  %27 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %26, align 8
  store %struct.JHUFF_TBL* %27, %struct.JHUFF_TBL** %7, align 8
  br label %28

28:                                               ; preds = %21, %12
  %29 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %30 = icmp eq %struct.JHUFF_TBL* %29, null
  br i1 %30, label %31, label %50

31:                                               ; preds = %28
  %32 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %33 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %32, i32 0, i32 0
  %34 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %33, align 8
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %34, i32 0, i32 5
  store i32 49, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %37, i32 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %39, i32 0, i32 6
  %41 = bitcast %union.anon* %40 to [8 x i32]*
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %41, i64 0, i64 0
  store i32 %36, i32* %42, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 0
  %45 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %45, i32 0, i32 0
  %47 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %46, align 8
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %49 = bitcast %struct.jpeg_compress_struct* %48 to %struct.jpeg_common_struct*
  call void %47(%struct.jpeg_common_struct* noundef %49)
  br label %50

50:                                               ; preds = %31, %28
  %51 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %52 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %116, label %55

55:                                               ; preds = %50
  %56 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %56, i32 noundef 196)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %70, %55
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 16
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  %61 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %62 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [17 x i8], [17 x i8]* %62, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %57, !llvm.loop !14

73:                                               ; preds = %57
  %74 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 2
  %77 = add nsw i32 %76, 1
  %78 = add nsw i32 %77, 16
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %74, i32 noundef %78)
  %79 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %80 = load i32, i32* %5, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %79, i32 noundef %80)
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %93, %73
  %82 = load i32, i32* %9, align 4
  %83 = icmp sle i32 %82, 16
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %86 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %87 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %86, i32 0, i32 0
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [17 x i8], [17 x i8]* %87, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %85, i32 noundef %92)
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %81, !llvm.loop !15

96:                                               ; preds = %81
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %110, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %4, align 8
  %103 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %104 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %103, i32 0, i32 1
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [256 x i8], [256 x i8]* %104, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %102, i32 noundef %109)
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %97, !llvm.loop !16

113:                                              ; preds = %97
  %114 = load %struct.JHUFF_TBL*, %struct.JHUFF_TBL** %7, align 8
  %115 = getelementptr inbounds %struct.JHUFF_TBL, %struct.JHUFF_TBL* %114, i32 0, i32 2
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_dri(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %3 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %3, i32 noundef 221)
  %4 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %4, i32 noundef 4)
  %5 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %6 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %6, i32 0, i32 29
  %8 = load i32, i32* %7, align 8
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %5, i32 noundef %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @emit_sos(%struct.jpeg_compress_struct* noundef %0) #0 {
  %2 = alloca %struct.jpeg_compress_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jpeg_component_info*, align 8
  store %struct.jpeg_compress_struct* %0, %struct.jpeg_compress_struct** %2, align 8
  %7 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  call void @emit_marker(%struct.jpeg_compress_struct* noundef %7, i32 noundef 218)
  %8 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %9 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %9, i32 0, i32 41
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %12, 2
  %14 = add nsw i32 %13, 1
  %15 = add nsw i32 %14, 3
  call void @emit_2bytes(%struct.jpeg_compress_struct* noundef %8, i32 noundef %15)
  %16 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %17 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %17, i32 0, i32 41
  %19 = load i32, i32* %18, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %16, i32 noundef %19)
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %72, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %22, i32 0, i32 41
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %20
  %27 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %27, i32 0, i32 42
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x %struct.jpeg_component_info*], [4 x %struct.jpeg_component_info*]* %28, i64 0, i64 %30
  %32 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %31, align 8
  store %struct.jpeg_component_info* %32, %struct.jpeg_component_info** %6, align 8
  %33 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %34 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %35 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %33, i32 noundef %36)
  %37 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %38 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  %40 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %6, align 8
  %41 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %5, align 4
  %43 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %43, i32 0, i32 37
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %26
  %48 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %48, i32 0, i32 47
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  %53 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %53, i32 0, i32 49
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %58, i32 0, i32 24
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %57, %52
  br label %65

64:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63
  br label %66

66:                                               ; preds = %65, %26
  %67 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 %68, 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %69, %70
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %67, i32 noundef %71)
  br label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %20, !llvm.loop !17

75:                                               ; preds = %20
  %76 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %77 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %78 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %77, i32 0, i32 47
  %79 = load i32, i32* %78, align 4
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %76, i32 noundef %79)
  %80 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %81 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %81, i32 0, i32 48
  %83 = load i32, i32* %82, align 8
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %80, i32 noundef %83)
  %84 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %85 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %85, i32 0, i32 49
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 4
  %89 = load %struct.jpeg_compress_struct*, %struct.jpeg_compress_struct** %2, align 8
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, %struct.jpeg_compress_struct* %89, i32 0, i32 50
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  call void @emit_byte(%struct.jpeg_compress_struct* noundef %84, i32 noundef %92)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
