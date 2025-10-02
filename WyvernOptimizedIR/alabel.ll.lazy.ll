; ModuleID = './alabel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/alabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"%d %d %d %d %d %d %d %.3f %d %d %d %d %d %s\01\0A\00", align 1
@font_id = external dso_local global i32, align 4
@font_size = external dso_local global i32, align 4
@text_rotation = external dso_local global float, align 4
@last_x = external dso_local global i32, align 4
@x_input_min = external dso_local global double, align 8
@x_scale = external dso_local global double, align 8
@x_output_min = external dso_local global double, align 8
@last_y = external dso_local global i32, align 4
@y_input_min = external dso_local global double, align 8
@y_scale = external dso_local global double, align 8
@y_output_min = external dso_local global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @alabel(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 {
  %4 = call i32 (...) @draw_line() #4
  switch i32 %0, label %8 [
    i32 108, label %5
    i32 99, label %6
    i32 114, label %7
  ]

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  br label %8

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %6, %5, %3
  %.01 = phi i32 [ 0, %3 ], [ 2, %7 ], [ 1, %6 ], [ 0, %5 ]
  switch i32 %1, label %12 [
    i32 116, label %9
    i32 99, label %10
    i32 98, label %11
  ]

9:                                                ; preds = %8
  br label %12

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10, %9, %8
  %.0 = phi double [ 0.000000e+00, %8 ], [ 0.000000e+00, %11 ], [ 5.000000e-01, %10 ], [ 1.100000e+00, %9 ]
  br label %13

13:                                               ; preds = %21, %12
  %.02 = phi i8* [ %2, %12 ], [ %22, %21 ]
  %14 = call i16** @__ctype_b_loc() #5
  %15 = load i16*, i16** %14, align 8
  %16 = load i8, i8* %.02, align 1
  %17 = sext i8 %16 to i64
  %18 = getelementptr inbounds i16, i16* %15, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = and i16 %19, 8192
  %.not = icmp eq i16 %20, 0
  br i1 %.not, label %23, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds i8, i8* %.02, i64 1
  br label %13, !llvm.loop !4

23:                                               ; preds = %13
  %strlenfirst = load i8, i8* %.02, align 1
  %.not3 = icmp eq i8 %strlenfirst, 0
  br i1 %.not3, label %54, label %24

24:                                               ; preds = %23
  %25 = load i32, i32* @font_id, align 4
  %26 = load i32, i32* @font_size, align 4
  %27 = load float, float* @text_rotation, align 4
  %28 = fpext float %27 to double
  %29 = load i32, i32* @last_x, align 4
  %30 = sitofp i32 %29 to double
  %31 = load double, double* @x_input_min, align 8
  %32 = fsub double %30, %31
  %33 = load double, double* @x_scale, align 8
  %34 = fdiv double %32, %33
  %35 = load double, double* @x_output_min, align 8
  %36 = fadd double %34, %35
  %37 = fptosi double %36 to i32
  %38 = load i32, i32* @last_y, align 4
  %39 = sitofp i32 %38 to double
  %40 = load double, double* @y_input_min, align 8
  %41 = fsub double %39, %40
  %42 = load double, double* @y_scale, align 8
  %43 = fdiv double %41, %42
  %44 = load double, double* @y_output_min, align 8
  %45 = fadd double %43, %44
  %46 = load i32, i32* @font_size, align 4
  %47 = sitofp i32 %46 to double
  %48 = fmul double %.0, %47
  %49 = fmul double %48, 7.200000e+01
  %50 = fdiv double %49, 8.000000e+01
  %51 = fadd double %45, %50
  %52 = fptosi double %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 noundef 4, i32 noundef %.01, i32 noundef %25, i32 noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef %28, i32 noundef 0, i32 noundef 8, i32 noundef 8, i32 noundef %37, i32 noundef %52, i8* noundef nonnull %.02) #4
  br label %54

54:                                               ; preds = %24, %23
  ret i32 0
}

declare dso_local i32 @draw_line(...) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
