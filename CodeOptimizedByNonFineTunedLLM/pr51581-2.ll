; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51581-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51581-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [4096 x i32] zeroinitializer, align 16
@c = dso_local global [4096 x i32] zeroinitializer, align 16
@b = dso_local global [4096 x i32] zeroinitializer, align 16
@d = dso_local global [4096 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = srem i32 %9, 3
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !4

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = urem i32 %9, 3
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !6

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = srem i32 %9, 18
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !7

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = urem i32 %9, 18
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !8

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = srem i32 %9, 19
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !9

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 4096
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = urem i32 %9, 19
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %12
  store i32 %10, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !10

17:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 1431655766
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 31
  %20 = sub nsw i32 %14, %19
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %25, 3
  %27 = sub nsw i32 %24, %26
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %29
  store i32 %27, i32* %30, align 4
  br label %31

31:                                               ; preds = %6
  %32 = load i32, i32* %1, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %1, align 4
  br label %3, !llvm.loop !11

34:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 2863311531
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = lshr i32 %14, 1
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = mul i32 %20, 3
  %22 = sub i32 %19, %21
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3, !llvm.loop !12

29:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f9() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 954437177
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = ashr i32 %14, 2
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 31
  %21 = sub nsw i32 %15, %20
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %26, 18
  %28 = sub nsw i32 %25, %27
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3, !llvm.loop !13

35:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %26, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %29

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 954437177
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = lshr i32 %14, 2
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = mul i32 %20, 18
  %22 = sub i32 %19, %21
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %1, align 4
  br label %3, !llvm.loop !14

29:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %32, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %35

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 %11, 1808407283
  %13 = lshr i64 %12, 32
  %14 = trunc i64 %13 to i32
  %15 = ashr i32 %14, 3
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 31
  %21 = sub nsw i32 %15, %20
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %2, align 4
  %27 = mul nsw i32 %26, 19
  %28 = sub nsw i32 %25, %27
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %6
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %3, !llvm.loop !15

35:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %36, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 4096
  br i1 %6, label %7, label %39

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 2938661835
  %14 = lshr i64 %13, 32
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sub i32 %19, %20
  %22 = lshr i32 %21, 1
  %23 = load i32, i32* %2, align 4
  %24 = add i32 %22, %23
  %25 = lshr i32 %24, 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = mul i32 %30, 19
  %32 = sub i32 %29, %31
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %34
  store i32 %32, i32* %35, align 4
  br label %36

36:                                               ; preds = %7
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %4, !llvm.loop !16

39:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 4096
  br i1 %5, label %6, label %19

6:                                                ; preds = %3
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !17
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 2048
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %14
  store i32 %12, i32* %15, align 4
  br label %16

16:                                               ; preds = %6
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %3, !llvm.loop !18

19:                                               ; preds = %3
  store i32 -2147483648, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 0), align 16
  store i32 -2147483647, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 1), align 4
  store i32 2147483647, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4095), align 4
  store i32 -1, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @b, i64 0, i64 4095), align 4
  call void @f1()
  call void @f2()
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %2, align 4
  %22 = icmp slt i32 %21, 4096
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %31, 3
  %33 = icmp ne i32 %27, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = urem i32 %42, 3
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %34, %23
  call void @abort() #3
  unreachable

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %20, !llvm.loop !19

50:                                               ; preds = %20
  call void @f3()
  call void @f4()
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %2, align 4
  %53 = icmp slt i32 %52, 4096
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %62, 18
  %64 = icmp ne i32 %58, %63
  br i1 %64, label %76, label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = urem i32 %73, 18
  %75 = icmp ne i32 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65, %54
  call void @abort() #3
  unreachable

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %51, !llvm.loop !20

81:                                               ; preds = %51
  call void @f5()
  call void @f6()
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %109, %81
  %83 = load i32, i32* %2, align 4
  %84 = icmp slt i32 %83, 4096
  br i1 %84, label %85, label %112

85:                                               ; preds = %82
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = srem i32 %93, 19
  %95 = icmp ne i32 %89, %94
  br i1 %95, label %107, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = urem i32 %104, 19
  %106 = icmp ne i32 %100, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96, %85
  call void @abort() #3
  unreachable

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %2, align 4
  br label %82, !llvm.loop !21

112:                                              ; preds = %82
  call void @f7()
  call void @f8()
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %2, align 4
  %115 = icmp slt i32 %114, 4096
  br i1 %115, label %116, label %143

116:                                              ; preds = %113
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %124, 3
  %126 = icmp ne i32 %120, %125
  br i1 %126, label %138, label %127

127:                                              ; preds = %116
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = urem i32 %135, 3
  %137 = icmp ne i32 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %127, %116
  call void @abort() #3
  unreachable

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %2, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %2, align 4
  br label %113, !llvm.loop !22

143:                                              ; preds = %113
  call void @f9()
  call void @f10()
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %171, %143
  %145 = load i32, i32* %2, align 4
  %146 = icmp slt i32 %145, 4096
  br i1 %146, label %147, label %174

147:                                              ; preds = %144
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = srem i32 %155, 18
  %157 = icmp ne i32 %151, %156
  br i1 %157, label %169, label %158

158:                                              ; preds = %147
  %159 = load i32, i32* %2, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %2, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = urem i32 %166, 18
  %168 = icmp ne i32 %162, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %158, %147
  call void @abort() #3
  unreachable

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %144, !llvm.loop !23

174:                                              ; preds = %144
  call void @f11()
  call void @f12()
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %202, %174
  %176 = load i32, i32* %2, align 4
  %177 = icmp slt i32 %176, 4096
  br i1 %177, label %178, label %205

178:                                              ; preds = %175
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = srem i32 %186, 19
  %188 = icmp ne i32 %182, %187
  br i1 %188, label %200, label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %2, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = urem i32 %197, 19
  %199 = icmp ne i32 %193, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %189, %178
  call void @abort() #3
  unreachable

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %2, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %2, align 4
  br label %175, !llvm.loop !24

205:                                              ; preds = %175
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }
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
!17 = !{i64 2288}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
