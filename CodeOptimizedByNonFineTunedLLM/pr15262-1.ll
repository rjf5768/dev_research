; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr15262-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.A = type { i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @foo() #0 {
  ret i32 3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.A, align 4
  %3 = alloca %struct.A*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store float 3.000000e+00, float* %4, align 4
  store float 2.000000e+00, float* %5, align 4
  %9 = call i32 @foo()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  br label %13

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi float* [ %5, %11 ], [ %4, %12 ]
  store float* %14, float** %6, align 8
  %15 = load float*, float** %6, align 8
  %16 = load float, float* %15, align 4
  %17 = fpext float %16 to double
  %18 = fcmp ogt double %17, 0.000000e+00
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store float 1.000000e+00, float* %5, align 4
  br label %20

20:                                               ; preds = %19, %13
  %21 = call i8* @malloc(i64 noundef 8)
  %22 = bitcast i8* %21 to %struct.A*
  store %struct.A* %22, %struct.A** %3, align 8
  %23 = load %struct.A*, %struct.A** %3, align 8
  %24 = getelementptr inbounds %struct.A, %struct.A* %23, i32 0, i32 1
  store i32 10, i32* %24, align 4
  %25 = load %struct.A*, %struct.A** %3, align 8
  %26 = getelementptr inbounds %struct.A, %struct.A* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.A*, %struct.A** %3, align 8
  %29 = getelementptr inbounds %struct.A, %struct.A* %28, i32 0, i32 1
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  store i32 1, i32* %30, align 4
  %31 = load %struct.A*, %struct.A** %3, align 8
  %32 = getelementptr inbounds %struct.A, %struct.A* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %20
  call void @abort() #3
  unreachable

37:                                               ; preds = %20
  ret i32 0
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
