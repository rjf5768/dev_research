; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/arc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/arc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"%d %d %d %d %d %d %d %d %.3f %d %d %d %.3f %.3f %d %d %d %d %d %d\0A\00", align 1
@line_style = external dso_local global i32, align 4
@fill_level = external dso_local global i32, align 4
@dash_length = external dso_local global float, align 4
@x_input_min = external dso_local global double, align 8
@x_scale = external dso_local global double, align 8
@x_output_min = external dso_local global double, align 8
@y_input_min = external dso_local global double, align 8
@y_scale = external dso_local global double, align 8
@y_output_min = external dso_local global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @arc(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = call i32 (...) @draw_line()
  %14 = load i32, i32* @line_style, align 4
  %15 = load i32, i32* @fill_level, align 4
  %16 = load float, float* @dash_length, align 4
  %17 = fpext float %16 to double
  %18 = load i32, i32* %7, align 4
  %19 = sitofp i32 %18 to double
  %20 = load double, double* @x_input_min, align 8
  %21 = fsub double %19, %20
  %22 = load double, double* @x_scale, align 8
  %23 = fdiv double %21, %22
  %24 = load double, double* @x_output_min, align 8
  %25 = fadd double %23, %24
  %26 = fptosi double %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = sitofp i32 %27 to double
  %29 = load double, double* @y_input_min, align 8
  %30 = fsub double %28, %29
  %31 = load double, double* @y_scale, align 8
  %32 = fdiv double %30, %31
  %33 = load double, double* @y_output_min, align 8
  %34 = fadd double %32, %33
  %35 = fptosi double %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = sitofp i32 %36 to double
  %38 = load double, double* @x_input_min, align 8
  %39 = fsub double %37, %38
  %40 = load double, double* @x_scale, align 8
  %41 = fdiv double %39, %40
  %42 = load double, double* @x_output_min, align 8
  %43 = fadd double %41, %42
  %44 = fptosi double %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = sitofp i32 %45 to double
  %47 = load double, double* @y_input_min, align 8
  %48 = fsub double %46, %47
  %49 = load double, double* @y_scale, align 8
  %50 = fdiv double %48, %49
  %51 = load double, double* @y_output_min, align 8
  %52 = fadd double %50, %51
  %53 = fptosi double %52 to i32
  %54 = load i32, i32* %11, align 4
  %55 = sitofp i32 %54 to double
  %56 = load double, double* @x_input_min, align 8
  %57 = fsub double %55, %56
  %58 = load double, double* @x_scale, align 8
  %59 = fdiv double %57, %58
  %60 = load double, double* @x_output_min, align 8
  %61 = fadd double %59, %60
  %62 = fptosi double %61 to i32
  %63 = load i32, i32* %12, align 4
  %64 = sitofp i32 %63 to double
  %65 = load double, double* @y_input_min, align 8
  %66 = fsub double %64, %65
  %67 = load double, double* @y_scale, align 8
  %68 = fdiv double %66, %67
  %69 = load double, double* @y_output_min, align 8
  %70 = fadd double %68, %69
  %71 = fptosi double %70 to i32
  %72 = load i32, i32* %11, align 4
  %73 = sitofp i32 %72 to double
  %74 = load double, double* @x_input_min, align 8
  %75 = fsub double %73, %74
  %76 = load double, double* @x_scale, align 8
  %77 = fdiv double %75, %76
  %78 = load double, double* @x_output_min, align 8
  %79 = fadd double %77, %78
  %80 = fptosi double %79 to i32
  %81 = load i32, i32* %12, align 4
  %82 = sitofp i32 %81 to double
  %83 = load double, double* @y_input_min, align 8
  %84 = fsub double %82, %83
  %85 = load double, double* @y_scale, align 8
  %86 = fdiv double %84, %85
  %87 = load double, double* @y_output_min, align 8
  %88 = fadd double %86, %87
  %89 = fptosi double %88 to i32
  %90 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 noundef 5, i32 noundef 1, i32 noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %15, double noundef %17, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %26, i32 noundef %35, i32 noundef %44, i32 noundef %53, i32 noundef %62, i32 noundef %71, i32 noundef %80, i32 noundef %89)
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @move_nasko(i32 noundef %91, i32 noundef %92)
  ret i32 0
}

declare dso_local i32 @draw_line(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @move_nasko(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
