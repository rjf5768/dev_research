; ModuleID = './gsline.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/gsline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_state_s = type { %struct.gs_state_s*, %struct.gs_memory_procs, %struct.gs_matrix_fixed_s, %struct.gs_matrix_s, i32, i8*, i8*, %struct.gx_path_s*, %struct.gx_path_s*, i32, %struct.line_params_s*, %struct.halftone_s*, float (double, double)*, %struct.gs_color_s*, %struct.gx_device_color_s*, float (double)*, %struct.gs_font_s*, %struct.gs_matrix_s, i32, i8, i8, float, %struct.device_s*, i32 }
%struct.gs_memory_procs = type { i8* (i32, i32, i8*)*, void (i8*, i32, i32, i8*)* }
%struct.gs_matrix_fixed_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64, i64, i64 }
%struct.gx_path_s = type opaque
%struct.line_params_s = type { float, i32, i32, float, float, %struct.dash_params_s }
%struct.dash_params_s = type { float*, i32, float, i32, i32, float }
%struct.halftone_s = type opaque
%struct.gs_color_s = type opaque
%struct.gx_device_color_s = type opaque
%struct.gs_font_s = type opaque
%struct.gs_matrix_s = type { float, i64, float, i64, float, i64, float, i64, float, i64, float, i64 }
%struct.device_s = type opaque

@.str = private unnamed_addr constant [13 x i8] c"dash pattern\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_setlinewidth(%struct.gs_state_s* nocapture noundef readonly %0, double noundef %1) #0 {
  %3 = fcmp olt double %1, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %11

5:                                                ; preds = %2
  %6 = fmul double %1, 5.000000e-01
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %9 = load %struct.line_params_s*, %struct.line_params_s** %8, align 8
  %10 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %9, i64 0, i32 0
  store float %7, float* %10, align 8
  br label %11

11:                                               ; preds = %5, %4
  %.0 = phi i32 [ -15, %4 ], [ 0, %5 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @gs_currentlinewidth(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 0
  %5 = load float, float* %4, align 8
  %6 = fmul float %5, 2.000000e+00
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_setlinecap(%struct.gs_state_s* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %4 = load %struct.line_params_s*, %struct.line_params_s** %3, align 8
  %5 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %4, i64 0, i32 1
  store i32 %1, i32* %5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gs_currentlinecap(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gs_setlinejoin(%struct.gs_state_s* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %4 = load %struct.line_params_s*, %struct.line_params_s** %3, align 8
  %5 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %4, i64 0, i32 2
  store i32 %1, i32* %5, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gs_currentlinejoin(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 2
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setmiterlimit(%struct.gs_state_s* nocapture noundef readonly %0, double noundef %1) #2 {
  %3 = fcmp olt double %1, 1.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %26

5:                                                ; preds = %2
  %6 = fptrunc double %1 to float
  %7 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %8 = load %struct.line_params_s*, %struct.line_params_s** %7, align 8
  %9 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %8, i64 0, i32 3
  store float %6, float* %9, align 4
  %10 = fmul double %1, %1
  %11 = fcmp olt double %10, 2.000100e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = fcmp ogt double %10, 1.999900e+00
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  br label %21

15:                                               ; preds = %12, %5
  %16 = fadd double %10, -1.000000e+00
  %17 = call double @sqrt(double noundef %16) #8
  %18 = fmul double %17, 2.000000e+00
  %19 = fadd double %10, -2.000000e+00
  %20 = fdiv double %18, %19
  %phi.cast = fptrunc double %20 to float
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi float [ 1.000000e+06, %14 ], [ %phi.cast, %15 ]
  %23 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %24 = load %struct.line_params_s*, %struct.line_params_s** %23, align 8
  %25 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %24, i64 0, i32 4
  store float %22, float* %25, align 8
  br label %26

26:                                               ; preds = %21, %4
  %.0 = phi i32 [ -15, %4 ], [ 0, %21 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @gs_currentmiterlimit(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 3
  %5 = load float, float* %4, align 4
  ret float %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @gs_setdash(%struct.gs_state_s* nocapture noundef readonly %0, float* nocapture noundef readonly %1, i32 noundef %2, double noundef %3) #2 {
  %5 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %6 = load %struct.line_params_s*, %struct.line_params_s** %5, align 8
  br label %7

7:                                                ; preds = %13, %4
  %.07 = phi float* [ %1, %4 ], [ %14, %13 ]
  %.06 = phi i32 [ %2, %4 ], [ %8, %13 ]
  %.03 = phi float [ 0.000000e+00, %4 ], [ %15, %13 ]
  %8 = add i32 %.06, -1
  %.not = icmp eq i32 %.06, 0
  br i1 %.not, label %16, label %9

9:                                                ; preds = %7
  %10 = load float, float* %.07, align 4
  %11 = fcmp olt float %10, 0.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %58

13:                                               ; preds = %9
  %14 = getelementptr inbounds float, float* %.07, i64 1
  %15 = fadd float %.03, %10
  br label %7, !llvm.loop !4

16:                                               ; preds = %7
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %48

19:                                               ; preds = %16
  %20 = fcmp oeq float %.03, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  br label %58

22:                                               ; preds = %19
  %23 = fpext float %.03 to double
  %24 = fdiv double %3, %23
  %25 = call double @llvm.floor.f64(double %24)
  %26 = fpext float %.03 to double
  %27 = fneg double %25
  %28 = call double @llvm.fmuladd.f64(double %27, double %26, double %3)
  %29 = fptrunc double %28 to float
  br label %30

30:                                               ; preds = %36, %22
  %.08 = phi i8 [ 1, %22 ], [ %37, %36 ]
  %.04 = phi i32 [ 0, %22 ], [ %38, %36 ]
  %.02 = phi float [ %29, %22 ], [ %34, %36 ]
  %31 = zext i32 %.04 to i64
  %32 = getelementptr inbounds float, float* %1, i64 %31
  %33 = load float, float* %32, align 4
  %34 = fsub float %.02, %33
  %35 = fcmp ult float %34, 0.000000e+00
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = xor i8 %.08, 1
  %38 = add nuw nsw i32 %.04, 1
  br label %30, !llvm.loop !6

39:                                               ; preds = %30
  %40 = call i8* @gs_malloc(i32 noundef %2, i32 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0)) #8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %58

43:                                               ; preds = %39
  %44 = bitcast i8* %40 to float*
  %45 = bitcast float* %1 to i8*
  %46 = zext i32 %2 to i64
  %47 = shl nuw nsw i64 %46, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %40, i8* align 4 %45, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %43, %18
  %.19 = phi i8 [ 1, %18 ], [ %.08, %43 ]
  %.15 = phi i32 [ 0, %18 ], [ %.04, %43 ]
  %.1 = phi float [ 0.000000e+00, %18 ], [ %34, %43 ]
  %.01 = phi float* [ null, %18 ], [ %44, %43 ]
  %49 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 0
  store float* %.01, float** %49, align 8
  %50 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 1
  store i32 %2, i32* %50, align 8
  %51 = fptrunc double %3 to float
  %52 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 2
  store float %51, float* %52, align 4
  %53 = sext i8 %.19 to i32
  %54 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 3
  store i32 %53, i32* %54, align 8
  %55 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 4
  store i32 %.15, i32* %55, align 4
  %56 = fneg float %.1
  %57 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %6, i64 0, i32 5, i32 5
  store float %56, float* %57, align 8
  br label %58

58:                                               ; preds = %48, %42, %21, %12
  %.0 = phi i32 [ -15, %12 ], [ 0, %48 ], [ -15, %21 ], [ -25, %42 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #4

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

declare dso_local i8* @gs_malloc(i32 noundef, i32 noundef, i8* noundef) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @gs_currentdash_length(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 5, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local i32 @gs_currentdash_pattern(%struct.gs_state_s* nocapture noundef readonly %0, float* nocapture noundef writeonly %1) #7 {
  %3 = bitcast float* %1 to i8*
  %4 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %5 = load %struct.line_params_s*, %struct.line_params_s** %4, align 8
  %6 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %5, i64 0, i32 5, i32 0
  %7 = bitcast float** %6 to i8**
  %8 = load i8*, i8** %7, align 8
  %9 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %5, i64 0, i32 5, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %8, i64 %12, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local float @gs_currentdash_offset(%struct.gs_state_s* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.gs_state_s, %struct.gs_state_s* %0, i64 0, i32 10
  %3 = load %struct.line_params_s*, %struct.line_params_s** %2, align 8
  %4 = getelementptr inbounds %struct.line_params_s, %struct.line_params_s* %3, i64 0, i32 5, i32 2
  %5 = load float, float* %4, align 4
  ret float %5
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #7 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
