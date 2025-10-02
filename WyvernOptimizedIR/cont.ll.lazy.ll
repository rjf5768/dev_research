; ModuleID = './cont.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_x = dso_local global i32 0, align 4
@last_y = dso_local global i32 0, align 4
@PointsInLine = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d %d %d %d %d %d %d %d %.3f %d %d %d\0A\09\00", align 1
@line_style = external dso_local global i32, align 4
@fill_level = external dso_local global i32, align 4
@dash_length = external dso_local global float, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@x_input_min = external dso_local global double, align 8
@x_scale = external dso_local global double, align 8
@x_output_min = external dso_local global double, align 8
@y_input_min = external dso_local global double, align 8
@y_scale = external dso_local global double, align 8
@y_output_min = external dso_local global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cont(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @PointsInLine, align 4
  %4 = icmp slt i32 %3, 2
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load i32, i32* @line_style, align 4
  %7 = load i32, i32* @fill_level, align 4
  %8 = load float, float* @dash_length, align 4
  %9 = fpext float %8 to double
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i32 noundef 1, i32 noundef %6, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %7, double noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  br label %11

11:                                               ; preds = %5, %2
  %12 = load i32, i32* @PointsInLine, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i32, i32* @last_x, align 4
  %16 = sitofp i32 %15 to double
  %17 = load double, double* @x_input_min, align 8
  %18 = fsub double %16, %17
  %19 = load double, double* @x_scale, align 8
  %20 = fdiv double %18, %19
  %21 = load double, double* @x_output_min, align 8
  %22 = fadd double %20, %21
  %23 = fptosi double %22 to i32
  %24 = load i32, i32* @last_y, align 4
  %25 = sitofp i32 %24 to double
  %26 = load double, double* @y_input_min, align 8
  %27 = fsub double %25, %26
  %28 = load double, double* @y_scale, align 8
  %29 = fdiv double %27, %28
  %30 = load double, double* @y_output_min, align 8
  %31 = fadd double %29, %30
  %32 = fptosi double %31 to i32
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %23, i32 noundef %32) #2
  br label %34

34:                                               ; preds = %14, %11
  %35 = load i32, i32* @PointsInLine, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @PointsInLine, align 4
  %37 = sitofp i32 %0 to double
  %38 = load double, double* @x_input_min, align 8
  %39 = fsub double %37, %38
  %40 = load double, double* @x_scale, align 8
  %41 = fdiv double %39, %40
  %42 = load double, double* @x_output_min, align 8
  %43 = fadd double %41, %42
  %44 = fptosi double %43 to i32
  %45 = sitofp i32 %1 to double
  %46 = load double, double* @y_input_min, align 8
  %47 = fsub double %45, %46
  %48 = load double, double* @y_scale, align 8
  %49 = fdiv double %47, %48
  %50 = load double, double* @y_output_min, align 8
  %51 = fadd double %49, %50
  %52 = fptosi double %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %44, i32 noundef %52) #2
  store i32 %0, i32* @last_x, align 4
  store i32 %1, i32* @last_y, align 4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
