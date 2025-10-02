; ModuleID = './gspath.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type opaque
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque
%struct.gs_point_s = type { float, float }
%struct.gs_fixed_point_s = type { i64, i64 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_newpath(%struct.gs_state_s* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  call void @gx_path_release(%struct.gx_path_s* noundef %3) #4
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 1
  call void @gx_path_init(%struct.gx_path_s* noundef %5, %struct.gs_memory_procs* noundef nonnull %6) #4
  ret i32 0
}

declare dso_local void @gx_path_release(%struct.gx_path_s* noundef) #1

declare dso_local void @gx_path_init(%struct.gx_path_s* noundef, %struct.gs_memory_procs* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_closepath(%struct.gs_state_s* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %3 = load %struct.gx_path_s*, %struct.gx_path_s** %2, align 8
  %4 = call i32 @gx_path_close_subpath(%struct.gx_path_s* noundef %3) #4
  ret i32 %4
}

declare dso_local i32 @gx_path_close_subpath(%struct.gx_path_s* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_currentpoint(%struct.gs_state_s* noundef %0, %struct.gs_point_s* noundef %1) #0 {
  %3 = alloca %struct.gs_fixed_point_s, align 8
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %5 = load %struct.gx_path_s*, %struct.gx_path_s** %4, align 8
  %6 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %5, %struct.gs_fixed_point_s* noundef nonnull %3) #4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %23

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = sitofp i64 %11 to double
  %13 = fmul double %12, 0x3F30000000000000
  %14 = fptrunc double %13 to float
  %15 = fpext float %14 to double
  %16 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %3, i64 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fmul double %18, 0x3F30000000000000
  %20 = fptrunc double %19 to float
  %21 = fpext float %20 to double
  %22 = call i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...) bitcast (i32 (...)* @gs_itransform to i32 (%struct.gs_state_s*, double, double, %struct.gs_point_s*, ...)*)(%struct.gs_state_s* noundef %0, double noundef %15, double noundef %21, %struct.gs_point_s* noundef %1) #4
  br label %23

23:                                               ; preds = %9, %8
  %.0 = phi i32 [ %6, %8 ], [ %22, %9 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_current_point(%struct.gx_path_s* noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gs_itransform(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_moveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %5, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %4) #4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %10, i64 noundef %12, i64 noundef %14) #4
  br label %16

16:                                               ; preds = %8, %3
  %.0 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %.0
}

declare dso_local i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef, double noundef, double noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gx_path_add_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rmoveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %5, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %4) #4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gx_path_add_relative_point(%struct.gx_path_s* noundef %10, i64 noundef %12, i64 noundef %14) #4
  br label %16

16:                                               ; preds = %8, %3
  %.0 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %.0
}

declare dso_local i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef, double noundef, double noundef, %struct.gs_fixed_point_s* noundef) #1

declare dso_local i32 @gx_path_add_relative_point(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_lineto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %6 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %5, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %4) #4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %10 = load %struct.gx_path_s*, %struct.gx_path_s** %9, align 8
  %11 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %10, i64 noundef %12, i64 noundef %14) #4
  br label %16

16:                                               ; preds = %8, %3
  %.0 = phi i32 [ %15, %8 ], [ %6, %3 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_add_line(%struct.gx_path_s* noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rlineto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = alloca %struct.gs_fixed_point_s, align 8
  %5 = alloca %struct.gs_fixed_point_s, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %7 = load %struct.gx_path_s*, %struct.gx_path_s** %6, align 8
  %8 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %7, %struct.gs_fixed_point_s* noundef nonnull %4) #4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %30

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %13 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %12, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %5) #4
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %29

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %17 = load %struct.gx_path_s*, %struct.gx_path_s** %16, align 8
  %18 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %5, i64 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %19, %21
  %23 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %4, i64 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %5, i64 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %24, %26
  %28 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %17, i64 noundef %22, i64 noundef %27) #4
  br label %29

29:                                               ; preds = %15, %11
  %.01 = phi i32 [ %28, %15 ], [ %13, %11 ]
  br label %30

30:                                               ; preds = %29, %10
  %.0 = phi i32 [ %8, %10 ], [ %.01, %29 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arc(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = call i32 @arc_either(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 0)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @arc_either(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6) #0 {
  %8 = fmul double %4, 4.096000e+03
  %9 = fptosi double %8 to i64
  %10 = fmul double %5, 4.096000e+03
  %11 = fptosi double %10 to i64
  %12 = fcmp olt double %3, 0.000000e+00
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  br label %131

14:                                               ; preds = %7
  %.not = icmp eq i64 %9, %11
  br i1 %.not, label %27, label %15

15:                                               ; preds = %14
  %16 = srem i64 %9, 1474560
  %17 = srem i64 %11, 1474560
  %.not37 = icmp eq i32 %6, 0
  br i1 %.not37, label %22, label %18

18:                                               ; preds = %15
  %.not39 = icmp slt i64 %17, %16
  br i1 %.not39, label %21, label %19

19:                                               ; preds = %18
  %20 = add nsw i64 %16, 1474560
  br label %21

21:                                               ; preds = %19, %18
  %.011 = phi i64 [ %20, %19 ], [ %16, %18 ]
  br label %26

22:                                               ; preds = %15
  %.not38 = icmp sgt i64 %17, %16
  br i1 %.not38, label %25, label %23

23:                                               ; preds = %22
  %24 = add nsw i64 %17, 1474560
  br label %25

25:                                               ; preds = %23, %22
  %.014 = phi i64 [ %24, %23 ], [ %17, %22 ]
  br label %26

26:                                               ; preds = %25, %21
  %.115 = phi i64 [ %17, %21 ], [ %.014, %25 ]
  %.112 = phi i64 [ %.011, %21 ], [ %16, %25 ]
  br label %27

27:                                               ; preds = %26, %14
  %.216 = phi i64 [ %.115, %26 ], [ %11, %14 ]
  %.213 = phi i64 [ %.112, %26 ], [ %9, %14 ]
  %28 = sitofp i64 %.213 to double
  %29 = fmul double %28, 0x3F30000000000000
  %30 = fptrunc double %29 to float
  %31 = fpext float %30 to double
  %32 = fmul double %31, 0x3F91DF46A2529D39
  %33 = fptrunc double %32 to float
  %34 = fpext float %33 to double
  %35 = call double @sin(double noundef %34) #4
  %36 = fmul double %35, %3
  %37 = fptrunc double %36 to float
  %38 = fpext float %33 to double
  %39 = call double @cos(double noundef %38) #4
  %40 = fmul double %39, %3
  %41 = fptrunc double %40 to float
  %42 = fpext float %41 to double
  %43 = fadd double %42, %1
  %44 = fptrunc double %43 to float
  %45 = fpext float %37 to double
  %46 = fadd double %45, %2
  %47 = fptrunc double %46 to float
  %.not36 = icmp eq i32 %6, 0
  br i1 %.not36, label %74, label %48

48:                                               ; preds = %27
  br label %49

49:                                               ; preds = %71, %48
  %.018 = phi float [ %44, %48 ], [ %56, %71 ]
  %.3 = phi i64 [ %.213, %48 ], [ %72, %71 ]
  %.08 = phi float [ %47, %48 ], [ %59, %71 ]
  %.05 = phi float [ %37, %48 ], [ %53, %71 ]
  %.02 = phi float [ %41, %48 ], [ %.05, %71 ]
  %.01 = phi i32 [ 1, %48 ], [ 0, %71 ]
  %50 = sub nsw i64 %.216, %.3
  %51 = icmp slt i64 %50, -368640
  br i1 %51, label %52, label %73

52:                                               ; preds = %49
  %53 = fneg float %.02
  %54 = fpext float %.05 to double
  %55 = fadd double %54, %1
  %56 = fptrunc double %55 to float
  %57 = fpext float %53 to double
  %58 = fadd double %57, %2
  %59 = fptrunc double %58 to float
  %60 = fpext float %.018 to double
  %61 = fpext float %.08 to double
  %62 = fpext float %56 to double
  %63 = fpext float %59 to double
  %64 = fadd float %.018, %.05
  %65 = fpext float %64 to double
  %66 = fsub float %.08, %.02
  %67 = fpext float %66 to double
  %68 = call i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %60, double noundef %61, double noundef %62, double noundef %63, double noundef %65, double noundef %67, i32 noundef %.01)
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %52
  br label %131

71:                                               ; preds = %52
  %72 = add nsw i64 %.3, -368640
  br label %49, !llvm.loop !4

73:                                               ; preds = %49
  br label %100

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %97, %74
  %.119 = phi float [ %44, %74 ], [ %82, %97 ]
  %.4 = phi i64 [ %.213, %74 ], [ %98, %97 ]
  %.19 = phi float [ %47, %74 ], [ %85, %97 ]
  %.16 = phi float [ %37, %74 ], [ %.13, %97 ]
  %.13 = phi float [ %41, %74 ], [ %79, %97 ]
  %.1 = phi i32 [ 1, %74 ], [ 0, %97 ]
  %76 = sub nsw i64 %.216, %.4
  %77 = icmp sgt i64 %76, 368640
  br i1 %77, label %78, label %99

78:                                               ; preds = %75
  %79 = fneg float %.16
  %80 = fpext float %79 to double
  %81 = fadd double %80, %1
  %82 = fptrunc double %81 to float
  %83 = fpext float %.13 to double
  %84 = fadd double %83, %2
  %85 = fptrunc double %84 to float
  %86 = fpext float %.119 to double
  %87 = fpext float %.19 to double
  %88 = fpext float %82 to double
  %89 = fpext float %85 to double
  %90 = fsub float %.119, %.16
  %91 = fpext float %90 to double
  %92 = fadd float %.19, %.13
  %93 = fpext float %92 to double
  %94 = call i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %86, double noundef %87, double noundef %88, double noundef %89, double noundef %91, double noundef %93, i32 noundef %.1)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %78
  br label %131

97:                                               ; preds = %78
  %98 = add nsw i64 %.4, 368640
  br label %75, !llvm.loop !6

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99, %73
  %.220 = phi float [ %.018, %73 ], [ %.119, %99 ]
  %.017 = phi i64 [ %50, %73 ], [ %76, %99 ]
  %.210 = phi float [ %.08, %73 ], [ %.19, %99 ]
  %.27 = phi float [ %.05, %73 ], [ %.16, %99 ]
  %.24 = phi float [ %.02, %73 ], [ %.13, %99 ]
  %.2 = phi i32 [ %.01, %73 ], [ %.1, %99 ]
  %101 = icmp eq i64 %.017, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %100
  br label %131

103:                                              ; preds = %100
  %104 = sitofp i64 %.017 to double
  %105 = fmul double %104, 0x3F30000000000000
  %106 = fptrunc double %105 to float
  %107 = fpext float %106 to double
  %108 = fmul double %107, 0x3F81DF46A2529D39
  %109 = call double @tan(double noundef %108) #4
  %110 = fptrunc double %109 to float
  %111 = sitofp i64 %.216 to double
  %112 = fmul double %111, 0x3F30000000000000
  %113 = fptrunc double %112 to float
  %114 = fpext float %113 to double
  %115 = fmul double %114, 0x3F91DF46A2529D39
  %116 = fptrunc double %115 to float
  %117 = fpext float %.220 to double
  %118 = fpext float %.210 to double
  %119 = fpext float %116 to double
  %120 = call double @cos(double noundef %119) #4
  %121 = call double @llvm.fmuladd.f64(double %3, double %120, double %1)
  %122 = fpext float %116 to double
  %123 = call double @sin(double noundef %122) #4
  %124 = call double @llvm.fmuladd.f64(double %3, double %123, double %2)
  %125 = fneg float %110
  %126 = call float @llvm.fmuladd.f32(float %125, float %.27, float %.220)
  %127 = fpext float %126 to double
  %128 = call float @llvm.fmuladd.f32(float %110, float %.24, float %.210)
  %129 = fpext float %128 to double
  %130 = call i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %117, double noundef %118, double noundef %121, double noundef %124, double noundef %127, double noundef %129, i32 noundef %.2)
  br label %131

131:                                              ; preds = %103, %102, %96, %70, %13
  %.0 = phi i32 [ -15, %13 ], [ %68, %70 ], [ 0, %102 ], [ %130, %103 ], [ %94, %96 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arcn(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5) #0 {
  %7 = call i32 @arc_either(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef 1)
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_arcto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, float* noundef writeonly %6) #0 {
  %8 = alloca %struct.gs_point_s, align 4
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = fcmp olt double %5, 0.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %98

12:                                               ; preds = %7
  %13 = call i32 @gs_currentpoint(%struct.gs_state_s* noundef %0, %struct.gs_point_s* noundef nonnull %8)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %98

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i64 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = fsub double %19, %1
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %struct.gs_point_s, %struct.gs_point_s* %8, i64 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fsub double %24, %2
  %26 = fptrunc double %25 to float
  %27 = fsub double %3, %1
  %28 = fptrunc double %27 to float
  %29 = fsub double %4, %2
  %30 = fptrunc double %29 to float
  %31 = fmul float %26, %26
  %32 = call float @llvm.fmuladd.f32(float %21, float %21, float %31)
  %33 = fpext float %32 to double
  %34 = fmul float %30, %30
  %35 = call float @llvm.fmuladd.f32(float %28, float %28, float %34)
  %36 = fpext float %35 to double
  %37 = fneg float %30
  %38 = fmul float %37, %21
  %39 = call float @llvm.fmuladd.f32(float %26, float %28, float %38)
  %40 = fpext float %39 to double
  %41 = fmul double %33, %36
  %42 = call double @sqrt(double noundef %41) #4
  %43 = fmul float %26, %30
  %44 = call float @llvm.fmuladd.f32(float %21, float %28, float %43)
  %45 = fpext float %44 to double
  %46 = fsub double %42, %45
  %47 = call double @llvm.fabs.f64(double %40)
  %48 = fcmp olt double %47, 0x3EB0C6F7A0B5ED8D
  br i1 %48, label %52, label %49

49:                                               ; preds = %16
  %50 = call double @llvm.fabs.f64(double %46)
  %51 = fcmp olt double %50, 0x3EB0C6F7A0B5ED8D
  br i1 %51, label %52, label %67

52:                                               ; preds = %49, %16
  %53 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %54 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %53, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %9) #4
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %58 = load %struct.gx_path_s*, %struct.gx_path_s** %57, align 8
  %59 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %58, i64 noundef %60, i64 noundef %62) #4
  br label %64

64:                                               ; preds = %56, %52
  %.01 = phi i32 [ %63, %56 ], [ %54, %52 ]
  %65 = fptrunc double %1 to float
  %66 = fptrunc double %2 to float
  br label %92

67:                                               ; preds = %49
  %68 = fmul double %40, %5
  %69 = fdiv double %68, %46
  %70 = call double @llvm.fabs.f64(double %69)
  %71 = call double @sqrt(double noundef %33) #4
  %72 = fdiv double %70, %71
  %73 = call double @sqrt(double noundef %36) #4
  %74 = fdiv double %70, %73
  %75 = fpext float %21 to double
  %76 = call double @llvm.fmuladd.f64(double %75, double %72, double %1)
  %77 = fptrunc double %76 to float
  %78 = fpext float %26 to double
  %79 = call double @llvm.fmuladd.f64(double %78, double %72, double %2)
  %80 = fptrunc double %79 to float
  %81 = fpext float %28 to double
  %82 = call double @llvm.fmuladd.f64(double %81, double %74, double %1)
  %83 = fptrunc double %82 to float
  %84 = fpext float %30 to double
  %85 = call double @llvm.fmuladd.f64(double %84, double %74, double %2)
  %86 = fptrunc double %85 to float
  %87 = fpext float %77 to double
  %88 = fpext float %80 to double
  %89 = fpext float %83 to double
  %90 = fpext float %86 to double
  %91 = call i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %87, double noundef %88, double noundef %89, double noundef %90, double noundef %1, double noundef %2, i32 noundef 1)
  br label %92

92:                                               ; preds = %67, %64
  %.05 = phi float [ %65, %64 ], [ %77, %67 ]
  %.04 = phi float [ %66, %64 ], [ %80, %67 ]
  %.03 = phi float [ %65, %64 ], [ %83, %67 ]
  %.02 = phi float [ %66, %64 ], [ %86, %67 ]
  %.1 = phi i32 [ %.01, %64 ], [ %91, %67 ]
  %.not = icmp eq float* %6, null
  br i1 %.not, label %97, label %93

93:                                               ; preds = %92
  store float %.05, float* %6, align 4
  %94 = getelementptr inbounds float, float* %6, i64 1
  store float %.04, float* %94, align 4
  %95 = getelementptr inbounds float, float* %6, i64 2
  store float %.03, float* %95, align 4
  %96 = getelementptr inbounds float, float* %6, i64 3
  store float %.02, float* %96, align 4
  br label %97

97:                                               ; preds = %93, %92
  br label %98

98:                                               ; preds = %97, %15, %11
  %.0 = phi i32 [ -23, %11 ], [ %13, %15 ], [ %.1, %97 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @arc_add(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7) #0 {
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = alloca %struct.gs_fixed_point_s, align 8
  %13 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %14 = load %struct.gx_path_s*, %struct.gx_path_s** %13, align 8
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %16 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %15, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %9) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %20 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %19, double noundef %3, double noundef %4, %struct.gs_fixed_point_s* noundef nonnull %10) #4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %45, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %24 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %23, double noundef %5, double noundef %6, %struct.gs_fixed_point_s* noundef nonnull %11) #4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %46, label %27

27:                                               ; preds = %26
  %28 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %14, %struct.gs_fixed_point_s* noundef nonnull %12) #4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @gx_path_add_line(%struct.gx_path_s* noundef %14, i64 noundef %32, i64 noundef %34) #4
  br label %42

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @gx_path_add_point(%struct.gx_path_s* noundef %14, i64 noundef %38, i64 noundef %40) #4
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i32 [ %35, %30 ], [ %41, %36 ]
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %22, %18, %8
  %.01 = phi i32 [ %16, %8 ], [ %20, %18 ], [ %24, %22 ], [ %43, %42 ]
  br label %60

46:                                               ; preds = %42, %26
  %47 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i64 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i64 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @gx_path_add_arc(%struct.gx_path_s* noundef %14, i64 noundef %48, i64 noundef %50, i64 noundef %52, i64 noundef %54, i64 noundef %56, i64 noundef %58) #4
  br label %60

60:                                               ; preds = %46, %45
  %.0 = phi i32 [ %.01, %45 ], [ %59, %46 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_curveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %12 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %11, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %8) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %16 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %15, double noundef %3, double noundef %4, %struct.gs_fixed_point_s* noundef nonnull %9) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %20 = call i32 @gs_point_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %19, double noundef %5, double noundef %6, %struct.gs_fixed_point_s* noundef nonnull %10) #4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %7
  %.01 = phi i32 [ %12, %7 ], [ %16, %14 ], [ %20, %18 ]
  br label %39

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %25 = load %struct.gx_path_s*, %struct.gx_path_s** %24, align 8
  %26 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @gx_path_add_curve(%struct.gx_path_s* noundef %25, i64 noundef %27, i64 noundef %29, i64 noundef %31, i64 noundef %33, i64 noundef %35, i64 noundef %37) #4
  br label %39

39:                                               ; preds = %23, %22
  %.0 = phi i32 [ %.01, %22 ], [ %38, %23 ]
  ret i32 %.0
}

declare dso_local i32 @gx_path_add_curve(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_rcurveto(%struct.gs_state_s* noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = alloca %struct.gs_fixed_point_s, align 8
  %9 = alloca %struct.gs_fixed_point_s, align 8
  %10 = alloca %struct.gs_fixed_point_s, align 8
  %11 = alloca %struct.gs_fixed_point_s, align 8
  %12 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %13 = load %struct.gx_path_s*, %struct.gx_path_s** %12, align 8
  %14 = call i32 @gx_path_current_point(%struct.gx_path_s* noundef %13, %struct.gs_fixed_point_s* noundef nonnull %8) #4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %7
  br label %64

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %19 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %18, double noundef %1, double noundef %2, %struct.gs_fixed_point_s* noundef nonnull %9) #4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %23 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %22, double noundef %3, double noundef %4, %struct.gs_fixed_point_s* noundef nonnull %10) #4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 2
  %27 = call i32 @gs_distance_transform2fixed(%struct.gs_matrix_fixed_s* noundef nonnull %26, double noundef %5, double noundef %6, %struct.gs_fixed_point_s* noundef nonnull %11) #4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17
  %.01 = phi i32 [ %19, %17 ], [ %23, %21 ], [ %27, %25 ]
  br label %64

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 7
  %32 = load %struct.gx_path_s*, %struct.gx_path_s** %31, align 8
  %33 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %34, %36
  %38 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %9, i64 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %39, %41
  %43 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %44, %46
  %48 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %10, i64 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %49, %51
  %53 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i64 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %54, %56
  %58 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %8, i64 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.gs_fixed_point_s, %struct.gs_fixed_point_s* %11, i64 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %59, %61
  %63 = call i32 @gx_path_add_curve(%struct.gx_path_s* noundef %32, i64 noundef %37, i64 noundef %42, i64 noundef %47, i64 noundef %52, i64 noundef %57, i64 noundef %62) #4
  br label %64

64:                                               ; preds = %30, %29, %16
  %.0 = phi i32 [ %14, %16 ], [ %.01, %29 ], [ %63, %30 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #3

; Function Attrs: nounwind
declare dso_local double @tan(double noundef) #3

declare dso_local i32 @gx_path_add_arc(%struct.gx_path_s* noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
