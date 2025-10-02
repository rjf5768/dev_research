; ModuleID = './jdapimin.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/jpeg/jpeg-6a/jdapimin.c"
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
%struct.jpeg_source_mgr = type { i8*, i64, void (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*, i64)*, i32 (%struct.jpeg_decompress_struct*, i32)*, void (%struct.jpeg_decompress_struct*)* }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.JQUANT_TBL*, i8* }
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_CreateDecompress(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 1
  store %struct.jpeg_memory_mgr* null, %struct.jpeg_memory_mgr** %4, align 8
  %.not = icmp eq i32 %1, 61
  br i1 %.not, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %7 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %7, i64 0, i32 5
  store i32 10, i32* %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 6, i32 0, i64 0
  store i32 61, i32* %11, align 4
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %13 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %12, align 8
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %13, i64 0, i32 6, i32 0, i64 1
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 0
  %18 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %17, align 8
  %19 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %18(%struct.jpeg_common_struct* noundef %19) #3
  br label %20

20:                                               ; preds = %5, %3
  %.not1 = icmp eq i64 %2, 616
  br i1 %.not1, label %37, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 5
  store i32 19, i32* %24, align 8
  %25 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %26 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %25, align 8
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %26, i64 0, i32 6, i32 0, i64 0
  store i32 616, i32* %27, align 4
  %28 = trunc i64 %2 to i32
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 6, i32 0, i64 1
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 0
  %35 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %34, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36) #3
  br label %37

37:                                               ; preds = %21, %20
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %39 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %38, align 8
  %40 = bitcast %struct.jpeg_decompress_struct* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(616) %40, i8 0, i64 616, i1 false)
  %41 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  store %struct.jpeg_error_mgr* %39, %struct.jpeg_error_mgr** %41, align 8
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 3
  store i32 1, i32* %42, align 8
  %43 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef %43) #3
  %44 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 2
  store %struct.jpeg_progress_mgr* null, %struct.jpeg_progress_mgr** %44, align 8
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  store %struct.jpeg_source_mgr* null, %struct.jpeg_source_mgr** %45, align 8
  br label %46

46:                                               ; preds = %51, %37
  %.0 = phi i32 [ 0, %37 ], [ %52, %51 ]
  %47 = icmp ult i32 %.0, 4
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = zext i32 %.0 to i64
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 39, i64 %49
  store %struct.JQUANT_TBL* null, %struct.JQUANT_TBL** %50, align 8
  br label %51

51:                                               ; preds = %48
  %52 = add nuw nsw i32 %.0, 1
  br label %46, !llvm.loop !4

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %61, %53
  %.1 = phi i32 [ 0, %53 ], [ %62, %61 ]
  %55 = icmp ult i32 %.1, 4
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  %57 = zext i32 %.1 to i64
  %58 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 40, i64 %57
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %58, align 8
  %59 = zext i32 %.1 to i64
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 41, i64 %59
  store %struct.JHUFF_TBL* null, %struct.JHUFF_TBL** %60, align 8
  br label %61

61:                                               ; preds = %56
  %62 = add nuw nsw i32 %.1, 1
  br label %54, !llvm.loop !6

63:                                               ; preds = %54
  call void @jinit_marker_reader(%struct.jpeg_decompress_struct* noundef %0) #3
  call void @jinit_input_controller(%struct.jpeg_decompress_struct* noundef %0) #3
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 200, i32* %64, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @jinit_memory_mgr(%struct.jpeg_common_struct* noundef) #2

declare dso_local void @jinit_marker_reader(%struct.jpeg_decompress_struct* noundef) #2

declare dso_local void @jinit_input_controller(%struct.jpeg_decompress_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_destroy_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_destroy(%struct.jpeg_common_struct* noundef %2) #3
  ret void
}

declare dso_local void @jpeg_destroy(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_abort_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %2) #3
  ret void
}

declare dso_local void @jpeg_abort(%struct.jpeg_common_struct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @jpeg_set_marker_processor(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1, i32 (%struct.jpeg_decompress_struct*)* noundef %2) #0 {
  %4 = icmp eq i32 %1, 254
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 78
  %7 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %6, align 8
  %8 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %7, i64 0, i32 3
  store i32 (%struct.jpeg_decompress_struct*)* %2, i32 (%struct.jpeg_decompress_struct*)** %8, align 8
  br label %32

9:                                                ; preds = %3
  %10 = icmp sgt i32 %1, 223
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = icmp slt i32 %1, 240
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 78
  %15 = load %struct.jpeg_marker_reader*, %struct.jpeg_marker_reader** %14, align 8
  %16 = add nsw i32 %1, -224
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.jpeg_marker_reader, %struct.jpeg_marker_reader* %15, i64 0, i32 4, i64 %17
  store i32 (%struct.jpeg_decompress_struct*)* %2, i32 (%struct.jpeg_decompress_struct*)** %18, align 8
  br label %31

19:                                               ; preds = %11, %9
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %21 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %20, align 8
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %21, i64 0, i32 5
  store i32 67, i32* %22, align 8
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 6, i32 0, i64 0
  store i32 %1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %27 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %27, i64 0, i32 0
  %29 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %28, align 8
  %30 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %29(%struct.jpeg_common_struct* noundef %30) #3
  br label %31

31:                                               ; preds = %19, %13
  br label %32

32:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_read_header(%struct.jpeg_decompress_struct* noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %4 = load i32, i32* %3, align 4
  %.not = icmp eq i32 %4, 200
  br i1 %.not, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %.not2 = icmp eq i32 %7, 201
  br i1 %.not2, label %22, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %10 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %10, i64 0, i32 5
  store i32 18, i32* %11, align 8
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %15 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %14, align 8
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %15, i64 0, i32 6, i32 0, i64 0
  store i32 %13, i32* %16, align 4
  %17 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %18 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %17, align 8
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %18, i64 0, i32 0
  %20 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %19, align 8
  %21 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %20(%struct.jpeg_common_struct* noundef %21) #3
  br label %22

22:                                               ; preds = %8, %5, %2
  %23 = call i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* noundef %0)
  switch i32 %23, label %38 [
    i32 1, label %24
    i32 2, label %25
    i32 0, label %37
  ]

24:                                               ; preds = %22
  br label %38

25:                                               ; preds = %22
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %35, label %26

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %28 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %27, align 8
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %28, i64 0, i32 5
  store i32 50, i32* %29, align 8
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %31 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %30, align 8
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %31, i64 0, i32 0
  %33 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %32, align 8
  %34 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %33(%struct.jpeg_common_struct* noundef %34) #3
  br label %35

35:                                               ; preds = %26, %25
  %36 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %36) #3
  br label %38

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %35, %24, %22
  %.0 = phi i32 [ %23, %22 ], [ %23, %37 ], [ 2, %35 ], [ 1, %24 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_consume_input(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %31 [
    i32 200, label %4
    i32 201, label %14
    i32 202, label %24
    i32 203, label %25
    i32 204, label %25
    i32 205, label %25
    i32 206, label %25
    i32 207, label %25
    i32 208, label %25
    i32 210, label %25
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %6 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %5, align 8
  %7 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %6, i64 0, i32 1
  %8 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %7, align 8
  call void %8(%struct.jpeg_decompress_struct* noundef %0) #3
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %10 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %9, align 8
  %11 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %10, i64 0, i32 2
  %12 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %11, align 8
  call void %12(%struct.jpeg_decompress_struct* noundef %0) #3
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 201, i32* %13, align 4
  br label %14

14:                                               ; preds = %4, %1
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %16 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %16, i64 0, i32 0
  %18 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %17, align 8
  %19 = call i32 %18(%struct.jpeg_decompress_struct* noundef %0) #3
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  call void @default_decompress_parms(%struct.jpeg_decompress_struct* noundef %0)
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 202, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %14
  br label %45

24:                                               ; preds = %1
  br label %45

25:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %27 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %26, align 8
  %28 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %27, i64 0, i32 0
  %29 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %28, align 8
  %30 = call i32 %29(%struct.jpeg_decompress_struct* noundef %0) #3
  br label %45

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 5
  store i32 18, i32* %34, align 8
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %38 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %37, align 8
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %38, i64 0, i32 6, i32 0, i64 0
  store i32 %36, i32* %39, align 4
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %41 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %41, i64 0, i32 0
  %43 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %42, align 8
  %44 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %43(%struct.jpeg_common_struct* noundef %44) #3
  br label %45

45:                                               ; preds = %31, %25, %24, %23
  %.0 = phi i32 [ 0, %31 ], [ %30, %25 ], [ 1, %24 ], [ %19, %23 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @default_decompress_parms(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 8
  %3 = load i32, i32* %2, align 8
  switch i32 %3, label %116 [
    i32 1, label %4
    i32 3, label %7
    i32 4, label %85
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  store i32 1, i32* %6, align 8
  br label %119

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 50
  %9 = load i32, i32* %8, align 4
  %.not1 = icmp eq i32 %9, 0
  br i1 %.not1, label %12, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 3, i32* %11, align 4
  br label %83

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 54
  %14 = load i32, i32* %13, align 8
  %.not2 = icmp eq i32 %14, 0
  br i1 %.not2, label %39, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 55
  %17 = load i8, i8* %16, align 4
  switch i8 %17, label %22 [
    i8 0, label %18
    i8 1, label %20
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 2, i32* %19, align 4
  br label %38

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 3, i32* %21, align 4
  br label %38

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %24 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %23, align 8
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %24, i64 0, i32 5
  store i32 110, i32* %25, align 8
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 55
  %27 = load i8, i8* %26, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %30 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %29, align 8
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %30, i64 0, i32 6, i32 0, i64 0
  store i32 %28, i32* %31, align 4
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %33 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %32, align 8
  %34 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %33, i64 0, i32 1
  %35 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %34, align 8
  %36 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %35(%struct.jpeg_common_struct* noundef %36, i32 noundef -1) #3
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 3, i32* %37, align 4
  br label %38

38:                                               ; preds = %22, %20, %18
  br label %82

39:                                               ; preds = %12
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 43
  %41 = load %struct.jpeg_component_info*, %struct.jpeg_component_info** %40, align 8
  %42 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 1, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.jpeg_component_info, %struct.jpeg_component_info* %41, i64 2, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %43, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = icmp eq i32 %45, 2
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = icmp eq i32 %47, 3
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 3, i32* %54, align 4
  br label %81

55:                                               ; preds = %51, %49, %39
  %56 = icmp eq i32 %43, 82
  br i1 %56, label %57, label %63

57:                                               ; preds = %55
  %58 = icmp eq i32 %45, 71
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = icmp eq i32 %47, 66
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 2, i32* %62, align 4
  br label %80

63:                                               ; preds = %59, %57, %55
  br label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %66 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i64 0, i32 6, i32 0, i64 0
  store i32 %43, i32* %67, align 4
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i64 0, i32 6, i32 0, i64 1
  store i32 %45, i32* %68, align 4
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %66, i64 0, i32 6, i32 0, i64 2
  store i32 %47, i32* %69, align 4
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %71 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %70, align 8
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %71, i64 0, i32 5
  store i32 107, i32* %72, align 8
  %73 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %74 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %73, align 8
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %74, i64 0, i32 1
  %76 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %75, align 8
  %77 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %76(%struct.jpeg_common_struct* noundef %77, i32 noundef 1) #3
  br label %78

78:                                               ; preds = %64
  %79 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 3, i32* %79, align 4
  br label %80

80:                                               ; preds = %78, %61
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %38
  br label %83

83:                                               ; preds = %82, %10
  %84 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  store i32 2, i32* %84, align 8
  br label %119

85:                                               ; preds = %1
  %86 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 54
  %87 = load i32, i32* %86, align 8
  %.not = icmp eq i32 %87, 0
  br i1 %.not, label %112, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 55
  %90 = load i8, i8* %89, align 4
  switch i8 %90, label %95 [
    i8 0, label %91
    i8 2, label %93
  ]

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 4, i32* %92, align 4
  br label %111

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 5, i32* %94, align 4
  br label %111

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %97 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %96, align 8
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %97, i64 0, i32 5
  store i32 110, i32* %98, align 8
  %99 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 55
  %100 = load i8, i8* %99, align 4
  %101 = zext i8 %100 to i32
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %103 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %102, align 8
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %103, i64 0, i32 6, i32 0, i64 0
  store i32 %101, i32* %104, align 4
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %106 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %105, align 8
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %106, i64 0, i32 1
  %108 = load void (%struct.jpeg_common_struct*, i32)*, void (%struct.jpeg_common_struct*, i32)** %107, align 8
  %109 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %108(%struct.jpeg_common_struct* noundef %109, i32 noundef -1) #3
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 5, i32* %110, align 4
  br label %111

111:                                              ; preds = %95, %93, %91
  br label %114

112:                                              ; preds = %85
  %113 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 4, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %111
  %115 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  store i32 4, i32* %115, align 8
  br label %119

116:                                              ; preds = %1
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 9
  store i32 0, i32* %117, align 4
  %118 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 10
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %114, %83, %4
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 11
  store i32 1, i32* %120, align 4
  %121 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 12
  store i32 1, i32* %121, align 8
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 13
  store double 1.000000e+00, double* %122, align 8
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  store i32 0, i32* %123, align 8
  %124 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 15
  store i32 0, i32* %124, align 4
  %125 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 16
  store i32 0, i32* %125, align 8
  %126 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 17
  store i32 1, i32* %126, align 4
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 18
  store i32 1, i32* %127, align 8
  %128 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 19
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 20
  store i32 2, i32* %129, align 8
  %130 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 21
  store i32 1, i32* %130, align 4
  %131 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 22
  store i32 256, i32* %131, align 8
  %132 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 32
  store i8** null, i8*** %132, align 8
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 23
  store i32 0, i32* %133, align 4
  %134 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 24
  store i32 0, i32* %134, align 8
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 25
  store i32 0, i32* %135, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_input_complete(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 200
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 210
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 18, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 6, i32 0, i64 0
  store i32 %14, i32* %17, align 4
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %22) #3
  br label %23

23:                                               ; preds = %9, %5
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %25 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i64 0, i32 5
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_has_multiple_scans(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 202
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 210
  br i1 %8, label %9, label %23

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %11 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %10, align 8
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %11, i64 0, i32 5
  store i32 18, i32* %12, align 8
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %16 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %15, align 8
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %16, i64 0, i32 6, i32 0, i64 0
  store i32 %14, i32* %17, align 4
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %19 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %18, align 8
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %19, i64 0, i32 0
  %21 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %20, align 8
  %22 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %21(%struct.jpeg_common_struct* noundef %22) #3
  br label %23

23:                                               ; preds = %9, %5
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %25 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %24, align 8
  %26 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %25, i64 0, i32 4
  %27 = load i32, i32* %26, align 8
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @jpeg_finish_decompress(%struct.jpeg_decompress_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 205
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 206
  br i1 %8, label %9, label %33

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 14
  %11 = load i32, i32* %10, align 8
  %.not2 = icmp eq i32 %11, 0
  br i1 %.not2, label %12, label %33

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 33
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 27
  %16 = load i32, i32* %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %20 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %19, align 8
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %20, i64 0, i32 5
  store i32 66, i32* %21, align 8
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %23 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %22, align 8
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %23, i64 0, i32 0
  %25 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %24, align 8
  %26 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %25(%struct.jpeg_common_struct* noundef %26) #3
  br label %27

27:                                               ; preds = %18, %12
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 73
  %29 = load %struct.jpeg_decomp_master*, %struct.jpeg_decomp_master** %28, align 8
  %30 = getelementptr inbounds %struct.jpeg_decomp_master, %struct.jpeg_decomp_master* %29, i64 0, i32 1
  %31 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %30, align 8
  call void %31(%struct.jpeg_decompress_struct* noundef %0) #3
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 210, i32* %32, align 4
  br label %58

33:                                               ; preds = %9, %5
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 207
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  store i32 210, i32* %38, align 4
  br label %57

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %41 = load i32, i32* %40, align 4
  %.not = icmp eq i32 %41, 210
  br i1 %.not, label %56, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %44 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %43, align 8
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %44, i64 0, i32 5
  store i32 18, i32* %45, align 8
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %49 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %48, align 8
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %49, i64 0, i32 6, i32 0, i64 0
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 0
  %52 = load %struct.jpeg_error_mgr*, %struct.jpeg_error_mgr** %51, align 8
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, %struct.jpeg_error_mgr* %52, i64 0, i32 0
  %54 = load void (%struct.jpeg_common_struct*)*, void (%struct.jpeg_common_struct*)** %53, align 8
  %55 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void %54(%struct.jpeg_common_struct* noundef %55) #3
  br label %56

56:                                               ; preds = %42, %39
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %27
  br label %59

59:                                               ; preds = %72, %58
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %61 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %60, align 8
  %62 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %61, i64 0, i32 5
  %63 = load i32, i32* %62, align 4
  %.not1 = icmp eq i32 %63, 0
  br i1 %.not1, label %64, label %73

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 77
  %66 = load %struct.jpeg_input_controller*, %struct.jpeg_input_controller** %65, align 8
  %67 = getelementptr inbounds %struct.jpeg_input_controller, %struct.jpeg_input_controller* %66, i64 0, i32 0
  %68 = load i32 (%struct.jpeg_decompress_struct*)*, i32 (%struct.jpeg_decompress_struct*)** %67, align 8
  %69 = call i32 %68(%struct.jpeg_decompress_struct* noundef %0) #3
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %79

72:                                               ; preds = %64
  br label %59, !llvm.loop !7

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.jpeg_decompress_struct, %struct.jpeg_decompress_struct* %0, i64 0, i32 5
  %75 = load %struct.jpeg_source_mgr*, %struct.jpeg_source_mgr** %74, align 8
  %76 = getelementptr inbounds %struct.jpeg_source_mgr, %struct.jpeg_source_mgr* %75, i64 0, i32 6
  %77 = load void (%struct.jpeg_decompress_struct*)*, void (%struct.jpeg_decompress_struct*)** %76, align 8
  call void %77(%struct.jpeg_decompress_struct* noundef %0) #3
  %78 = bitcast %struct.jpeg_decompress_struct* %0 to %struct.jpeg_common_struct*
  call void @jpeg_abort(%struct.jpeg_common_struct* noundef %78) #3
  br label %79

79:                                               ; preds = %73, %71
  %.0 = phi i32 [ 0, %71 ], [ 1, %73 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
