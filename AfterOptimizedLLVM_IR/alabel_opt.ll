; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/plot2fig/alabel.c'
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
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %10 = call i32 (...) @draw_line()
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %15 [
    i32 108, label %12
    i32 99, label %13
    i32 114, label %14
  ]

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %15

13:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %15

14:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %15

15:                                               ; preds = %3, %14, %13, %12
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %20 [
    i32 116, label %17
    i32 99, label %18
    i32 98, label %19
  ]

17:                                               ; preds = %15
  store double 1.100000e+00, double* %9, align 8
  br label %20

18:                                               ; preds = %15
  store double 5.000000e-01, double* %9, align 8
  br label %20

19:                                               ; preds = %15
  store double 0.000000e+00, double* %9, align 8
  br label %20

20:                                               ; preds = %15, %19, %18, %17
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %34, %20
  %23 = call i16** @__ctype_b_loc() #4
  %24 = load i16*, i16** %23, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i16, i16* %24, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 8192
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  br label %22, !llvm.loop !4

37:                                               ; preds = %22
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strlen(i8* noundef %38) #5
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @font_id, align 4
  %44 = load i32, i32* @font_size, align 4
  %45 = load float, float* @text_rotation, align 4
  %46 = fpext float %45 to double
  %47 = load i32, i32* @last_x, align 4
  %48 = sitofp i32 %47 to double
  %49 = load double, double* @x_input_min, align 8
  %50 = fsub double %48, %49
  %51 = load double, double* @x_scale, align 8
  %52 = fdiv double %50, %51
  %53 = load double, double* @x_output_min, align 8
  %54 = fadd double %52, %53
  %55 = fptosi double %54 to i32
  %56 = load i32, i32* @last_y, align 4
  %57 = sitofp i32 %56 to double
  %58 = load double, double* @y_input_min, align 8
  %59 = fsub double %57, %58
  %60 = load double, double* @y_scale, align 8
  %61 = fdiv double %59, %60
  %62 = load double, double* @y_output_min, align 8
  %63 = fadd double %61, %62
  %64 = load i32, i32* @font_size, align 4
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %9, align 8
  %67 = fmul double %65, %66
  %68 = fmul double %67, 7.200000e+01
  %69 = fdiv double %68, 8.000000e+01
  %70 = fadd double %63, %69
  %71 = fptosi double %70 to i32
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 noundef 4, i32 noundef %42, i32 noundef %43, i32 noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 0, double noundef %46, i32 noundef 0, i32 noundef 8, i32 noundef 8, i32 noundef %55, i32 noundef %71, i8* noundef %72)
  br label %74

74:                                               ; preds = %41, %37
  ret i32 0
}

declare dso_local i32 @draw_line(...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #3

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
