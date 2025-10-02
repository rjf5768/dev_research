; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc8.le.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc8.le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sample = internal constant [8 x i32] [i32 0, i32 1, i32 11, i32 16, i32 129, i32 142, i32 196, i32 255], align 16
@CRCTable = internal global [256 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 8
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 7, %12
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = trunc i32 %15 to i8
  %17 = call zeroext i8 @crc_table(i8 noundef zeroext %11, i8 noundef zeroext %16)
  %18 = zext i8 %17 to i32
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i64, i64* %3, align 8
  %24 = sub i64 7, %23
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = trunc i32 %26 to i8
  %28 = call zeroext i8 @crc_loop(i8 noundef zeroext %22, i8 noundef zeroext %27)
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %18, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %7
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %4, !llvm.loop !4

36:                                               ; preds = %4
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @crc_table(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %8 = load i8, i8* %3, align 1
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CRCTable, i64 0, i64 255), align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @crc_init()
  br label %13

13:                                               ; preds = %12, %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %35, %13
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 1
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i8, i8* %5, align 1
  %19 = zext i8 %18 to i32
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = load i64, i64* %6, align 8
  %23 = shl i64 %22, 3
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %21, %24
  %26 = xor i32 %19, %25
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %7, align 1
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* @CRCTable, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = xor i32 0, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %5, align 1
  br label %35

35:                                               ; preds = %17
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %14, !llvm.loop !6

38:                                               ; preds = %14
  %39 = load i8, i8* %5, align 1
  ret i8 %39
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @crc_loop(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %9 = load i8, i8* %3, align 1
  store i8 %9, i8* %5, align 1
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = xor i32 %15, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %7, align 1
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 1
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %8, align 1
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %13
  %29 = load i8, i8* %8, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, 29
  br label %35

32:                                               ; preds = %13
  %33 = load i8, i8* %8, align 1
  %34 = zext i8 %33 to i32
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i32 [ %31, %28 ], [ %34, %32 ]
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = ashr i32 %39, 1
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %4, align 1
  br label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %6, align 8
  br label %10, !llvm.loop !7

45:                                               ; preds = %10
  %46 = load i8, i8* %5, align 1
  ret i8 %46
}

; Function Attrs: noinline nounwind uwtable
define internal void @crc_init() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i8 1, i8* %1, align 1
  store i64 128, i64* %2, align 8
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = load i8, i8* %1, align 1
  %9 = zext i8 %8 to i32
  %10 = ashr i32 %9, 1
  %11 = load i8, i8* %1, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 29, i32 0
  %17 = xor i32 %10, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %1, align 1
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %35, %7
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %20, 256
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i8, i8* %1, align 1
  %24 = zext i8 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @CRCTable, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %24, %28
  %30 = trunc i32 %29 to i8
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* @CRCTable, i64 0, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %22
  %36 = load i64, i64* %2, align 8
  %37 = mul i64 2, %36
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %19, !llvm.loop !8

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %2, align 8
  %43 = lshr i64 %42, 1
  store i64 %43, i64* %2, align 8
  br label %4, !llvm.loop !9

44:                                               ; preds = %4
  ret void
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
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
