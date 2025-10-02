; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-bitops-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-bitops-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ints = dso_local global [13 x i32] [i32 0, i32 1, i32 -2147483648, i32 2, i32 1073741824, i32 65536, i32 32768, i32 -1515870811, i32 1515870810, i32 -889323520, i32 13303296, i32 51966, i32 -1], align 16
@longs = dso_local global [13 x i64] [i64 0, i64 1, i64 -9223372036854775808, i64 2, i64 4611686018427387904, i64 4294967296, i64 2147483648, i64 -6510615555426900571, i64 6510615555426900570, i64 -3819392241693097984, i64 223195676147712, i64 3405695742, i64 -1], align 16
@longlongs = dso_local global [13 x i64] [i64 0, i64 1, i64 -9223372036854775808, i64 2, i64 4611686018427387904, i64 4294967296, i64 2147483648, i64 -6510615555426900571, i64 6510615555426900570, i64 -3819392241693097984, i64 223195676147712, i64 3405695742, i64 -1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ffs(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %21, %8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 32
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %9, !llvm.loop !4

24:                                               ; preds = %19, %9
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %7
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ctz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 32
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = shl i32 1, %10
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %19

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4, !llvm.loop !6

19:                                               ; preds = %14, %4
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clz(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 32
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 32, %11
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = shl i32 1, %14
  %16 = and i32 %9, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  br label %23

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4, !llvm.loop !7

23:                                               ; preds = %18, %4
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clrsb(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = lshr i32 %5, 31
  %7 = and i32 %6, 1
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 32
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 32, %15
  %17 = sub i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 %13, %18
  %20 = and i32 %19, 1
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %28

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %8, !llvm.loop !8

28:                                               ; preds = %23, %8
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_popcount(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 32
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5, !llvm.loop !9

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_parity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 32
  br i1 %8, label %9, label %22

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* %3, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %5, !llvm.loop !10

22:                                               ; preds = %5
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 1
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ffsl(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 64
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9, !llvm.loop !11

25:                                               ; preds = %20, %9
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ctzl(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = and i64 %9, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !12

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clzl(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 64, %11
  %13 = sub i64 %12, 1
  %14 = shl i64 1, %13
  %15 = and i64 %9, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %22

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4, !llvm.loop !13

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clrsbl(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = lshr i64 %5, 63
  %7 = and i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 64
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 64, %16
  %18 = sub i64 %17, 1
  %19 = lshr i64 %14, %18
  %20 = and i64 %19, 1
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %29

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9, !llvm.loop !14

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 1
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_popcountl(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = and i64 %10, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !15

23:                                               ; preds = %5
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_parityl(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = and i64 %10, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !16

23:                                               ; preds = %5
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ffsll(i64 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 64
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  %18 = and i64 %14, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %25

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9, !llvm.loop !17

25:                                               ; preds = %20, %9
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %7
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_ctzll(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = shl i64 1, %11
  %13 = and i64 %9, %12
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %20

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !18

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clzll(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 64
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load i64, i64* %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 64, %11
  %13 = sub i64 %12, 1
  %14 = shl i64 1, %13
  %15 = and i64 %9, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  br label %22

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4, !llvm.loop !19

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_clrsbll(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = lshr i64 %5, 63
  %7 = and i64 %6, 1
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %4, align 4
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 64
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 64, %16
  %18 = sub i64 %17, 1
  %19 = lshr i64 %14, %18
  %20 = and i64 %19, 1
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %29

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %9, !llvm.loop !20

29:                                               ; preds = %24, %9
  %30 = load i32, i32* %3, align 4
  %31 = sub nsw i32 %30, 1
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_popcountll(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = and i64 %10, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !21

23:                                               ; preds = %5
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @my_parityll(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = shl i64 1, %12
  %14 = and i64 %10, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5, !llvm.loop !22

23:                                               ; preds = %5
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 1
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %106, %0
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp ult i64 %5, 13
  br i1 %6, label %7, label %109

7:                                                ; preds = %3
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @llvm.cttz.i32(i32 %11, i1 true)
  %13 = add i32 %12, 1
  %14 = icmp eq i32 %11, 0
  %15 = select i1 %14, i32 0, i32 %13
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @my_ffs(i32 noundef %19)
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  call void @abort() #3
  unreachable

23:                                               ; preds = %7
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @llvm.ctlz.i32(i32 %33, i1 true)
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @my_clz(i32 noundef %38)
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  call void @abort() #3
  unreachable

42:                                               ; preds = %29, %23
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @llvm.cttz.i32(i32 %52, i1 true)
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @my_ctz(i32 noundef %57)
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  call void @abort() #3
  unreachable

61:                                               ; preds = %48, %42
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  %67 = xor i32 %65, -1
  %68 = select i1 %66, i32 %67, i32 %65
  %69 = call i32 @llvm.ctlz.i32(i32 %68, i1 false)
  %70 = sub i32 %69, 1
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @my_clrsb(i32 noundef %74)
  %76 = icmp ne i32 %70, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  call void @abort() #3
  unreachable

78:                                               ; preds = %61
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @my_popcount(i32 noundef %87)
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  call void @abort() #3
  unreachable

91:                                               ; preds = %78
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @my_parity(i32 noundef %101)
  %103 = icmp ne i32 %97, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  call void @abort() #3
  unreachable

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %2, align 4
  br label %3, !llvm.loop !23

109:                                              ; preds = %3
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %219, %109
  %111 = load i32, i32* %2, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 13
  br i1 %113, label %114, label %222

114:                                              ; preds = %110
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @llvm.cttz.i64(i64 %118, i1 true)
  %120 = add i64 %119, 1
  %121 = icmp eq i64 %118, 0
  %122 = select i1 %121, i64 0, i64 %120
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @my_ffsl(i64 noundef %127)
  %129 = icmp ne i32 %123, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %114
  call void @abort() #3
  unreachable

131:                                              ; preds = %114
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @llvm.ctlz.i64(i64 %141, i1 true)
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @my_clzl(i64 noundef %147)
  %149 = icmp ne i32 %143, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  call void @abort() #3
  unreachable

151:                                              ; preds = %137, %131
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i32, i32* %2, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @llvm.cttz.i64(i64 %161, i1 true)
  %163 = trunc i64 %162 to i32
  %164 = load i32, i32* %2, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @my_ctzl(i64 noundef %167)
  %169 = icmp ne i32 %163, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %157
  call void @abort() #3
  unreachable

171:                                              ; preds = %157, %151
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %175, 0
  %177 = xor i64 %175, -1
  %178 = select i1 %176, i64 %177, i64 %175
  %179 = call i64 @llvm.ctlz.i64(i64 %178, i1 false)
  %180 = sub i64 %179, 1
  %181 = trunc i64 %180 to i32
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @my_clrsbl(i64 noundef %185)
  %187 = icmp ne i32 %181, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %171
  call void @abort() #3
  unreachable

189:                                              ; preds = %171
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = call i64 @llvm.ctpop.i64(i64 %193)
  %195 = trunc i64 %194 to i32
  %196 = load i32, i32* %2, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 @my_popcountl(i64 noundef %199)
  %201 = icmp ne i32 %195, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %189
  call void @abort() #3
  unreachable

203:                                              ; preds = %189
  %204 = load i32, i32* %2, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = call i64 @llvm.ctpop.i64(i64 %207)
  %209 = and i64 %208, 1
  %210 = trunc i64 %209 to i32
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @my_parityl(i64 noundef %214)
  %216 = icmp ne i32 %210, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %203
  call void @abort() #3
  unreachable

218:                                              ; preds = %203
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %2, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %2, align 4
  br label %110, !llvm.loop !24

222:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %223

223:                                              ; preds = %332, %222
  %224 = load i32, i32* %2, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp ult i64 %225, 13
  br i1 %226, label %227, label %335

227:                                              ; preds = %223
  %228 = load i32, i32* %2, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = call i64 @llvm.cttz.i64(i64 %231, i1 true)
  %233 = add i64 %232, 1
  %234 = icmp eq i64 %231, 0
  %235 = select i1 %234, i64 0, i64 %233
  %236 = trunc i64 %235 to i32
  %237 = load i32, i32* %2, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @my_ffsll(i64 noundef %240)
  %242 = icmp ne i32 %236, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %227
  call void @abort() #3
  unreachable

244:                                              ; preds = %227
  %245 = load i32, i32* %2, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %246
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %244
  %251 = load i32, i32* %2, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = call i64 @llvm.ctlz.i64(i64 %254, i1 true)
  %256 = trunc i64 %255 to i32
  %257 = load i32, i32* %2, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = call i32 @my_clzll(i64 noundef %260)
  %262 = icmp ne i32 %256, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %250
  call void @abort() #3
  unreachable

264:                                              ; preds = %250, %244
  %265 = load i32, i32* %2, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %264
  %271 = load i32, i32* %2, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i64 @llvm.cttz.i64(i64 %274, i1 true)
  %276 = trunc i64 %275 to i32
  %277 = load i32, i32* %2, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @my_ctzll(i64 noundef %280)
  %282 = icmp ne i32 %276, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %270
  call void @abort() #3
  unreachable

284:                                              ; preds = %270, %264
  %285 = load i32, i32* %2, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = icmp slt i64 %288, 0
  %290 = xor i64 %288, -1
  %291 = select i1 %289, i64 %290, i64 %288
  %292 = call i64 @llvm.ctlz.i64(i64 %291, i1 false)
  %293 = sub i64 %292, 1
  %294 = trunc i64 %293 to i32
  %295 = load i32, i32* %2, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %296
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @my_clrsbll(i64 noundef %298)
  %300 = icmp ne i32 %294, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %284
  call void @abort() #3
  unreachable

302:                                              ; preds = %284
  %303 = load i32, i32* %2, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = call i64 @llvm.ctpop.i64(i64 %306)
  %308 = trunc i64 %307 to i32
  %309 = load i32, i32* %2, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %310
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @my_popcountll(i64 noundef %312)
  %314 = icmp ne i32 %308, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %302
  call void @abort() #3
  unreachable

316:                                              ; preds = %302
  %317 = load i32, i32* %2, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @llvm.ctpop.i64(i64 %320)
  %322 = and i64 %321, 1
  %323 = trunc i64 %322 to i32
  %324 = load i32, i32* %2, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @my_parityll(i64 noundef %327)
  %329 = icmp ne i32 %323, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %316
  call void @abort() #3
  unreachable

331:                                              ; preds = %316
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %2, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %2, align 4
  br label %223, !llvm.loop !25

335:                                              ; preds = %223
  %336 = call i32 @my_ffs(i32 noundef 0)
  %337 = icmp ne i32 0, %336
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  call void @abort() #3
  unreachable

339:                                              ; preds = %335
  %340 = call i32 @my_clrsb(i32 noundef 0)
  %341 = icmp ne i32 31, %340
  br i1 %341, label %342, label %343

342:                                              ; preds = %339
  call void @abort() #3
  unreachable

343:                                              ; preds = %339
  %344 = call i32 @my_popcount(i32 noundef 0)
  %345 = icmp ne i32 0, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  call void @abort() #3
  unreachable

347:                                              ; preds = %343
  %348 = call i32 @my_parity(i32 noundef 0)
  %349 = icmp ne i32 0, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %347
  call void @abort() #3
  unreachable

351:                                              ; preds = %347
  %352 = call i32 @my_ffs(i32 noundef 1)
  %353 = icmp ne i32 1, %352
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  call void @abort() #3
  unreachable

355:                                              ; preds = %351
  %356 = call i32 @my_clz(i32 noundef 1)
  %357 = icmp ne i32 31, %356
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  call void @abort() #3
  unreachable

359:                                              ; preds = %355
  %360 = call i32 @my_ctz(i32 noundef 1)
  %361 = icmp ne i32 0, %360
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  call void @abort() #3
  unreachable

363:                                              ; preds = %359
  %364 = call i32 @my_clrsb(i32 noundef 1)
  %365 = icmp ne i32 30, %364
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  call void @abort() #3
  unreachable

367:                                              ; preds = %363
  %368 = call i32 @my_popcount(i32 noundef 1)
  %369 = icmp ne i32 1, %368
  br i1 %369, label %370, label %371

370:                                              ; preds = %367
  call void @abort() #3
  unreachable

371:                                              ; preds = %367
  %372 = call i32 @my_parity(i32 noundef 1)
  %373 = icmp ne i32 1, %372
  br i1 %373, label %374, label %375

374:                                              ; preds = %371
  call void @abort() #3
  unreachable

375:                                              ; preds = %371
  %376 = call i32 @my_ffs(i32 noundef -2147483648)
  %377 = icmp ne i32 32, %376
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  call void @abort() #3
  unreachable

379:                                              ; preds = %375
  %380 = call i32 @my_clz(i32 noundef -2147483648)
  %381 = icmp ne i32 0, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  call void @abort() #3
  unreachable

383:                                              ; preds = %379
  %384 = call i32 @my_ctz(i32 noundef -2147483648)
  %385 = icmp ne i32 31, %384
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  call void @abort() #3
  unreachable

387:                                              ; preds = %383
  %388 = call i32 @my_clrsb(i32 noundef -2147483648)
  %389 = icmp ne i32 0, %388
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  call void @abort() #3
  unreachable

391:                                              ; preds = %387
  %392 = call i32 @my_popcount(i32 noundef -2147483648)
  %393 = icmp ne i32 1, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %391
  call void @abort() #3
  unreachable

395:                                              ; preds = %391
  %396 = call i32 @my_parity(i32 noundef -2147483648)
  %397 = icmp ne i32 1, %396
  br i1 %397, label %398, label %399

398:                                              ; preds = %395
  call void @abort() #3
  unreachable

399:                                              ; preds = %395
  %400 = call i32 @my_ffs(i32 noundef 1073741824)
  %401 = icmp ne i32 31, %400
  br i1 %401, label %402, label %403

402:                                              ; preds = %399
  call void @abort() #3
  unreachable

403:                                              ; preds = %399
  %404 = call i32 @my_clz(i32 noundef 1073741824)
  %405 = icmp ne i32 1, %404
  br i1 %405, label %406, label %407

406:                                              ; preds = %403
  call void @abort() #3
  unreachable

407:                                              ; preds = %403
  %408 = call i32 @my_ctz(i32 noundef 1073741824)
  %409 = icmp ne i32 30, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %407
  call void @abort() #3
  unreachable

411:                                              ; preds = %407
  %412 = call i32 @my_clrsb(i32 noundef 1073741824)
  %413 = icmp ne i32 0, %412
  br i1 %413, label %414, label %415

414:                                              ; preds = %411
  call void @abort() #3
  unreachable

415:                                              ; preds = %411
  %416 = call i32 @my_popcount(i32 noundef 1073741824)
  %417 = icmp ne i32 1, %416
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  call void @abort() #3
  unreachable

419:                                              ; preds = %415
  %420 = call i32 @my_parity(i32 noundef 1073741824)
  %421 = icmp ne i32 1, %420
  br i1 %421, label %422, label %423

422:                                              ; preds = %419
  call void @abort() #3
  unreachable

423:                                              ; preds = %419
  %424 = call i32 @my_ffs(i32 noundef 65536)
  %425 = icmp ne i32 17, %424
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  call void @abort() #3
  unreachable

427:                                              ; preds = %423
  %428 = call i32 @my_clz(i32 noundef 65536)
  %429 = icmp ne i32 15, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %427
  call void @abort() #3
  unreachable

431:                                              ; preds = %427
  %432 = call i32 @my_ctz(i32 noundef 65536)
  %433 = icmp ne i32 16, %432
  br i1 %433, label %434, label %435

434:                                              ; preds = %431
  call void @abort() #3
  unreachable

435:                                              ; preds = %431
  %436 = call i32 @my_clrsb(i32 noundef 65536)
  %437 = icmp ne i32 14, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %435
  call void @abort() #3
  unreachable

439:                                              ; preds = %435
  %440 = call i32 @my_popcount(i32 noundef 65536)
  %441 = icmp ne i32 1, %440
  br i1 %441, label %442, label %443

442:                                              ; preds = %439
  call void @abort() #3
  unreachable

443:                                              ; preds = %439
  %444 = call i32 @my_parity(i32 noundef 65536)
  %445 = icmp ne i32 1, %444
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  call void @abort() #3
  unreachable

447:                                              ; preds = %443
  %448 = call i32 @my_ffs(i32 noundef 32768)
  %449 = icmp ne i32 16, %448
  br i1 %449, label %450, label %451

450:                                              ; preds = %447
  call void @abort() #3
  unreachable

451:                                              ; preds = %447
  %452 = call i32 @my_clz(i32 noundef 32768)
  %453 = icmp ne i32 16, %452
  br i1 %453, label %454, label %455

454:                                              ; preds = %451
  call void @abort() #3
  unreachable

455:                                              ; preds = %451
  %456 = call i32 @my_ctz(i32 noundef 32768)
  %457 = icmp ne i32 15, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  call void @abort() #3
  unreachable

459:                                              ; preds = %455
  %460 = call i32 @my_clrsb(i32 noundef 32768)
  %461 = icmp ne i32 15, %460
  br i1 %461, label %462, label %463

462:                                              ; preds = %459
  call void @abort() #3
  unreachable

463:                                              ; preds = %459
  %464 = call i32 @my_popcount(i32 noundef 32768)
  %465 = icmp ne i32 1, %464
  br i1 %465, label %466, label %467

466:                                              ; preds = %463
  call void @abort() #3
  unreachable

467:                                              ; preds = %463
  %468 = call i32 @my_parity(i32 noundef 32768)
  %469 = icmp ne i32 1, %468
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  call void @abort() #3
  unreachable

471:                                              ; preds = %467
  %472 = call i32 @my_ffs(i32 noundef -1515870811)
  %473 = icmp ne i32 1, %472
  br i1 %473, label %474, label %475

474:                                              ; preds = %471
  call void @abort() #3
  unreachable

475:                                              ; preds = %471
  %476 = call i32 @my_clz(i32 noundef -1515870811)
  %477 = icmp ne i32 0, %476
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  call void @abort() #3
  unreachable

479:                                              ; preds = %475
  %480 = call i32 @my_ctz(i32 noundef -1515870811)
  %481 = icmp ne i32 0, %480
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  call void @abort() #3
  unreachable

483:                                              ; preds = %479
  %484 = call i32 @my_clrsb(i32 noundef -1515870811)
  %485 = icmp ne i32 0, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %483
  call void @abort() #3
  unreachable

487:                                              ; preds = %483
  %488 = call i32 @my_popcount(i32 noundef -1515870811)
  %489 = icmp ne i32 16, %488
  br i1 %489, label %490, label %491

490:                                              ; preds = %487
  call void @abort() #3
  unreachable

491:                                              ; preds = %487
  %492 = call i32 @my_parity(i32 noundef -1515870811)
  %493 = icmp ne i32 0, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %491
  call void @abort() #3
  unreachable

495:                                              ; preds = %491
  %496 = call i32 @my_ffs(i32 noundef 1515870810)
  %497 = icmp ne i32 2, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %495
  call void @abort() #3
  unreachable

499:                                              ; preds = %495
  %500 = call i32 @my_clz(i32 noundef 1515870810)
  %501 = icmp ne i32 1, %500
  br i1 %501, label %502, label %503

502:                                              ; preds = %499
  call void @abort() #3
  unreachable

503:                                              ; preds = %499
  %504 = call i32 @my_ctz(i32 noundef 1515870810)
  %505 = icmp ne i32 1, %504
  br i1 %505, label %506, label %507

506:                                              ; preds = %503
  call void @abort() #3
  unreachable

507:                                              ; preds = %503
  %508 = call i32 @my_clrsb(i32 noundef 1515870810)
  %509 = icmp ne i32 0, %508
  br i1 %509, label %510, label %511

510:                                              ; preds = %507
  call void @abort() #3
  unreachable

511:                                              ; preds = %507
  %512 = call i32 @my_popcount(i32 noundef 1515870810)
  %513 = icmp ne i32 16, %512
  br i1 %513, label %514, label %515

514:                                              ; preds = %511
  call void @abort() #3
  unreachable

515:                                              ; preds = %511
  %516 = call i32 @my_parity(i32 noundef 1515870810)
  %517 = icmp ne i32 0, %516
  br i1 %517, label %518, label %519

518:                                              ; preds = %515
  call void @abort() #3
  unreachable

519:                                              ; preds = %515
  %520 = call i32 @my_ffs(i32 noundef -889323520)
  %521 = icmp ne i32 18, %520
  br i1 %521, label %522, label %523

522:                                              ; preds = %519
  call void @abort() #3
  unreachable

523:                                              ; preds = %519
  %524 = call i32 @my_clz(i32 noundef -889323520)
  %525 = icmp ne i32 0, %524
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  call void @abort() #3
  unreachable

527:                                              ; preds = %523
  %528 = call i32 @my_ctz(i32 noundef -889323520)
  %529 = icmp ne i32 17, %528
  br i1 %529, label %530, label %531

530:                                              ; preds = %527
  call void @abort() #3
  unreachable

531:                                              ; preds = %527
  %532 = call i32 @my_clrsb(i32 noundef -889323520)
  %533 = icmp ne i32 1, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  call void @abort() #3
  unreachable

535:                                              ; preds = %531
  %536 = call i32 @my_popcount(i32 noundef -889323520)
  %537 = icmp ne i32 11, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %535
  call void @abort() #3
  unreachable

539:                                              ; preds = %535
  %540 = call i32 @my_parity(i32 noundef -889323520)
  %541 = icmp ne i32 1, %540
  br i1 %541, label %542, label %543

542:                                              ; preds = %539
  call void @abort() #3
  unreachable

543:                                              ; preds = %539
  %544 = call i32 @my_ffs(i32 noundef 13303296)
  %545 = icmp ne i32 10, %544
  br i1 %545, label %546, label %547

546:                                              ; preds = %543
  call void @abort() #3
  unreachable

547:                                              ; preds = %543
  %548 = call i32 @my_clz(i32 noundef 13303296)
  %549 = icmp ne i32 8, %548
  br i1 %549, label %550, label %551

550:                                              ; preds = %547
  call void @abort() #3
  unreachable

551:                                              ; preds = %547
  %552 = call i32 @my_ctz(i32 noundef 13303296)
  %553 = icmp ne i32 9, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %551
  call void @abort() #3
  unreachable

555:                                              ; preds = %551
  %556 = call i32 @my_clrsb(i32 noundef 13303296)
  %557 = icmp ne i32 7, %556
  br i1 %557, label %558, label %559

558:                                              ; preds = %555
  call void @abort() #3
  unreachable

559:                                              ; preds = %555
  %560 = call i32 @my_popcount(i32 noundef 13303296)
  %561 = icmp ne i32 11, %560
  br i1 %561, label %562, label %563

562:                                              ; preds = %559
  call void @abort() #3
  unreachable

563:                                              ; preds = %559
  %564 = call i32 @my_parity(i32 noundef 13303296)
  %565 = icmp ne i32 1, %564
  br i1 %565, label %566, label %567

566:                                              ; preds = %563
  call void @abort() #3
  unreachable

567:                                              ; preds = %563
  %568 = call i32 @my_ffs(i32 noundef 51966)
  %569 = icmp ne i32 2, %568
  br i1 %569, label %570, label %571

570:                                              ; preds = %567
  call void @abort() #3
  unreachable

571:                                              ; preds = %567
  %572 = call i32 @my_clz(i32 noundef 51966)
  %573 = icmp ne i32 16, %572
  br i1 %573, label %574, label %575

574:                                              ; preds = %571
  call void @abort() #3
  unreachable

575:                                              ; preds = %571
  %576 = call i32 @my_ctz(i32 noundef 51966)
  %577 = icmp ne i32 1, %576
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  call void @abort() #3
  unreachable

579:                                              ; preds = %575
  %580 = call i32 @my_clrsb(i32 noundef 51966)
  %581 = icmp ne i32 15, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  call void @abort() #3
  unreachable

583:                                              ; preds = %579
  %584 = call i32 @my_popcount(i32 noundef 51966)
  %585 = icmp ne i32 11, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %583
  call void @abort() #3
  unreachable

587:                                              ; preds = %583
  %588 = call i32 @my_parity(i32 noundef 51966)
  %589 = icmp ne i32 1, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %587
  call void @abort() #3
  unreachable

591:                                              ; preds = %587
  %592 = call i32 @my_ffs(i32 noundef -1)
  %593 = icmp ne i32 1, %592
  br i1 %593, label %594, label %595

594:                                              ; preds = %591
  call void @abort() #3
  unreachable

595:                                              ; preds = %591
  %596 = call i32 @my_clz(i32 noundef -1)
  %597 = icmp ne i32 0, %596
  br i1 %597, label %598, label %599

598:                                              ; preds = %595
  call void @abort() #3
  unreachable

599:                                              ; preds = %595
  %600 = call i32 @my_ctz(i32 noundef -1)
  %601 = icmp ne i32 0, %600
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  call void @abort() #3
  unreachable

603:                                              ; preds = %599
  %604 = call i32 @my_clrsb(i32 noundef -1)
  %605 = icmp ne i32 31, %604
  br i1 %605, label %606, label %607

606:                                              ; preds = %603
  call void @abort() #3
  unreachable

607:                                              ; preds = %603
  %608 = call i32 @my_popcount(i32 noundef -1)
  %609 = icmp ne i32 32, %608
  br i1 %609, label %610, label %611

610:                                              ; preds = %607
  call void @abort() #3
  unreachable

611:                                              ; preds = %607
  %612 = call i32 @my_parity(i32 noundef -1)
  %613 = icmp ne i32 0, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %611
  call void @abort() #3
  unreachable

615:                                              ; preds = %611
  %616 = call i32 @my_ffsll(i64 noundef 0)
  %617 = icmp ne i32 0, %616
  br i1 %617, label %618, label %619

618:                                              ; preds = %615
  call void @abort() #3
  unreachable

619:                                              ; preds = %615
  %620 = call i32 @my_clrsbll(i64 noundef 0)
  %621 = icmp ne i32 63, %620
  br i1 %621, label %622, label %623

622:                                              ; preds = %619
  call void @abort() #3
  unreachable

623:                                              ; preds = %619
  %624 = call i32 @my_popcountll(i64 noundef 0)
  %625 = icmp ne i32 0, %624
  br i1 %625, label %626, label %627

626:                                              ; preds = %623
  call void @abort() #3
  unreachable

627:                                              ; preds = %623
  %628 = call i32 @my_parityll(i64 noundef 0)
  %629 = icmp ne i32 0, %628
  br i1 %629, label %630, label %631

630:                                              ; preds = %627
  call void @abort() #3
  unreachable

631:                                              ; preds = %627
  %632 = call i32 @my_ffsll(i64 noundef 1)
  %633 = icmp ne i32 1, %632
  br i1 %633, label %634, label %635

634:                                              ; preds = %631
  call void @abort() #3
  unreachable

635:                                              ; preds = %631
  %636 = call i32 @my_clzll(i64 noundef 1)
  %637 = icmp ne i32 63, %636
  br i1 %637, label %638, label %639

638:                                              ; preds = %635
  call void @abort() #3
  unreachable

639:                                              ; preds = %635
  %640 = call i32 @my_ctzll(i64 noundef 1)
  %641 = icmp ne i32 0, %640
  br i1 %641, label %642, label %643

642:                                              ; preds = %639
  call void @abort() #3
  unreachable

643:                                              ; preds = %639
  %644 = call i32 @my_clrsbll(i64 noundef 1)
  %645 = icmp ne i32 62, %644
  br i1 %645, label %646, label %647

646:                                              ; preds = %643
  call void @abort() #3
  unreachable

647:                                              ; preds = %643
  %648 = call i32 @my_popcountll(i64 noundef 1)
  %649 = icmp ne i32 1, %648
  br i1 %649, label %650, label %651

650:                                              ; preds = %647
  call void @abort() #3
  unreachable

651:                                              ; preds = %647
  %652 = call i32 @my_parityll(i64 noundef 1)
  %653 = icmp ne i32 1, %652
  br i1 %653, label %654, label %655

654:                                              ; preds = %651
  call void @abort() #3
  unreachable

655:                                              ; preds = %651
  %656 = call i32 @my_ffsll(i64 noundef -9223372036854775808)
  %657 = icmp ne i32 64, %656
  br i1 %657, label %658, label %659

658:                                              ; preds = %655
  call void @abort() #3
  unreachable

659:                                              ; preds = %655
  %660 = call i32 @my_clzll(i64 noundef -9223372036854775808)
  %661 = icmp ne i32 0, %660
  br i1 %661, label %662, label %663

662:                                              ; preds = %659
  call void @abort() #3
  unreachable

663:                                              ; preds = %659
  %664 = call i32 @my_ctzll(i64 noundef -9223372036854775808)
  %665 = icmp ne i32 63, %664
  br i1 %665, label %666, label %667

666:                                              ; preds = %663
  call void @abort() #3
  unreachable

667:                                              ; preds = %663
  %668 = call i32 @my_clrsbll(i64 noundef -9223372036854775808)
  %669 = icmp ne i32 0, %668
  br i1 %669, label %670, label %671

670:                                              ; preds = %667
  call void @abort() #3
  unreachable

671:                                              ; preds = %667
  %672 = call i32 @my_popcountll(i64 noundef -9223372036854775808)
  %673 = icmp ne i32 1, %672
  br i1 %673, label %674, label %675

674:                                              ; preds = %671
  call void @abort() #3
  unreachable

675:                                              ; preds = %671
  %676 = call i32 @my_parityll(i64 noundef -9223372036854775808)
  %677 = icmp ne i32 1, %676
  br i1 %677, label %678, label %679

678:                                              ; preds = %675
  call void @abort() #3
  unreachable

679:                                              ; preds = %675
  %680 = call i32 @my_ffsll(i64 noundef 2)
  %681 = icmp ne i32 2, %680
  br i1 %681, label %682, label %683

682:                                              ; preds = %679
  call void @abort() #3
  unreachable

683:                                              ; preds = %679
  %684 = call i32 @my_clzll(i64 noundef 2)
  %685 = icmp ne i32 62, %684
  br i1 %685, label %686, label %687

686:                                              ; preds = %683
  call void @abort() #3
  unreachable

687:                                              ; preds = %683
  %688 = call i32 @my_ctzll(i64 noundef 2)
  %689 = icmp ne i32 1, %688
  br i1 %689, label %690, label %691

690:                                              ; preds = %687
  call void @abort() #3
  unreachable

691:                                              ; preds = %687
  %692 = call i32 @my_clrsbll(i64 noundef 2)
  %693 = icmp ne i32 61, %692
  br i1 %693, label %694, label %695

694:                                              ; preds = %691
  call void @abort() #3
  unreachable

695:                                              ; preds = %691
  %696 = call i32 @my_popcountll(i64 noundef 2)
  %697 = icmp ne i32 1, %696
  br i1 %697, label %698, label %699

698:                                              ; preds = %695
  call void @abort() #3
  unreachable

699:                                              ; preds = %695
  %700 = call i32 @my_parityll(i64 noundef 2)
  %701 = icmp ne i32 1, %700
  br i1 %701, label %702, label %703

702:                                              ; preds = %699
  call void @abort() #3
  unreachable

703:                                              ; preds = %699
  %704 = call i32 @my_ffsll(i64 noundef 4611686018427387904)
  %705 = icmp ne i32 63, %704
  br i1 %705, label %706, label %707

706:                                              ; preds = %703
  call void @abort() #3
  unreachable

707:                                              ; preds = %703
  %708 = call i32 @my_clzll(i64 noundef 4611686018427387904)
  %709 = icmp ne i32 1, %708
  br i1 %709, label %710, label %711

710:                                              ; preds = %707
  call void @abort() #3
  unreachable

711:                                              ; preds = %707
  %712 = call i32 @my_ctzll(i64 noundef 4611686018427387904)
  %713 = icmp ne i32 62, %712
  br i1 %713, label %714, label %715

714:                                              ; preds = %711
  call void @abort() #3
  unreachable

715:                                              ; preds = %711
  %716 = call i32 @my_clrsbll(i64 noundef 4611686018427387904)
  %717 = icmp ne i32 0, %716
  br i1 %717, label %718, label %719

718:                                              ; preds = %715
  call void @abort() #3
  unreachable

719:                                              ; preds = %715
  %720 = call i32 @my_popcountll(i64 noundef 4611686018427387904)
  %721 = icmp ne i32 1, %720
  br i1 %721, label %722, label %723

722:                                              ; preds = %719
  call void @abort() #3
  unreachable

723:                                              ; preds = %719
  %724 = call i32 @my_parityll(i64 noundef 4611686018427387904)
  %725 = icmp ne i32 1, %724
  br i1 %725, label %726, label %727

726:                                              ; preds = %723
  call void @abort() #3
  unreachable

727:                                              ; preds = %723
  %728 = call i32 @my_ffsll(i64 noundef 4294967296)
  %729 = icmp ne i32 33, %728
  br i1 %729, label %730, label %731

730:                                              ; preds = %727
  call void @abort() #3
  unreachable

731:                                              ; preds = %727
  %732 = call i32 @my_clzll(i64 noundef 4294967296)
  %733 = icmp ne i32 31, %732
  br i1 %733, label %734, label %735

734:                                              ; preds = %731
  call void @abort() #3
  unreachable

735:                                              ; preds = %731
  %736 = call i32 @my_ctzll(i64 noundef 4294967296)
  %737 = icmp ne i32 32, %736
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  call void @abort() #3
  unreachable

739:                                              ; preds = %735
  %740 = call i32 @my_clrsbll(i64 noundef 4294967296)
  %741 = icmp ne i32 30, %740
  br i1 %741, label %742, label %743

742:                                              ; preds = %739
  call void @abort() #3
  unreachable

743:                                              ; preds = %739
  %744 = call i32 @my_popcountll(i64 noundef 4294967296)
  %745 = icmp ne i32 1, %744
  br i1 %745, label %746, label %747

746:                                              ; preds = %743
  call void @abort() #3
  unreachable

747:                                              ; preds = %743
  %748 = call i32 @my_parityll(i64 noundef 4294967296)
  %749 = icmp ne i32 1, %748
  br i1 %749, label %750, label %751

750:                                              ; preds = %747
  call void @abort() #3
  unreachable

751:                                              ; preds = %747
  %752 = call i32 @my_ffsll(i64 noundef 2147483648)
  %753 = icmp ne i32 32, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %751
  call void @abort() #3
  unreachable

755:                                              ; preds = %751
  %756 = call i32 @my_clzll(i64 noundef 2147483648)
  %757 = icmp ne i32 32, %756
  br i1 %757, label %758, label %759

758:                                              ; preds = %755
  call void @abort() #3
  unreachable

759:                                              ; preds = %755
  %760 = call i32 @my_ctzll(i64 noundef 2147483648)
  %761 = icmp ne i32 31, %760
  br i1 %761, label %762, label %763

762:                                              ; preds = %759
  call void @abort() #3
  unreachable

763:                                              ; preds = %759
  %764 = call i32 @my_clrsbll(i64 noundef 2147483648)
  %765 = icmp ne i32 31, %764
  br i1 %765, label %766, label %767

766:                                              ; preds = %763
  call void @abort() #3
  unreachable

767:                                              ; preds = %763
  %768 = call i32 @my_popcountll(i64 noundef 2147483648)
  %769 = icmp ne i32 1, %768
  br i1 %769, label %770, label %771

770:                                              ; preds = %767
  call void @abort() #3
  unreachable

771:                                              ; preds = %767
  %772 = call i32 @my_parityll(i64 noundef 2147483648)
  %773 = icmp ne i32 1, %772
  br i1 %773, label %774, label %775

774:                                              ; preds = %771
  call void @abort() #3
  unreachable

775:                                              ; preds = %771
  %776 = call i32 @my_ffsll(i64 noundef -6510615555426900571)
  %777 = icmp ne i32 1, %776
  br i1 %777, label %778, label %779

778:                                              ; preds = %775
  call void @abort() #3
  unreachable

779:                                              ; preds = %775
  %780 = call i32 @my_clzll(i64 noundef -6510615555426900571)
  %781 = icmp ne i32 0, %780
  br i1 %781, label %782, label %783

782:                                              ; preds = %779
  call void @abort() #3
  unreachable

783:                                              ; preds = %779
  %784 = call i32 @my_ctzll(i64 noundef -6510615555426900571)
  %785 = icmp ne i32 0, %784
  br i1 %785, label %786, label %787

786:                                              ; preds = %783
  call void @abort() #3
  unreachable

787:                                              ; preds = %783
  %788 = call i32 @my_clrsbll(i64 noundef -6510615555426900571)
  %789 = icmp ne i32 0, %788
  br i1 %789, label %790, label %791

790:                                              ; preds = %787
  call void @abort() #3
  unreachable

791:                                              ; preds = %787
  %792 = call i32 @my_popcountll(i64 noundef -6510615555426900571)
  %793 = icmp ne i32 32, %792
  br i1 %793, label %794, label %795

794:                                              ; preds = %791
  call void @abort() #3
  unreachable

795:                                              ; preds = %791
  %796 = call i32 @my_parityll(i64 noundef -6510615555426900571)
  %797 = icmp ne i32 0, %796
  br i1 %797, label %798, label %799

798:                                              ; preds = %795
  call void @abort() #3
  unreachable

799:                                              ; preds = %795
  %800 = call i32 @my_ffsll(i64 noundef 6510615555426900570)
  %801 = icmp ne i32 2, %800
  br i1 %801, label %802, label %803

802:                                              ; preds = %799
  call void @abort() #3
  unreachable

803:                                              ; preds = %799
  %804 = call i32 @my_clzll(i64 noundef 6510615555426900570)
  %805 = icmp ne i32 1, %804
  br i1 %805, label %806, label %807

806:                                              ; preds = %803
  call void @abort() #3
  unreachable

807:                                              ; preds = %803
  %808 = call i32 @my_ctzll(i64 noundef 6510615555426900570)
  %809 = icmp ne i32 1, %808
  br i1 %809, label %810, label %811

810:                                              ; preds = %807
  call void @abort() #3
  unreachable

811:                                              ; preds = %807
  %812 = call i32 @my_clrsbll(i64 noundef 6510615555426900570)
  %813 = icmp ne i32 0, %812
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  call void @abort() #3
  unreachable

815:                                              ; preds = %811
  %816 = call i32 @my_popcountll(i64 noundef 6510615555426900570)
  %817 = icmp ne i32 32, %816
  br i1 %817, label %818, label %819

818:                                              ; preds = %815
  call void @abort() #3
  unreachable

819:                                              ; preds = %815
  %820 = call i32 @my_parityll(i64 noundef 6510615555426900570)
  %821 = icmp ne i32 0, %820
  br i1 %821, label %822, label %823

822:                                              ; preds = %819
  call void @abort() #3
  unreachable

823:                                              ; preds = %819
  %824 = call i32 @my_ffsll(i64 noundef -3819392241693097984)
  %825 = icmp ne i32 34, %824
  br i1 %825, label %826, label %827

826:                                              ; preds = %823
  call void @abort() #3
  unreachable

827:                                              ; preds = %823
  %828 = call i32 @my_clzll(i64 noundef -3819392241693097984)
  %829 = icmp ne i32 0, %828
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  call void @abort() #3
  unreachable

831:                                              ; preds = %827
  %832 = call i32 @my_ctzll(i64 noundef -3819392241693097984)
  %833 = icmp ne i32 33, %832
  br i1 %833, label %834, label %835

834:                                              ; preds = %831
  call void @abort() #3
  unreachable

835:                                              ; preds = %831
  %836 = call i32 @my_clrsbll(i64 noundef -3819392241693097984)
  %837 = icmp ne i32 1, %836
  br i1 %837, label %838, label %839

838:                                              ; preds = %835
  call void @abort() #3
  unreachable

839:                                              ; preds = %835
  %840 = call i32 @my_popcountll(i64 noundef -3819392241693097984)
  %841 = icmp ne i32 22, %840
  br i1 %841, label %842, label %843

842:                                              ; preds = %839
  call void @abort() #3
  unreachable

843:                                              ; preds = %839
  %844 = call i32 @my_parityll(i64 noundef -3819392241693097984)
  %845 = icmp ne i32 0, %844
  br i1 %845, label %846, label %847

846:                                              ; preds = %843
  call void @abort() #3
  unreachable

847:                                              ; preds = %843
  %848 = call i32 @my_ffsll(i64 noundef 223195676147712)
  %849 = icmp ne i32 18, %848
  br i1 %849, label %850, label %851

850:                                              ; preds = %847
  call void @abort() #3
  unreachable

851:                                              ; preds = %847
  %852 = call i32 @my_clzll(i64 noundef 223195676147712)
  %853 = icmp ne i32 16, %852
  br i1 %853, label %854, label %855

854:                                              ; preds = %851
  call void @abort() #3
  unreachable

855:                                              ; preds = %851
  %856 = call i32 @my_ctzll(i64 noundef 223195676147712)
  %857 = icmp ne i32 17, %856
  br i1 %857, label %858, label %859

858:                                              ; preds = %855
  call void @abort() #3
  unreachable

859:                                              ; preds = %855
  %860 = call i32 @my_clrsbll(i64 noundef 223195676147712)
  %861 = icmp ne i32 15, %860
  br i1 %861, label %862, label %863

862:                                              ; preds = %859
  call void @abort() #3
  unreachable

863:                                              ; preds = %859
  %864 = call i32 @my_popcountll(i64 noundef 223195676147712)
  %865 = icmp ne i32 22, %864
  br i1 %865, label %866, label %867

866:                                              ; preds = %863
  call void @abort() #3
  unreachable

867:                                              ; preds = %863
  %868 = call i32 @my_parityll(i64 noundef 223195676147712)
  %869 = icmp ne i32 0, %868
  br i1 %869, label %870, label %871

870:                                              ; preds = %867
  call void @abort() #3
  unreachable

871:                                              ; preds = %867
  %872 = call i32 @my_ffsll(i64 noundef 3405695742)
  %873 = icmp ne i32 2, %872
  br i1 %873, label %874, label %875

874:                                              ; preds = %871
  call void @abort() #3
  unreachable

875:                                              ; preds = %871
  %876 = call i32 @my_clzll(i64 noundef 3405695742)
  %877 = icmp ne i32 32, %876
  br i1 %877, label %878, label %879

878:                                              ; preds = %875
  call void @abort() #3
  unreachable

879:                                              ; preds = %875
  %880 = call i32 @my_ctzll(i64 noundef 3405695742)
  %881 = icmp ne i32 1, %880
  br i1 %881, label %882, label %883

882:                                              ; preds = %879
  call void @abort() #3
  unreachable

883:                                              ; preds = %879
  %884 = call i32 @my_clrsbll(i64 noundef 3405695742)
  %885 = icmp ne i32 31, %884
  br i1 %885, label %886, label %887

886:                                              ; preds = %883
  call void @abort() #3
  unreachable

887:                                              ; preds = %883
  %888 = call i32 @my_popcountll(i64 noundef 3405695742)
  %889 = icmp ne i32 22, %888
  br i1 %889, label %890, label %891

890:                                              ; preds = %887
  call void @abort() #3
  unreachable

891:                                              ; preds = %887
  %892 = call i32 @my_parityll(i64 noundef 3405695742)
  %893 = icmp ne i32 0, %892
  br i1 %893, label %894, label %895

894:                                              ; preds = %891
  call void @abort() #3
  unreachable

895:                                              ; preds = %891
  %896 = call i32 @my_ffsll(i64 noundef -1)
  %897 = icmp ne i32 1, %896
  br i1 %897, label %898, label %899

898:                                              ; preds = %895
  call void @abort() #3
  unreachable

899:                                              ; preds = %895
  %900 = call i32 @my_clzll(i64 noundef -1)
  %901 = icmp ne i32 0, %900
  br i1 %901, label %902, label %903

902:                                              ; preds = %899
  call void @abort() #3
  unreachable

903:                                              ; preds = %899
  %904 = call i32 @my_ctzll(i64 noundef -1)
  %905 = icmp ne i32 0, %904
  br i1 %905, label %906, label %907

906:                                              ; preds = %903
  call void @abort() #3
  unreachable

907:                                              ; preds = %903
  %908 = call i32 @my_clrsbll(i64 noundef -1)
  %909 = icmp ne i32 63, %908
  br i1 %909, label %910, label %911

910:                                              ; preds = %907
  call void @abort() #3
  unreachable

911:                                              ; preds = %907
  %912 = call i32 @my_popcountll(i64 noundef -1)
  %913 = icmp ne i32 64, %912
  br i1 %913, label %914, label %915

914:                                              ; preds = %911
  call void @abort() #3
  unreachable

915:                                              ; preds = %911
  %916 = call i32 @my_parityll(i64 noundef -1)
  %917 = icmp ne i32 0, %916
  br i1 %917, label %918, label %919

918:                                              ; preds = %915
  call void @abort() #3
  unreachable

919:                                              ; preds = %915
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!30, !5}
!30 = distinct !{!31, !5}
!32 = distinct !{!33, !5}
!33 = distinct !{!34, !5}
!34 = distinct !{!35, !5}
!35 = distinct !{!36, !5}
!36 = distinct !{!37, !5}
!37 = distinct !{!38, !5}
!38 = distinct !{!39, !5}
!40 = distinct !{!41, !5}
!41 = distinct !{!42, !5}
!42 = distinct !{!43, !5}
!43 = distinct !{!44, !5}
!44 = distinct !{!45, !5}
!45 = distinct !{!46, !5}
!46 = distinct !{!47, !5}
!47 = distinct !{!48, !5}
!48 = distinct !{!49, !5}
!50 = distinct !{!51, !5}
!51 = distinct !{!52, !5}
!52 = distinct !{!53, !5}
!53 = distinct !{!54, !5}
!54 = distinct !{!55, !5}
!55 = distinct !{!56, !5}
!56 = distinct !{!57, !5}
!57 = distinct !{!58, !5}
!58 = distinct !{!59, !5}
!59 = distinct !{!60, !5}
!60 = distinct !{!61, !5}
!61 = distinct !{!62, !5}
!62 = distinct !{!63, !5}
!63 = distinct !{!64, !5}
!64 = distinct !{!65, !5}
!65 = distinct !{!66, !5}
!66 = distinct !{!67, !5}
!67 = distinct !{!68, !5}
!68 = distinct !{!69, !5}
!69 = distinct !{!70, !5}
!70 = distinct !{!71, !5}
!71 = distinct !{!72, !5}
!72 = distinct !{!73, !5}
!73 = distinct !{!74, !5}
!74 = distinct !{!75, !5}
!75 = distinct !{!76, !5}
!76 = distinct !{!77, !5}
!77 = distinct !{!78, !5}
!78 = distinct !{!79, !5}
!79 = distinct !{!80, !5}
!80 = distinct !{!81, !5}
!81 = distinct !{!82, !5}
!82 = distinct !{!83, !5}
!83 = distinct !{!84, !5}
!84 = distinct !{!85, !5}
!85 = distinct !{!86, !5}
!86 = distinct !{!87, !5}
!87 = distinct !{!88, !5}
!88 = distinct !{!89, !5}
!89 = distinct !{!90, !5}
!90 = distinct !{!91, !5}
!91 = distinct !{!92, !5}
!92 = distinct !{!93, !5}
!93 = distinct !{!94, !5}
!94 = distinct !{!95, !5}
!95 = distinct !{!96, !5}
!96 = distinct !{!97, !5}
!97 = distinct !{!98, !5}
!98 = distinct !{!99, !5}
!99 = distinct !{!100, !5}
!100 = distinct !{!101, !5}
!101 = distinct !{!102, !5}
!102 = distinct !{!103, !5}
!103 = distinct !{!104, !5}
!104 = distinct !{!105, !5}
!105 = distinct !{!106, !5}
!106 = distinct !{!107, !5}
!107 = distinct !{!108, !5}
!108 = distinct !{!109, !5}
!109 = distinct !{!110, !5}
!110 = distinct !{!111, !5}
!111 = distinct !{!112, !5}
!112 = distinct !{!113, !5}
!113 = distinct !{!114, !5}
!114 = distinct !{!115, !5}
!115 = distinct !{!116, !5}
!116 = distinct !{!117, !5}
!117 = distinct !{!118, !5}
!118 = distinct !{!119, !5}
!119 = distinct !{!120, !5}
!120 = distinct !{!121, !5}
!121 = distinct !{!122, !5}
!122 = distinct !{!123, !5}
!123 = distinct !{!124, !5}
!124 = distinct !{!125, !5}
!125 = distinct !{!126, !5}
!126 = distinct !{!127, !5}
!127 = distinct !{!128, !5}
!128 = distinct !{!129, !5}
!129 = distinct !{!130, !5}
!130 = distinct !{!131, !5}
!131 = distinct !{!132, !5}
!132 = distinct !{!133, !5}
!133 = distinct !{!134, !5}
!134 = distinct !{!135, !5}
!135 = distinct !{!136, !5}
!136 = distinct !{!137, !5}
!137 = distinct !{!138, !5}
!138 = distinct !{!139, !5}
!139 = distinct !{!140, !5}
!140 = distinct !{!141, !5}
!141 = distinct !{!142, !5}
!142 = distinct !{!143, !5}
!143 = distinct !{!144, !5}
!144 = distinct !{!145, !5}
!145 = distinct !{!146, !5}
!146 = distinct !{!147, !5}
!147 = distinct !{!148, !5}
!148 = distinct !{!149, !5}
!149 = distinct !{!150, !5}
!150 = distinct !{!151, !5}
!151 = distinct !{!152, !5}
!152 = distinct !{!153, !5}
!153 = distinct !{!154, !5}
!154 = distinct !{!155, !5}
!155 = distinct !{!156, !5}
!156 = distinct !{!157, !5}
