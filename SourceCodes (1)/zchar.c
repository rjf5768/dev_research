; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zchar.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/zchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
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
%struct.gs_font_s = type { %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_s*, %struct.gs_font_dir_s*, i8*, %struct.gs_matrix_s, i32, float, float, float, float, i32, i64, i32 (%struct.gs_show_enum_s*, %struct.gs_state_s*, %struct.gs_font_s*, i32, i8*)*, i8* }
%struct.gs_font_dir_s = type opaque
%struct.gs_show_enum_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.op_def = type { i8*, i32 (%struct.ref_s*)* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }
%struct.gs_point_s = type { float, float }
%struct.gs_type1_state_s = type opaque
%struct.z1_data = type { %struct.font_data_s*, i64*, [2 x i64] }

@esp = external dso_local global %struct.ref_s*, align 8
@igs = external dso_local global %struct.gs_state_s*, align 8
@osp = external dso_local global %struct.ref_s*, align 8
@gs_type1_state_sizeof = external dso_local global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"type1addpath\00", align 1
@zchar_op_init.my_defs = internal global [12 x %struct.op_def] [%struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 (%struct.ref_s*)* @zashow }, %struct.op_def { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 (%struct.ref_s*)* @zawidthshow }, %struct.op_def { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 (%struct.ref_s*)* @zcharpath }, %struct.op_def { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 (%struct.ref_s*)* @zkshow }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcachedevice }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i32 (%struct.ref_s*)* @zsetcharwidth }, %struct.op_def { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 (%struct.ref_s*)* @zshow }, %struct.op_def { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 (%struct.ref_s*)* @zstringwidth }, %struct.op_def { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1addpath }, %struct.op_def { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i32 (%struct.ref_s*)* @ztype1imagepath }, %struct.op_def { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 (%struct.ref_s*)* @zwidthshow }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [7 x i8] c"3ashow\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"6awidthshow\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"2charpath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"2kshow\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"3setcachedevice\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"2setcharwidth\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"1show\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"1stringwidth\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"1type1addpath\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"8type1imagepath\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"4widthshow\00", align 1
@ostop = external dso_local global %struct.ref_s*, align 8
@estop = external dso_local global %struct.ref_s*, align 8
@gs_show_enum_sizeof = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"setup_show\00", align 1
@estack = external dso_local global [0 x %struct.ref_s], align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"free_show\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zshow(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @setup_show(%struct.ref_s* noundef %5, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.gs_show_enum_s*
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = call i32 @gs_show_n_init(%struct.gs_show_enum_s* noundef %16, %struct.gs_state_s* noundef %17, i8* noundef %21, i32 noundef %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  call void @free_show()
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %11
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 -1
  store %struct.ref_s* %34, %struct.ref_s** %3, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = call i32 @show_continue(%struct.ref_s* noundef %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ref_s*, align 8
  %5 = alloca i32 (%struct.ref_s*)*, align 8
  %6 = alloca %struct.gs_show_enum_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %4, align 8
  store i32 (%struct.ref_s*)* %1, i32 (%struct.ref_s*)** %5, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 52
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -20, i32* %3, align 4
  br label %73

14:                                               ; preds = %2
  %15 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i32
  %19 = xor i32 %18, -1
  %20 = and i32 %19, 512
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 -7, i32* %3, align 4
  br label %73

23:                                               ; preds = %14
  %24 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 6
  %26 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %27 = icmp ugt %struct.ref_s* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -5, i32* %3, align 4
  br label %73

29:                                               ; preds = %23
  %30 = load i32, i32* @gs_show_enum_sizeof, align 4
  %31 = call i8* @alloc(i32 noundef 1, i32 noundef %30, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %32 = bitcast i8* %31 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %32, %struct.gs_show_enum_s** %6, align 8
  %33 = icmp eq %struct.gs_show_enum_s* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -25, i32* %3, align 4
  br label %73

35:                                               ; preds = %29
  %36 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 1
  store %struct.ref_s* %37, %struct.ref_s** @esp, align 8
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i32 0, i32 0
  %40 = bitcast %union.v* %39 to i16*
  store i16 1, i16* %40, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  store i16 33, i16* %42, align 8
  %43 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i32 1
  store %struct.ref_s* %44, %struct.ref_s** @esp, align 8
  %45 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %5, align 8
  %46 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %45, i32 (%struct.ref_s*)** %48, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  store i16 37, i16* %50, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %52 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %51, i32 0, i32 2
  store i16 0, i16* %52, align 2
  %53 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 1
  store %struct.ref_s* %54, %struct.ref_s** @esp, align 8
  %55 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i16*
  store i16 0, i16* %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 32, i16* %59, align 8
  %60 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 1
  store %struct.ref_s* %61, %struct.ref_s** @esp, align 8
  %62 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %6, align 8
  %63 = bitcast %struct.gs_show_enum_s* %62 to i8*
  %64 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i32 0, i32 0
  %66 = bitcast %union.v* %65 to i8**
  store i8* %63, i8** %66, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 1
  store i16 52, i16* %68, align 8
  %69 = load i32, i32* @gs_show_enum_sizeof, align 4
  %70 = trunc i32 %69 to i16
  %71 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 2
  store i16 %70, i16* %72, align 2
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %35, %34, %28, %22, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @finish_show(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.ref_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %2, align 8
  ret i32 0
}

declare dso_local i32 @gs_show_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @show_continue(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_show_enum_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ref_s*, align 8
  %7 = alloca %struct.font_data_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 0
  %10 = bitcast %union.v* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %12, %struct.gs_show_enum_s** %4, align 8
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %14 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %117 [
    i32 0, label %16
    i32 2, label %31
    i32 1, label %74
  ]

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -2
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i32 (%struct.ref_s*)**
  %21 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %20, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = call i32 %21(%struct.ref_s* noundef %22)
  store i32 %23, i32* %5, align 4
  call void @free_show()
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ 1, %26 ], [ %28, %27 ]
  store i32 %30, i32* %2, align 4
  br label %119

31:                                               ; preds = %1
  %32 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  store %struct.ref_s* %33, %struct.ref_s** %6, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 2
  store %struct.ref_s* %35, %struct.ref_s** %3, align 8
  store %struct.ref_s* %35, %struct.ref_s** @osp, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %37 = icmp ugt %struct.ref_s* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 -2
  store %struct.ref_s* %40, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %119

41:                                               ; preds = %31
  %42 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %43 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %42)
  %44 = zext i8 %43 to i64
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -1
  %47 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %46, i32 0, i32 0
  %48 = bitcast %union.v* %47 to i64*
  store i64 %44, i64* %48, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -1
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i32 0, i32 1
  store i16 20, i16* %51, align 8
  %52 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %53 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %52)
  %54 = zext i8 %53 to i64
  %55 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i64*
  store i64 %54, i64* %57, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i32 0, i32 1
  store i16 20, i16* %59, align 8
  %60 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 1
  store %struct.ref_s* %61, %struct.ref_s** @esp, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i32 0, i32 0
  %64 = bitcast %union.v* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 1
  store i16 37, i16* %66, align 8
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i32 0, i32 2
  store i16 0, i16* %68, align 2
  %69 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %69, i32 1
  store %struct.ref_s* %70, %struct.ref_s** @esp, align 8
  %71 = load %struct.ref_s*, %struct.ref_s** %6, align 8
  %72 = bitcast %struct.ref_s* %70 to i8*
  %73 = bitcast %struct.ref_s* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 16, i1 false)
  store i32 1, i32* %2, align 4
  br label %119

74:                                               ; preds = %1
  %75 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %76 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %75)
  %77 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.font_data_s*
  store %struct.font_data_s* %79, %struct.font_data_s** %7, align 8
  %80 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %80, i64 2
  store %struct.ref_s* %81, %struct.ref_s** %3, align 8
  store %struct.ref_s* %81, %struct.ref_s** @osp, align 8
  %82 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %83 = icmp ugt %struct.ref_s* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %86 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %85, i64 -2
  store %struct.ref_s* %86, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %119

87:                                               ; preds = %74
  %88 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i64 -1
  %90 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %91 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %90, i32 0, i32 0
  %92 = bitcast %struct.ref_s* %89 to i8*
  %93 = bitcast %struct.ref_s* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false)
  %94 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %4, align 8
  %95 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %94)
  %96 = zext i8 %95 to i64
  %97 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %98 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %97, i32 0, i32 0
  %99 = bitcast %union.v* %98 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %101 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %100, i32 0, i32 1
  store i16 20, i16* %101, align 8
  %102 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i32 1
  store %struct.ref_s* %103, %struct.ref_s** @esp, align 8
  %104 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %105 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %104, i32 0, i32 0
  %106 = bitcast %union.v* %105 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %106, align 8
  %107 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %108 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %107, i32 0, i32 1
  store i16 37, i16* %108, align 8
  %109 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i32 0, i32 2
  store i16 0, i16* %110, align 2
  %111 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %112 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %111, i32 1
  store %struct.ref_s* %112, %struct.ref_s** @esp, align 8
  %113 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %114 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %113, i32 0, i32 1
  %115 = bitcast %struct.ref_s* %112 to i8*
  %116 = bitcast %struct.ref_s* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 16, i1 false)
  store i32 1, i32* %2, align 4
  br label %119

117:                                              ; preds = %1
  call void @free_show()
  %118 = load i32, i32* %5, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %87, %84, %41, %38, %29
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zashow(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %8 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %9 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %7, i32 noundef 2, float* noundef %8)
  store i32 %9, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %13 = call i32 @setup_show(%struct.ref_s* noundef %12, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %13, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %11
  %18 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.gs_show_enum_s*
  %23 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %24 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i32 0, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 @gs_ashow_n_init(%struct.gs_show_enum_s* noundef %22, %struct.gs_state_s* noundef %23, double noundef %26, double noundef %29, i8* noundef %33, i32 noundef %37)
  store i32 %38, i32* %4, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  call void @free_show()
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %49

42:                                               ; preds = %17
  %43 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 -3
  store %struct.ref_s* %44, %struct.ref_s** @osp, align 8
  %45 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %46 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %45, i64 -3
  store %struct.ref_s* %46, %struct.ref_s** %3, align 8
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = call i32 @show_continue(%struct.ref_s* noundef %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %40, %15
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @num_params(...) #1

declare dso_local i32 @gs_ashow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwidthshow(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %72

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 0
  %18 = bitcast %union.v* %17 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 -15, i32* %2, align 4
  br label %72

22:                                               ; preds = %14
  %23 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -2
  %25 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %26 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %24, i32 noundef 2, float* noundef %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = call i32 @setup_show(%struct.ref_s* noundef %29, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %30, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %72

34:                                               ; preds = %28
  %35 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %35, i32 0, i32 0
  %37 = bitcast %union.v* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to %struct.gs_show_enum_s*
  %40 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %41 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -1
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 0
  %50 = bitcast %union.v* %49 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i8
  %53 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i32 0, i32 0
  %55 = bitcast %union.v* %54 to i8**
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %58 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %57, i32 0, i32 2
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = call i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* noundef %39, %struct.gs_state_s* noundef %40, double noundef %43, double noundef %46, i8 noundef signext %52, i8* noundef %56, i32 noundef %60)
  store i32 %61, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %34
  call void @free_show()
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %72

65:                                               ; preds = %34
  %66 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i64 -4
  store %struct.ref_s* %67, %struct.ref_s** @osp, align 8
  %68 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 -4
  store %struct.ref_s* %69, %struct.ref_s** %3, align 8
  %70 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %71 = call i32 @show_continue(%struct.ref_s* noundef %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %65, %63, %32, %21, %13
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8 noundef signext, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zawidthshow(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i64 -3
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i32 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 252
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %85

15:                                               ; preds = %1
  %16 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -3
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i32 0, i32 0
  %19 = bitcast %union.v* %18 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %20, 255
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -15, i32* %2, align 4
  br label %85

23:                                               ; preds = %15
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -4
  %26 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %27 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %25, i32 noundef 2, float* noundef %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -1
  %32 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 0
  %33 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %31, i32 noundef 2, float* noundef %32)
  store i32 %33, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %37 = call i32 @setup_show(%struct.ref_s* noundef %36, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %37, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %29, %23
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %85

41:                                               ; preds = %35
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i32 0, i32 0
  %44 = bitcast %union.v* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to %struct.gs_show_enum_s*
  %47 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %48 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 0
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds [2 x float], [2 x float]* %5, i64 0, i64 1
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %54, i64 -3
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %55, i32 0, i32 0
  %57 = bitcast %union.v* %56 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 0
  %61 = load float, float* %60, align 4
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds [2 x float], [2 x float]* %6, i64 0, i64 1
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %66, i32 0, i32 0
  %68 = bitcast %union.v* %67 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i32 0, i32 2
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i32
  %74 = call i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* noundef %46, %struct.gs_state_s* noundef %47, double noundef %50, double noundef %53, i8 noundef signext %59, double noundef %62, double noundef %65, i8* noundef %69, i32 noundef %73)
  store i32 %74, i32* %4, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %41
  call void @free_show()
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %85

78:                                               ; preds = %41
  %79 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 -6
  store %struct.ref_s* %80, %struct.ref_s** @osp, align 8
  %81 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %82 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %81, i64 -6
  store %struct.ref_s* %82, %struct.ref_s** %3, align 8
  %83 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %84 = call i32 @show_continue(%struct.ref_s* noundef %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %78, %76, %39, %22, %14
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8 noundef signext, double noundef, double noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zkshow(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -1
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i32 0, i32 1
  %8 = load i16, i16* %7, align 8
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 255
  %11 = ashr i32 %10, 2
  switch i32 %11, label %12 [
    i32 0, label %13
    i32 10, label %13
  ]

12:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %62

13:                                               ; preds = %1, %1
  br label %14

14:                                               ; preds = %13
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -1
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 -7, i32* %2, align 4
  br label %62

24:                                               ; preds = %14
  %25 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %26 = call i32 @setup_show(%struct.ref_s* noundef %25, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i32 0, i32 0
  %33 = bitcast %union.v* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.gs_show_enum_s*
  %36 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %39 = bitcast %union.v* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = call i32 @gs_kshow_n_init(%struct.gs_show_enum_s* noundef %35, %struct.gs_state_s* noundef %36, i8* noundef %40, i32 noundef %44)
  store i32 %45, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %30
  call void @free_show()
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %30
  %50 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %51 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %50, i64 -1
  %52 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -1
  %54 = bitcast %struct.ref_s* %51 to i8*
  %55 = bitcast %struct.ref_s* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  %56 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -2
  store %struct.ref_s* %57, %struct.ref_s** @osp, align 8
  %58 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 -2
  store %struct.ref_s* %59, %struct.ref_s** %3, align 8
  %60 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %61 = call i32 @show_continue(%struct.ref_s* noundef %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %49, %47, %28, %23, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @gs_kshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstringwidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = call i32 @setup_show(%struct.ref_s* noundef %5, i32 (%struct.ref_s*)* noundef @finish_stringwidth)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %13 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %12, i32 0, i32 0
  %14 = bitcast %union.v* %13 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.gs_show_enum_s*
  %17 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i32 0, i32 0
  %20 = bitcast %union.v* %19 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i32 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = call i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* noundef %16, %struct.gs_state_s* noundef %17, i8* noundef %21, i32 noundef %25)
  store i32 %26, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  call void @free_show()
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %37

30:                                               ; preds = %11
  %31 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  store %struct.ref_s* %32, %struct.ref_s** @osp, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 -1
  store %struct.ref_s* %34, %struct.ref_s** %3, align 8
  %35 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %36 = call i32 @show_continue(%struct.ref_s* noundef %35)
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %28, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @finish_stringwidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca %struct.gs_point_s, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 0
  %7 = bitcast %union.v* %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.gs_show_enum_s*
  call void @gs_show_width(%struct.gs_show_enum_s* noundef %9, %struct.gs_point_s* noundef %4)
  %10 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %10, i64 2
  store %struct.ref_s* %11, %struct.ref_s** %3, align 8
  store %struct.ref_s* %11, %struct.ref_s** @osp, align 8
  %12 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %13 = icmp ugt %struct.ref_s* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -2
  store %struct.ref_s* %16, %struct.ref_s** @osp, align 8
  store i32 -16, i32* %2, align 4
  br label %34

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 0
  %19 = load float, float* %18, align 4
  %20 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %20, i64 -1
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to float*
  store float %19, float* %23, align 8
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -1
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  store i16 44, i16* %26, align 8
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %4, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %31 = bitcast %union.v* %30 to float*
  store float %28, float* %31, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i32 0, i32 1
  store i16 44, i16* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %17, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcharpath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %5 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 252
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %53

12:                                               ; preds = %1
  %13 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i64 -1
  %15 = call i32 @setup_show(%struct.ref_s* noundef %14, i32 (%struct.ref_s*)* noundef @finish_show)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 0
  %23 = bitcast %union.v* %22 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.gs_show_enum_s*
  %26 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %27 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %27, i64 -1
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 0
  %30 = bitcast %union.v* %29 to i8**
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 -1
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i32 0, i32 0
  %39 = bitcast %union.v* %38 to i16*
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = call i32 @gs_charpath_n_init(%struct.gs_show_enum_s* noundef %25, %struct.gs_state_s* noundef %26, i8* noundef %31, i32 noundef %36, i32 noundef %41)
  store i32 %42, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  call void @free_show()
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %53

46:                                               ; preds = %20
  %47 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %47, i64 -2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 -2
  store %struct.ref_s* %50, %struct.ref_s** %3, align 8
  %51 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %52 = call i32 @show_continue(%struct.ref_s* noundef %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %46, %44, %18, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @gs_charpath_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcachedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [6 x float], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.gs_show_enum_s*, align 8
  %7 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  store i32 6, i32* %5, align 4
  %8 = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %8, %struct.gs_show_enum_s** %6, align 8
  %9 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %10 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 0
  %11 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %9, i32 noundef 6, float* noundef %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %6, align 8
  %13 = icmp eq %struct.gs_show_enum_s* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -21, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %15
  %19 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %19, i32 0, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 255
  %24 = ashr i32 %23, 2
  switch i32 %24, label %25 [
    i32 0, label %26
    i32 10, label %26
  ]

25:                                               ; preds = %18
  store i32 -20, i32* %2, align 4
  br label %82

26:                                               ; preds = %18, %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i32 0, i32 2
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp ne i32 %31, 4
  br i1 %32, label %49, label %33

33:                                               ; preds = %27
  %34 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 -1
  %36 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 0
  %37 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %35, i32 noundef 2, float* noundef %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %41 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %40, i32 0, i32 0
  %42 = bitcast %union.v* %41 to %struct.ref_s**
  %43 = load %struct.ref_s*, %struct.ref_s** %42, align 8
  %44 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %43, i64 3
  %45 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 0
  %46 = getelementptr inbounds float, float* %45, i64 2
  %47 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %44, i32 noundef 4, float* noundef %46)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39, %33, %27
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %82

51:                                               ; preds = %39
  store i32 3, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %15
  %53 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %6, align 8
  %54 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 0
  %55 = load float, float* %54, align 16
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 1
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 2
  %61 = load float, float* %60, align 8
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 3
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 4
  %67 = load float, float* %66, align 16
  %68 = fpext float %67 to double
  %69 = getelementptr inbounds [6 x float], [6 x float]* %4, i64 0, i64 5
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = call i32 @gs_setcachedevice(%struct.gs_show_enum_s* noundef %53, double noundef %56, double noundef %59, double noundef %62, double noundef %65, double noundef %68, double noundef %71)
  store i32 %72, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %52
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %82

76:                                               ; preds = %52
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %79 = sext i32 %77 to i64
  %80 = sub i64 0, %79
  %81 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %78, i64 %80
  store %struct.ref_s* %81, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %74, %49, %25, %14
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @gs_setcachedevice(%struct.gs_show_enum_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcharwidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.gs_show_enum_s*, align 8
  %6 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %7 = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %7, %struct.gs_show_enum_s** %5, align 8
  %8 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %9 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %10 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %8, i32 noundef 2, float* noundef %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %5, align 8
  %12 = icmp eq %struct.gs_show_enum_s* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 -21, i32* %2, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %14
  %18 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %5, align 8
  %19 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 0
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = getelementptr inbounds [2 x float], [2 x float]* %4, i64 0, i64 1
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = call i32 @gs_setcharwidth(%struct.gs_show_enum_s* noundef %18, double noundef %21, double noundef %24)
  store i32 %25, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %32

29:                                               ; preds = %17
  %30 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -2
  store %struct.ref_s* %31, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %27, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @gs_setcharwidth(%struct.gs_show_enum_s* noundef, double noundef, double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1addpath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_show_enum_s*, align 8
  %6 = alloca %struct.gs_font_s*, align 8
  %7 = alloca %struct.font_data_s*, align 8
  %8 = alloca %struct.gs_type1_state_s*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gs_type1_data_s, align 8
  %14 = alloca %struct.z1_data, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ref_s*, align 8
  %17 = alloca %struct.gx_path_s*, align 8
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %18 = call %struct.gs_show_enum_s* @find_show()
  store %struct.gs_show_enum_s* %18, %struct.gs_show_enum_s** %5, align 8
  %19 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %20 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %19)
  store %struct.gs_font_s* %20, %struct.gs_font_s** %6, align 8
  %21 = load %struct.gs_font_s*, %struct.gs_font_s** %6, align 8
  %22 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %21, i32 0, i32 4
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to %struct.font_data_s*
  store %struct.font_data_s* %24, %struct.font_data_s** %7, align 8
  store i8* null, i8** %15, align 8
  %25 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %5, align 8
  %26 = icmp eq %struct.gs_show_enum_s* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 -21, i32* %2, align 4
  br label %207

28:                                               ; preds = %1
  %29 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 8
  %32 = zext i16 %31 to i32
  %33 = and i32 %32, 252
  %34 = icmp eq i32 %33, 52
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 -20, i32* %2, align 4
  br label %207

36:                                               ; preds = %28
  %37 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %38 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %37, i32 0, i32 5
  %39 = bitcast %struct.gs_type1_data_s* %13 to i8*
  %40 = bitcast %struct.gs_type1_data_s* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 32, i1 false)
  %41 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %42 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 0
  store %struct.font_data_s* %41, %struct.font_data_s** %42, align 8
  %43 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %43, i64 0, i64 0
  %45 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 1
  store i64* %44, i64** %45, align 8
  %46 = bitcast %struct.z1_data* %14 to i8*
  %47 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %13, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i32 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %13, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = icmp sle i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -1
  store %struct.ref_s* %57, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %207

58:                                               ; preds = %36
  %59 = load i32, i32* @gs_type1_state_sizeof, align 4
  %60 = call i8* @alloc(i32 noundef 1, i32 noundef %59, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %61 = bitcast i8* %60 to %struct.gs_type1_state_s*
  store %struct.gs_type1_state_s* %61, %struct.gs_type1_state_s** %8, align 8
  %62 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %63 = icmp eq %struct.gs_type1_state_s* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 -25, i32* %2, align 4
  br label %207

65:                                               ; preds = %58
  %66 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %67 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %5, align 8
  %68 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %5, align 8
  %69 = call i32 @gs_show_in_charpath(%struct.gs_show_enum_s* noundef %68)
  %70 = load %struct.gs_font_s*, %struct.gs_font_s** %6, align 8
  %71 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %73, i32 0, i32 0
  %75 = bitcast %union.v* %74 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @gs_type1_init(%struct.gs_type1_state_s* noundef %66, %struct.gs_show_enum_s* noundef %67, i32 noundef %69, i32 noundef %72, i8* noundef %76, %struct.gs_type1_data_s* noundef %13)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %65
  %81 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %82 = bitcast %struct.gs_type1_state_s* %81 to i8*
  %83 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* noundef %82, i32 noundef 1, i32 noundef %83, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %4, align 4
  store i32 %84, i32* %2, align 4
  br label %207

85:                                               ; preds = %65
  br label %86

86:                                               ; preds = %186, %185, %178, %146, %132, %85
  %87 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = call i32 @gs_type1_interpret(%struct.gs_type1_state_s* noundef %87, i8* noundef %88)
  store i32 %89, i32* %4, align 4
  store i8* null, i8** %15, align 8
  %90 = load i32, i32* %4, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %196

92:                                               ; preds = %86
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %92
  %97 = load i32, i32* %4, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %101 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %101, i32 0, i32 2
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = icmp sge i32 %99, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  store i32 -15, i32* %2, align 4
  br label %207

107:                                              ; preds = %96
  %108 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %109 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %108, i32 0, i32 3
  %110 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %111 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %110, i32 0, i32 3
  %112 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %113 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %113, i32 0, i32 0
  %115 = bitcast %union.v* %114 to %struct.ref_s**
  %116 = load %struct.ref_s*, %struct.ref_s** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %116, i64 %118
  %120 = call i32 @dict_lookup(%struct.ref_s* noundef %109, %struct.ref_s* noundef %111, %struct.ref_s* noundef %119, %struct.ref_s** noundef %16)
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  store i32 -21, i32* %2, align 4
  br label %207

123:                                              ; preds = %107
  %124 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  %125 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %124, i32 0, i32 1
  %126 = load i16, i16* %125, align 8
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 255
  %129 = ashr i32 %128, 2
  %130 = icmp ne i32 %129, 13
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  store i32 -10, i32* %2, align 4
  br label %207

132:                                              ; preds = %123
  %133 = load %struct.ref_s*, %struct.ref_s** %16, align 8
  %134 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %133, i32 0, i32 0
  %135 = bitcast %union.v* %134 to i8**
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %15, align 8
  br label %86

137:                                              ; preds = %92
  %138 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %139 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %138, i32 0, i32 7
  %140 = load %struct.gx_path_s*, %struct.gx_path_s** %139, align 8
  store %struct.gx_path_s* %140, %struct.gx_path_s** %17, align 8
  %141 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %142 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef %141, i64* noundef %9)
  %143 = load i32, i32* %4, align 4
  %144 = ashr i32 %143, 1
  %145 = sub nsw i32 %144, 1
  switch i32 %145, label %194 [
    i32 0, label %146
    i32 1, label %178
    i32 2, label %185
    i32 3, label %186
  ]

146:                                              ; preds = %137
  %147 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %148 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %147, %struct.gs_fixed_point_s* noundef %11)
  %149 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %150 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %149, i64 noundef %151, i64 noundef %153)
  %155 = load i32, i32* %12, align 4
  %156 = trunc i32 %155 to i8
  %157 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %158 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %157, i32 0, i32 11
  store i8 %156, i8* %158, align 1
  %159 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %160 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %159, i64 noundef %161, i64 noundef %163)
  %165 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %166 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %167 = getelementptr inbounds [2 x i64], [2 x i64]* %166, i64 0, i64 0
  %168 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef %165, i64* noundef %167)
  %169 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %170 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %171 = getelementptr inbounds [2 x i64], [2 x i64]* %170, i64 0, i64 1
  %172 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef %169, i64* noundef %171)
  %173 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %174 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef %173, i64* noundef %9)
  %175 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %176 = getelementptr inbounds [2 x i64], [2 x i64]* %175, i64 0, i64 2
  %177 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 1
  store i64* %176, i64** %177, align 8
  br label %86

178:                                              ; preds = %137
  %179 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %180 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %179, %struct.gs_fixed_point_s* noundef %10)
  %181 = load %struct.gx_path_s*, %struct.gx_path_s** %17, align 8
  %182 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %181, i32 0, i32 11
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  store i32 %184, i32* %12, align 4
  br label %86

185:                                              ; preds = %137
  br label %86

186:                                              ; preds = %137
  %187 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %188 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef %187, i64* noundef %9)
  %189 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %190 = getelementptr inbounds [2 x i64], [2 x i64]* %189, i64 0, i64 0
  store i64 12288, i64* %190, align 8
  %191 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 2
  %192 = getelementptr inbounds [2 x i64], [2 x i64]* %191, i64 0, i64 1
  %193 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %14, i32 0, i32 1
  store i64* %192, i64** %193, align 8
  br label %86

194:                                              ; preds = %137
  store i32 -15, i32* %4, align 4
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195, %86
  %197 = load %struct.gs_type1_state_s*, %struct.gs_type1_state_s** %8, align 8
  %198 = bitcast %struct.gs_type1_state_s* %197 to i8*
  %199 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* noundef %198, i32 noundef 1, i32 noundef %199, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %200 = load i32, i32* %4, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %204 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %203, i64 -1
  store %struct.ref_s* %204, %struct.ref_s** @osp, align 8
  br label %205

205:                                              ; preds = %202, %196
  %206 = load i32, i32* %4, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %205, %131, %122, %106, %80, %64, %55, %35, %27
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef) #1

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_type1_init(%struct.gs_type1_state_s* noundef, %struct.gs_show_enum_s* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.gs_type1_data_s* noundef) #1

declare dso_local i32 @gs_show_in_charpath(%struct.gs_show_enum_s* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local i32 @gs_type1_interpret(%struct.gs_type1_state_s* noundef, i8* noundef) #1

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #1

declare dso_local i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef, i64* noundef) #1

declare dso_local i32 @gx_path_current_point(%struct.gx_path_s* noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1imagepath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s*, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca i32, align 4
  store %struct.ref_s* %0, %struct.ref_s** %3, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -7
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %7, i32 0, i32 1
  %9 = load i16, i16* %8, align 8
  %10 = zext i16 %9 to i32
  %11 = and i32 %10, 252
  %12 = icmp eq i32 %11, 52
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -20, i32* %2, align 4
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %15, i64 -6
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i32 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 252
  %21 = icmp eq i32 %20, 20
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 -20, i32* %2, align 4
  br label %114

23:                                               ; preds = %14
  %24 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %24, i64 -5
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i32 0, i32 1
  %27 = load i16, i16* %26, align 8
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 252
  %30 = icmp eq i32 %29, 20
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 -20, i32* %2, align 4
  br label %114

32:                                               ; preds = %23
  %33 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 -1
  %35 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %36 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %34, i32 noundef 4, float* noundef %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %114

40:                                               ; preds = %32
  %41 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %41, i32 0, i32 1
  %43 = load i16, i16* %42, align 8
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, 252
  %46 = icmp eq i32 %45, 52
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 -20, i32* %2, align 4
  br label %114

48:                                               ; preds = %40
  %49 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %50 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 8
  %52 = zext i16 %51 to i32
  %53 = xor i32 %52, -1
  %54 = and i32 %53, 256
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 -7, i32* %2, align 4
  br label %114

57:                                               ; preds = %48
  %58 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %59 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %59, i64 -7
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %60, i32 0, i32 0
  %62 = bitcast %union.v* %61 to i8**
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %64, i64 -6
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %65, i32 0, i32 0
  %67 = bitcast %union.v* %66 to i64*
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %71 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %70, i64 -5
  %72 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %71, i32 0, i32 0
  %73 = bitcast %union.v* %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %77 = load float, float* %76, align 16
  %78 = fpext float %77 to double
  %79 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 1
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  %82 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 2
  %83 = load float, float* %82, align 8
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 3
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  %88 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %89 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %88, i32 0, i32 0
  %90 = bitcast %union.v* %89 to i8**
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %93 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %92, i32 0, i32 2
  %94 = load i16, i16* %93, align 2
  %95 = zext i16 %94 to i32
  %96 = call i32 @gs_type1imagepath(%struct.gs_state_s* noundef %58, i8* noundef %63, i32 noundef %69, i32 noundef %75, double noundef %78, double noundef %81, double noundef %84, double noundef %87, i8* noundef %91, i32 noundef %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %57
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %114

101:                                              ; preds = %57
  %102 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %103 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %102, i64 -7
  %104 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %105 = bitcast %struct.ref_s* %103 to i8*
  %106 = bitcast %struct.ref_s* %104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load i32, i32* %5, align 4
  %108 = trunc i32 %107 to i16
  %109 = load %struct.ref_s*, %struct.ref_s** %3, align 8
  %110 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %109, i64 -7
  %111 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %110, i32 0, i32 2
  store i16 %108, i16* %111, align 2
  %112 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %113 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %112, i64 -7
  store %struct.ref_s* %113, %struct.ref_s** @osp, align 8
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %101, %99, %56, %47, %38, %31, %22, %13
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @gs_type1imagepath(%struct.gs_state_s* noundef, i8* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @z1_subr_proc(%struct.gs_type1_data_s* noundef %0, i32 noundef %1, i8** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_type1_data_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.font_data_s*, align 8
  %9 = alloca %struct.ref_s*, align 8
  store %struct.gs_type1_data_s* %0, %struct.gs_type1_data_s** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %5, align 8
  %11 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.z1_data*
  %14 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %13, i32 0, i32 0
  %15 = load %struct.font_data_s*, %struct.font_data_s** %14, align 8
  store %struct.font_data_s* %15, %struct.font_data_s** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.font_data_s*, %struct.font_data_s** %8, align 8
  %21 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i32 0, i32 2
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %3
  store i32 -15, i32* %4, align 4
  br label %49

27:                                               ; preds = %18
  %28 = load %struct.font_data_s*, %struct.font_data_s** %8, align 8
  %29 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i32 0, i32 0
  %31 = bitcast %union.v* %30 to %struct.ref_s**
  %32 = load %struct.ref_s*, %struct.ref_s** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %32, i64 %34
  store %struct.ref_s* %35, %struct.ref_s** %9, align 8
  %36 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 252
  %41 = icmp eq i32 %40, 52
  br i1 %41, label %43, label %42

42:                                               ; preds = %27
  store i32 -20, i32* %4, align 4
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.ref_s*, %struct.ref_s** %9, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i32 0, i32 0
  %46 = bitcast %union.v* %45 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %42, %26
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @z1_pop_proc(%struct.gs_type1_data_s* noundef %0, i64* noundef %1) #0 {
  %3 = alloca %struct.gs_type1_data_s*, align 8
  %4 = alloca i64*, align 8
  store %struct.gs_type1_data_s* %0, %struct.gs_type1_data_s** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.gs_type1_data_s*, %struct.gs_type1_data_s** %3, align 8
  %6 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i32 0, i32 2
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast i8* %7 to %struct.z1_data*
  %9 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %8, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i32 -1
  store i64* %11, i64** %9, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64*, i64** %4, align 8
  store i64 %12, i64* %13, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zchar_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zchar_op_init.my_defs, i64 0, i64 0))
  ret void
}

declare dso_local i32 @z_op_init(...) #1

declare dso_local void @gs_show_width(%struct.gs_show_enum_s* noundef, %struct.gs_point_s* noundef) #1

declare dso_local i32 @gs_show_next(%struct.gs_show_enum_s* noundef) #1

declare dso_local zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef) #1

declare dso_local zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef) #1

declare dso_local zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.gs_show_enum_s* @find_show() #0 {
  %1 = alloca %struct.gs_show_enum_s*, align 8
  %2 = alloca %struct.ref_s*, align 8
  %3 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  store %struct.ref_s* %3, %struct.ref_s** %2, align 8
  br label %4

4:                                                ; preds = %27, %0
  %5 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i32 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, 255
  %10 = ashr i32 %9, 2
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %13, i32 0, i32 0
  %15 = bitcast %union.v* %14 to i16*
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, 1
  br label %19

19:                                               ; preds = %12, %4
  %20 = phi i1 [ false, %4 ], [ %18, %12 ]
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i32 -1
  store %struct.ref_s* %24, %struct.ref_s** %2, align 8
  %25 = icmp ult %struct.ref_s* %24, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.gs_show_enum_s* null, %struct.gs_show_enum_s** %1, align 8
  br label %35

27:                                               ; preds = %22
  br label %4, !llvm.loop !4

28:                                               ; preds = %19
  %29 = load %struct.ref_s*, %struct.ref_s** %2, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 3
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i32 0, i32 0
  %32 = bitcast %union.v* %31 to i8**
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to %struct.gs_show_enum_s*
  store %struct.gs_show_enum_s* %34, %struct.gs_show_enum_s** %1, align 8
  br label %35

35:                                               ; preds = %28, %26
  %36 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  ret %struct.gs_show_enum_s* %36
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_show() #0 {
  %1 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i32 0, i32 0
  %3 = bitcast %union.v* %2 to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = bitcast i8* %4 to %struct.gs_show_enum_s*
  %6 = bitcast %struct.gs_show_enum_s* %5 to i8*
  %7 = load i32, i32* @gs_show_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %6, i32 noundef 1, i32 noundef %7, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %8 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %8, i64 -4
  store %struct.ref_s* %9, %struct.ref_s** @esp, align 8
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
