; ModuleID = './pr51581-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr51581-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local global [4096 x i32] zeroinitializer, align 16
@c = dso_local global [4096 x i32] zeroinitializer, align 16
@b = dso_local global [4096 x i32] zeroinitializer, align 16
@d = dso_local global [4096 x i32] zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f1() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %6, 3
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f2() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = urem i32 %6, 3
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !6

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f3() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %6, 18
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f4() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = urem i32 %6, 18
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !8

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f5() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = srem i32 %6, 19
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !9

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f6() #0 {
  br label %1

1:                                                ; preds = %10, %0
  %.0 = phi i32 [ 0, %0 ], [ %11, %10 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %12

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = urem i32 %6, 19
  %8 = zext i32 %.0 to i64
  %9 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %8
  store i32 %7, i32* %9, align 4
  br label %10

10:                                               ; preds = %3
  %11 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !10

12:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f7() #0 {
  br label %1

1:                                                ; preds = %21, %0
  %.0 = phi i32 [ 0, %0 ], [ %22, %21 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %23

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 1431655766
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %.neg = lshr i32 %13, 31
  %14 = add i32 %.neg, %10
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %.neg1 = mul i32 %14, -3
  %18 = add i32 %.neg1, %17
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %19
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %3
  %22 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

23:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f8() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, 2863311531
  %sum.shift = lshr i64 %8, 33
  %9 = trunc i64 %sum.shift to i32
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %.neg = mul i32 %9, -3
  %13 = add i32 %.neg, %12
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %14
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !12

18:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f9() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 954437177
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  %11 = ashr i32 %10, 2
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %.neg = lshr i32 %14, 31
  %15 = add nsw i32 %.neg, %11
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %.neg1 = mul i32 %15, -18
  %19 = add i32 %.neg1, %18
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %20
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %3
  %23 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !13

24:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f10() #0 {
  br label %1

1:                                                ; preds = %16, %0
  %.0 = phi i32 [ 0, %0 ], [ %17, %16 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %18

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw nsw i64 %7, 954437177
  %sum.shift = lshr i64 %8, 34
  %9 = trunc i64 %sum.shift to i32
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %.neg = mul i32 %9, -18
  %13 = add i32 %.neg, %12
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %14
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %3
  %17 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !14

18:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f11() #0 {
  br label %1

1:                                                ; preds = %22, %0
  %.0 = phi i32 [ 0, %0 ], [ %23, %22 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 1808407283
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  %11 = ashr i32 %10, 3
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %.neg = lshr i32 %14, 31
  %15 = add nsw i32 %.neg, %11
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %.neg1 = mul i32 %15, -19
  %19 = add i32 %.neg1, %18
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %20
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %3
  %23 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !15

24:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @f12() #0 {
  br label %1

1:                                                ; preds = %24, %0
  %.0 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, 2938661835
  %9 = lshr i64 %8, 32
  %10 = trunc i64 %9 to i32
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %13, %10
  %15 = lshr i32 %14, 1
  %16 = add i32 %15, %10
  %17 = lshr i32 %16, 4
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %.neg = mul i32 %17, -19
  %21 = add i32 %.neg, %20
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %22
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %3
  %25 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !16

26:                                               ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %9, %0
  %.0 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %2 = icmp ult i32 %.0, 4096
  br i1 %2, label %3, label %11

3:                                                ; preds = %1
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !17
  %4 = add nsw i32 %.0, -2048
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %5
  store i32 %4, i32* %6, align 4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %7
  store i32 %.0, i32* %8, align 4
  br label %9

9:                                                ; preds = %3
  %10 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !18

11:                                               ; preds = %1
  store i32 -2147483648, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 0), align 16
  store i32 -2147483647, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 1), align 4
  store i32 2147483647, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @a, i64 0, i64 4095), align 4
  store i32 -1, i32* getelementptr inbounds ([4096 x i32], [4096 x i32]* @b, i64 0, i64 4095), align 4
  call void @f1()
  call void @f2()
  br label %12

12:                                               ; preds = %32, %11
  %.1 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %13 = icmp ult i32 %.1, 4096
  br i1 %13, label %14, label %34

14:                                               ; preds = %12
  %15 = zext i32 %.1 to i64
  %16 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = zext i32 %.1 to i64
  %19 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 3
  %.not10 = icmp eq i32 %17, %21
  br i1 %.not10, label %22, label %30

22:                                               ; preds = %14
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = urem i32 %28, 3
  %.not11 = icmp eq i32 %25, %29
  br i1 %.not11, label %31, label %30

30:                                               ; preds = %22, %14
  call void @abort() #4
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !19

34:                                               ; preds = %12
  call void @f3()
  call void @f4()
  br label %35

35:                                               ; preds = %55, %34
  %.2 = phi i32 [ 0, %34 ], [ %56, %55 ]
  %36 = icmp ult i32 %.2, 4096
  br i1 %36, label %37, label %57

37:                                               ; preds = %35
  %38 = zext i32 %.2 to i64
  %39 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %.2 to i64
  %42 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %43, 18
  %.not8 = icmp eq i32 %40, %44
  br i1 %.not8, label %45, label %53

45:                                               ; preds = %37
  %46 = zext i32 %.2 to i64
  %47 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %.2 to i64
  %50 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = urem i32 %51, 18
  %.not9 = icmp eq i32 %48, %52
  br i1 %.not9, label %54, label %53

53:                                               ; preds = %45, %37
  call void @abort() #4
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.2, 1
  br label %35, !llvm.loop !20

57:                                               ; preds = %35
  call void @f5()
  call void @f6()
  br label %58

58:                                               ; preds = %78, %57
  %.3 = phi i32 [ 0, %57 ], [ %79, %78 ]
  %59 = icmp ult i32 %.3, 4096
  br i1 %59, label %60, label %80

60:                                               ; preds = %58
  %61 = zext i32 %.3 to i64
  %62 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = zext i32 %.3 to i64
  %65 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %66, 19
  %.not6 = icmp eq i32 %63, %67
  br i1 %.not6, label %68, label %76

68:                                               ; preds = %60
  %69 = zext i32 %.3 to i64
  %70 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = zext i32 %.3 to i64
  %73 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = urem i32 %74, 19
  %.not7 = icmp eq i32 %71, %75
  br i1 %.not7, label %77, label %76

76:                                               ; preds = %68, %60
  call void @abort() #4
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.3, 1
  br label %58, !llvm.loop !21

80:                                               ; preds = %58
  call void @f7()
  call void @f8()
  br label %81

81:                                               ; preds = %101, %80
  %.4 = phi i32 [ 0, %80 ], [ %102, %101 ]
  %82 = icmp ult i32 %.4, 4096
  br i1 %82, label %83, label %103

83:                                               ; preds = %81
  %84 = zext i32 %.4 to i64
  %85 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %.4 to i64
  %88 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = srem i32 %89, 3
  %.not4 = icmp eq i32 %86, %90
  br i1 %.not4, label %91, label %99

91:                                               ; preds = %83
  %92 = zext i32 %.4 to i64
  %93 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %.4 to i64
  %96 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = urem i32 %97, 3
  %.not5 = icmp eq i32 %94, %98
  br i1 %.not5, label %100, label %99

99:                                               ; preds = %91, %83
  call void @abort() #4
  br label %UnifiedUnreachableBlock

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %.4, 1
  br label %81, !llvm.loop !22

103:                                              ; preds = %81
  call void @f9()
  call void @f10()
  br label %104

104:                                              ; preds = %124, %103
  %.5 = phi i32 [ 0, %103 ], [ %125, %124 ]
  %105 = icmp ult i32 %.5, 4096
  br i1 %105, label %106, label %126

106:                                              ; preds = %104
  %107 = zext i32 %.5 to i64
  %108 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %.5 to i64
  %111 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = srem i32 %112, 18
  %.not2 = icmp eq i32 %109, %113
  br i1 %.not2, label %114, label %122

114:                                              ; preds = %106
  %115 = zext i32 %.5 to i64
  %116 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %.5 to i64
  %119 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = urem i32 %120, 18
  %.not3 = icmp eq i32 %117, %121
  br i1 %.not3, label %123, label %122

122:                                              ; preds = %114, %106
  call void @abort() #4
  br label %UnifiedUnreachableBlock

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %.5, 1
  br label %104, !llvm.loop !23

126:                                              ; preds = %104
  call void @f11()
  call void @f12()
  br label %127

127:                                              ; preds = %147, %126
  %.6 = phi i32 [ 0, %126 ], [ %148, %147 ]
  %128 = icmp ult i32 %.6, 4096
  br i1 %128, label %129, label %149

129:                                              ; preds = %127
  %130 = zext i32 %.6 to i64
  %131 = getelementptr inbounds [4096 x i32], [4096 x i32]* @c, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %.6 to i64
  %134 = getelementptr inbounds [4096 x i32], [4096 x i32]* @a, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = srem i32 %135, 19
  %.not = icmp eq i32 %132, %136
  br i1 %.not, label %137, label %145

137:                                              ; preds = %129
  %138 = zext i32 %.6 to i64
  %139 = getelementptr inbounds [4096 x i32], [4096 x i32]* @d, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %.6 to i64
  %142 = getelementptr inbounds [4096 x i32], [4096 x i32]* @b, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = urem i32 %143, 19
  %.not1 = icmp eq i32 %140, %144
  br i1 %.not1, label %146, label %145

145:                                              ; preds = %137, %129
  call void @abort() #4
  br label %UnifiedUnreachableBlock

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146
  %148 = add nuw nsw i32 %.6, 1
  br label %127, !llvm.loop !24

149:                                              ; preds = %127
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %145, %122, %99, %76, %53, %30
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

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
