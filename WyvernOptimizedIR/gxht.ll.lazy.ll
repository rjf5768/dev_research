; ModuleID = './gxht.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_ht_cache_s = type { i8*, i32, %struct.ht_bit_s*, i32, i32, [25 x %struct.bit_tile_s] }
%struct.ht_bit_s = type { i16, i16 }
%struct.bit_tile_s = type { i32, %struct.gx_bitmap_s }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type { float, float, i32, i32, %struct.ht_bit_s*, i32 }
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

@cache = internal global %struct.gx_ht_cache_s zeroinitializer, align 8
@cache_bits = internal global [1000 x i8] zeroinitializer, align 16
@multi_bits = internal global [9 x i16*] [i16* null, i16* bitcast ([2 x i8]* @mb1 to i16*), i16* bitcast ([4 x i8]* @mb2 to i16*), i16* bitcast ([6 x i8]* @mb3 to i16*), i16* bitcast ([8 x i8]* @mb4 to i16*), i16* bitcast ([10 x i8]* @mb5 to i16*), i16* bitcast ([12 x i8]* @mb6 to i16*), i16* bitcast ([14 x i8]* @mb7 to i16*), i16* bitcast ([16 x i8]* @mb8 to i16*)], align 16
@single_bits8 = internal global [32 x i8] c"\80\00@\00 \00\10\00\08\00\04\00\02\00\01\00\00\80\00@\00 \00\10\00\08\00\04\00\02\00\01", align 16
@mb1 = internal global [2 x i8] c"\FF\FF", align 1
@mb2 = internal global [4 x i8] c"\AA\AAUU", align 1
@mb3 = internal global [6 x i8] c"\92II$$\92", align 1
@mb4 = internal global [8 x i8] c"\88\88DD\22\22\11\11", align 1
@mb5 = internal global [10 x i8] c"\84!B\10!\08\10\84\08B", align 1
@mb6 = internal global [12 x i8] c"\82\08A\04 \82\10A\08 \04\10", align 1
@mb7 = internal global [14 x i8] c"\81\02@\81 @\10 \08\10\04\08\02\04", align 1
@mb8 = internal global [16 x i8] c"\80\80@@  \10\10\08\08\04\04\02\02\01\01", align 16
@init_ht.up_to_16 = internal global [9 x i32] [i32 0, i32 16, i32 16, i32 15, i32 16, i32 15, i32 12, i32 14, i32 16], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @gx_ht_construct_order(%struct.ht_bit_s* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul nsw i32 %1, %2
  %5 = sub nsw i32 0, %1
  %6 = and i32 %5, 31
  %7 = add nsw i32 %6, %1
  %8 = sdiv i32 %7, 8
  %9 = mul nsw i32 %8, %2
  %10 = icmp sgt i32 %9, 1000
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %46

12:                                               ; preds = %3
  store %struct.ht_bit_s* null, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 2), align 8
  store i8* getelementptr inbounds ([1000 x i8], [1000 x i8]* @cache_bits, i64 0, i64 0), i8** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 0), align 8
  store i32 1000, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 1), align 8
  br label %13

13:                                               ; preds = %43, %12
  %.01 = phi i32 [ 0, %12 ], [ %44, %43 ]
  %14 = icmp ult i32 %.01, %4
  br i1 %14, label %15, label %45

15:                                               ; preds = %13
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %0, i64 %16, i32 0
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = sdiv i32 %19, %1
  %21 = mul nsw i32 %20, %6
  %22 = add nsw i32 %21, %19
  %23 = lshr i32 %22, 3
  %24 = trunc i32 %23 to i16
  %25 = and i16 %24, -2
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %0, i64 %26, i32 0
  store i16 %25, i16* %27, align 2
  %28 = icmp slt i32 %1, 9
  br i1 %28, label %29, label %36

29:                                               ; preds = %15
  %30 = sext i32 %1 to i64
  %31 = getelementptr inbounds [9 x i16*], [9 x i16*]* @multi_bits, i64 0, i64 %30
  %32 = load i16*, i16** %31, align 8
  %33 = and i32 %22, 15
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  br label %40

36:                                               ; preds = %15
  %37 = and i32 %22, 15
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* bitcast ([32 x i8]* @single_bits8 to i16*), i64 %38
  br label %40

40:                                               ; preds = %36, %29
  %.in.in = phi i16* [ %35, %29 ], [ %39, %36 ]
  %.in2 = load i16, i16* %.in.in, align 2
  %41 = zext i32 %.01 to i64
  %42 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %0, i64 %41, i32 1
  store i16 %.in2, i16* %42, align 2
  br label %43

43:                                               ; preds = %40
  %44 = add i32 %.01, 1
  br label %13, !llvm.loop !4

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45, %11
  %.0 = phi i32 [ -13, %11 ], [ 0, %45 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @gx_color_load(%struct.gx_device_color_s* nocapture noundef %0, %struct.gs_state_s* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  br label %25

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %1, i64 0, i32 11
  %9 = load %struct.halftone_s*, %struct.halftone_s** %8, align 8
  %10 = load %struct.ht_bit_s*, %struct.ht_bit_s** getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 2), align 8
  %11 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %9, i64 0, i32 4
  %12 = load %struct.ht_bit_s*, %struct.ht_bit_s** %11, align 8
  %.not = icmp eq %struct.ht_bit_s* %10, %12
  br i1 %.not, label %14, label %13

13:                                               ; preds = %7
  call void @init_ht(%struct.gx_ht_cache_s* noundef nonnull @cache, %struct.halftone_s* noundef %9)
  br label %14

14:                                               ; preds = %13, %7
  %15 = load i32, i32* getelementptr inbounds (%struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 4), align 4
  %16 = sdiv i32 %4, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 5, i64 %17
  %19 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %18, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %.not1 = icmp eq i32 %20, %4
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %14
  call void @render_ht(%struct.bit_tile_s* noundef nonnull %18, i32 noundef %4, %struct.halftone_s* noundef %9)
  br label %22

22:                                               ; preds = %21, %14
  %23 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* @cache, i64 0, i32 5, i64 %17, i32 1
  %24 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %0, i64 0, i32 3
  store %struct.gx_bitmap_s* %23, %struct.gx_bitmap_s** %24, align 8
  br label %25

25:                                               ; preds = %22, %6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define internal void @init_ht(%struct.gx_ht_cache_s* nocapture noundef %0, %struct.halftone_s* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %1, i64 0, i32 2
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %1, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = mul nsw i32 %4, %6
  %8 = icmp slt i32 %4, 9
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = sext i32 %4 to i64
  %11 = getelementptr inbounds [9 x i32], [9 x i32]* @init_ht.up_to_16, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  br label %14

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %13, %9
  %15 = phi i32 [ %12, %9 ], [ %4, %13 ]
  %16 = add nsw i32 %4, 31
  %17 = ashr i32 %16, 3
  %18 = and i32 %17, -4
  %19 = mul i32 %18, %6
  %20 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = udiv i32 1000, %19
  %23 = icmp sgt i32 %22, %7
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %14
  %.02 = phi i32 [ %7, %24 ], [ %22, %14 ]
  %26 = icmp sgt i32 %.02, 25
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %25
  %.1 = phi i32 [ 25, %27 ], [ %.02, %25 ]
  br label %29

29:                                               ; preds = %38, %28
  %.01 = phi i32 [ 0, %28 ], [ %41, %38 ]
  %.0 = phi i8* [ %21, %28 ], [ %40, %38 ]
  %30 = icmp slt i32 %.01, %.1
  br i1 %30, label %31, label %42

31:                                               ; preds = %29
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 5, i64 %32, i32 0
  store i32 -1, i32* %33, align 8
  %34 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 5, i64 %32, i32 1, i32 0
  store i8* %.0, i8** %34, align 8
  %35 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 5, i64 %32, i32 1, i32 1
  store i32 %18, i32* %35, align 8
  %36 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 5, i64 %32, i32 1, i32 2
  store i32 %15, i32* %36, align 4
  %37 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 5, i64 %32, i32 1, i32 3
  store i32 %6, i32* %37, align 8
  br label %38

38:                                               ; preds = %31
  %39 = zext i32 %19 to i64
  %40 = getelementptr inbounds i8, i8* %.0, i64 %39
  %41 = add nuw nsw i32 %.01, 1
  br label %29, !llvm.loop !6

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %1, i64 0, i32 4
  %44 = load %struct.ht_bit_s*, %struct.ht_bit_s** %43, align 8
  %45 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 2
  store %struct.ht_bit_s* %44, %struct.ht_bit_s** %45, align 8
  %46 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 3
  store i32 %.1, i32* %46, align 8
  %47 = add nsw i32 %7, %.1
  %48 = add nsw i32 %47, -1
  %49 = sdiv i32 %48, %.1
  %50 = getelementptr inbounds %struct.gx_ht_cache_s, %struct.gx_ht_cache_s* %0, i64 0, i32 4
  store i32 %49, i32* %50, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal void @render_ht(%struct.bit_tile_s* nocapture noundef %0, i32 noundef %1, %struct.halftone_s* nocapture noundef readonly %2) #1 {
  %4 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %2, i64 0, i32 4
  %5 = load %struct.ht_bit_s*, %struct.ht_bit_s** %4, align 8
  %6 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %0, i64 0, i32 1, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %0, i64 0, i32 1, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %0, i64 0, i32 1, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %13, %15
  %17 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %2, i64 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 1
  %.not = icmp sgt i32 %19, %1
  br i1 %.not, label %24, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.halftone_s, %struct.halftone_s* %2, i64 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = zext i32 %16 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 -1, i64 %23, i1 false)
  br label %26

24:                                               ; preds = %11
  %25 = zext i32 %16 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 %25, i1 false)
  br label %26

26:                                               ; preds = %24, %20
  %.0 = phi i32 [ %22, %20 ], [ 0, %24 ]
  br label %27

27:                                               ; preds = %26, %3
  %.1 = phi i32 [ %.0, %26 ], [ %9, %3 ]
  %28 = icmp slt i32 %.1, %1
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30, %29
  %.pn.in = phi i32 [ %.1, %29 ], [ %1, %30 ]
  %.pn4.in = phi i32 [ %1, %29 ], [ %.1, %30 ]
  %.pn4 = sext i32 %.pn4.in to i64
  %.01 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %5, i64 %.pn4
  %.pn = sext i32 %.pn.in to i64
  %.02 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %5, i64 %.pn
  br label %32

32:                                               ; preds = %42, %31
  %.13 = phi %struct.ht_bit_s* [ %.02, %31 ], [ %43, %42 ]
  %33 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %.13, i64 0, i32 1
  %34 = load i16, i16* %33, align 2
  %35 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %.13, i64 0, i32 0
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i64
  %38 = getelementptr inbounds i8, i8* %7, i64 %37
  %39 = bitcast i8* %38 to i16*
  %40 = load i16, i16* %39, align 2
  %41 = xor i16 %40, %34
  store i16 %41, i16* %39, align 2
  br label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.ht_bit_s, %struct.ht_bit_s* %.13, i64 1
  %44 = icmp ult %struct.ht_bit_s* %43, %.01
  br i1 %44, label %32, label %45, !llvm.loop !7

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.bit_tile_s, %struct.bit_tile_s* %0, i64 0, i32 0
  store i32 %1, i32* %46, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn writeonly }

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
