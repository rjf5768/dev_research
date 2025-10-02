; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56962.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr56962.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@v = dso_local global [144 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i64* noundef %0) #0 {
  %2 = alloca i64*, align 8
  store i64* %0, i64** %2, align 8
  %3 = load i64*, i64** %2, align 8
  %4 = icmp ne i64* %3, getelementptr inbounds ([144 x i64], [144 x i64]* @v, i64 0, i64 29)
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #2
  unreachable

6:                                                ; preds = %1
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i64* noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = mul nsw i64 %11, 4
  %13 = load i64, i64* %5, align 8
  %14 = mul nsw i64 %13, 3
  %15 = add nsw i64 %12, %14
  %16 = getelementptr inbounds i64, i64* %10, i64 %15
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i64, i64* %6, align 8
  %20 = mul nsw i64 %19, 5
  %21 = load i64, i64* %5, align 8
  %22 = mul nsw i64 %21, 3
  %23 = add nsw i64 %20, %22
  %24 = getelementptr inbounds i64, i64* %18, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64*, i64** %4, align 8
  %27 = load i64, i64* %6, align 8
  %28 = mul nsw i64 %27, 5
  %29 = load i64, i64* %5, align 8
  %30 = mul nsw i64 %29, 4
  %31 = add nsw i64 %28, %30
  %32 = getelementptr inbounds i64, i64* %26, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64*, i64** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = mul nsw i64 %36, 4
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  store i64 %34, i64* %38, align 8
  %39 = load i64*, i64** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = mul nsw i64 %40, 5
  %42 = load i64, i64* %5, align 8
  %43 = add nsw i64 %41, %42
  %44 = getelementptr inbounds i64, i64* %39, i64 %43
  call void @bar(i64* noundef %44)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %6, align 8
  %50 = mul nsw i64 %49, 5
  %51 = load i64, i64* %5, align 8
  %52 = mul nsw i64 %51, 5
  %53 = add nsw i64 %50, %52
  %54 = getelementptr inbounds i64, i64* %48, i64 %53
  store i64 %47, i64* %54, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo(i64* noundef getelementptr inbounds ([144 x i64], [144 x i64]* @v, i64 0, i64 0), i64 noundef 24, i64 noundef 1)
  ret i32 0
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
