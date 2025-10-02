; ModuleID = './zchar.ll'
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
%_wyvern_thunk_type.0 = type { %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.gs_type1_data_s }
%struct.gs_type1_data_s = type { i32 (%struct.gs_type1_data_s*, i32, i8**)*, i32 (%struct.gs_type1_data_s*, i64*)*, i8*, i32 }
%_wyvern_thunk_type.2 = type { %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s*, i1, %struct.ref_s* }
%_wyvern_thunk_type.4 = type { %struct.ref_s* (%_wyvern_thunk_type.4*)*, %struct.ref_s*, i1, %struct.ref_s* }
%_wyvern_thunk_type.6 = type { %struct.ref_s* (%_wyvern_thunk_type.6*)*, %struct.ref_s*, i1, %struct.ref_s* }
%_wyvern_thunk_type.8 = type { %struct.ref_s* (%_wyvern_thunk_type.8*)*, %struct.ref_s*, i1, %struct.ref_s* }
%_wyvern_thunk_type.10 = type { %struct.ref_s* (%_wyvern_thunk_type.10*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.gs_point_s = type { float, float }
%_wyvern_thunk_type.12 = type { %struct.ref_s* (%_wyvern_thunk_type.12*)*, %struct.ref_s*, i1, %struct.ref_s* }
%struct.z1_data = type { %struct.font_data_s*, i64*, [2 x i64] }
%struct.gs_type1_state_s = type opaque

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
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %2 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %21

5:                                                ; preds = %1
  %6 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %6, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = bitcast %struct.ref_s* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 @gs_show_n_init(%struct.gs_show_enum_s* noundef %7, %struct.gs_state_s* noundef %8, i8* noundef %10, i32 noundef %13) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  call void @free_show()
  br label %21

17:                                               ; preds = %5
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_zshow_657538560, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %20 = call i32 @_wyvern_calleeclone_show_continue_0962476861(%_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  br label %21

21:                                               ; preds = %17, %16, %4
  %.0 = phi i32 [ %2, %4 ], [ %14, %16 ], [ %20, %17 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @setup_show(%struct.ref_s* nocapture noundef readonly %0, i32 (%struct.ref_s*)* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 52
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %44

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 512
  %.not.not = icmp eq i16 %11, 0
  br i1 %.not.not, label %12, label %13

12:                                               ; preds = %8
  br label %44

13:                                               ; preds = %8
  %14 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %14, i64 6
  %16 = load %struct.ref_s*, %struct.ref_s** @estop, align 8
  %17 = icmp ugt %struct.ref_s* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %44

19:                                               ; preds = %13
  %20 = load i32, i32* @gs_show_enum_sizeof, align 4
  %21 = call i8* @alloc(i32 noundef 1, i32 noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #7
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %44

24:                                               ; preds = %19
  %25 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 1
  store %struct.ref_s* %26, %struct.ref_s** @esp, align 8
  %27 = bitcast %struct.ref_s* %26 to i16*
  store i16 1, i16* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 1, i32 1
  store i16 33, i16* %28, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2
  store %struct.ref_s* %29, %struct.ref_s** @esp, align 8
  %30 = bitcast %struct.ref_s* %29 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* %1, i32 (%struct.ref_s*)** %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2, i32 1
  store i16 37, i16* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %25, i64 2, i32 2
  store i16 0, i16* %32, align 2
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i16*
  store i16 0, i16* %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 32, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 2
  store %struct.ref_s* %37, %struct.ref_s** @esp, align 8
  %38 = bitcast %struct.ref_s* %37 to i8**
  store i8* %21, i8** %38, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 2, i32 1
  store i16 52, i16* %39, align 8
  %40 = load i32, i32* @gs_show_enum_sizeof, align 4
  %41 = trunc i32 %40 to i16
  %42 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %43 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %42, i64 0, i32 2
  store i16 %41, i16* %43, align 2
  br label %44

44:                                               ; preds = %24, %23, %18, %12, %7
  %.0 = phi i32 [ -7, %12 ], [ -5, %18 ], [ -25, %23 ], [ 1, %24 ], [ -20, %7 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal i32 @finish_show(%struct.ref_s* nocapture noundef readnone %0) #1 {
  ret i32 0
}

declare dso_local i32 @gs_show_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @show_continue(%struct.ref_s* noundef %0) #0 {
  %2 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %3 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %2, align 8
  %4 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %3) #7
  switch i32 %4, label %73 [
    i32 0, label %5
    i32 2, label %16
    i32 1, label %43
  ]

5:                                                ; preds = %1
  %6 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %7 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %6, i64 -2, i32 0
  %8 = bitcast %union.v* %7 to i32 (%struct.ref_s*)**
  %9 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %8, align 8
  %10 = call i32 %9(%struct.ref_s* noundef %0) #7
  call void @free_show()
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %14

13:                                               ; preds = %5
  br label %14

14:                                               ; preds = %13, %12
  %15 = phi i32 [ 1, %12 ], [ %10, %13 ]
  br label %74

16:                                               ; preds = %1
  %17 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %18 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %18, %struct.ref_s** @osp, align 8
  %19 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %20 = icmp ugt %struct.ref_s* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %22, i64 -2
  store %struct.ref_s* %23, %struct.ref_s** @osp, align 8
  br label %74

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 -1
  %26 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %3) #7
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 20, i16* %29, align 8
  %30 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %3) #7
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 0, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 20, i16* %33, align 8
  %34 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %35 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1
  store %struct.ref_s* %35, %struct.ref_s** @esp, align 8
  %36 = bitcast %struct.ref_s* %35 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1, i32 1
  store i16 37, i16* %37, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %34, i64 1, i32 2
  store i16 0, i16* %38, align 2
  %39 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %40 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %39, i64 1
  store %struct.ref_s* %40, %struct.ref_s** @esp, align 8
  %41 = bitcast %struct.ref_s* %40 to i8*
  %42 = bitcast %struct.ref_s* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %41, i8* noundef nonnull align 8 dereferenceable(16) %42, i64 16, i1 false)
  br label %74

43:                                               ; preds = %1
  %44 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %45 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %44) #7
  %46 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %45, i64 0, i32 4
  %47 = bitcast i8** %46 to %struct.font_data_s**
  %48 = load %struct.font_data_s*, %struct.font_data_s** %47, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %49, %struct.ref_s** @osp, align 8
  %50 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %51 = icmp ugt %struct.ref_s* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %54 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %53, i64 -2
  store %struct.ref_s* %54, %struct.ref_s** @osp, align 8
  br label %74

55:                                               ; preds = %43
  %56 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1
  %57 = bitcast %struct.ref_s* %56 to i8*
  %58 = bitcast %struct.font_data_s* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %57, i8* noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false)
  %59 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %3) #7
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %49, i64 0, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 20, i16* %62, align 8
  %63 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %64 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1
  store %struct.ref_s* %64, %struct.ref_s** @esp, align 8
  %65 = bitcast %struct.ref_s* %64 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1, i32 1
  store i16 37, i16* %66, align 8
  %67 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %63, i64 1, i32 2
  store i16 0, i16* %67, align 2
  %68 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %68, i64 1
  store %struct.ref_s* %69, %struct.ref_s** @esp, align 8
  %70 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %48, i64 0, i32 1
  %71 = bitcast %struct.ref_s* %69 to i8*
  %72 = bitcast %struct.ref_s* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %71, i8* noundef nonnull align 8 dereferenceable(16) %72, i64 16, i1 false)
  br label %74

73:                                               ; preds = %1
  call void @free_show()
  br label %74

74:                                               ; preds = %73, %55, %52, %24, %21, %14
  %.0 = phi i32 [ %4, %73 ], [ -16, %52 ], [ 1, %55 ], [ -16, %21 ], [ 1, %24 ], [ %15, %14 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zashow(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %4 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %5 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %3, i32 noundef 2, float* noundef nonnull %4) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  %.01 = phi i32 [ %5, %1 ], [ %8, %7 ]
  br label %33

11:                                               ; preds = %7
  %12 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %13 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %12, align 8
  %14 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %15 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = bitcast %struct.ref_s* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = call i32 @gs_ashow_n_init(%struct.gs_show_enum_s* noundef %13, %struct.gs_state_s* noundef %14, double noundef %17, double noundef %20, i8* noundef %22, i32 noundef %25) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %11
  call void @free_show()
  br label %33

29:                                               ; preds = %11
  %30 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %30, i64 -3
  store %struct.ref_s* %31, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_zashow_489999590, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %32 = call i32 @_wyvern_calleeclone_show_continue_0883044647(%_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca)
  br label %33

33:                                               ; preds = %29, %28, %10
  %.0 = phi i32 [ %.01, %10 ], [ %26, %28 ], [ %32, %29 ]
  ret i32 %.0
}

declare dso_local i32 @num_params(...) #2

declare dso_local i32 @gs_ashow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zwidthshow(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.4, align 8
  %2 = alloca [2 x float], align 4
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 20
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %47

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ugt i64 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %47

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -2
  %15 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %16 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %14, i32 noundef 2, float* noundef nonnull %15) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %13
  %.01 = phi i32 [ %16, %13 ], [ %19, %18 ]
  br label %47

22:                                               ; preds = %18
  %23 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %24 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %23, align 8
  %25 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %26 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %27 = load float, float* %26, align 4
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %30 = load float, float* %29, align 4
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i8
  %35 = bitcast %struct.ref_s* %0 to i8**
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = call i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* noundef %24, %struct.gs_state_s* noundef %25, double noundef %28, double noundef %31, i8 noundef signext %34, i8* noundef %36, i32 noundef %39) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  call void @free_show()
  br label %47

43:                                               ; preds = %22
  %44 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %44, i64 -4
  store %struct.ref_s* %45, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_zwidthshow_814178956, %struct.ref_s* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %46 = call i32 @_wyvern_calleeclone_show_continue_0834761325(%_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca)
  br label %47

47:                                               ; preds = %43, %42, %21, %12, %7
  %.0 = phi i32 [ -15, %12 ], [ %.01, %21 ], [ %40, %42 ], [ %46, %43 ], [ -20, %7 ]
  ret i32 %.0
}

declare dso_local i32 @gs_widthshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8 noundef signext, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zawidthshow(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.6, align 8
  %2 = alloca [2 x float], align 4
  %3 = alloca [2 x float], align 4
  %4 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 1
  %5 = load i16, i16* %4, align 8
  %6 = and i16 %5, 252
  %7 = icmp eq i16 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %59

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ugt i64 %11, 255
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %59

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -4
  %16 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %17 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %15, i32 noundef 2, float* noundef nonnull %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %21 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 0
  %22 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %20, i32 noundef 2, float* noundef nonnull %21) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %19, %14
  %.01 = phi i32 [ %17, %14 ], [ %22, %19 ], [ %25, %24 ]
  br label %59

28:                                               ; preds = %24
  %29 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %30 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %29, align 8
  %31 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %32 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %36 = load float, float* %35, align 4
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -3, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i8
  %41 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 0
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = getelementptr inbounds [2 x float], [2 x float]* %3, i64 0, i64 1
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = bitcast %struct.ref_s* %0 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i32
  %52 = call i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* noundef %30, %struct.gs_state_s* noundef %31, double noundef %34, double noundef %37, i8 noundef signext %40, double noundef %43, double noundef %46, i8* noundef %48, i32 noundef %51) #7
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  call void @free_show()
  br label %59

55:                                               ; preds = %28
  %56 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %57 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %56, i64 -6
  store %struct.ref_s* %57, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.6*)* @_wyvern_slice_memo_zawidthshow_306491822, %struct.ref_s* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %58 = call i32 @_wyvern_calleeclone_show_continue_0402002168(%_wyvern_thunk_type.6* noundef nonnull %_wyvern_thunk_alloca)
  br label %59

59:                                               ; preds = %55, %54, %27, %13, %8
  %.0 = phi i32 [ -15, %13 ], [ %.01, %27 ], [ %52, %54 ], [ %58, %55 ], [ -20, %8 ]
  ret i32 %.0
}

declare dso_local i32 @gs_awidthshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, double noundef, double noundef, i8 noundef signext, double noundef, double noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zkshow(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.8, align 8
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = lshr i16 %3, 2
  %5 = and i16 %4, 63
  %6 = zext i16 %5 to i32
  switch i32 %6, label %7 [
    i32 0, label %8
    i32 10, label %8
  ]

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1, %1
  br label %9

9:                                                ; preds = %8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = and i16 %11, 3
  %.not = icmp eq i16 %12, 3
  br i1 %.not, label %14, label %13

13:                                               ; preds = %9
  br label %39

14:                                               ; preds = %9
  %15 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %39

18:                                               ; preds = %14
  %19 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %20 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %19, align 8
  %21 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %22 = bitcast %struct.ref_s* %0 to i8**
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = call i32 @gs_kshow_n_init(%struct.gs_show_enum_s* noundef %20, %struct.gs_state_s* noundef %21, i8* noundef %23, i32 noundef %26) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  call void @free_show()
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %31, i64 -1
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %34 = bitcast %struct.ref_s* %32 to i8*
  %35 = bitcast %struct.ref_s* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %34, i8* noundef nonnull align 8 dereferenceable(16) %35, i64 16, i1 false)
  %36 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %36, i64 -2
  store %struct.ref_s* %37, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.8*)* @_wyvern_slice_memo_zkshow_898793878, %struct.ref_s* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %38 = call i32 @_wyvern_calleeclone_show_continue_0937271387(%_wyvern_thunk_type.8* noundef nonnull %_wyvern_thunk_alloca)
  br label %39

39:                                               ; preds = %30, %29, %17, %13, %7
  %.0 = phi i32 [ -20, %7 ], [ -7, %13 ], [ %15, %17 ], [ %27, %29 ], [ %38, %30 ]
  ret i32 %.0
}

declare dso_local i32 @gs_kshow_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zstringwidth(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.10, align 8
  %2 = call i32 @setup_show(%struct.ref_s* noundef %0, i32 (%struct.ref_s*)* noundef nonnull @finish_stringwidth)
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %21

5:                                                ; preds = %1
  %6 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %7 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %6, align 8
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %9 = bitcast %struct.ref_s* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = call i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* noundef %7, %struct.gs_state_s* noundef %8, i8* noundef %10, i32 noundef %13) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  call void @free_show()
  br label %21

17:                                               ; preds = %5
  %18 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 -1
  store %struct.ref_s* %19, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.10*)* @_wyvern_slice_memo_zstringwidth_392055106, %struct.ref_s* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %20 = call i32 @_wyvern_calleeclone_show_continue_0775574528(%_wyvern_thunk_type.10* noundef nonnull %_wyvern_thunk_alloca)
  br label %21

21:                                               ; preds = %17, %16, %4
  %.0 = phi i32 [ %2, %4 ], [ %14, %16 ], [ %20, %17 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @finish_stringwidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 4
  %3 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %4 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %3, align 8
  call void @gs_show_width(%struct.gs_show_enum_s* noundef %4, %struct.gs_point_s* noundef nonnull %2) #7
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2
  store %struct.ref_s* %5, %struct.ref_s** @osp, align 8
  %6 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %7 = icmp ugt %struct.ref_s* %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %10 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %9, i64 -2
  store %struct.ref_s* %10, %struct.ref_s** @osp, align 8
  br label %21

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 0
  %13 = load float, float* %12, align 4
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 0
  %15 = bitcast %union.v* %14 to float*
  store float %13, float* %15, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 1, i32 1
  store i16 44, i16* %16, align 8
  %17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %2, i64 0, i32 1
  %18 = load float, float* %17, align 4
  %19 = bitcast %struct.ref_s* %5 to float*
  store float %18, float* %19, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 2, i32 1
  store i16 44, i16* %20, align 8
  br label %21

21:                                               ; preds = %11, %8
  %.0 = phi i32 [ -16, %8 ], [ 0, %11 ]
  ret i32 %.0
}

declare dso_local i32 @gs_stringwidth_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zcharpath(%struct.ref_s* noundef %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.12, align 8
  %2 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %3 = load i16, i16* %2, align 8
  %4 = and i16 %3, 252
  %5 = icmp eq i16 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %9 = call i32 @setup_show(%struct.ref_s* noundef nonnull %8, i32 (%struct.ref_s*)* noundef nonnull @finish_show)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %32

12:                                               ; preds = %7
  %13 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %14 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %13, align 8
  %15 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %16 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 0
  %17 = bitcast %union.v* %16 to i8**
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1, i32 2
  %20 = load i16, i16* %19, align 2
  %21 = zext i16 %20 to i32
  %22 = bitcast %struct.ref_s* %0 to i16*
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = call i32 @gs_charpath_n_init(%struct.gs_show_enum_s* noundef %14, %struct.gs_state_s* noundef %15, i8* noundef %18, i32 noundef %21, i32 noundef %24) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  call void @free_show()
  br label %32

28:                                               ; preds = %12
  %29 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %30 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %29, i64 -2
  store %struct.ref_s* %30, %struct.ref_s** @osp, align 8
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunk_alloca, i64 0, i32 0
  store %struct.ref_s* (%_wyvern_thunk_type.12*)* @_wyvern_slice_memo_zcharpath_572044992, %struct.ref_s* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_thunk_arg_gep_, align 8
  %31 = call i32 @_wyvern_calleeclone_show_continue_0445541291(%_wyvern_thunk_type.12* noundef nonnull %_wyvern_thunk_alloca)
  br label %32

32:                                               ; preds = %28, %27, %11, %6
  %.0 = phi i32 [ %9, %11 ], [ %25, %27 ], [ %31, %28 ], [ -20, %6 ]
  ret i32 %.0
}

declare dso_local i32 @gs_charpath_n_init(%struct.gs_show_enum_s* noundef, %struct.gs_state_s* noundef, i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcachedevice(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [6 x float], align 16
  %3 = call %struct.gs_show_enum_s* @find_show()
  %4 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 0
  %5 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %0, i32 noundef 6, float* noundef nonnull %4) #7
  %6 = icmp eq %struct.gs_show_enum_s* %3, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %60

8:                                                ; preds = %1
  %9 = icmp slt i32 %5, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = lshr i16 %12, 2
  %14 = and i16 %13, 63
  %15 = zext i16 %14 to i32
  switch i32 %15, label %16 [
    i32 0, label %17
    i32 10, label %17
  ]

16:                                               ; preds = %10
  br label %60

17:                                               ; preds = %10, %10
  br label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %20 = load i16, i16* %19, align 2
  %.not = icmp eq i16 %20, 4
  br i1 %.not, label %21, label %33

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %23 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 0
  %24 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %22, i32 noundef 2, float* noundef nonnull %23) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = bitcast %struct.ref_s* %0 to %struct.ref_s**
  %28 = load %struct.ref_s*, %struct.ref_s** %27, align 8
  %29 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %28, i64 3
  %30 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 2
  %31 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %29, i32 noundef 4, float* noundef nonnull %30) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %21, %18
  br label %60

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %8
  %.01.neg = phi i64 [ -3, %34 ], [ -6, %8 ]
  %36 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 0
  %37 = load float, float* %36, align 16
  %38 = fpext float %37 to double
  %39 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 2
  %43 = load float, float* %42, align 8
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 3
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 4
  %49 = load float, float* %48, align 16
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds [6 x float], [6 x float]* %2, i64 0, i64 5
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = call i32 @gs_setcachedevice(%struct.gs_show_enum_s* noundef nonnull %3, double noundef %38, double noundef %41, double noundef %44, double noundef %47, double noundef %50, double noundef %53) #7
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %60

57:                                               ; preds = %35
  %58 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %59 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %58, i64 %.01.neg
  store %struct.ref_s* %59, %struct.ref_s** @osp, align 8
  br label %60

60:                                               ; preds = %57, %56, %33, %16, %7
  %.0 = phi i32 [ -21, %7 ], [ -20, %16 ], [ %5, %33 ], [ %54, %56 ], [ 0, %57 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setcachedevice(%struct.gs_show_enum_s* noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zsetcharwidth(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  %3 = call %struct.gs_show_enum_s* @find_show()
  %4 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %5 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef %0, i32 noundef 2, float* noundef nonnull %4) #7
  %6 = icmp eq %struct.gs_show_enum_s* %3, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %23

8:                                                ; preds = %1
  %9 = icmp slt i32 %5, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 0
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = getelementptr inbounds [2 x float], [2 x float]* %2, i64 0, i64 1
  %15 = load float, float* %14, align 4
  %16 = fpext float %15 to double
  %17 = call i32 @gs_setcharwidth(%struct.gs_show_enum_s* noundef nonnull %3, double noundef %13, double noundef %16) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10, %8
  %.01 = phi i32 [ %5, %8 ], [ %17, %10 ]
  br label %23

20:                                               ; preds = %10
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %23

23:                                               ; preds = %20, %19, %7
  %.0 = phi i32 [ -21, %7 ], [ %.01, %19 ], [ 0, %20 ]
  ret i32 %.0
}

declare dso_local i32 @gs_setcharwidth(%struct.gs_show_enum_s* noundef, double noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1addpath(%struct.ref_s* nocapture noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gs_fixed_point_s, align 8
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_type1_data_s, align 8
  %6 = alloca %struct.z1_data, align 8
  %7 = alloca %struct.ref_s*, align 8
  %8 = call %struct.gs_show_enum_s* @find_show()
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %10 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %9) #7
  %11 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i64 0, i32 4
  %12 = bitcast i8** %11 to %struct.font_data_s**
  %13 = load %struct.font_data_s*, %struct.font_data_s** %12, align 8
  %14 = icmp eq %struct.gs_show_enum_s* %8, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %133

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %18 = load i16, i16* %17, align 8
  %19 = and i16 %18, 252
  %20 = icmp eq i16 %19, 52
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %133

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i64 0, i32 5
  %24 = bitcast %struct.gs_type1_data_s* %5 to i8*
  %25 = bitcast %struct.gs_type1_data_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %24, i8* noundef nonnull align 8 dereferenceable(32) %25, i64 32, i1 false)
  %26 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 0
  store %struct.font_data_s* %13, %struct.font_data_s** %26, align 8
  %27 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 0
  %28 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 1
  store i64* %27, i64** %28, align 8
  %29 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i64 0, i32 2
  %30 = bitcast i8** %29 to %struct.z1_data**
  store %struct.z1_data* %6, %struct.z1_data** %30, align 8
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %5, i64 0, i32 3
  %35 = load i32, i32* %34, align 8
  %.not = icmp slt i32 %35, %33
  br i1 %.not, label %39, label %36

36:                                               ; preds = %22
  %37 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %38 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %37, i64 -1
  store %struct.ref_s* %38, %struct.ref_s** @osp, align 8
  br label %133

39:                                               ; preds = %22
  %40 = load i32, i32* @gs_type1_state_sizeof, align 4
  %41 = call i8* @alloc(i32 noundef 1, i32 noundef %40, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #7
  %42 = bitcast i8* %41 to %struct.gs_type1_state_s*
  %43 = icmp eq i8* %41, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %133

45:                                               ; preds = %39
  %46 = call i32 @gs_show_in_charpath(%struct.gs_show_enum_s* noundef nonnull %8) #7
  %47 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %10, i64 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = bitcast %struct.ref_s* %0 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @gs_type1_init(%struct.gs_type1_state_s* noundef nonnull %42, %struct.gs_show_enum_s* noundef nonnull %8, i32 noundef %46, i32 noundef %48, i8* noundef %50, %struct.gs_type1_data_s* noundef nonnull %5) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* noundef nonnull %41, i32 noundef 1, i32 noundef %54, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #7
  br label %133

55:                                               ; preds = %45
  br label %.outer

.outer:                                           ; preds = %114, %55
  %.03.ph = phi i8 [ %117, %114 ], [ undef, %55 ]
  br label %56

56:                                               ; preds = %.backedge, %.outer
  %.01 = phi i8* [ null, %.outer ], [ %.01.be, %.backedge ]
  %57 = call i32 @gs_type1_interpret(%struct.gs_type1_state_s* noundef nonnull %42, i8* noundef %.01) #7
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %.loopexit

59:                                               ; preds = %56
  %60 = and i32 %57, 1
  %.not11 = icmp eq i32 %60, 0
  br i1 %.not11, label %88, label %61

61:                                               ; preds = %59
  %62 = ashr i32 %57, 1
  %63 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i64 0, i32 2, i32 2
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %.not12 = icmp slt i32 %62, %65
  br i1 %.not12, label %67, label %66

66:                                               ; preds = %61
  br label %133

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i64 0, i32 3
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i64 0, i32 3
  %70 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %13, i64 0, i32 2, i32 0
  %71 = bitcast %union.v* %70 to %struct.ref_s**
  %72 = load %struct.ref_s*, %struct.ref_s** %71, align 8
  %73 = sext i32 %62 to i64
  %74 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %72, i64 %73
  %75 = call i32 @dict_lookup(%struct.ref_s* noundef nonnull %68, %struct.ref_s* noundef nonnull %69, %struct.ref_s* noundef %74, %struct.ref_s** noundef nonnull %7) #7
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %133

78:                                               ; preds = %67
  %79 = load %struct.ref_s*, %struct.ref_s** %7, align 8
  %80 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %79, i64 0, i32 1
  %81 = load i16, i16* %80, align 8
  %82 = and i16 %81, 252
  %.not13 = icmp eq i16 %82, 52
  br i1 %.not13, label %84, label %83

83:                                               ; preds = %78
  br label %133

84:                                               ; preds = %78
  %85 = bitcast %struct.ref_s** %7 to i8***
  %86 = load i8**, i8*** %85, align 8
  %87 = load i8*, i8** %86, align 8
  br label %.backedge

.backedge:                                        ; preds = %84, %94, %118, %119
  %.01.be = phi i8* [ %87, %84 ], [ null, %119 ], [ null, %118 ], [ null, %94 ]
  br label %56

88:                                               ; preds = %59
  %89 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %90 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %89, i64 0, i32 7
  %91 = load %struct.gx_path_s*, %struct.gx_path_s** %90, align 8
  %92 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef nonnull %42, i64* noundef nonnull %2) #7
  %93 = ashr i32 %57, 1
  switch i32 %93, label %124 [
    i32 1, label %94
    i32 2, label %114
    i32 3, label %118
    i32 4, label %119
  ]

94:                                               ; preds = %88
  %95 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %91, %struct.gs_fixed_point_s* noundef nonnull %4) #7
  %96 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %91, i64 noundef %97, i64 noundef %99) #7
  %101 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %91, i64 0, i32 11
  store i8 %.03.ph, i8* %101, align 1
  %102 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %91, i64 noundef %103, i64 noundef %105) #7
  %107 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 0
  %108 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef nonnull %42, i64* noundef nonnull %107) #7
  %109 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 1
  %110 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef nonnull %42, i64* noundef nonnull %109) #7
  %111 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef nonnull %42, i64* noundef nonnull %2) #7
  %112 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 2
  %113 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 1
  store i64* %112, i64** %113, align 8
  br label %.backedge

114:                                              ; preds = %88
  %115 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %91, %struct.gs_fixed_point_s* noundef nonnull %3) #7
  %116 = getelementptr inbounds %struct.gx_path_s, %struct.gx_path_s* %91, i64 0, i32 11
  %117 = load i8, i8* %116, align 1
  br label %.outer

118:                                              ; preds = %88
  br label %.backedge

119:                                              ; preds = %88
  %120 = call i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef nonnull %42, i64* noundef nonnull %2) #7
  %121 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 0
  store i64 12288, i64* %121, align 8
  %122 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 2, i64 1
  %123 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 1
  store i64* %122, i64** %123, align 8
  br label %.backedge

124:                                              ; preds = %88
  br label %125

125:                                              ; preds = %124
  br label %126

.loopexit:                                        ; preds = %56
  br label %126

126:                                              ; preds = %.loopexit, %125
  %.02 = phi i32 [ -15, %125 ], [ %57, %.loopexit ]
  %127 = load i32, i32* @gs_type1_state_sizeof, align 4
  call void @alloc_free(i8* noundef nonnull %41, i32 noundef 1, i32 noundef %127, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #7
  %128 = icmp sgt i32 %.02, -1
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %131 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %130, i64 -1
  store %struct.ref_s* %131, %struct.ref_s** @osp, align 8
  br label %132

132:                                              ; preds = %129, %126
  br label %133

133:                                              ; preds = %132, %83, %77, %66, %53, %44, %36, %21, %15
  %.0 = phi i32 [ -21, %15 ], [ 0, %36 ], [ -25, %44 ], [ %51, %53 ], [ -15, %66 ], [ -21, %77 ], [ -10, %83 ], [ %.02, %132 ], [ -20, %21 ]
  ret i32 %.0
}

declare dso_local %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef) #2

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @gs_type1_init(%struct.gs_type1_state_s* noundef, %struct.gs_show_enum_s* noundef, i32 noundef, i32 noundef, i8* noundef, %struct.gs_type1_data_s* noundef) #2

declare dso_local i32 @gs_show_in_charpath(%struct.gs_show_enum_s* noundef) #2

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #2

declare dso_local i32 @gs_type1_interpret(%struct.gs_type1_state_s* noundef, i8* noundef) #2

declare dso_local i32 @dict_lookup(%struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s* noundef, %struct.ref_s** noundef) #2

declare dso_local i32 @gs_type1_pop(%struct.gs_type1_state_s* noundef, i64* noundef) #2

declare dso_local i32 @gx_path_current_point(%struct.gx_path_s* noundef, %struct.gs_fixed_point_s* noundef) #2

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #2

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ztype1imagepath(%struct.ref_s* noundef %0) #0 {
  %2 = alloca [4 x float], align 16
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -7, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 52
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %76

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -6, i32 1
  %10 = load i16, i16* %9, align 8
  %11 = and i16 %10, 252
  %12 = icmp eq i16 %11, 20
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %76

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -5, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, 252
  %18 = icmp eq i16 %17, 20
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %76

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -1
  %22 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %23 = call i32 (%struct.ref_s*, i32, float*, ...) bitcast (i32 (...)* @num_params to i32 (%struct.ref_s*, i32, float*, ...)*)(%struct.ref_s* noundef nonnull %21, i32 noundef 4, float* noundef nonnull %22) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %76

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = and i16 %28, 252
  %30 = icmp eq i16 %29, 52
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %76

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = and i16 %34, 256
  %.not.not = icmp eq i16 %35, 0
  br i1 %.not.not, label %36, label %37

36:                                               ; preds = %32
  br label %76

37:                                               ; preds = %32
  %38 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -7, i32 0
  %40 = bitcast %union.v* %39 to i8**
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -6, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -5, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 0
  %49 = load float, float* %48, align 16
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 1
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 2
  %55 = load float, float* %54, align 8
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds [4 x float], [4 x float]* %2, i64 0, i64 3
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  %60 = bitcast %struct.ref_s* %0 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 0, i32 2
  %63 = load i16, i16* %62, align 2
  %64 = zext i16 %63 to i32
  %65 = call i32 @gs_type1imagepath(%struct.gs_state_s* noundef %38, i8* noundef %41, i32 noundef %44, i32 noundef %47, double noundef %50, double noundef %53, double noundef %56, double noundef %59, i8* noundef %61, i32 noundef %64) #7
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %37
  br label %76

68:                                               ; preds = %37
  %69 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -7
  %70 = bitcast %struct.ref_s* %69 to i8*
  %71 = bitcast %struct.ref_s* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  %72 = trunc i32 %65 to i16
  %73 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %0, i64 -7, i32 2
  store i16 %72, i16* %73, align 2
  %74 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %75 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %74, i64 -7
  store %struct.ref_s* %75, %struct.ref_s** @osp, align 8
  br label %76

76:                                               ; preds = %68, %67, %36, %31, %25, %19, %13, %7
  %.0 = phi i32 [ %23, %25 ], [ -7, %36 ], [ %65, %67 ], [ 0, %68 ], [ -20, %31 ], [ -20, %19 ], [ -20, %13 ], [ -20, %7 ]
  ret i32 %.0
}

declare dso_local i32 @gs_type1imagepath(%struct.gs_state_s* noundef, i8* noundef, i32 noundef, i32 noundef, double noundef, double noundef, double noundef, double noundef, i8* noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @z1_subr_proc(%struct.gs_type1_data_s* nocapture noundef readonly %0, i32 noundef %1, i8** nocapture noundef writeonly %2) #4 {
  %4 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %0, i64 0, i32 2
  %5 = bitcast i8** %4 to %struct.z1_data**
  %6 = load %struct.z1_data*, %struct.z1_data** %5, align 8
  %7 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %6, i64 0, i32 0
  %8 = load %struct.font_data_s*, %struct.font_data_s** %7, align 8
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %8, i64 0, i32 4, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %.not = icmp sgt i32 %13, %1
  br i1 %.not, label %15, label %14

14:                                               ; preds = %10, %3
  br label %29

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %8, i64 0, i32 4, i32 0
  %17 = bitcast %union.v* %16 to %struct.ref_s**
  %18 = load %struct.ref_s*, %struct.ref_s** %17, align 8
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %19, i32 1
  %21 = load i16, i16* %20, align 8
  %22 = and i16 %21, 252
  %23 = icmp eq i16 %22, 52
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %18, i64 %19, i32 0
  %27 = bitcast %union.v* %26 to i8**
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %25, %24, %14
  %.0 = phi i32 [ -15, %14 ], [ 0, %25 ], [ -20, %24 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @z1_pop_proc(%struct.gs_type1_data_s* nocapture noundef readonly %0, i64* nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.gs_type1_data_s, %struct.gs_type1_data_s* %0, i64 0, i32 2
  %4 = bitcast i8** %3 to %struct.z1_data**
  %5 = load %struct.z1_data*, %struct.z1_data** %4, align 8
  %6 = getelementptr inbounds %struct.z1_data, %struct.z1_data* %5, i64 0, i32 1
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 -1
  store i64* %8, i64** %6, align 8
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %1, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @zchar_op_init() #0 {
  %1 = call i32 (%struct.op_def*, ...) bitcast (i32 (...)* @z_op_init to i32 (%struct.op_def*, ...)*)(%struct.op_def* noundef getelementptr inbounds ([12 x %struct.op_def], [12 x %struct.op_def]* @zchar_op_init.my_defs, i64 0, i64 0)) #7
  ret void
}

declare dso_local i32 @z_op_init(...) #2

declare dso_local void @gs_show_width(%struct.gs_show_enum_s* noundef, %struct.gs_point_s* noundef) #2

declare dso_local i32 @gs_show_next(%struct.gs_show_enum_s* noundef) #2

declare dso_local zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef) #2

declare dso_local zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef) #2

declare dso_local zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define internal %struct.gs_show_enum_s* @find_show() #5 {
  %1 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  br label %2

2:                                                ; preds = %17, %0
  %.01 = phi %struct.ref_s* [ %1, %0 ], [ %14, %17 ]
  %3 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 0, i32 1
  %4 = load i16, i16* %3, align 8
  %5 = and i16 %4, 252
  %6 = icmp eq i16 %5, 32
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = bitcast %struct.ref_s* %.01 to i16*
  %9 = load i16, i16* %8, align 8
  %10 = icmp eq i16 %9, 1
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi i1 [ false, %2 ], [ %10, %7 ]
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 -1
  %15 = icmp ult %struct.ref_s* %14, getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @estack, i64 0, i64 0)
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  br label %2, !llvm.loop !4

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.01, i64 3, i32 0
  %20 = bitcast %union.v* %19 to %struct.gs_show_enum_s**
  %21 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %20, align 8
  br label %22

22:                                               ; preds = %18, %16
  %.0 = phi %struct.gs_show_enum_s* [ null, %16 ], [ %21, %18 ]
  ret %struct.gs_show_enum_s* %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_show() #0 {
  %1 = load i8**, i8*** bitcast (%struct.ref_s** @esp to i8***), align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i32, i32* @gs_show_enum_sizeof, align 4
  call void @alloc_free(i8* noundef %2, i32 noundef 1, i32 noundef %3, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #7
  %4 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %5 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %4, i64 -4
  store %struct.ref_s* %5, %struct.ref_s** @esp, align 8
  ret void
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zshow_657538560(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0962476861(%_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.0*)*, %struct.ref_s* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zashow_489999590(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -3
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0883044647(%_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.2*)*, %struct.ref_s* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zwidthshow_814178956(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -4
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0834761325(%_wyvern_thunk_type.4* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.4*)*, %struct.ref_s* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.4*)*, %struct.ref_s* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.4*)*, %struct.ref_s* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zawidthshow_306491822(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -6
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0402002168(%_wyvern_thunk_type.6* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.6*)*, %struct.ref_s* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.6*)*, %struct.ref_s* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.6, %_wyvern_thunk_type.6* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.6*)*, %struct.ref_s* (%_wyvern_thunk_type.6*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.6* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zkshow_898793878(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0937271387(%_wyvern_thunk_type.8* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.8*)*, %struct.ref_s* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.8*)*, %struct.ref_s* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.8, %_wyvern_thunk_type.8* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.8*)*, %struct.ref_s* (%_wyvern_thunk_type.8*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.8* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zstringwidth_392055106(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0775574528(%_wyvern_thunk_type.10* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.10*)*, %struct.ref_s* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.10*)*, %struct.ref_s* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.10, %_wyvern_thunk_type.10* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.10*)*, %struct.ref_s* (%_wyvern_thunk_type.10*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.10* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define %struct.ref_s* @_wyvern_slice_memo_zcharpath_572044992(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #6 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load %struct.ref_s*, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct.ref_s*, %struct.ref_s** %_wyvern_arg_addr_, align 8
  %0 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_arg_, i64 -2
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store %struct.ref_s* %0, %struct.ref_s** %_wyvern_memo_val_addr, align 8
  ret %struct.ref_s* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_wyvern_calleeclone_show_continue_0445541291(%_wyvern_thunk_type.12* noundef %_wyvern_thunkptr) #0 {
  %1 = load %struct.gs_show_enum_s**, %struct.gs_show_enum_s*** bitcast (%struct.ref_s** @esp to %struct.gs_show_enum_s***), align 8
  %2 = load %struct.gs_show_enum_s*, %struct.gs_show_enum_s** %1, align 8
  %3 = call i32 @gs_show_next(%struct.gs_show_enum_s* noundef %2) #7
  switch i32 %3, label %72 [
    i32 0, label %4
    i32 2, label %15
    i32 1, label %42
  ]

4:                                                ; preds = %0
  %5 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %5, i64 -2, i32 0
  %7 = bitcast %union.v* %6 to i32 (%struct.ref_s*)**
  %8 = load i32 (%struct.ref_s*)*, i32 (%struct.ref_s*)** %7, align 8
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load %struct.ref_s* (%_wyvern_thunk_type.12*)*, %struct.ref_s* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call %struct.ref_s* %_wyvern_thunkfptr5(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #7
  %9 = call i32 %8(%struct.ref_s* noundef %_wyvern_thunkcall6) #7
  call void @free_show()
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi i32 [ 1, %11 ], [ %9, %12 ]
  br label %73

15:                                               ; preds = %0
  %16 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load %struct.ref_s* (%_wyvern_thunk_type.12*)*, %struct.ref_s* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call %struct.ref_s* %_wyvern_thunkfptr2(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #7
  %17 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2
  store %struct.ref_s* %17, %struct.ref_s** @osp, align 8
  %18 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %19 = icmp ugt %struct.ref_s* %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %21, i64 -2
  store %struct.ref_s* %22, %struct.ref_s** @osp, align 8
  br label %73

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %16, i64 -1
  %25 = call zeroext i8 @gs_kshow_previous_char(%struct.gs_show_enum_s* noundef %2) #7
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 1, i32 1
  store i16 20, i16* %28, align 8
  %29 = call zeroext i8 @gs_kshow_next_char(%struct.gs_show_enum_s* noundef %2) #7
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %17, i64 0, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall3, i64 2, i32 1
  store i16 20, i16* %32, align 8
  %33 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %34 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1
  store %struct.ref_s* %34, %struct.ref_s** @esp, align 8
  %35 = bitcast %struct.ref_s* %34 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %35, align 8
  %36 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 1
  store i16 37, i16* %36, align 8
  %37 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %33, i64 1, i32 2
  store i16 0, i16* %37, align 2
  %38 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %39 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %38, i64 1
  store %struct.ref_s* %39, %struct.ref_s** @esp, align 8
  %40 = bitcast %struct.ref_s* %39 to i8*
  %41 = bitcast %struct.ref_s* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %40, i8* noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false)
  br label %73

42:                                               ; preds = %0
  %43 = load %struct.gs_state_s*, %struct.gs_state_s** @igs, align 8
  %44 = call %struct.gs_font_s* @gs_currentfont(%struct.gs_state_s* noundef %43) #7
  %45 = getelementptr inbounds %struct.gs_font_s, %struct.gs_font_s* %44, i64 0, i32 4
  %46 = bitcast i8** %45 to %struct.font_data_s**
  %47 = load %struct.font_data_s*, %struct.font_data_s** %46, align 8
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.12, %_wyvern_thunk_type.12* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load %struct.ref_s* (%_wyvern_thunk_type.12*)*, %struct.ref_s* (%_wyvern_thunk_type.12*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call %struct.ref_s* %_wyvern_thunkfptr(%_wyvern_thunk_type.12* %_wyvern_thunkptr) #7
  %48 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2
  store %struct.ref_s* %48, %struct.ref_s** @osp, align 8
  %49 = load %struct.ref_s*, %struct.ref_s** @ostop, align 8
  %50 = icmp ugt %struct.ref_s* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load %struct.ref_s*, %struct.ref_s** @osp, align 8
  %53 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %52, i64 -2
  store %struct.ref_s* %53, %struct.ref_s** @osp, align 8
  br label %73

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 1
  %56 = bitcast %struct.ref_s* %55 to i8*
  %57 = bitcast %struct.font_data_s* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %56, i8* noundef nonnull align 8 dereferenceable(16) %57, i64 16, i1 false)
  %58 = call zeroext i8 @gs_show_current_char(%struct.gs_show_enum_s* noundef %2) #7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %48, i64 0, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %_wyvern_thunkcall, i64 2, i32 1
  store i16 20, i16* %61, align 8
  %62 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %63 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1
  store %struct.ref_s* %63, %struct.ref_s** @esp, align 8
  %64 = bitcast %struct.ref_s* %63 to i32 (%struct.ref_s*)**
  store i32 (%struct.ref_s*)* @show_continue, i32 (%struct.ref_s*)** %64, align 8
  %65 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 1
  store i16 37, i16* %65, align 8
  %66 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %62, i64 1, i32 2
  store i16 0, i16* %66, align 2
  %67 = load %struct.ref_s*, %struct.ref_s** @esp, align 8
  %68 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %67, i64 1
  store %struct.ref_s* %68, %struct.ref_s** @esp, align 8
  %69 = getelementptr inbounds %struct.font_data_s, %struct.font_data_s* %47, i64 0, i32 1
  %70 = bitcast %struct.ref_s* %68 to i8*
  %71 = bitcast %struct.ref_s* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %70, i8* noundef nonnull align 8 dereferenceable(16) %71, i64 16, i1 false)
  br label %73

72:                                               ; preds = %0
  call void @free_show()
  br label %73

73:                                               ; preds = %72, %54, %51, %23, %20, %13
  %.0 = phi i32 [ %3, %72 ], [ -16, %51 ], [ 1, %54 ], [ -16, %20 ], [ 1, %23 ], [ %14, %13 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
