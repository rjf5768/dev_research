; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc32.be.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/HashRecognize/crc32.be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.sample = internal constant [8 x i32] [i32 0, i32 1, i32 11, i32 16, i32 129, i32 142, i32 196, i32 255], align 16
@CRCTable = internal global [256 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i64, i64* %3, align 8
  %6 = icmp ult i64 %5, 8
  br i1 %6, label %7, label %30

7:                                                ; preds = %4
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %3, align 8
  %12 = sub i64 7, %11
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @crc_table(i32 noundef %10, i32 noundef %14)
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %3, align 8
  %20 = sub i64 7, %19
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @main.sample, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @crc_loop(i32 noundef %18, i32 noundef %22)
  %24 = icmp ne i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %7
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %4, !llvm.loop !4

30:                                               ; preds = %4
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @crc_table(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @CRCTable, i64 0, i64 255), align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @crc_init()
  br label %12

12:                                               ; preds = %11, %2
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i64, i64* %6, align 8
  %20 = shl i64 %19, 3
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %18, %21
  %23 = xor i32 %17, %22
  %24 = lshr i32 %23, 24
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 8
  %28 = load i8, i8* %7, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %27, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %16
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %13, !llvm.loop !6

36:                                               ; preds = %13
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @crc_loop(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  store i32 %9, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %31, %2
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = xor i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, -2147483648
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, 33800
  br label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %8, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi i32 [ %24, %22 ], [ %26, %25 ]
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %10, !llvm.loop !7

34:                                               ; preds = %10
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind uwtable
define internal void @crc_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i32 -2147483648, i32* %1, align 4
  store i64 1, i64* %2, align 8
  br label %4

4:                                                ; preds = %34, %0
  %5 = load i64, i64* %2, align 8
  %6 = icmp ult i64 %5, 256
  br i1 %6, label %7, label %37

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = shl i32 %8, 1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, -2147483648
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 33800, i32 0
  %15 = xor i32 %9, %14
  store i32 %15, i32* %1, align 4
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %30, %7
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %2, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %26, %27
  %29 = getelementptr inbounds [256 x i32], [256 x i32]* @CRCTable, i64 0, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %3, align 8
  br label %16, !llvm.loop !8

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %2, align 8
  %36 = shl i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %4, !llvm.loop !9

37:                                               ; preds = %4
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
