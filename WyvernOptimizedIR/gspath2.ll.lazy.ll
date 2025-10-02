; ModuleID = './gspath2.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type { %struct.gs_memory_procs, %struct.gs_fixed_rect_s, %struct.segment_s*, %struct.gs_fixed_rect_s, %struct.subpath*, %struct.subpath*, i32, i32, i32, %struct.gs_fixed_point_s, i8, i8, i8 }
%struct.segment_s = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath = type { %struct.segment_s*, %struct.segment_s*, i32, %struct.gs_fixed_point_s, %struct.segment_s*, i32, i32, i8 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gx_bitmap_s = type opaque
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { float, float }
%struct.gs_path_enum_s = type { %struct.segment_s*, %struct.gs_state_s* }

@gs_path_enum_sizeof = dso_local global i32 16, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath2.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad type %x in gs_path_enum_next!\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_flattenpath(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i64 0, i32 8
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 21
  %12 = load float, float* %11, align 8
  %13 = fpext float %12 to double
  %14 = call i32 @gx_path_flatten(%struct.gx_path_s* noundef %10, %struct.gx_path_s* noundef nonnull %2, double noundef %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  br label %24

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %19) #6
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %21 = bitcast %struct.gx_path_s** %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast %struct.gx_path_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %22, i8* noundef nonnull align 8 dereferenceable(144) %23, i64 144, i1 false)
  br label %24

24:                                               ; preds = %17, %16, %7
  %.0 = phi i32 [ %14, %16 ], [ 0, %17 ], [ 0, %7 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_flatten(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef, double noundef) #1

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gs_reversepath(%struct.gs_state_s* nocapture noundef readnone %0) #3 {
  ret i32 -21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_pathbbox(%struct.gs_state_s* noundef %0, %struct.gs_rect_s* noundef %1) #0 {
  %3 = alloca %struct.gs_fixed_rect_s, align 8
  %4 = alloca %struct.gs_rect_s, align 4
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %7 = call i32 @gx_path_bbox(%struct.gx_path_s* noundef %6, %struct.gs_fixed_rect_s* noundef nonnull %3) #6
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %38

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = sitofp i64 %12 to double
  %14 = fmul double %13, 0x3F30000000000000
  %15 = fptrunc double %14 to float
  %16 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i64 0, i32 0, i32 0
  store float %15, float* %16, align 4
  %17 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sitofp i64 %18 to double
  %20 = fmul double %19, 0x3F30000000000000
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i64 0, i32 0, i32 1
  store float %21, float* %22, align 4
  %23 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i64 0, i32 1, i32 0
  store float %27, float* %28, align 4
  %29 = getelementptr inbounds %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s* %3, i64 0, i32 1, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = fmul double %31, 0x3F30000000000000
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.gs_rect_s, %struct.gs_rect_s* %4, i64 0, i32 1, i32 1
  store float %33, float* %34, align 4
  %35 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %36 = bitcast %struct.gs_matrix_fixed_s* %35 to %struct.gs_matrix_s*
  %37 = call i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* noundef nonnull %4, %struct.gs_matrix_s* noundef nonnull %36, %struct.gs_rect_s* noundef %1) #6
  br label %38

38:                                               ; preds = %10, %9
  %.0 = phi i32 [ %7, %9 ], [ %37, %10 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_bbox(%struct.gx_path_s* noundef, %struct.gs_fixed_rect_s* noundef) #1

declare dso_local i32 @gs_bbox_transform_inverse(%struct.gs_rect_s* noundef, %struct.gs_matrix_s* noundef, %struct.gs_rect_s* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @gs_path_enum_init(%struct.gs_path_enum_s* nocapture noundef writeonly %0, %struct.gs_state_s* noundef %1) #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i64 0, i32 7
  %4 = load %struct.gx_path_s*, %struct.gx_path_s** %3, align 8
  %5 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %4, i64 0, i32 4
  %6 = bitcast %struct.subpath** %5 to %struct.segment_s**
  %7 = load %struct.segment_s*, %struct.segment_s** %6, align 8
  %8 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i64 0, i32 0
  store %struct.segment_s* %7, %struct.segment_s** %8, align 8
  %9 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i64 0, i32 1
  store %struct.gs_state_s* %1, %struct.gs_state_s** %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_path_enum_next(%struct.gs_path_enum_s* nocapture noundef %0, %struct.gs_point_s* noundef %1) #0 {
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.gs_point_s*
  %4 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i64 0, i32 0
  %5 = load %struct.segment_s*, %struct.segment_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i64 0, i32 1
  %7 = load %struct.gs_state_s*, %struct.gs_state_s** %6, align 8
  %8 = icmp eq %struct.segment_s* %5, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %91

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 1
  %12 = load %struct.segment_s*, %struct.segment_s** %11, align 8
  %13 = getelementptr inbounds %struct.gs_path_enum_s, %struct.gs_path_enum_s* %0, i64 0, i32 0
  store %struct.segment_s* %12, %struct.segment_s** %13, align 8
  %14 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %91

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 3, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = fptrunc double %22 to float
  %24 = fpext float %23 to double
  %25 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 3, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sitofp i64 %26 to double
  %28 = fmul double %27, 0x3F30000000000000
  %29 = fptrunc double %28 to float
  %30 = fpext float %29 to double
  %31 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %7, double noundef %24, double noundef %30, %struct.gs_point_s* noundef nonnull %tmpcast) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %91

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %84 [
    i32 0, label %37
    i32 1, label %40
    i32 3, label %43
  ]

37:                                               ; preds = %34
  %38 = bitcast %struct.gs_point_s* %1 to i64*
  %39 = load i64, i64* %3, align 8
  store i64 %39, i64* %38, align 4
  br label %91

40:                                               ; preds = %34
  %41 = bitcast %struct.gs_point_s* %1 to i64*
  %42 = load i64, i64* %3, align 8
  store i64 %42, i64* %41, align 4
  br label %91

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 1
  %45 = bitcast %struct.segment_s* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to double
  %48 = fmul double %47, 0x3F30000000000000
  %49 = fptrunc double %48 to float
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 1, i32 1
  %52 = bitcast %struct.segment_s** %51 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = sitofp i64 %53 to double
  %55 = fmul double %54, 0x3F30000000000000
  %56 = fptrunc double %55 to float
  %57 = fpext float %56 to double
  %58 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %7, double noundef %50, double noundef %57, %struct.gs_point_s* noundef %1) #6
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 1, i32 2
  %62 = bitcast i32* %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = sitofp i64 %63 to double
  %65 = fmul double %64, 0x3F30000000000000
  %66 = fptrunc double %65 to float
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 1, i32 2
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = bitcast i32* %69 to i64*
  %71 = load i64, i64* %70, align 8
  %72 = sitofp i64 %71 to double
  %73 = fmul double %72, 0x3F30000000000000
  %74 = fptrunc double %73 to float
  %75 = fpext float %74 to double
  %76 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 1
  %77 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %7, double noundef %67, double noundef %75, %struct.gs_point_s* noundef nonnull %76) #6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %60, %43
  br label %91

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %1, i64 2
  %82 = bitcast %struct.gs_point_s* %81 to i64*
  %83 = load i64, i64* %3, align 8
  store i64 %83, i64* %82, align 4
  br label %91

84:                                               ; preds = %34
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %85, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 noundef 125) #7
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %88 = getelementptr inbounds %struct.segment_s, %struct.segment_s* %5, i64 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %87, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 noundef %89) #7
  call void @exit(i32 noundef 1) #8
  unreachable

91:                                               ; preds = %80, %79, %40, %37, %33, %17, %9
  %.0 = phi i32 [ 0, %9 ], [ 4, %17 ], [ %31, %33 ], [ 0, %79 ], [ 3, %80 ], [ 2, %40 ], [ 1, %37 ]
  ret i32 %.0
}

declare dso_local i32 @gs_itransform(...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_clippath(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = call i32 @gx_path_copy(%struct.gx_path_s* noundef %3, %struct.gx_path_s* noundef %5) #6
  ret i32 %6
}

declare dso_local i32 @gx_path_copy(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_initclip(%struct.gs_state_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 12
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 12
  %14 = call i32 @gx_clip_to_rectangle(%struct.gs_state_s* noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef %9, i64 noundef %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_clip(%struct.gs_state_s* nocapture noundef %0) #0 {
  %2 = call i32 @common_clip(%struct.gs_state_s* noundef %0, i32 noundef -1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @common_clip(%struct.gs_state_s* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.gx_path_s, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 21
  %7 = load float, float* %6, align 8
  %8 = fpext float %7 to double
  %9 = call i32 @gx_path_flatten(%struct.gx_path_s* noundef %5, %struct.gx_path_s* noundef nonnull %3, double noundef %8) #6
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @set_clip_path(%struct.gs_state_s* noundef %0, %struct.gx_path_s* noundef nonnull %3, i32 noundef %1)
  br label %12

12:                                               ; preds = %10, %2
  %.0 = phi i32 [ %9, %2 ], [ %11, %10 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_eoclip(%struct.gs_state_s* nocapture noundef %0) #0 {
  %2 = call i32 @common_clip(%struct.gs_state_s* noundef %0, i32 noundef 1)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_clip_to_rectangle(%struct.gs_state_s* noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca %struct.gx_path_s, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef nonnull %6, %struct.gs_memory_procs* noundef nonnull %7) #6
  %8 = call i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef nonnull %6, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #6
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  call void @gx_path_release(%struct.gx_path_s* noundef nonnull %6) #6
  br label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %12, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %13) #6
  %14 = call i32 @set_clip_path(%struct.gs_state_s* noundef %0, %struct.gx_path_s* noundef nonnull %6, i32 noundef -1)
  br label %15

15:                                               ; preds = %11, %10
  %.0 = phi i32 [ %8, %10 ], [ %14, %11 ]
  ret i32 %.0
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

declare dso_local i32 @gx_path_add_rectangle(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_clip_path(%struct.gs_state_s* nocapture noundef %0, %struct.gx_path_s* noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 3
  %5 = call i32 @gx_path_is_rectangle(%struct.gx_path_s* noundef %1, %struct.gs_fixed_rect_s* noundef nonnull %4) #6
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 3, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 3, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 3, i32 1, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 3, i32 1, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %6, %3
  %12 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %1, i64 0, i32 1
  %13 = call i32 @gx_path_bbox(%struct.gx_path_s* noundef %1, %struct.gs_fixed_rect_s* noundef nonnull %12) #6
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 8
  %15 = bitcast %struct.gx_path_s** %14 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast %struct.gx_path_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %16, i8* noundef nonnull align 8 dereferenceable(144) %17, i64 144, i1 false)
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 9
  store i32 %2, i32* %18, align 8
  ret i32 0
}

declare dso_local i32 @gx_path_is_rectangle(%struct.gx_path_s* noundef, %struct.gs_fixed_rect_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
