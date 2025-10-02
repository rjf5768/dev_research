; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/cont.c'
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
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PointsInLine, align 4
  %6 = icmp sle i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* @line_style, align 4
  %9 = load i32, i32* @fill_level, align 4
  %10 = load float, float* @dash_length, align 4
  %11 = fpext float %10 to double
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 noundef 2, i32 noundef 1, i32 noundef %8, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, double noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %13

13:                                               ; preds = %7, %2
  %14 = load i32, i32* @PointsInLine, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32, i32* @last_x, align 4
  %18 = sitofp i32 %17 to double
  %19 = load double, double* @x_input_min, align 8
  %20 = fsub double %18, %19
  %21 = load double, double* @x_scale, align 8
  %22 = fdiv double %20, %21
  %23 = load double, double* @x_output_min, align 8
  %24 = fadd double %22, %23
  %25 = fptosi double %24 to i32
  %26 = load i32, i32* @last_y, align 4
  %27 = sitofp i32 %26 to double
  %28 = load double, double* @y_input_min, align 8
  %29 = fsub double %27, %28
  %30 = load double, double* @y_scale, align 8
  %31 = fdiv double %29, %30
  %32 = load double, double* @y_output_min, align 8
  %33 = fadd double %31, %32
  %34 = fptosi double %33 to i32
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %25, i32 noundef %34)
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* @PointsInLine, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @PointsInLine, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sitofp i32 %39 to double
  %41 = load double, double* @x_input_min, align 8
  %42 = fsub double %40, %41
  %43 = load double, double* @x_scale, align 8
  %44 = fdiv double %42, %43
  %45 = load double, double* @x_output_min, align 8
  %46 = fadd double %44, %45
  %47 = fptosi double %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = sitofp i32 %48 to double
  %50 = load double, double* @y_input_min, align 8
  %51 = fsub double %49, %50
  %52 = load double, double* @y_scale, align 8
  %53 = fdiv double %51, %52
  %54 = load double, double* @y_output_min, align 8
  %55 = fadd double %53, %54
  %56 = fptosi double %55 to i32
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 noundef %47, i32 noundef %56)
  %58 = load i32, i32* %3, align 4
  store i32 %58, i32* @last_x, align 4
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* @last_y, align 4
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
