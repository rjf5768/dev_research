; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrc.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/7zCrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_CrcUpdate = internal global i32 (i32, i8*, i64, i32*)* null, align 8
@g_CrcTable = dso_local global [2048 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcUpdate(i32 noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 %7(i32 noundef %8, i8* noundef %9, i64 noundef %10, i32* noundef getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 0))
  ret i32 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CrcCalc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32 (i32, i8*, i64, i32*)*, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 %5(i32 noundef -1, i8* noundef %6, i64 noundef %7, i32* noundef getelementptr inbounds ([2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 0))
  %9 = xor i32 %8, -1
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CrcGenerateTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %30, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  store i32 %9, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %22, %8
  %11 = load i32, i32* %3, align 4
  %12 = icmp ult i32 %11, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = lshr i32 %14, 1
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 1
  %18 = sub i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 -306674912, %19
  %21 = xor i32 %15, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %5, !llvm.loop !6

33:                                               ; preds = %5
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %1, align 4
  %36 = icmp ult i32 %35, 2048
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load i32, i32* %1, align 4
  %39 = sub i32 %38, 256
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 255
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = lshr i32 %48, 8
  %50 = xor i32 %47, %49
  %51 = load i32, i32* %1, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [2048 x i32], [2048 x i32]* @g_CrcTable, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %1, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %34, !llvm.loop !7

57:                                               ; preds = %34
  store i32 (i32, i8*, i64, i32*)* @CrcUpdateT4, i32 (i32, i8*, i64, i32*)** @g_CrcUpdate, align 8
  ret void
}

declare dso_local i32 @CrcUpdateT4(i32 noundef, i8* noundef, i64 noundef, i32* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
