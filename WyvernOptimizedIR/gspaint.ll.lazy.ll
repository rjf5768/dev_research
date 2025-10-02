; ModuleID = './gspaint.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }
%struct.gs_image_enum_s = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, void (%struct.gs_image_enum_s*, i8*, i8*, i32)*, i32 (%struct.gs_image_enum_s*, i8*, i32, i32)*, %struct.gs_state_s*, i8*, i32, i32, i32, i32, i32, [4 x i8*], i32, i32, i32, i64, i64, i32, [256 x %struct.gx_device_color_s] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_erasepage(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 22
  %3 = load %struct.device_s*, %struct.device_s** %2, align 8
  %4 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 0
  %5 = load %struct.gx_device_s*, %struct.gx_device_s** %4, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 1
  %7 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %6, align 8
  %8 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %7, i64 0, i32 7
  %9 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %8, align 8
  %10 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %5, i64 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.device_s, %struct.device_s* %3, i64 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 %9(%struct.gx_device_s* noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef %11, i32 noundef %13, i64 noundef %15) #3
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_fill(%struct.gs_state_s* noundef %0) #0 {
  %2 = call i32 @gs_fill_trim(%struct.gs_state_s* noundef %0, i64 noundef 0)
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_fill_trim(%struct.gs_state_s* noundef %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 20
  %4 = load i8, i8* %3, align 1
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  %9 = load %struct.gs_state_s*, %struct.gs_state_s** %8, align 8
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %9, i64 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %10, align 8
  %12 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %7, %struct.gx_path_s* noundef %11) #3
  br label %24

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %15 = load %struct.gs_color_s*, %struct.gs_color_s** %14, align 8
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %17 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %16, align 8
  %18 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %15, %struct.gx_device_color_s* noundef %17, %struct.gs_state_s* noundef %0) #3
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %20 = load %struct.gx_path_s*, %struct.gx_path_s** %19, align 8
  %21 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %22 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %21, align 8
  %23 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* noundef %20, %struct.gx_device_color_s* noundef %22, %struct.gs_state_s* noundef %0, i32 noundef -1, i64 noundef %1) #3
  br label %24

24:                                               ; preds = %13, %5
  %.0 = phi i32 [ %12, %5 ], [ %23, %13 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %25, label %27

25:                                               ; preds = %24
  %26 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #3
  br label %27

27:                                               ; preds = %25, %24
  ret i32 %.0
}

declare dso_local i32 @gx_path_merge(%struct.gx_path_s* noundef, %struct.gx_path_s* noundef) #1

declare dso_local i32 @gx_color_render(...) #1

declare dso_local i32 @gx_fill_path(...) #1

declare dso_local i32 @gs_newpath(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_eofill(%struct.gs_state_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %3 = load %struct.gs_color_s*, %struct.gs_color_s** %2, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %5 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %4, align 8
  %6 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %3, %struct.gx_device_color_s* noundef %5, %struct.gs_state_s* noundef %0) #3
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 20
  %8 = load i8, i8* %7, align 1
  %.not = icmp eq i8 %8, 0
  br i1 %.not, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %10, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  %13 = load %struct.gs_state_s*, %struct.gs_state_s** %12, align 8
  %14 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %13, i64 0, i32 7
  %15 = load %struct.gx_path_s*, %struct.gx_path_s** %14, align 8
  %16 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %11, %struct.gx_path_s* noundef %15) #3
  br label %28

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %19 = load %struct.gs_color_s*, %struct.gs_color_s** %18, align 8
  %20 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %21 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %20, align 8
  %22 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %19, %struct.gx_device_color_s* noundef %21, %struct.gs_state_s* noundef %0) #3
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %24 = load %struct.gx_path_s*, %struct.gx_path_s** %23, align 8
  %25 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %26 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %25, align 8
  %27 = call i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...) bitcast (i32 (...)* @gx_fill_path to i32 (%struct.gx_path_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, i32, i64, ...)*)(%struct.gx_path_s* noundef %24, %struct.gx_device_color_s* noundef %26, %struct.gs_state_s* noundef %0, i32 noundef 1, i64 noundef 0) #3
  br label %28

28:                                               ; preds = %17, %9
  %.0 = phi i32 [ %16, %9 ], [ %27, %17 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %29, label %31

29:                                               ; preds = %28
  %30 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #3
  br label %31

31:                                               ; preds = %29, %28
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_stroke(%struct.gs_state_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 20
  %3 = load i8, i8* %2, align 1
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %6 = load %struct.gx_path_s*, %struct.gx_path_s** %5, align 8
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 0
  %8 = load %struct.gs_state_s*, %struct.gs_state_s** %7, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i64 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = call i32 @gx_path_merge(%struct.gx_path_s* noundef %6, %struct.gx_path_s* noundef %10) #3
  br label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 13
  %14 = load %struct.gs_color_s*, %struct.gs_color_s** %13, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 14
  %16 = load %struct.gx_device_color_s*, %struct.gx_device_color_s** %15, align 8
  %17 = call i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_color_render to i32 (%struct.gs_color_s*, %struct.gx_device_color_s*, %struct.gs_state_s*, ...)*)(%struct.gs_color_s* noundef %14, %struct.gx_device_color_s* noundef %16, %struct.gs_state_s* noundef %0) #3
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %19 = load %struct.gx_path_s*, %struct.gx_path_s** %18, align 8
  %20 = call i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_fill to i32 (%struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* noundef %19, %struct.gs_state_s* noundef %0) #3
  br label %21

21:                                               ; preds = %12, %4
  %.0 = phi i32 [ %11, %4 ], [ %20, %12 ]
  %.not1 = icmp eq i32 %.0, 0
  br i1 %.not1, label %22, label %24

22:                                               ; preds = %21
  %23 = call i32 (%struct.gs_state_s*, ...) bitcast (i32 (...)* @gs_newpath to i32 (%struct.gs_state_s*, ...)*)(%struct.gs_state_s* noundef %0) #3
  br label %24

24:                                               ; preds = %22, %21
  ret i32 %.0
}

declare dso_local i32 @gx_stroke_fill(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_strokepath(%struct.gs_state_s* noundef %0) #0 {
  %2 = alloca %struct.gx_path_s, align 8
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef nonnull %2, %struct.gs_memory_procs* noundef nonnull %3) #3
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = call i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...) bitcast (i32 (...)* @gx_stroke_add to i32 (%struct.gx_path_s*, %struct.gx_path_s*, %struct.gs_state_s*, ...)*)(%struct.gx_path_s* noundef %5, %struct.gx_path_s* noundef nonnull %2, %struct.gs_state_s* noundef %0) #3
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %11 = load %struct.gx_path_s*, %struct.gx_path_s** %10, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %11) #3
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %13 = bitcast %struct.gx_path_s** %12 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast %struct.gx_path_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(144) %14, i8* noundef nonnull align 8 dereferenceable(144) %15, i64 144, i1 false)
  br label %16

16:                                               ; preds = %9, %8
  %.0 = phi i32 [ %6, %8 ], [ 0, %9 ]
  ret i32 %.0
}

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

declare dso_local i32 @gx_stroke_add(...) #1

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_colorimage(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.gs_matrix_s* noundef %5, i8* noundef %6) #0 {
  %8 = alloca %struct.gs_image_enum_s, align 8
  %9 = call i32 @gs_image_init(%struct.gs_image_enum_s* noundef nonnull %8, %struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, %struct.gs_matrix_s* noundef %5) #3
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %42

12:                                               ; preds = %7
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = mul i32 %1, %3
  %16 = mul i32 %15, %4
  %17 = add i32 %16, 7
  %18 = lshr i32 %17, 3
  %19 = mul i32 %18, %2
  %20 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef nonnull %8, i8* noundef %6, i32 noundef %19) #3
  br label %36

21:                                               ; preds = %12
  %22 = mul i32 %1, %3
  %23 = add i32 %22, 7
  %24 = lshr i32 %23, 3
  %25 = mul i32 %24, %2
  br label %26

26:                                               ; preds = %31, %21
  %.02 = phi i8* [ %6, %21 ], [ %33, %31 ]
  %.01 = phi i32 [ %4, %21 ], [ %34, %31 ]
  %27 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef nonnull %8, i8* noundef %.02, i32 noundef %25) #3
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %42

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  %32 = zext i32 %25 to i64
  %33 = getelementptr inbounds i8, i8* %.02, i64 %32
  %34 = add nsw i32 %.01, 1
  %.not = icmp eq i32 %34, 0
  br i1 %.not, label %35, label %26, !llvm.loop !4

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %14
  %.03 = phi i32 [ %20, %14 ], [ %27, %35 ]
  %37 = icmp slt i32 %.03, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %40

39:                                               ; preds = %36
  br label %40

40:                                               ; preds = %39, %38
  %41 = phi i32 [ %.03, %38 ], [ 0, %39 ]
  br label %42

42:                                               ; preds = %40, %29, %11
  %.0 = phi i32 [ %9, %11 ], [ %41, %40 ], [ %27, %29 ]
  ret i32 %.0
}

declare dso_local i32 @gs_image_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

declare dso_local i32 @gs_image_next(%struct.gs_image_enum_s* noundef, i8* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_image(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gs_matrix_s* noundef %4, i8* noundef %5) #0 {
  %7 = call i32 @gs_colorimage(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, %struct.gs_matrix_s* noundef %4, i8* noundef %5)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_imagemask(%struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gs_matrix_s* noundef %4, i8* noundef %5) #0 {
  %7 = alloca %struct.gs_image_enum_s, align 8
  %8 = call i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef nonnull %7, %struct.gs_state_s* noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gs_matrix_s* noundef %4) #3
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %21

11:                                               ; preds = %6
  %12 = add i32 %1, 7
  %13 = lshr i32 %12, 3
  %14 = mul i32 %13, %2
  %15 = call i32 @gs_image_next(%struct.gs_image_enum_s* noundef nonnull %7, i8* noundef %5, i32 noundef %14) #3
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %19

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %17
  %20 = phi i32 [ %15, %17 ], [ 0, %18 ]
  br label %21

21:                                               ; preds = %19, %10
  %.0 = phi i32 [ %8, %10 ], [ %20, %19 ]
  ret i32 %.0
}

declare dso_local i32 @gs_imagemask_init(%struct.gs_image_enum_s* noundef, %struct.gs_state_s* noundef, i32 noundef, i32 noundef, i32 noundef, %struct.gs_matrix_s* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
