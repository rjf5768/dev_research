; ModuleID = '/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_2_driver.c'
source_filename = "/project/test/llvm-test-suite/Fortran/gfortran/regression/bind_c_dts_2_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_type_1 = type { %struct.c_type_0, i32*, i32 }
%struct.c_type_0 = type { i32, i32*, [3 x i32] }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.c_type_1, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %7, i32 0, i32 0
  store i32 10, i32* %8, align 8
  %9 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %10 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %12 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %13, i32 0, i32 2
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 1, i32* %15, align 8
  %16 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %17 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %16, i32 0, i32 2
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 1
  store i32 2, i32* %18, align 4
  %19 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %20 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %19, i32 0, i32 2
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 3, i32* %21, align 8
  %22 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 2
  %23 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 1
  store i32* %22, i32** %23, align 8
  %24 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 2
  store i32 11, i32* %24, align 8
  %25 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %26 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %31, i32 0, i32 2
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %36 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %35, i32 0, i32 2
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %36, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.c_type_0, %struct.c_type_0* %39, i32 0, i32 2
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.c_type_1, %struct.c_type_1* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  call void @sub0(%struct.c_type_1* noundef %6, i32 noundef %27, i32* noundef %30, i32 noundef %34, i32 noundef %38, i32 noundef %42, i32* noundef %44, i32 noundef %46)
  ret i32 0
}

declare dso_local void @sub0(%struct.c_type_1* noundef, i32 noundef, i32* noundef, i32 noundef, i32 noundef, i32 noundef, i32* noundef, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
