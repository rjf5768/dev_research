; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(float* noundef %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  store float 0x4014CCCCC0000000, float* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo(%struct.A* noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.A*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.A* %0, %struct.A** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %14
  %17 = phi float* [ %8, %14 ], [ %7, %15 ]
  store float* %17, float** %9, align 8
  %18 = load float*, float** %9, align 8
  call void @bar(float* noundef %18)
  %19 = load float*, float** %9, align 8
  %20 = load float, float* %19, align 4
  %21 = fpext float %20 to double
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %23, %16
  %25 = load %struct.A*, %struct.A** %4, align 8
  %26 = getelementptr inbounds %struct.A, %struct.A* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.A*, %struct.A** %4, align 8
  %29 = getelementptr inbounds %struct.A, %struct.A* %28, i32 0, i32 1
  store i32* %29, i32** %11, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.A*, %struct.A** %4, align 8
  %33 = getelementptr inbounds %struct.A, %struct.A* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %2, i32 0, i32 1
  store i32 2, i32* %4, align 4
  %5 = call i32 @foo(%struct.A* noundef %2, i32 noundef 10, i32 noundef 3)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #2
  unreachable

9:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
