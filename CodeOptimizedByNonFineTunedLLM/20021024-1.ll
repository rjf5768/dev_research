; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021024-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20021024-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp = dso_local global i64* null, align 8
@m = dso_local global i64 0, align 8
@main.r = internal global [64 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0, i64* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 23
  %11 = and i32 %10, 511
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = lshr i32 %12, 9
  %14 = and i32 %13, 511
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, 511
  store i32 %16, i32* %7, align 4
  %17 = load i64*, i64** @cp, align 8
  store i64 1, i64* %17, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %22, %27
  store i64 %28, i64* @m, align 8
  %29 = load i64*, i64** @cp, align 8
  store i64 2, i64* %29, align 8
  call void @foo()
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %8
  br label %8

33:                                               ; preds = %8
  %34 = load i64*, i64** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 1, i64* %37, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64* %2, i64** @cp, align 8
  store i64 47, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 4), align 16
  store i64 11, i64* getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 8), align 16
  call void @bar(i32 noundef 67110927, i64* noundef getelementptr inbounds ([64 x i64], [64 x i64]* @main.r, i64 0, i64 0))
  %3 = load i64, i64* @m, align 8
  %4 = icmp ne i64 %3, 58
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
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
