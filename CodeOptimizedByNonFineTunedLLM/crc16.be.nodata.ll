; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.be.nodata.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc16.be.nodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.crc_initval = internal constant [8 x i16] [i16 0, i16 1, i16 11, i16 16, i16 129, i16 255, i16 4129, i16 16384], align 16
@CRCTable = internal global [256 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i32 0, i32* %1, align 4
  store i64 0, i64* %2, align 8
  br label %5

5:                                                ; preds = %24, %0
  %6 = load i64, i64* %2, align 8
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds [8 x i16], [8 x i16]* @main.crc_initval, i64 0, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = call zeroext i16 @crc_loop(i16 noundef zeroext %11)
  store i16 %12, i16* %3, align 2
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds [8 x i16], [8 x i16]* @main.crc_initval, i64 0, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = call zeroext i16 @crc_table(i16 noundef zeroext %15)
  store i16 %16, i16* %4, align 2
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %28

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %2, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %2, align 8
  br label %5, !llvm.loop !4

27:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @crc_loop(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %6 = load i16, i16* %2, align 2
  store i16 %6, i16* %3, align 2
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %29, %1
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 16
  br i1 %9, label %10, label %32

10:                                               ; preds = %7
  %11 = load i16, i16* %3, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 1
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %5, align 2
  %15 = load i16, i16* %3, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 32768
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = xor i32 %21, 4129
  br label %26

23:                                               ; preds = %10
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ %22, %19 ], [ %25, %23 ]
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %3, align 2
  br label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %4, align 8
  br label %7, !llvm.loop !6

32:                                               ; preds = %7
  %33 = load i16, i16* %3, align 2
  ret i16 %33
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @crc_table(i16 noundef zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i16 %0, i16* %2, align 2
  %6 = load i16, i16* %2, align 2
  store i16 %6, i16* %3, align 2
  %7 = load i16, i16* getelementptr inbounds ([256 x i16], [256 x i16]* @CRCTable, i64 0, i64 255), align 2
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void @crc_init()
  br label %11

11:                                               ; preds = %10, %1
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i64, i64* %4, align 8
  %14 = icmp ult i64 %13, 2
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = ashr i32 %17, 8
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load i16, i16* %3, align 2
  %21 = zext i16 %20 to i32
  %22 = shl i32 %21, 8
  %23 = load i8, i8* %5, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = xor i32 %22, %27
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %3, align 2
  br label %30

30:                                               ; preds = %15
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %12, !llvm.loop !7

33:                                               ; preds = %12
  %34 = load i16, i16* %3, align 2
  ret i16 %34
}

; Function Attrs: noinline nounwind uwtable
define internal void @crc_init() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i16 -32768, i16* %1, align 2
  store i32 1, i32* %2, align 4
  br label %4

4:                                                ; preds = %42, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %45

7:                                                ; preds = %4
  %8 = load i16, i16* %1, align 2
  %9 = zext i16 %8 to i32
  %10 = shl i32 %9, 1
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i32
  %13 = and i32 %12, 32768
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 4129, i32 0
  %17 = xor i32 %10, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %1, align 2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %38, %7
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load i16, i16* %1, align 2
  %25 = zext i16 %24 to i32
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = zext i16 %29 to i32
  %31 = xor i32 %25, %30
  %32 = trunc i32 %31 to i16
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [256 x i16], [256 x i16]* @CRCTable, i64 0, i64 %36
  store i16 %32, i16* %37, align 2
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %19, !llvm.loop !8

41:                                               ; preds = %19
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %4, !llvm.loop !9

45:                                               ; preds = %4
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
