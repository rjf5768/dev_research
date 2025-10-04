; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950809-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/950809-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { i32*, i32, i32*, [2 x i32] }

@main.sc = internal global [3 x i32] [i32 2, i32 3, i32 4], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(%struct.S* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.S*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.S* %0, %struct.S** %3, align 8
  %10 = load %struct.S*, %struct.S** %3, align 8
  %11 = getelementptr inbounds %struct.S, %struct.S* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.S*, %struct.S** %3, align 8
  %23 = getelementptr inbounds %struct.S, %struct.S* %22, i32 0, i32 3
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.S*, %struct.S** %3, align 8
  %27 = getelementptr inbounds %struct.S, %struct.S* %26, i32 0, i32 3
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.S*, %struct.S** %3, align 8
  %38 = getelementptr inbounds %struct.S, %struct.S* %37, i32 0, i32 3
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %38, i64 0, i64 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.S*, %struct.S** %3, align 8
  %42 = getelementptr inbounds %struct.S, %struct.S* %41, i32 0, i32 3
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.S*, %struct.S** %3, align 8
  %46 = getelementptr inbounds %struct.S, %struct.S* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.S*, %struct.S** %3, align 8
  %49 = getelementptr inbounds %struct.S, %struct.S* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 2
  store i32* getelementptr inbounds ([3 x i32], [3 x i32]* @main.sc, i64 0, i64 0), i32** %3, align 8
  %4 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 10, i32* %5, align 8
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 3
  %7 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 11, i32* %7, align 4
  %8 = call i32 @f(%struct.S* noundef %2)
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  call void @abort() #2
  unreachable

15:                                               ; preds = %0
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
