; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzCrc64.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/7zip/C/XzCrc64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Crc64Table = dso_local global [256 x i64] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Crc64GenerateTable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %30, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %33

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %22, %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, i64* %2, align 8
  %15 = lshr i64 %14, 1
  %16 = load i64, i64* %2, align 8
  %17 = and i64 %16, 1
  %18 = sub i64 %17, 1
  %19 = xor i64 %18, -1
  %20 = and i64 -3932672073523589310, %19
  %21 = xor i64 %15, %20
  store i64 %21, i64* %2, align 8
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %10, !llvm.loop !4

25:                                               ; preds = %10
  %26 = load i64, i64* %2, align 8
  %27 = load i32, i32* %1, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i64 0, i64 %28
  store i64 %26, i64* %29, align 8
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %1, align 4
  br label %4, !llvm.loop !6

33:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Crc64Update(i64 noundef %0, i8* noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i64
  %17 = xor i64 %13, %16
  %18 = and i64 %17, 255
  %19 = getelementptr inbounds [256 x i64], [256 x i64]* @g_Crc64Table, i64 0, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 8
  %23 = xor i64 %20, %22
  store i64 %23, i64* %4, align 8
  br label %24

24:                                               ; preds = %12
  %25 = load i64, i64* %6, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  br label %9, !llvm.loop !7

29:                                               ; preds = %9
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @Crc64Calc(i8* noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @Crc64Update(i64 noundef -1, i8* noundef %5, i64 noundef %6)
  %8 = xor i64 %7, -1
  ret i64 %8
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
