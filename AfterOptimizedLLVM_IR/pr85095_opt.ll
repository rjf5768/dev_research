; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85095.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr85095.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f1(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  store i64 %10, i64* %3, align 8
  %11 = zext i1 %9 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %12, %13
  ret i64 %14
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f2(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 %7)
  %9 = extractvalue { i64, i1 } %8, 1
  %10 = extractvalue { i64, i1 } %8, 0
  store i64 %10, i64* %3, align 8
  %11 = zext i1 %9 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %12, %13
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 %7)
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  store i32 %10, i32* %3, align 4
  %11 = zext i1 %9 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add i32 %12, %13
  %15 = zext i32 %14 to i64
  ret i64 %15
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f4(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 %7)
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  store i32 %10, i32* %3, align 4
  %11 = zext i1 %9 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub i32 %12, %13
  %15 = zext i32 %14 to i64
  ret i64 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i64 @f1(i64 noundef 16, i64 noundef -18)
  %3 = icmp ne i64 %2, -2
  br i1 %3, label %49, label %4

4:                                                ; preds = %0
  %5 = call i64 @f1(i64 noundef 16, i64 noundef -17)
  %6 = icmp ne i64 %5, -1
  br i1 %6, label %49, label %7

7:                                                ; preds = %4
  %8 = call i64 @f1(i64 noundef 16, i64 noundef -16)
  %9 = icmp ne i64 %8, 1
  br i1 %9, label %49, label %10

10:                                               ; preds = %7
  %11 = call i64 @f1(i64 noundef 16, i64 noundef -15)
  %12 = icmp ne i64 %11, 2
  br i1 %12, label %49, label %13

13:                                               ; preds = %10
  %14 = call i64 @f2(i64 noundef 24, i64 noundef -26)
  %15 = icmp ne i64 %14, -2
  br i1 %15, label %49, label %16

16:                                               ; preds = %13
  %17 = call i64 @f2(i64 noundef 24, i64 noundef -25)
  %18 = icmp ne i64 %17, -1
  br i1 %18, label %49, label %19

19:                                               ; preds = %16
  %20 = call i64 @f2(i64 noundef 24, i64 noundef -24)
  %21 = icmp ne i64 %20, -1
  br i1 %21, label %49, label %22

22:                                               ; preds = %19
  %23 = call i64 @f2(i64 noundef 24, i64 noundef -23)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %22
  %26 = call i64 @f3(i32 noundef 32, i32 noundef -34)
  %27 = icmp ne i64 %26, 4294967294
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = call i64 @f3(i32 noundef 32, i32 noundef -33)
  %30 = icmp ne i64 %29, 4294967295
  br i1 %30, label %49, label %31

31:                                               ; preds = %28
  %32 = call i64 @f3(i32 noundef 32, i32 noundef -32)
  %33 = icmp ne i64 %32, 1
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = call i64 @f3(i32 noundef 32, i32 noundef -31)
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = call i64 @f4(i32 noundef 35, i32 noundef -37)
  %39 = icmp ne i64 %38, 4294967294
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = call i64 @f4(i32 noundef 35, i32 noundef -36)
  %42 = icmp ne i64 %41, 4294967295
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = call i64 @f4(i32 noundef 35, i32 noundef -35)
  %45 = icmp ne i64 %44, 4294967295
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = call i64 @f4(i32 noundef 35, i32 noundef -34)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10, %7, %4, %0
  call void @abort() #3
  unreachable

50:                                               ; preds = %46
  ret i32 0
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
