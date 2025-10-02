; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20000605-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RenderInfo = type { i32, float, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._RenderInfo, align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 0
  store i32 0, i32* %3, align 4
  %4 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 2
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %2, i32 0, i32 1
  store float 1.000000e+00, float* %5, align 4
  %6 = call i32 @render_image_rgb_a(%struct._RenderInfo* noundef %2)
  %7 = icmp ne i32 %6, 256
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #2
  unreachable

9:                                                ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @render_image_rgb_a(%struct._RenderInfo* noundef %0) #0 {
  %2 = alloca %struct._RenderInfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store %struct._RenderInfo* %0, %struct._RenderInfo** %2, align 8
  %7 = load %struct._RenderInfo*, %struct._RenderInfo** %2, align 8
  %8 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  store i32 256, i32* %4, align 4
  %10 = load %struct._RenderInfo*, %struct._RenderInfo** %2, align 8
  %11 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %10, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = fdiv double 1.000000e+00, %13
  %15 = fptrunc double %14 to float
  store float %15, float* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sitofp i32 %16 to float
  %18 = load float, float* %6, align 4
  %19 = fmul float %17, %18
  store float %19, float* %5, align 4
  %20 = load float, float* %5, align 4
  %21 = fptosi float %20 to i32
  %22 = sitofp i32 %21 to float
  %23 = load float, float* %6, align 4
  %24 = fsub float %22, %23
  %25 = load float, float* %5, align 4
  %26 = fsub float %25, %24
  store float %26, float* %5, align 4
  br label %27

27:                                               ; preds = %51, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load float, float* %5, align 4
  %33 = fpext float %32 to double
  %34 = fcmp oge double %33, 1.000000e+00
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load float, float* %5, align 4
  %37 = fptosi float %36 to i32
  %38 = load %struct._RenderInfo*, %struct._RenderInfo** %2, align 8
  %39 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load float, float* %5, align 4
  %43 = fptosi float %42 to i32
  %44 = sitofp i32 %43 to float
  %45 = load float, float* %5, align 4
  %46 = fsub float %45, %44
  store float %46, float* %5, align 4
  call void @bar()
  br label %47

47:                                               ; preds = %35, %31
  %48 = load float, float* %6, align 4
  %49 = load float, float* %5, align 4
  %50 = fadd float %49, %48
  store float %50, float* %5, align 4
  br label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %27, !llvm.loop !4

54:                                               ; preds = %27
  %55 = load %struct._RenderInfo*, %struct._RenderInfo** %2, align 8
  %56 = getelementptr inbounds %struct._RenderInfo, %struct._RenderInfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  ret i32 %57
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @bar() #0 {
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
