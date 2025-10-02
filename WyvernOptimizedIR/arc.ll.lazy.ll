; ModuleID = './arc.ll'
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
  %7 = call i32 (...) @draw_line() #2
  %8 = load i32, i32* @line_style, align 4
  %9 = load i32, i32* @fill_level, align 4
  %10 = load float, float* @dash_length, align 4
  %11 = fpext float %10 to double
  %12 = sitofp i32 %0 to double
  %13 = load double, double* @x_input_min, align 8
  %14 = fsub double %12, %13
  %15 = load double, double* @x_scale, align 8
  %16 = fdiv double %14, %15
  %17 = load double, double* @x_output_min, align 8
  %18 = fadd double %16, %17
  %19 = fptosi double %18 to i32
  %20 = sitofp i32 %1 to double
  %21 = load double, double* @y_input_min, align 8
  %22 = fsub double %20, %21
  %23 = load double, double* @y_scale, align 8
  %24 = fdiv double %22, %23
  %25 = load double, double* @y_output_min, align 8
  %26 = fadd double %24, %25
  %27 = fptosi double %26 to i32
  %28 = sitofp i32 %2 to double
  %29 = load double, double* @x_input_min, align 8
  %30 = fsub double %28, %29
  %31 = load double, double* @x_scale, align 8
  %32 = fdiv double %30, %31
  %33 = load double, double* @x_output_min, align 8
  %34 = fadd double %32, %33
  %35 = fptosi double %34 to i32
  %36 = sitofp i32 %3 to double
  %37 = load double, double* @y_input_min, align 8
  %38 = fsub double %36, %37
  %39 = load double, double* @y_scale, align 8
  %40 = fdiv double %38, %39
  %41 = load double, double* @y_output_min, align 8
  %42 = fadd double %40, %41
  %43 = fptosi double %42 to i32
  %44 = sitofp i32 %4 to double
  %45 = load double, double* @x_input_min, align 8
  %46 = fsub double %44, %45
  %47 = load double, double* @x_scale, align 8
  %48 = fdiv double %46, %47
  %49 = load double, double* @x_output_min, align 8
  %50 = fadd double %48, %49
  %51 = fptosi double %50 to i32
  %52 = sitofp i32 %5 to double
  %53 = load double, double* @y_input_min, align 8
  %54 = fsub double %52, %53
  %55 = load double, double* @y_scale, align 8
  %56 = fdiv double %54, %55
  %57 = load double, double* @y_output_min, align 8
  %58 = fadd double %56, %57
  %59 = fptosi double %58 to i32
  %60 = sitofp i32 %4 to double
  %61 = load double, double* @x_input_min, align 8
  %62 = fsub double %60, %61
  %63 = load double, double* @x_scale, align 8
  %64 = fdiv double %62, %63
  %65 = load double, double* @x_output_min, align 8
  %66 = fadd double %64, %65
  %67 = fptosi double %66 to i32
  %68 = sitofp i32 %5 to double
  %69 = load double, double* @y_input_min, align 8
  %70 = fsub double %68, %69
  %71 = load double, double* @y_scale, align 8
  %72 = fdiv double %70, %71
  %73 = load double, double* @y_output_min, align 8
  %74 = fadd double %72, %73
  %75 = fptosi double %74 to i32
  %76 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 noundef 5, i32 noundef 1, i32 noundef %8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %9, double noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %19, i32 noundef %27, i32 noundef %35, i32 noundef %43, i32 noundef %51, i32 noundef %59, i32 noundef %67, i32 noundef %75) #2
  %77 = call i32 @move_nasko(i32 noundef %0, i32 noundef %1) #2
  ret i32 0
}

declare dso_local i32 @draw_line(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local i32 @move_nasko(i32 noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
