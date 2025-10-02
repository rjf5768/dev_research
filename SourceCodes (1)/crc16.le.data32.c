; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.le.data32.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.le.data32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sample = internal constant [8 x i32] [i32 0, i32 1, i32 11, i32 16, i32 129, i32 142, i32 196, i32 255], align 16
@CRCTable = internal global [256 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %31, %0
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 8
  br i1 %6, label %7, label %34

7:                                                ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = trunc i32 %10 to i16
  %12 = load i64, i64* %3, align 8
  %13 = sub i64 7, %12
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call zeroext i16 @crc_table(i16 noundef zeroext %11, i32 noundef %15)
  %17 = zext i16 %16 to i32
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = trunc i32 %20 to i16
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 7, %22
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call zeroext i16 @crc_loop(i16 noundef zeroext %21, i32 noundef %25)
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %17, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %7
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %4, !llvm.loop !4

34:                                               ; preds = %4
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @crc_table(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %8 = load i16, i16* %3, align 2
  store i16 %8, i16* %5, align 2
  %9 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @CRCTable, i64 0, i64 255), align 2
  %10 = zext i16 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void @crc_init()
  br label %13

13:                                               ; preds = %12, %2
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %37, %13
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = load i64, i64* %6, align 8
  %22 = shl i64 %21, 3
  %23 = trunc i64 %22 to i32
  %24 = lshr i32 %20, %23
  %25 = xor i32 %19, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = ashr i32 %28, 8
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = xor i32 %29, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  br label %37

37:                                               ; preds = %17
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %14, !llvm.loop !6

40:                                               ; preds = %14
  %41 = load i16, i16* %5, align 2
  ret i16 %41
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @crc_loop(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i32 %1, i32* %4, align 4
  %9 = load i16, i16* %3, align 2
  store i16 %9, i16* %5, align 2
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %39, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %42

13:                                               ; preds = %10
  %14 = load i16, i16* %5, align 2
  %15 = zext i16 %14 to i32
  %16 = load i32, i32* %4, align 4
  %17 = xor i32 %15, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load i16, i16* %5, align 2
  %20 = zext i16 %19 to i32
  %21 = ashr i32 %20, 1
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load i16, i16* %7, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = load i16, i16* %8, align 2
  %29 = zext i16 %28 to i32
  %30 = xor i32 %29, -24575
  br label %34

31:                                               ; preds = %13
  %32 = load i16, i16* %8, align 2
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %30, %27 ], [ %33, %31 ]
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %5, align 2
  %37 = load i32, i32* %4, align 4
  %38 = lshr i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %10, !llvm.loop !7

42:                                               ; preds = %10
  %43 = load i16, i16* %5, align 2
  ret i16 %43
}

; Function Attrs: noinline nounwind uwtable
define internal void @crc_init() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i16 1, i16* %1, align 2
  store i64 128, i64* %2, align 8
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %44

7:                                                ; preds = %4
  %8 = load i16, i16* %1, align 2
  %9 = zext i16 %8 to i32
  %10 = ashr i32 %9, 1
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 -24575, i32 0
  %17 = xor i32 %10, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %1, align 2
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %35, %7
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %20, 256
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  %23 = load i16, i16* %1, align 2
  %24 = zext i16 %23 to i32
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %25
  %27 = load i16, i16* %26, align 2
  %28 = zext i16 %27 to i32
  %29 = xor i32 %24, %28
  %30 = trunc i32 %29 to i16
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %31, %32
  %34 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %33
  store i16 %30, i16* %34, align 2
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
