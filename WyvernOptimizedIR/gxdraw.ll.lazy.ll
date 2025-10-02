; ModuleID = './gxdraw.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gxdraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gx_device_color_s = type { i64, i64, i32, %struct.gx_bitmap_s* }
%struct.gx_bitmap_s = type { i8*, i32, i32, i32 }
%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type { i16, i16, i16, i16, i8, i8 }
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type { %struct.gx_device_s*, i32, i64, i64 }
%struct.gx_device_s = type { i32, %struct.gx_device_procs_s*, i8*, i32, i32, float, float, i32, i16, i32, i32 }
%struct.gx_device_procs_s = type { i32 (%struct.gx_device_s*)*, void (%struct.gx_device_s*, %struct.gs_matrix_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i32 (%struct.gx_device_s*)*, i64 (%struct.gx_device_s*, i16, i16, i16)*, i32 (%struct.gx_device_s*, i64, i16*)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i32, i32, i64, i64)* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_fill_rectangle(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, %struct.gx_device_color_s* nocapture noundef readonly %4, %struct.gs_state_s* nocapture noundef readonly %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i64 0, i32 22
  %10 = load %struct.device_s*, %struct.device_s** %9, align 8
  %11 = getelementptr inbounds %struct.device_s, %struct.device_s* %10, i64 0, i32 0
  %12 = load %struct.gx_device_s*, %struct.gx_device_s** %11, align 8
  %13 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i64 0, i32 1
  %18 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %17, align 8
  %19 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %18, i64 0, i32 7
  %20 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %19, align 8
  %21 = call i32 %20(%struct.gx_device_s* noundef %12, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %8) #3
  br label %83

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 3
  %26 = load %struct.gx_bitmap_s*, %struct.gx_bitmap_s** %25, align 8
  %27 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 2
  %28 = load i32, i32* %27, align 4
  %.not = icmp slt i32 %28, %2
  br i1 %.not, label %68, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 3
  %31 = load i32, i32* %30, align 8
  %.not4 = icmp slt i32 %31, %3
  br i1 %.not4, label %68, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %0, %34
  %36 = add nsw i32 %35, %2
  %.not5 = icmp sgt i32 %36, %34
  br i1 %.not5, label %67, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = srem i32 %1, %39
  %41 = add nsw i32 %40, %3
  %.not6 = icmp sgt i32 %41, %39
  br i1 %.not6, label %67, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %26, i64 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = mul nsw i32 %40, %44
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i64 0, i32 1
  %55 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %54, align 8
  %56 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %55, i64 0, i32 10
  %57 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %56, align 8
  %58 = call i32 %57(%struct.gx_device_s* noundef %12, i8* noundef %49, i32 noundef %35, i32 noundef %44, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3
  br label %65

59:                                               ; preds = %42
  %60 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i64 0, i32 1
  %61 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %60, align 8
  %62 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %61, i64 0, i32 9
  %63 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %62, align 8
  %64 = call i32 %63(%struct.gx_device_s* noundef %12, i8* noundef %49, i32 noundef %35, i32 noundef %44, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %8, i64 noundef %24) #3
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i32 [ %58, %53 ], [ %64, %59 ]
  br label %83

67:                                               ; preds = %37, %32
  br label %68

68:                                               ; preds = %67, %29, %22
  %69 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %68
  %.03 = phi i64 [ -1, %72 ], [ %8, %68 ]
  %.02 = phi i64 [ -1, %72 ], [ %24, %68 ]
  %74 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %12, i64 0, i32 1
  %75 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %74, align 8
  %76 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %75, i64 0, i32 8
  %77 = load i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, %struct.gx_bitmap_s*, i32, i32, i32, i32, i64, i64)** %76, align 8
  %78 = call i32 %77(%struct.gx_device_s* noundef %12, %struct.gx_bitmap_s* noundef %26, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %.03, i64 noundef %.02) #3
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @gx_default_tile_rectangle(%struct.gx_device_s* noundef %12, %struct.gx_bitmap_s* noundef %26, i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %.03, i64 noundef %.02)
  br label %82

82:                                               ; preds = %80, %73
  %.01 = phi i32 [ %81, %80 ], [ %78, %73 ]
  br label %83

83:                                               ; preds = %82, %65, %16
  %.0 = phi i32 [ %21, %16 ], [ %66, %65 ], [ %.01, %82 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gx_default_tile_rectangle(%struct.gx_device_s* noundef %0, %struct.gx_bitmap_s* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7) #0 {
  %9 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i64 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i64 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i64 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %2, %4
  %16 = add nsw i32 %3, %5
  %17 = sub nsw i32 %15, %10
  %18 = sub nsw i32 %16, %12
  %19 = call i32 @llvm.ctpop.i32(i32 %10), !range !4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = add nsw i32 %10, -1
  %23 = and i32 %22, %2
  br label %26

24:                                               ; preds = %8
  %25 = srem i32 %2, %10
  br label %26

26:                                               ; preds = %24, %21
  %27 = phi i32 [ %23, %21 ], [ %25, %24 ]
  %28 = srem i32 %3, %12
  %29 = sub nsw i32 %10, %27
  %30 = sub nsw i32 %12, %28
  %31 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i64 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = mul nsw i32 %28, %14
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = icmp eq i64 %6, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = icmp ne i64 %7, -1
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi i1 [ true, %26 ], [ %38, %37 ]
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 1
  %43 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %42, align 8
  %44 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %43, i64 0, i32 10
  %45 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)** %44, align 8
  br label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %0, i64 0, i32 1
  %48 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %47, align 8
  %49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %48, i64 0, i32 9
  %50 = load i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)*, i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)** %49, align 8
  br label %51

51:                                               ; preds = %46, %41
  %.03 = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32, i64, i64)* [ undef, %41 ], [ %50, %46 ]
  %.02 = phi i32 (%struct.gx_device_s*, i8*, i32, i32, i32, i32, i32, i32)* [ %45, %41 ], [ undef, %46 ]
  %52 = icmp sgt i32 %29, %4
  br i1 %52, label %53, label %54

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %51
  %.06 = phi i32 [ %4, %53 ], [ %29, %51 ]
  %55 = icmp sgt i32 %30, %5
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %54
  %.05 = phi i32 [ %5, %56 ], [ %30, %54 ]
  br label %58

58:                                               ; preds = %91, %57
  %.1 = phi i32 [ %.05, %57 ], [ %92, %91 ]
  %.04 = phi i8* [ %35, %57 ], [ %94, %91 ]
  %.0 = phi i32 [ %3, %57 ], [ %86, %91 ]
  %59 = icmp slt i32 %.0, %16
  br i1 %59, label %60, label %95

60:                                               ; preds = %58
  br i1 %40, label %63, label %61

61:                                               ; preds = %60
  %62 = call i32 %.02(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef %27, i32 noundef %14, i32 noundef %2, i32 noundef %.0, i32 noundef %.06, i32 noundef %.1) #3
  br label %65

63:                                               ; preds = %60
  %64 = call i32 %.03(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef %27, i32 noundef %14, i32 noundef %2, i32 noundef %.0, i32 noundef %.06, i32 noundef %.1, i64 noundef %6, i64 noundef %7) #3
  br label %65

65:                                               ; preds = %63, %61
  %66 = add nsw i32 %.06, %2
  br label %67

67:                                               ; preds = %73, %65
  %.01 = phi i32 [ %66, %65 ], [ %74, %73 ]
  %.not8 = icmp sgt i32 %.01, %17
  br i1 %.not8, label %75, label %68

68:                                               ; preds = %67
  br i1 %40, label %71, label %69

69:                                               ; preds = %68
  %70 = call i32 %.02(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef 0, i32 noundef %14, i32 noundef %.01, i32 noundef %.0, i32 noundef %10, i32 noundef %.1) #3
  br label %73

71:                                               ; preds = %68
  %72 = call i32 %.03(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef 0, i32 noundef %14, i32 noundef %.01, i32 noundef %.0, i32 noundef %10, i32 noundef %.1, i64 noundef %6, i64 noundef %7) #3
  br label %73

73:                                               ; preds = %71, %69
  %74 = add nsw i32 %.01, %10
  br label %67, !llvm.loop !5

75:                                               ; preds = %67
  %76 = icmp sgt i32 %15, %.01
  br i1 %76, label %77, label %85

77:                                               ; preds = %75
  br i1 %40, label %81, label %78

78:                                               ; preds = %77
  %79 = sub nsw i32 %15, %.01
  %80 = call i32 %.02(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef 0, i32 noundef %14, i32 noundef %.01, i32 noundef %.0, i32 noundef %79, i32 noundef %.1) #3
  br label %84

81:                                               ; preds = %77
  %82 = sub nsw i32 %15, %.01
  %83 = call i32 %.03(%struct.gx_device_s* noundef %0, i8* noundef %.04, i32 noundef 0, i32 noundef %14, i32 noundef %.01, i32 noundef %.0, i32 noundef %82, i32 noundef %.1, i64 noundef %6, i64 noundef %7) #3
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %75
  %86 = add nsw i32 %.0, %.1
  %87 = icmp sgt i32 %86, %18
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = sub nsw i32 %16, %86
  br label %91

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ %12, %90 ]
  %93 = getelementptr inbounds %struct.gx_bitmap_s, %struct.gx_bitmap_s* %1, i64 0, i32 0
  %94 = load i8*, i8** %93, align 8
  br label %58, !llvm.loop !7

95:                                               ; preds = %58
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_fill_trapezoid_fixed(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, %struct.gx_device_color_s* nocapture noundef readonly %7, %struct.gs_state_s* nocapture noundef readonly %8) #0 {
  %10 = lshr i64 %0, 12
  %11 = trunc i64 %10 to i32
  %12 = add nsw i64 %0, %1
  %13 = add nsw i64 %12, 4095
  %14 = lshr i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = sub nsw i32 %15, %11
  %17 = lshr i64 %2, 12
  %18 = trunc i64 %17 to i32
  %19 = lshr i64 %3, 12
  %20 = trunc i64 %19 to i32
  %21 = add nsw i64 %3, %4
  %22 = add nsw i64 %21, 4095
  %23 = lshr i64 %22, 12
  %24 = trunc i64 %23 to i32
  %25 = sub nsw i32 %24, %20
  %26 = add nsw i64 %2, %5
  %27 = add nsw i64 %26, 4095
  %28 = lshr i64 %27, 12
  %29 = trunc i64 %28 to i32
  %30 = sub nsw i32 %29, %18
  %31 = icmp eq i32 %16, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %9
  %33 = icmp eq i32 %25, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %32, %9
  %35 = icmp slt i32 %30, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %34, %32
  br label %148

37:                                               ; preds = %34
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %38, label %57

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i64 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %8, i64 0, i32 22
  %44 = load %struct.device_s*, %struct.device_s** %43, align 8
  %45 = getelementptr inbounds %struct.device_s, %struct.device_s* %44, i64 0, i32 0
  %46 = load %struct.gx_device_s*, %struct.gx_device_s** %45, align 8
  %47 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %46, i64 0, i32 1
  %48 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %47, align 8
  %49 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %48, i64 0, i32 12
  %50 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i32, i32, i64)** %49, align 8
  %51 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %7, i64 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %50(%struct.gx_device_s* noundef %46, i32 noundef %11, i32 noundef %18, i32 noundef %16, i32 noundef %20, i32 noundef %29, i32 noundef %25, i64 noundef %52) #3
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  br label %148

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %38, %37
  %58 = sub nsw i32 %20, %11
  %59 = sub nsw i32 %24, %15
  %60 = icmp sgt i32 %58, -1
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %.not44 = icmp slt i32 %58, %30
  br i1 %.not44, label %67, label %62

62:                                               ; preds = %61
  %63 = sdiv i32 %58, %30
  %64 = add nsw i32 %63, 1
  %65 = mul nsw i32 %63, %30
  %66 = sub nsw i32 %58, %65
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %62
  %.025 = phi i32 [ %63, %62 ], [ 0, %67 ]
  %.022 = phi i32 [ %64, %62 ], [ 1, %67 ]
  %.019 = phi i32 [ %66, %62 ], [ %58, %67 ]
  br label %77

69:                                               ; preds = %57
  %70 = sub nsw i32 0, %30
  %.not32 = icmp sgt i32 %58, %70
  br i1 %.not32, label %75, label %71

71:                                               ; preds = %69
  %72 = sdiv i32 %58, %30
  %73 = add nsw i32 %72, -1
  %74 = mul nsw i32 %72, %30
  br label %76

75:                                               ; preds = %69
  br label %76

76:                                               ; preds = %75, %71
  %.126 = phi i32 [ %72, %71 ], [ 0, %75 ]
  %.123 = phi i32 [ %73, %71 ], [ -1, %75 ]
  %.pn = phi i32 [ %74, %71 ], [ 0, %75 ]
  %.120 = sub nsw i32 %.pn, %58
  br label %77

77:                                               ; preds = %76, %68
  %.227 = phi i32 [ %.025, %68 ], [ %.126, %76 ]
  %.224 = phi i32 [ %.022, %68 ], [ %.123, %76 ]
  %.221 = phi i32 [ %.019, %68 ], [ %.120, %76 ]
  %78 = icmp sgt i32 %59, -1
  br i1 %78, label %79, label %99

79:                                               ; preds = %77
  %.not42 = icmp slt i32 %59, %30
  br i1 %.not42, label %85, label %80

80:                                               ; preds = %79
  %81 = sdiv i32 %59, %30
  %82 = add nsw i32 %81, 1
  %83 = mul nsw i32 %81, %30
  %84 = sub nsw i32 %59, %83
  br label %98

85:                                               ; preds = %79
  %86 = icmp eq i32 %.227, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %85
  %88 = icmp eq i32 %.221, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %87
  %90 = icmp eq i32 %59, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %89
  %.not43 = icmp eq i32 %6, 0
  br i1 %.not43, label %94, label %92

92:                                               ; preds = %91
  %93 = call i32 @gz_fill_rectangle(i32 noundef %18, i32 noundef %11, i32 noundef %30, i32 noundef %16, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %96

94:                                               ; preds = %91
  %95 = call i32 @gz_fill_rectangle(i32 noundef %11, i32 noundef %18, i32 noundef %16, i32 noundef %30, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %96

96:                                               ; preds = %94, %92
  br label %148

97:                                               ; preds = %89, %87, %85
  br label %98

98:                                               ; preds = %97, %80
  %.012 = phi i32 [ %81, %80 ], [ 0, %97 ]
  %.09 = phi i32 [ %82, %80 ], [ 1, %97 ]
  %.07 = phi i32 [ %84, %80 ], [ %59, %97 ]
  br label %107

99:                                               ; preds = %77
  %100 = sub nsw i32 0, %30
  %.not33 = icmp sgt i32 %59, %100
  br i1 %.not33, label %105, label %101

101:                                              ; preds = %99
  %102 = sdiv i32 %59, %30
  %103 = add nsw i32 %102, -1
  %104 = mul nsw i32 %102, %30
  br label %106

105:                                              ; preds = %99
  br label %106

106:                                              ; preds = %105, %101
  %.113 = phi i32 [ %102, %101 ], [ 0, %105 ]
  %.110 = phi i32 [ %103, %101 ], [ -1, %105 ]
  %.pn34 = phi i32 [ %104, %101 ], [ 0, %105 ]
  %.18 = sub nsw i32 %.pn34, %59
  br label %107

107:                                              ; preds = %106, %98
  %.214 = phi i32 [ %.012, %98 ], [ %.113, %106 ]
  %.211 = phi i32 [ %.09, %98 ], [ %.110, %106 ]
  %.2 = phi i32 [ %.07, %98 ], [ %.18, %106 ]
  %108 = ashr i32 %.221, 1
  %109 = ashr i32 %.2, 1
  br label %110

110:                                              ; preds = %133, %107
  %.030 = phi i32 [ %11, %107 ], [ %.131, %133 ]
  %.028 = phi i32 [ %108, %107 ], [ %.129, %133 ]
  %.017 = phi i32 [ %15, %107 ], [ %.118, %133 ]
  %.015 = phi i32 [ %109, %107 ], [ %.116, %133 ]
  %.06 = phi i32 [ %18, %107 ], [ %134, %133 ]
  %.04 = phi i32 [ %11, %107 ], [ %.15, %133 ]
  %.02 = phi i32 [ %15, %107 ], [ %.13, %133 ]
  %.01 = phi i32 [ %18, %107 ], [ %.1, %133 ]
  %.not35 = icmp eq i32 %.030, %.04
  br i1 %.not35, label %111, label %112

111:                                              ; preds = %110
  %.not36 = icmp eq i32 %.017, %.02
  br i1 %.not36, label %122, label %112

112:                                              ; preds = %111, %110
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %117, label %113

113:                                              ; preds = %112
  %114 = sub nsw i32 %.06, %.01
  %115 = sub nsw i32 %.02, %.04
  %116 = call i32 @gz_fill_rectangle(i32 noundef %.01, i32 noundef %.04, i32 noundef %114, i32 noundef %115, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %121

117:                                              ; preds = %112
  %118 = sub nsw i32 %.02, %.04
  %119 = sub nsw i32 %.06, %.01
  %120 = call i32 @gz_fill_rectangle(i32 noundef %.04, i32 noundef %.01, i32 noundef %118, i32 noundef %119, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %111
  %.15 = phi i32 [ %.030, %121 ], [ %.04, %111 ]
  %.13 = phi i32 [ %.017, %121 ], [ %.02, %111 ]
  %.1 = phi i32 [ %.06, %121 ], [ %.01, %111 ]
  %123 = add nsw i32 %.028, %.221
  %.not37 = icmp slt i32 %123, %30
  br i1 %.not37, label %126, label %124

124:                                              ; preds = %122
  %125 = sub nsw i32 %123, %30
  br label %127

126:                                              ; preds = %122
  br label %127

127:                                              ; preds = %126, %124
  %.224.pn = phi i32 [ %.224, %124 ], [ %.227, %126 ]
  %.129 = phi i32 [ %125, %124 ], [ %123, %126 ]
  %.131 = add nsw i32 %.030, %.224.pn
  %128 = add nsw i32 %.015, %.2
  %.not38 = icmp slt i32 %128, %30
  br i1 %.not38, label %131, label %129

129:                                              ; preds = %127
  %130 = sub nsw i32 %128, %30
  br label %132

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131, %129
  %.211.pn = phi i32 [ %.211, %129 ], [ %.214, %131 ]
  %.116 = phi i32 [ %130, %129 ], [ %128, %131 ]
  br label %133

133:                                              ; preds = %132
  %.118 = add nsw i32 %.017, %.211.pn
  %134 = add nsw i32 %.06, 1
  %135 = icmp slt i32 %134, %29
  br i1 %135, label %110, label %136, !llvm.loop !8

136:                                              ; preds = %133
  %.not39 = icmp eq i32 %134, %.1
  br i1 %.not39, label %147, label %137

137:                                              ; preds = %136
  %.not40 = icmp eq i32 %6, 0
  br i1 %.not40, label %142, label %138

138:                                              ; preds = %137
  %139 = sub nsw i32 %134, %.1
  %140 = sub nsw i32 %.13, %.15
  %141 = call i32 @gz_fill_rectangle(i32 noundef %.1, i32 noundef %.15, i32 noundef %139, i32 noundef %140, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %146

142:                                              ; preds = %137
  %143 = sub nsw i32 %.13, %.15
  %144 = sub nsw i32 %134, %.1
  %145 = call i32 @gz_fill_rectangle(i32 noundef %.15, i32 noundef %.1, i32 noundef %143, i32 noundef %144, %struct.gx_device_color_s* noundef %7, %struct.gs_state_s* noundef %8)
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147, %96, %55, %36
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gz_draw_line_fixed(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, %struct.gx_device_color_s* nocapture noundef readonly %4, %struct.gs_state_s* nocapture noundef readonly %5) #0 {
  %7 = lshr i64 %0, 12
  %8 = trunc i64 %7 to i32
  %9 = lshr i64 %1, 12
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %2, 12
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %3, 12
  %14 = trunc i64 %13 to i32
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %16, label %30

16:                                               ; preds = %6
  %.not8 = icmp sgt i32 %8, %12
  br i1 %.not8, label %23, label %17

17:                                               ; preds = %16
  %18 = add nsw i64 %2, 4095
  %19 = lshr i64 %18, 12
  %20 = trunc i64 %19 to i32
  %21 = sub nsw i32 %20, %8
  %22 = call i32 @gz_fill_rectangle(i32 noundef %8, i32 noundef %10, i32 noundef %21, i32 noundef 1, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5)
  br label %29

23:                                               ; preds = %16
  %24 = add nsw i64 %0, 4095
  %25 = lshr i64 %24, 12
  %26 = trunc i64 %25 to i32
  %27 = sub nsw i32 %26, %12
  %28 = call i32 @gz_fill_rectangle(i32 noundef %12, i32 noundef %10, i32 noundef %27, i32 noundef 1, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5)
  br label %29

29:                                               ; preds = %23, %17
  br label %76

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %5, i64 0, i32 22
  %32 = load %struct.device_s*, %struct.device_s** %31, align 8
  %33 = getelementptr inbounds %struct.device_s, %struct.device_s* %32, i64 0, i32 0
  %34 = load %struct.gx_device_s*, %struct.gx_device_s** %33, align 8
  %35 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.gx_device_s, %struct.gx_device_s* %34, i64 0, i32 1
  %40 = load %struct.gx_device_procs_s*, %struct.gx_device_procs_s** %39, align 8
  %41 = getelementptr inbounds %struct.gx_device_procs_s, %struct.gx_device_procs_s* %40, i64 0, i32 11
  %42 = load i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)*, i32 (%struct.gx_device_s*, i32, i32, i32, i32, i64)** %41, align 8
  %43 = getelementptr inbounds %struct.gx_device_color_s, %struct.gx_device_color_s* %4, i64 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %42(%struct.gx_device_s* noundef %34, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i64 noundef %44) #3
  %46 = icmp sgt i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %77

48:                                               ; preds = %38, %30
  %49 = sub nsw i64 %3, %1
  %50 = sub nsw i64 %2, %0
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = sub nsw i64 0, %50
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i64 [ %53, %52 ], [ %50, %54 ]
  %57 = icmp slt i64 %49, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = sub nsw i64 0, %49
  br label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i64 [ %59, %58 ], [ %49, %60 ]
  %.not = icmp sgt i64 %56, %62
  br i1 %.not, label %69, label %63

63:                                               ; preds = %61
  %64 = icmp slt i64 %49, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = sub nsw i64 0, %49
  br label %67

67:                                               ; preds = %65, %63
  %.07 = phi i64 [ %66, %65 ], [ %49, %63 ]
  %.04 = phi i64 [ %0, %65 ], [ %2, %63 ]
  %.02 = phi i64 [ %3, %65 ], [ %1, %63 ]
  %.01 = phi i64 [ %2, %65 ], [ %0, %63 ]
  %68 = call i32 @gz_fill_trapezoid_fixed(i64 noundef %.01, i64 noundef 1, i64 noundef %.02, i64 noundef %.04, i64 noundef 1, i64 noundef %.07, i32 noundef 0, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5)
  br label %75

69:                                               ; preds = %61
  %70 = icmp slt i64 %50, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %69
  %72 = sub nsw i64 0, %50
  br label %73

73:                                               ; preds = %71, %69
  %.06 = phi i64 [ %72, %71 ], [ %50, %69 ]
  %.05 = phi i64 [ %1, %71 ], [ %3, %69 ]
  %.13 = phi i64 [ %3, %71 ], [ %1, %69 ]
  %.1 = phi i64 [ %2, %71 ], [ %0, %69 ]
  %74 = call i32 @gz_fill_trapezoid_fixed(i64 noundef %.13, i64 noundef 1, i64 noundef %.1, i64 noundef %.05, i64 noundef 1, i64 noundef %.06, i32 noundef 1, %struct.gx_device_color_s* noundef %4, %struct.gs_state_s* noundef %5)
  br label %75

75:                                               ; preds = %73, %67
  br label %76

76:                                               ; preds = %75, %29
  br label %77

77:                                               ; preds = %76, %47
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_draw_line(%struct.gx_device_s* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_fill_trapezoid(%struct.gx_device_s* nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i64 noundef %7) #1 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_tile_trapezoid(%struct.gx_device_s* nocapture noundef readnone %0, %struct.gx_bitmap_s* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %8, i64 noundef %9) #1 {
  ret i32 -1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @gx_default_tile_trapezoid_color(%struct.gx_device_s* nocapture noundef readnone %0, %struct.gx_bitmap_s* nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
  ret i32 -1
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i32 0, i32 33}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
