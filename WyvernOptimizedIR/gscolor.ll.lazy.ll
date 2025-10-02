; ModuleID = './gscolor.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gscolor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.ht_bit_s = type { i16, i16 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%_wyvern_thunk_type.0 = type { i16* (%_wyvern_thunk_type.0*)*, i16*, i1 }
%_wyvern_thunk_type.2 = type { i16* (%_wyvern_thunk_type.2*)*, i16*, i1 }
%struct.gs_screen_enum_s = type { float, float, %struct.ht_bit_s*, i32, i32, %struct.gs_matrix_s, i32, i32, %struct.gs_state_s* }
%struct.gs_point_s = type { float, float }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@gs_screen_enum_sizeof = dso_local global i32 136, align 4
@gs_color_sizeof = dso_local global i32 10, align 4
@.str = private unnamed_addr constant [17 x i8] c"halftone samples\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_setgray(%struct.gs_state_s* nocapture noundef readonly %0, double noundef %1) #0 {
  %3 = alloca float, align 4
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %5 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 19
  %7 = load i8, i8* %6, align 4
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %2
  br label %22

9:                                                ; preds = %2
  %10 = call i32 @check_unit(double noundef %1, float* noundef nonnull %3)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %11, label %21

11:                                               ; preds = %9
  %12 = load float, float* %3, align 4
  %13 = fmul float %12, 6.553500e+04
  %14 = fptoui float %13 to i16
  %15 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 3
  store i16 %14, i16* %15, align 2
  %16 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 2
  store i16 %14, i16* %16, align 2
  %17 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 1
  store i16 %14, i16* %17, align 2
  %18 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 0
  store i16 %14, i16* %18, align 2
  %19 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 5
  store i8 1, i8* %19, align 1
  %20 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %5, i64 0, i32 4
  store i8 1, i8* %20, align 2
  br label %21

21:                                               ; preds = %11, %9
  br label %22

22:                                               ; preds = %21, %8
  %.0 = phi i32 [ -21, %8 ], [ %10, %21 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @check_unit(double noundef %0, float* nocapture noundef writeonly %1) #1 {
  %3 = fcmp olt double %0, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %6 = fcmp ogt double %0, 1.000000e+00
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %10

8:                                                ; preds = %5
  %9 = fptrunc double %0 to float
  br label %10

10:                                               ; preds = %8, %7
  %storemerge = phi float [ %9, %8 ], [ 1.000000e+00, %7 ]
  br label %11

11:                                               ; preds = %10, %4
  %storemerge1 = phi float [ %storemerge, %10 ], [ 0.000000e+00, %4 ]
  store float %storemerge1, float* %1, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @gs_currentgray(%struct.gs_state_s* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %3, i64 0, i32 5
  %5 = load i8, i8* %4, align 1
  %.not = icmp eq i8 %5, 0
  br i1 %.not, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %8 = load %struct.gs_color_s*, %struct.gs_color_s** %7, align 8
  %9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %8, i64 0, i32 3
  %10 = load i16, i16* %9, align 2
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %14 = call zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef %13) #9
  br label %15

15:                                               ; preds = %11, %6
  %.in = phi i16 [ %10, %6 ], [ %14, %11 ]
  %16 = uitofp i16 %.in to float
  %17 = fdiv float %16, 6.553500e+04
  ret float %17
}

declare dso_local zeroext i16 @gx_color_luminance(%struct.gs_color_s* noundef) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_setgscolor(%struct.gs_state_s* nocapture noundef readonly %0, %struct.gs_color_s* nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 19
  %4 = load i8, i8* %3, align 4
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %2
  br label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %8 = bitcast %struct.gs_color_s** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = bitcast %struct.gs_color_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %9, i8* noundef nonnull align 2 dereferenceable(10) %10, i64 10, i1 false)
  br label %11

11:                                               ; preds = %6, %5
  %.0 = phi i32 [ -21, %5 ], [ 0, %6 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_currentgscolor(%struct.gs_state_s* nocapture noundef readonly %0, %struct.gs_color_s* nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %4 = bitcast %struct.gs_color_s** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = bitcast %struct.gs_color_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 2 dereferenceable(10) %6, i8* noundef nonnull align 2 dereferenceable(10) %5, i64 10, i1 false)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_sethsbcolor(%struct.gs_state_s* nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %5 = alloca [3 x i16], align 2
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 19
  %7 = load i8, i8* %6, align 4
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %21

9:                                                ; preds = %4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_gs_sethsbcolor_241457511, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %10 = call i32 @_wyvern_calleeclone_tri_param_3711981802(double noundef %1, double noundef %2, double noundef %3, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %11, label %20

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %14 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %15 = load i16, i16* %14, align 2
  %16 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %17 = load i16, i16* %16, align 2
  %18 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %19 = load i16, i16* %18, align 2
  call void @gx_color_from_hsb(%struct.gs_color_s* noundef %13, i16 noundef zeroext %15, i16 noundef zeroext %17, i16 noundef zeroext %19) #9
  br label %20

20:                                               ; preds = %11, %9
  br label %21

21:                                               ; preds = %20, %8
  %.0 = phi i32 [ -21, %8 ], [ %10, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal i32 @tri_param(double noundef %0, double noundef %1, double noundef %2, i16* nocapture noundef writeonly %3) #1 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = call i32 @check_unit(double noundef %0, float* noundef nonnull %5)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = call i32 @check_unit(double noundef %1, float* noundef nonnull %6)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = call i32 @check_unit(double noundef %2, float* noundef nonnull %7)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10, %4
  %.01 = phi i32 [ %8, %4 ], [ %11, %10 ], [ %14, %13 ]
  br label %29

17:                                               ; preds = %13
  %18 = load float, float* %5, align 4
  %19 = fmul float %18, 6.553500e+04
  %20 = fptoui float %19 to i16
  store i16 %20, i16* %3, align 2
  %21 = load float, float* %6, align 4
  %22 = fmul float %21, 6.553500e+04
  %23 = fptoui float %22 to i16
  %24 = getelementptr inbounds i16, i16* %3, i64 1
  store i16 %23, i16* %24, align 2
  %25 = load float, float* %7, align 4
  %26 = fmul float %25, 6.553500e+04
  %27 = fptoui float %26 to i16
  %28 = getelementptr inbounds i16, i16* %3, i64 2
  store i16 %27, i16* %28, align 2
  br label %29

29:                                               ; preds = %17, %16
  %.0 = phi i32 [ %.01, %16 ], [ 0, %17 ]
  ret i32 %.0
}

declare dso_local void @gx_color_from_hsb(%struct.gs_color_s* noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currenthsbcolor(%struct.gs_state_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1) #2 {
  %3 = alloca [3 x i16], align 2
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %5 = load %struct.gs_color_s*, %struct.gs_color_s** %4, align 8
  %6 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 0
  call void @gx_color_to_hsb(%struct.gs_color_s* noundef %5, i16* noundef nonnull %6) #9
  %7 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 0
  %8 = load i16, i16* %7, align 2
  %9 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 1
  %10 = load i16, i16* %9, align 2
  %11 = getelementptr inbounds [3 x i16], [3 x i16]* %3, i64 0, i64 2
  %12 = load i16, i16* %11, align 2
  call void @tri_return(i16 noundef zeroext %8, i16 noundef zeroext %10, i16 noundef zeroext %12, float* noundef %1)
  ret i32 0
}

declare dso_local void @gx_color_to_hsb(%struct.gs_color_s* noundef, i16* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define internal void @tri_return(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, float* nocapture noundef writeonly %3) #1 {
  %5 = uitofp i16 %0 to float
  %6 = fdiv float %5, 6.553500e+04
  store float %6, float* %3, align 4
  %7 = uitofp i16 %1 to float
  %8 = fdiv float %7, 6.553500e+04
  %9 = getelementptr inbounds float, float* %3, i64 1
  store float %8, float* %9, align 4
  %10 = uitofp i16 %2 to float
  %11 = fdiv float %10, 6.553500e+04
  %12 = getelementptr inbounds float, float* %3, i64 2
  store float %11, float* %12, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setrgbcolor(%struct.gs_state_s* nocapture noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #2 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.2, align 8
  %5 = alloca [3 x i16], align 2
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 19
  %7 = load i8, i8* %6, align 4
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %24

9:                                                ; preds = %4
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_gs_setrgbcolor_629966446, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %10 = call i32 @_wyvern_calleeclone_tri_param_3819649123(double noundef %1, double noundef %2, double noundef %3, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca)
  %.not1 = icmp eq i32 %10, 0
  br i1 %.not1, label %11, label %23

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %13 = load %struct.gs_color_s*, %struct.gs_color_s** %12, align 8
  %14 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 0
  %15 = load i16, i16* %14, align 2
  %16 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i64 0, i32 0
  store i16 %15, i16* %16, align 2
  %17 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 1
  %18 = load i16, i16* %17, align 2
  %19 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i64 0, i32 1
  store i16 %18, i16* %19, align 2
  %20 = getelementptr inbounds [3 x i16], [3 x i16]* %5, i64 0, i64 2
  %21 = load i16, i16* %20, align 2
  %22 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %13, i64 0, i32 2
  store i16 %21, i16* %22, align 2
  call void @gx_color_from_rgb(%struct.gs_color_s* noundef %13) #9
  br label %23

23:                                               ; preds = %11, %9
  br label %24

24:                                               ; preds = %23, %8
  %.0 = phi i32 [ -21, %8 ], [ %10, %23 ]
  ret i32 %.0
}

declare dso_local void @gx_color_from_rgb(%struct.gs_color_s* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_currentrgbcolor(%struct.gs_state_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %4 = load %struct.gs_color_s*, %struct.gs_color_s** %3, align 8
  %5 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i64 0, i32 0
  %6 = load i16, i16* %5, align 2
  %7 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i64 0, i32 1
  %8 = load i16, i16* %7, align 2
  %9 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %4, i64 0, i32 2
  %10 = load i16, i16* %9, align 2
  call void @tri_return(i16 noundef zeroext %6, i16 noundef zeroext %8, i16 noundef zeroext %10, float* noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_colorrgb(%struct.gs_color_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 1
  %6 = load i16, i16* %5, align 2
  %7 = getelementptr inbounds %struct.gs_color_s, %struct.gs_color_s* %0, i64 0, i32 2
  %8 = load i16, i16* %7, align 2
  call void @tri_return(i16 noundef zeroext %4, i16 noundef zeroext %6, i16 noundef zeroext %8, float* noundef %1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setscreen(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, float (double, double)* noundef %3) #2 {
  %5 = alloca %struct.gs_screen_enum_s, align 8
  %6 = alloca %struct.gs_point_s, align 4
  %7 = call i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef nonnull %5, %struct.gs_state_s* noundef %0, double noundef %1, double noundef %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %32

10:                                               ; preds = %4
  br label %11

11:                                               ; preds = %26, %10
  %12 = call i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef nonnull %5, %struct.gs_point_s* noundef nonnull %6)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %6, i64 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = call float %3(double noundef %17, double noundef %20) #9
  %22 = fpext float %21 to double
  %23 = call i32 @gs_screen_next(%struct.gs_screen_enum_s* noundef nonnull %5, double noundef %22)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %32

26:                                               ; preds = %14
  br label %11, !llvm.loop !4

27:                                               ; preds = %11
  %28 = icmp slt i32 %12, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %32

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 12
  store float (double, double)* %3, float (double, double)** %31, align 8
  br label %32

32:                                               ; preds = %30, %29, %25, %9
  %.0 = phi i32 [ %7, %9 ], [ %23, %25 ], [ %12, %29 ], [ 0, %30 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_screen_init(%struct.gs_screen_enum_s* noundef %0, %struct.gs_state_s* noundef %1, double noundef %2, double noundef %3) #2 {
  %5 = alloca %struct.gs_point_s, align 4
  %6 = alloca %struct.gs_matrix_s, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gs_matrix_s, align 8
  %10 = fcmp olt double %2, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %99

12:                                               ; preds = %4
  %13 = fdiv double 7.200000e+01, %2
  %14 = fptrunc double %13 to float
  %15 = bitcast %struct.gs_matrix_s* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(96) %15, i8 0, i64 96, i1 false)
  %16 = call %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef %1) #9
  call void @gs_deviceparams(%struct.gx_device_s* noundef %16, %struct.gs_matrix_s* noundef nonnull %6, i32* noundef nonnull %7, i32* noundef nonnull %8) #9
  %17 = fpext float %14 to double
  %18 = fpext float %14 to double
  %19 = call i32 @gs_distance_transform(double noundef %17, double noundef %18, %struct.gs_matrix_s* noundef nonnull %6, %struct.gs_point_s* noundef nonnull %5) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %99

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %24 = load float, float* %23, align 4
  %25 = fcmp olt float %24, 0.000000e+00
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %28 = load float, float* %27, align 4
  %29 = fptosi float %28 to i32
  %30 = sub nsw i32 0, %29
  br label %35

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 0
  %33 = load float, float* %32, align 4
  %34 = fptosi float %33 to i32
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i32 [ %30, %26 ], [ %34, %31 ]
  %37 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %38 = load float, float* %37, align 4
  %39 = fcmp olt float %38, 0.000000e+00
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fptosi float %42 to i32
  %44 = sub nsw i32 0, %43
  br label %49

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %5, i64 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = fptosi float %47 to i32
  br label %49

49:                                               ; preds = %45, %40
  %50 = phi i32 [ %44, %40 ], [ %48, %45 ]
  %51 = icmp eq i32 %36, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %49
  %.02 = phi i32 [ 1, %52 ], [ %36, %49 ]
  %54 = icmp eq i32 %50, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %53
  %.01 = phi i32 [ 1, %55 ], [ %50, %53 ]
  %57 = sdiv i32 65535, %.01
  %58 = icmp sgt i32 %.02, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %99

60:                                               ; preds = %56
  %61 = mul nsw i32 %.02, %.01
  %62 = call i8* @gs_malloc(i32 noundef %61, i32 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #9
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %99

65:                                               ; preds = %60
  %66 = fptrunc double %2 to float
  %67 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 0
  store float %66, float* %67, align 8
  %68 = fptrunc double %3 to float
  %69 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 1
  store float %68, float* %69, align 4
  %70 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 2
  %71 = bitcast %struct.ht_bit_s** %70 to i8**
  store i8* %62, i8** %71, align 8
  %72 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  store i32 %.02, i32* %72, align 8
  %73 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 4
  store i32 %.01, i32* %73, align 4
  %74 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 7
  store i32 0, i32* %74, align 4
  %75 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 6
  store i32 0, i32* %75, align 8
  %76 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 8
  store %struct.gs_state_s* %1, %struct.gs_state_s** %76, align 8
  %77 = sitofp i32 %.02 to double
  %78 = fdiv double 2.000000e+00, %77
  %79 = fptrunc double %78 to float
  %80 = sitofp i32 %.01 to double
  %81 = fdiv double 2.000000e+00, %80
  %82 = fptrunc double %81 to float
  call void @gs_make_identity(%struct.gs_matrix_s* noundef nonnull %9) #9
  %83 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i64 0, i32 0
  store float %79, float* %83, align 8
  %84 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i64 0, i32 6
  store float %82, float* %84, align 8
  %85 = fpext float %79 to double
  %86 = call double @llvm.fmuladd.f64(double %85, double 5.000000e-01, double -1.000000e+00)
  %87 = fptrunc double %86 to float
  %88 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i64 0, i32 8
  store float %87, float* %88, align 8
  %89 = fpext float %82 to double
  %90 = call double @llvm.fmuladd.f64(double %89, double 5.000000e-01, double -1.000000e+00)
  %91 = fptrunc double %90 to float
  %92 = getelementptr inbounds %struct.gs_matrix_s, %struct.gs_matrix_s* %9, i64 0, i32 10
  store float %91, float* %92, align 8
  %93 = fneg double %3
  %94 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 5
  %95 = call i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef nonnull %9, double noundef %93, %struct.gs_matrix_s* noundef nonnull %94) #9
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %65
  br label %99

98:                                               ; preds = %65
  br label %99

99:                                               ; preds = %98, %97, %64, %59, %21, %11
  %.0 = phi i32 [ -15, %11 ], [ %19, %21 ], [ -15, %59 ], [ -25, %64 ], [ %95, %97 ], [ 0, %98 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_screen_currentpoint(%struct.gs_screen_enum_s* noundef %0, %struct.gs_point_s* nocapture noundef writeonly %1) #2 {
  %3 = alloca i64, align 8
  %tmpcast = bitcast i64* %3 to %struct.gs_point_s*
  %4 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %.not = icmp slt i32 %5, %7
  br i1 %.not, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 @gx_screen_finish(%struct.gs_screen_enum_s* noundef %0)
  br label %58

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = sitofp i32 %12 to double
  %14 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 5
  %18 = call i32 @gs_point_transform(double noundef %13, double noundef %16, %struct.gs_matrix_s* noundef nonnull %17, %struct.gs_point_s* noundef nonnull %tmpcast) #9
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %58

21:                                               ; preds = %10
  %22 = bitcast i64* %3 to float*
  %23 = load float, float* %22, align 8
  %24 = fcmp olt float %23, -1.000000e+00
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = bitcast i64* %3 to float*
  %27 = load float, float* %26, align 8
  %28 = fadd float %27, 2.000000e+00
  store float %28, float* %26, align 8
  br label %38

29:                                               ; preds = %21
  %30 = bitcast i64* %3 to float*
  %31 = load float, float* %30, align 8
  %32 = fcmp ogt float %31, 1.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = bitcast i64* %3 to float*
  %35 = load float, float* %34, align 8
  %36 = fadd float %35, -2.000000e+00
  store float %36, float* %34, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %25
  %39 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tmpcast, i64 0, i32 1
  %40 = load float, float* %39, align 4
  %41 = fcmp olt float %40, -1.000000e+00
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tmpcast, i64 0, i32 1
  %44 = load float, float* %43, align 4
  %45 = fadd float %44, 2.000000e+00
  store float %45, float* %43, align 4
  br label %55

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tmpcast, i64 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = fcmp ogt float %48, 1.000000e+00
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %tmpcast, i64 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fadd float %52, -2.000000e+00
  store float %53, float* %51, align 4
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %42
  %56 = bitcast %struct.gs_point_s* %1 to i64*
  %57 = load i64, i64* %3, align 8
  store i64 %57, i64* %56, align 4
  br label %58

58:                                               ; preds = %55, %20, %8
  %.0 = phi i32 [ %9, %8 ], [ %18, %20 ], [ 0, %55 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_screen_next(%struct.gs_screen_enum_s* nocapture noundef %0, double noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 2
  %4 = load %struct.ht_bit_s*, %struct.ht_bit_s** %3, align 8
  %5 = fcmp olt double %1, -1.000000e+00
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = fcmp ogt double %1, 1.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %6, %2
  br label %34

9:                                                ; preds = %6
  %10 = fmul double %1, 3.276700e+04
  %11 = fptoui double %10 to i16
  %12 = add i16 %11, 32767
  %13 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %4, i64 %21, i32 1
  store i16 %12, i16* %22, align 2
  %23 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  %27 = load i32, i32* %26, align 8
  %.not = icmp slt i32 %25, %27
  br i1 %.not, label %33, label %28

28:                                               ; preds = %9
  %29 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 6
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %9
  br label %34

34:                                               ; preds = %33, %8
  %.0 = phi i32 [ -15, %8 ], [ 0, %33 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_currentscreen(%struct.gs_state_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1, float* nocapture noundef writeonly %2, float (double, double)** nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 11
  %6 = load %struct.halftone_s*, %struct.halftone_s** %5, align 8
  %7 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %6, i64 0, i32 0
  %8 = load float, float* %7, align 8
  store float %8, float* %1, align 4
  %9 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %6, i64 0, i32 1
  %10 = load float, float* %9, align 4
  store float %10, float* %2, align 4
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 12
  %12 = load float (double, double)*, float (double, double)** %11, align 8
  store float (double, double)* %12, float (double, double)** %3, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

declare dso_local void @gs_deviceparams(%struct.gx_device_s* noundef, %struct.gs_matrix_s* noundef, i32* noundef, i32* noundef) #3

declare dso_local %struct.gx_device_s* @gs_currentdevice(%struct.gs_state_s* noundef) #3

declare dso_local i32 @gs_distance_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #3

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #3

declare dso_local void @gs_make_identity(%struct.gs_matrix_s* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #7

declare dso_local i32 @gs_matrix_rotate(%struct.gs_matrix_s* noundef, double noundef, %struct.gs_matrix_s* noundef) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @gx_screen_finish(%struct.gs_screen_enum_s* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 2
  %3 = load %struct.ht_bit_s*, %struct.ht_bit_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %5, %7
  br label %9

9:                                                ; preds = %15, %1
  %.01 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %10 = icmp ult i32 %.01, %8
  br i1 %10, label %11, label %17

11:                                               ; preds = %9
  %12 = trunc i32 %.01 to i16
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %3, i64 %13, i32 0
  store i16 %12, i16* %14, align 2
  br label %15

15:                                               ; preds = %11
  %16 = add i32 %.01, 1
  br label %9, !llvm.loop !6

17:                                               ; preds = %9
  call void @gx_sort_ht_order(%struct.ht_bit_s* noundef %3, i32 noundef %8) #9
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 2
  %19 = load %struct.ht_bit_s*, %struct.ht_bit_s** %18, align 8
  %20 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.ht_bit_s*, i32, i32, ...) bitcast (i32 (...)* @gx_ht_construct_order to i32 (%struct.ht_bit_s*, i32, i32, ...)*)(%struct.ht_bit_s* noundef %19, i32 noundef %21, i32 noundef %23) #9
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %53

27:                                               ; preds = %17
  %28 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 8
  %29 = load %struct.gs_state_s*, %struct.gs_state_s** %28, align 8
  %30 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %29, i64 0, i32 11
  %31 = load %struct.halftone_s*, %struct.halftone_s** %30, align 8
  %32 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 0
  %33 = load float, float* %32, align 8
  %34 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 0
  store float %33, float* %34, align 8
  %35 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 1
  %36 = load float, float* %35, align 4
  %37 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 1
  store float %36, float* %37, align 4
  %38 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 3
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.gs_screen_enum_s, %struct.gs_screen_enum_s* %0, i64 0, i32 2
  %45 = load %struct.ht_bit_s*, %struct.ht_bit_s** %44, align 8
  %46 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 4
  store %struct.ht_bit_s* %45, %struct.ht_bit_s** %46, align 8
  %47 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %48, %50
  %52 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %31, i64 0, i32 5
  store i32 %51, i32* %52, align 8
  br label %53

53:                                               ; preds = %27, %26
  %.0 = phi i32 [ %24, %26 ], [ 1, %27 ]
  ret i32 %.0
}

declare dso_local i32 @gs_point_transform(double noundef, double noundef, %struct.gs_matrix_s* noundef, %struct.gs_point_s* noundef) #3

declare dso_local void @gx_sort_ht_order(%struct.ht_bit_s* noundef, i32 noundef) #3

declare dso_local i32 @gx_ht_construct_order(...) #3

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_gs_sethsbcolor_241457511(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #8 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [3 x i16], align 2
  br label %sliceclone_1

sliceclone_1:                                     ; preds = %sliceclone_
  %1 = getelementptr inbounds [3 x i16], [3 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @_wyvern_calleeclone_tri_param_3711981802(double noundef %0, double noundef %1, double noundef %2, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr) #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = call i32 @check_unit(double noundef %0, float* noundef nonnull %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = call i32 @check_unit(double noundef %1, float* noundef nonnull %5)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 @check_unit(double noundef %2, float* noundef nonnull %6)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  %.01 = phi i32 [ %7, %3 ], [ %10, %9 ], [ %13, %12 ]
  br label %28

16:                                               ; preds = %12
  %17 = load float, float* %4, align 4
  %18 = fmul float %17, 6.553500e+04
  %19 = fptoui float %18 to i16
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i16* %_wyvern_thunkfptr5(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  store i16 %19, i16* %_wyvern_thunkcall6, align 2
  %20 = load float, float* %5, align 4
  %21 = fmul float %20, 6.553500e+04
  %22 = fptoui float %21 to i16
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i16* %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  %23 = getelementptr inbounds i16, i16* %_wyvern_thunkcall3, i64 1
  store i16 %22, i16* %23, align 2
  %24 = load float, float* %6, align 4
  %25 = fmul float %24, 6.553500e+04
  %26 = fptoui float %25 to i16
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  %27 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 2
  store i16 %26, i16* %27, align 2
  br label %28

28:                                               ; preds = %16, %15
  %.0 = phi i32 [ %.01, %15 ], [ 0, %16 ]
  ret i32 %.0
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_gs_setrgbcolor_629966446(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #8 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [3 x i16], align 2
  br label %sliceclone_1

sliceclone_1:                                     ; preds = %sliceclone_
  %1 = getelementptr inbounds [3 x i16], [3 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @_wyvern_calleeclone_tri_param_3819649123(double noundef %0, double noundef %1, double noundef %2, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #1 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = call i32 @check_unit(double noundef %0, float* noundef nonnull %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = call i32 @check_unit(double noundef %1, float* noundef nonnull %5)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = call i32 @check_unit(double noundef %2, float* noundef nonnull %6)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  %.01 = phi i32 [ %7, %3 ], [ %10, %9 ], [ %13, %12 ]
  br label %28

16:                                               ; preds = %12
  %17 = load float, float* %4, align 4
  %18 = fmul float %17, 6.553500e+04
  %19 = fptoui float %18 to i16
  %_wyvern_thunk_fptr_addr4 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr5 = load i16* (%_wyvern_thunk_type.2*)*, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr4, align 8
  %_wyvern_thunkcall6 = call i16* %_wyvern_thunkfptr5(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #9
  store i16 %19, i16* %_wyvern_thunkcall6, align 2
  %20 = load float, float* %5, align 4
  %21 = fmul float %20, 6.553500e+04
  %22 = fptoui float %21 to i16
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i16* (%_wyvern_thunk_type.2*)*, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i16* %_wyvern_thunkfptr2(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #9
  %23 = getelementptr inbounds i16, i16* %_wyvern_thunkcall3, i64 1
  store i16 %22, i16* %23, align 2
  %24 = load float, float* %6, align 4
  %25 = fmul float %24, 6.553500e+04
  %26 = fptoui float %25 to i16
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.2*)*, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #9
  %27 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 2
  store i16 %26, i16* %27, align 2
  br label %28

28:                                               ; preds = %16, %15
  %.0 = phi i32 [ %.01, %15 ], [ 0, %16 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
