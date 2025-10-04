; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981001-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/981001-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flg = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @sub(i32 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 2
  br i1 %7, label %8, label %46

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, 2
  %15 = call i64 @sub(i32 noundef %14)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 2
  %21 = sub nsw i32 %20, 1
  %22 = call i64 @sub(i32 noundef %21)
  %23 = mul nsw i64 2, %22
  %24 = add nsw i64 %18, %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i64 %24, %26
  store i64 %27, i64* %2, align 8
  br label %49

28:                                               ; preds = %8
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %29, 2
  %31 = add nsw i32 %30, 1
  %32 = call i64 @sub(i32 noundef %31)
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, 2
  %36 = call i64 @sub(i32 noundef %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %2, align 8
  br label %49

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %46, %28, %12
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @sub(i32 noundef 30)
  %3 = icmp ne i64 %2, 832040
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @flg, align 8
  %6 = or i64 %5, 256
  store i64 %6, i64* @flg, align 8
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i64, i64* @flg, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #2
  unreachable

11:                                               ; preds = %7
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
