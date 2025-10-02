; ModuleID = './builtin-bitops-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/builtin-bitops-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ints = dso_local global [13 x i32] [i32 0, i32 1, i32 -2147483648, i32 2, i32 1073741824, i32 65536, i32 32768, i32 -1515870811, i32 1515870810, i32 -889323520, i32 13303296, i32 51966, i32 -1], align 16
@longs = dso_local global [13 x i64] [i64 0, i64 1, i64 -9223372036854775808, i64 2, i64 4611686018427387904, i64 4294967296, i64 2147483648, i64 -6510615555426900571, i64 6510615555426900570, i64 -3819392241693097984, i64 223195676147712, i64 3405695742, i64 -1], align 16
@longlongs = dso_local global [13 x i64] [i64 0, i64 1, i64 -9223372036854775808, i64 2, i64 4611686018427387904, i64 4294967296, i64 2147483648, i64 -6510615555426900571, i64 6510615555426900570, i64 -3819392241693097984, i64 223195676147712, i64 3405695742, i64 -1], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ffs(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %16

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %12, %4
  %.01 = phi i32 [ 0, %4 ], [ %13, %12 ]
  %6 = icmp ult i32 %.01, 32
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = shl i32 1, %.01
  %9 = and i32 %8, %0
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %7
  br label %14

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

.loopexit:                                        ; preds = %5
  br label %14

14:                                               ; preds = %.loopexit, %10
  %15 = add nuw nsw i32 %.01, 1
  br label %16

16:                                               ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ctz(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %3 = icmp ult i32 %.0, 32
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = shl i32 1, %.0
  %6 = and i32 %5, %0
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !6

.loopexit:                                        ; preds = %2
  br label %11

11:                                               ; preds = %.loopexit, %7
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clz(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %3 = icmp ult i32 %.0, 32
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = lshr i32 -2147483648, %.0
  %6 = and i32 %5, %0
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %4
  br label %11

8:                                                ; preds = %4
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !7

.loopexit:                                        ; preds = %2
  br label %11

11:                                               ; preds = %.loopexit, %7
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clrsb(i32 noundef %0) #0 {
  %2 = lshr i32 %0, 31
  br label %3

3:                                                ; preds = %11, %1
  %.0 = phi i32 [ 1, %1 ], [ %12, %11 ]
  %4 = icmp ult i32 %.0, 32
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = sub nsw i32 31, %.0
  %7 = lshr i32 %0, %6
  %8 = and i32 %7, 1
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  br label %13

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !8

.loopexit:                                        ; preds = %3
  br label %13

13:                                               ; preds = %.loopexit, %9
  %14 = add nsw i32 %.0, -1
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_popcount(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %10 ]
  %3 = icmp ult i32 %.01, 32
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = shl i32 1, %.01
  %6 = and i32 %5, %0
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1
  br label %9

9:                                                ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %.0, %4 ]
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !9

12:                                               ; preds = %2
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_parity(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.01 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %10 ]
  %3 = icmp ult i32 %.01, 32
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = shl i32 1, %.01
  %6 = and i32 %5, %0
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %9, label %7

7:                                                ; preds = %4
  %8 = add nsw i32 %.0, 1
  br label %9

9:                                                ; preds = %7, %4
  %.1 = phi i32 [ %8, %7 ], [ %.0, %4 ]
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !10

12:                                               ; preds = %2
  %13 = and i32 %.0, 1
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ffsl(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %17

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %6 = icmp ult i32 %.01, 64
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = shl i64 1, %8
  %10 = and i64 %9, %0
  %.not = icmp eq i64 %10, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !11

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  %16 = add nuw nsw i32 %.01, 1
  br label %17

17:                                               ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ctzl(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !12

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %8
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clzl(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = lshr i64 -9223372036854775808, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !13

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %8
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clrsbl(i64 noundef %0) #0 {
  %2 = lshr i64 %0, 63
  br label %3

3:                                                ; preds = %12, %1
  %.0 = phi i32 [ 1, %1 ], [ %13, %12 ]
  %4 = icmp ult i32 %.0, 64
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = sub nsw i64 63, %6
  %8 = lshr i64 %0, %7
  %9 = and i64 %8, 1
  %.not = icmp eq i64 %9, %2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !14

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  %15 = add nsw i32 %.0, -1
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_popcountl(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %11 ]
  %3 = icmp ult i32 %.01, 64
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, 1
  br label %10

10:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !15

13:                                               ; preds = %2
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_parityl(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %11 ]
  %3 = icmp ult i32 %.01, 64
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, 1
  br label %10

10:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !16

13:                                               ; preds = %2
  %14 = and i32 %.0, 1
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ffsll(i64 noundef %0) #0 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %17

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %13, %4
  %.01 = phi i32 [ 0, %4 ], [ %14, %13 ]
  %6 = icmp ult i32 %.01, 64
  br i1 %6, label %7, label %.loopexit

7:                                                ; preds = %5
  %8 = zext i32 %.01 to i64
  %9 = shl i64 1, %8
  %10 = and i64 %9, %0
  %.not = icmp eq i64 %10, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %7
  br label %15

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !17

.loopexit:                                        ; preds = %5
  br label %15

15:                                               ; preds = %.loopexit, %11
  %16 = add nuw nsw i32 %.01, 1
  br label %17

17:                                               ; preds = %15, %3
  %.0 = phi i32 [ 0, %3 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_ctzll(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !18

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %8
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clzll(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = icmp ult i32 %.0, 64
  br i1 %3, label %4, label %.loopexit

4:                                                ; preds = %2
  %5 = zext i32 %.0 to i64
  %6 = lshr i64 -9223372036854775808, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !19

.loopexit:                                        ; preds = %2
  br label %12

12:                                               ; preds = %.loopexit, %8
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_clrsbll(i64 noundef %0) #0 {
  %2 = lshr i64 %0, 63
  br label %3

3:                                                ; preds = %12, %1
  %.0 = phi i32 [ 1, %1 ], [ %13, %12 ]
  %4 = icmp ult i32 %.0, 64
  br i1 %4, label %5, label %.loopexit

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = sub nsw i64 63, %6
  %8 = lshr i64 %0, %7
  %9 = and i64 %8, 1
  %.not = icmp eq i64 %9, %2
  br i1 %.not, label %11, label %10

10:                                               ; preds = %5
  br label %14

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  %13 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !20

.loopexit:                                        ; preds = %3
  br label %14

14:                                               ; preds = %.loopexit, %10
  %15 = add nsw i32 %.0, -1
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_popcountll(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %11 ]
  %3 = icmp ult i32 %.01, 64
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, 1
  br label %10

10:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !21

13:                                               ; preds = %2
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @my_parityll(i64 noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %.01 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %11 ]
  %3 = icmp ult i32 %.01, 64
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = zext i32 %.01 to i64
  %6 = shl i64 1, %5
  %7 = and i64 %6, %0
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %10, label %8

8:                                                ; preds = %4
  %9 = add nsw i32 %.0, 1
  br label %10

10:                                               ; preds = %8, %4
  %.1 = phi i32 [ %9, %8 ], [ %.0, %4 ]
  br label %11

11:                                               ; preds = %10
  %12 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !22

13:                                               ; preds = %2
  %14 = and i32 %.0, 1
  ret i32 %14
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  br label %1

1:                                                ; preds = %78, %0
  %.0 = phi i32 [ 0, %0 ], [ %79, %78 ]
  %2 = icmp ult i32 %.0, 13
  br i1 %2, label %3, label %80

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !23
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %6, 0
  %10 = select i1 %9, i32 0, i32 %8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @my_ffs(i32 noundef %13)
  %.not163 = icmp eq i32 %10, %14
  br i1 %.not163, label %16, label %15

15:                                               ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %3
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %.not164 = icmp eq i32 %19, 0
  br i1 %.not164, label %30, label %20

20:                                               ; preds = %16
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @llvm.ctlz.i32(i32 %23, i1 true), !range !23
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @my_clz(i32 noundef %27)
  %.not171 = icmp eq i32 %24, %28
  br i1 %.not171, label %30, label %29

29:                                               ; preds = %20
  call void @abort() #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %20, %16
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %.not165 = icmp eq i32 %33, 0
  br i1 %.not165, label %44, label %34

34:                                               ; preds = %30
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @llvm.cttz.i32(i32 %37, i1 true), !range !23
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @my_ctz(i32 noundef %41)
  %.not170 = icmp eq i32 %38, %42
  br i1 %.not170, label %44, label %43

43:                                               ; preds = %34
  call void @abort() #4
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %34, %30
  %45 = zext i32 %.0 to i64
  %46 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %.lobit166 = ashr i32 %47, 31
  %48 = xor i32 %47, %.lobit166
  %49 = call i32 @llvm.ctlz.i32(i32 %48, i1 false), !range !23
  %50 = add nsw i32 %49, -1
  %51 = zext i32 %.0 to i64
  %52 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @my_clrsb(i32 noundef %53)
  %.not167 = icmp eq i32 %50, %54
  br i1 %.not167, label %56, label %55

55:                                               ; preds = %44
  call void @abort() #4
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %44
  %57 = zext i32 %.0 to i64
  %58 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @llvm.ctpop.i32(i32 %59), !range !23
  %61 = zext i32 %.0 to i64
  %62 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @my_popcount(i32 noundef %63)
  %.not168 = icmp eq i32 %60, %64
  br i1 %.not168, label %66, label %65

65:                                               ; preds = %56
  call void @abort() #4
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %56
  %67 = zext i32 %.0 to i64
  %68 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @llvm.ctpop.i32(i32 %69), !range !23
  %71 = and i32 %70, 1
  %72 = zext i32 %.0 to i64
  %73 = getelementptr inbounds [13 x i32], [13 x i32]* @ints, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @my_parity(i32 noundef %74)
  %.not169 = icmp eq i32 %71, %75
  br i1 %.not169, label %77, label %76

76:                                               ; preds = %66
  call void @abort() #4
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !24

80:                                               ; preds = %1
  br label %81

81:                                               ; preds = %164, %80
  %.1 = phi i32 [ 0, %80 ], [ %165, %164 ]
  %82 = icmp ult i32 %.1, 13
  br i1 %82, label %83, label %166

83:                                               ; preds = %81
  %84 = zext i32 %.1 to i64
  %85 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @llvm.cttz.i64(i64 %86, i1 true), !range !25
  %88 = icmp eq i64 %86, 0
  %89 = trunc i64 %87 to i32
  %90 = add nuw nsw i32 %89, 1
  %91 = select i1 %88, i32 0, i32 %90
  %92 = zext i32 %.1 to i64
  %93 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @my_ffsl(i64 noundef %94)
  %.not154 = icmp eq i32 %91, %95
  br i1 %.not154, label %97, label %96

96:                                               ; preds = %83
  call void @abort() #4
  br label %UnifiedUnreachableBlock

97:                                               ; preds = %83
  %98 = zext i32 %.1 to i64
  %99 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %98
  %100 = load i64, i64* %99, align 8
  %.not155 = icmp eq i64 %100, 0
  br i1 %.not155, label %112, label %101

101:                                              ; preds = %97
  %102 = zext i32 %.1 to i64
  %103 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @llvm.ctlz.i64(i64 %104, i1 true), !range !25
  %106 = trunc i64 %105 to i32
  %107 = zext i32 %.1 to i64
  %108 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @my_clzl(i64 noundef %109)
  %.not162 = icmp eq i32 %110, %106
  br i1 %.not162, label %112, label %111

111:                                              ; preds = %101
  call void @abort() #4
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %101, %97
  %113 = zext i32 %.1 to i64
  %114 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %113
  %115 = load i64, i64* %114, align 8
  %.not156 = icmp eq i64 %115, 0
  br i1 %.not156, label %127, label %116

116:                                              ; preds = %112
  %117 = zext i32 %.1 to i64
  %118 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @llvm.cttz.i64(i64 %119, i1 true), !range !25
  %121 = trunc i64 %120 to i32
  %122 = zext i32 %.1 to i64
  %123 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @my_ctzl(i64 noundef %124)
  %.not161 = icmp eq i32 %125, %121
  br i1 %.not161, label %127, label %126

126:                                              ; preds = %116
  call void @abort() #4
  br label %UnifiedUnreachableBlock

127:                                              ; preds = %116, %112
  %128 = zext i32 %.1 to i64
  %129 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %128
  %130 = load i64, i64* %129, align 8
  %.lobit157 = ashr i64 %130, 63
  %131 = xor i64 %130, %.lobit157
  %132 = call i64 @llvm.ctlz.i64(i64 %131, i1 false), !range !25
  %133 = trunc i64 %132 to i32
  %134 = add nsw i32 %133, -1
  %135 = zext i32 %.1 to i64
  %136 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @my_clrsbl(i64 noundef %137)
  %.not158 = icmp eq i32 %134, %138
  br i1 %.not158, label %140, label %139

139:                                              ; preds = %127
  call void @abort() #4
  br label %UnifiedUnreachableBlock

140:                                              ; preds = %127
  %141 = zext i32 %.1 to i64
  %142 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @llvm.ctpop.i64(i64 %143), !range !25
  %145 = trunc i64 %144 to i32
  %146 = zext i32 %.1 to i64
  %147 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @my_popcountl(i64 noundef %148)
  %.not159 = icmp eq i32 %149, %145
  br i1 %.not159, label %151, label %150

150:                                              ; preds = %140
  call void @abort() #4
  br label %UnifiedUnreachableBlock

151:                                              ; preds = %140
  %152 = zext i32 %.1 to i64
  %153 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = call i64 @llvm.ctpop.i64(i64 %154), !range !25
  %156 = trunc i64 %155 to i32
  %157 = and i32 %156, 1
  %158 = zext i32 %.1 to i64
  %159 = getelementptr inbounds [13 x i64], [13 x i64]* @longs, i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @my_parityl(i64 noundef %160)
  %.not160 = icmp eq i32 %157, %161
  br i1 %.not160, label %163, label %162

162:                                              ; preds = %151
  call void @abort() #4
  br label %UnifiedUnreachableBlock

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163
  %165 = add nuw nsw i32 %.1, 1
  br label %81, !llvm.loop !26

166:                                              ; preds = %81
  br label %167

167:                                              ; preds = %250, %166
  %.2 = phi i32 [ 0, %166 ], [ %251, %250 ]
  %168 = icmp ult i32 %.2, 13
  br i1 %168, label %169, label %252

169:                                              ; preds = %167
  %170 = zext i32 %.2 to i64
  %171 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @llvm.cttz.i64(i64 %172, i1 true), !range !25
  %174 = icmp eq i64 %172, 0
  %175 = trunc i64 %173 to i32
  %176 = add nuw nsw i32 %175, 1
  %177 = select i1 %174, i32 0, i32 %176
  %178 = zext i32 %.2 to i64
  %179 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @my_ffsll(i64 noundef %180)
  %.not146 = icmp eq i32 %177, %181
  br i1 %.not146, label %183, label %182

182:                                              ; preds = %169
  call void @abort() #4
  br label %UnifiedUnreachableBlock

183:                                              ; preds = %169
  %184 = zext i32 %.2 to i64
  %185 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %184
  %186 = load i64, i64* %185, align 8
  %.not147 = icmp eq i64 %186, 0
  br i1 %.not147, label %198, label %187

187:                                              ; preds = %183
  %188 = zext i32 %.2 to i64
  %189 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = call i64 @llvm.ctlz.i64(i64 %190, i1 true), !range !25
  %192 = trunc i64 %191 to i32
  %193 = zext i32 %.2 to i64
  %194 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = call i32 @my_clzll(i64 noundef %195)
  %.not153 = icmp eq i32 %196, %192
  br i1 %.not153, label %198, label %197

197:                                              ; preds = %187
  call void @abort() #4
  br label %UnifiedUnreachableBlock

198:                                              ; preds = %187, %183
  %199 = zext i32 %.2 to i64
  %200 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %199
  %201 = load i64, i64* %200, align 8
  %.not148 = icmp eq i64 %201, 0
  br i1 %.not148, label %213, label %202

202:                                              ; preds = %198
  %203 = zext i32 %.2 to i64
  %204 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = call i64 @llvm.cttz.i64(i64 %205, i1 true), !range !25
  %207 = trunc i64 %206 to i32
  %208 = zext i32 %.2 to i64
  %209 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @my_ctzll(i64 noundef %210)
  %.not152 = icmp eq i32 %211, %207
  br i1 %.not152, label %213, label %212

212:                                              ; preds = %202
  call void @abort() #4
  br label %UnifiedUnreachableBlock

213:                                              ; preds = %202, %198
  %214 = zext i32 %.2 to i64
  %215 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %.lobit = ashr i64 %216, 63
  %217 = xor i64 %216, %.lobit
  %218 = call i64 @llvm.ctlz.i64(i64 %217, i1 false), !range !25
  %219 = trunc i64 %218 to i32
  %220 = add nsw i32 %219, -1
  %221 = zext i32 %.2 to i64
  %222 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %221
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @my_clrsbll(i64 noundef %223)
  %.not149 = icmp eq i32 %220, %224
  br i1 %.not149, label %226, label %225

225:                                              ; preds = %213
  call void @abort() #4
  br label %UnifiedUnreachableBlock

226:                                              ; preds = %213
  %227 = zext i32 %.2 to i64
  %228 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %227
  %229 = load i64, i64* %228, align 8
  %230 = call i64 @llvm.ctpop.i64(i64 %229), !range !25
  %231 = trunc i64 %230 to i32
  %232 = zext i32 %.2 to i64
  %233 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @my_popcountll(i64 noundef %234)
  %.not150 = icmp eq i32 %235, %231
  br i1 %.not150, label %237, label %236

236:                                              ; preds = %226
  call void @abort() #4
  br label %UnifiedUnreachableBlock

237:                                              ; preds = %226
  %238 = zext i32 %.2 to i64
  %239 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @llvm.ctpop.i64(i64 %240), !range !25
  %242 = trunc i64 %241 to i32
  %243 = and i32 %242, 1
  %244 = zext i32 %.2 to i64
  %245 = getelementptr inbounds [13 x i64], [13 x i64]* @longlongs, i64 0, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @my_parityll(i64 noundef %246)
  %.not151 = icmp eq i32 %243, %247
  br i1 %.not151, label %249, label %248

248:                                              ; preds = %237
  call void @abort() #4
  br label %UnifiedUnreachableBlock

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249
  %251 = add nuw nsw i32 %.2, 1
  br label %167, !llvm.loop !27

252:                                              ; preds = %167
  %253 = call i32 @my_ffs(i32 noundef 0)
  %.not = icmp eq i32 %253, 0
  br i1 %.not, label %255, label %254

254:                                              ; preds = %252
  call void @abort() #4
  br label %UnifiedUnreachableBlock

255:                                              ; preds = %252
  %256 = call i32 @my_clrsb(i32 noundef 0)
  %.not1 = icmp eq i32 %256, 31
  br i1 %.not1, label %258, label %257

257:                                              ; preds = %255
  call void @abort() #4
  br label %UnifiedUnreachableBlock

258:                                              ; preds = %255
  %259 = call i32 @my_popcount(i32 noundef 0)
  %.not2 = icmp eq i32 %259, 0
  br i1 %.not2, label %261, label %260

260:                                              ; preds = %258
  call void @abort() #4
  br label %UnifiedUnreachableBlock

261:                                              ; preds = %258
  %262 = call i32 @my_parity(i32 noundef 0)
  %.not3 = icmp eq i32 %262, 0
  br i1 %.not3, label %264, label %263

263:                                              ; preds = %261
  call void @abort() #4
  br label %UnifiedUnreachableBlock

264:                                              ; preds = %261
  %265 = call i32 @my_ffs(i32 noundef 1)
  %.not4 = icmp eq i32 %265, 1
  br i1 %.not4, label %267, label %266

266:                                              ; preds = %264
  call void @abort() #4
  br label %UnifiedUnreachableBlock

267:                                              ; preds = %264
  %268 = call i32 @my_clz(i32 noundef 1)
  %.not5 = icmp eq i32 %268, 31
  br i1 %.not5, label %270, label %269

269:                                              ; preds = %267
  call void @abort() #4
  br label %UnifiedUnreachableBlock

270:                                              ; preds = %267
  %271 = call i32 @my_ctz(i32 noundef 1)
  %.not6 = icmp eq i32 %271, 0
  br i1 %.not6, label %273, label %272

272:                                              ; preds = %270
  call void @abort() #4
  br label %UnifiedUnreachableBlock

273:                                              ; preds = %270
  %274 = call i32 @my_clrsb(i32 noundef 1)
  %.not7 = icmp eq i32 %274, 30
  br i1 %.not7, label %276, label %275

275:                                              ; preds = %273
  call void @abort() #4
  br label %UnifiedUnreachableBlock

276:                                              ; preds = %273
  %277 = call i32 @my_popcount(i32 noundef 1)
  %.not8 = icmp eq i32 %277, 1
  br i1 %.not8, label %279, label %278

278:                                              ; preds = %276
  call void @abort() #4
  br label %UnifiedUnreachableBlock

279:                                              ; preds = %276
  %280 = call i32 @my_parity(i32 noundef 1)
  %.not9 = icmp eq i32 %280, 1
  br i1 %.not9, label %282, label %281

281:                                              ; preds = %279
  call void @abort() #4
  br label %UnifiedUnreachableBlock

282:                                              ; preds = %279
  %283 = call i32 @my_ffs(i32 noundef -2147483648)
  %.not10 = icmp eq i32 %283, 32
  br i1 %.not10, label %285, label %284

284:                                              ; preds = %282
  call void @abort() #4
  br label %UnifiedUnreachableBlock

285:                                              ; preds = %282
  %286 = call i32 @my_clz(i32 noundef -2147483648)
  %.not11 = icmp eq i32 %286, 0
  br i1 %.not11, label %288, label %287

287:                                              ; preds = %285
  call void @abort() #4
  br label %UnifiedUnreachableBlock

288:                                              ; preds = %285
  %289 = call i32 @my_ctz(i32 noundef -2147483648)
  %.not12 = icmp eq i32 %289, 31
  br i1 %.not12, label %291, label %290

290:                                              ; preds = %288
  call void @abort() #4
  br label %UnifiedUnreachableBlock

291:                                              ; preds = %288
  %292 = call i32 @my_clrsb(i32 noundef -2147483648)
  %.not13 = icmp eq i32 %292, 0
  br i1 %.not13, label %294, label %293

293:                                              ; preds = %291
  call void @abort() #4
  br label %UnifiedUnreachableBlock

294:                                              ; preds = %291
  %295 = call i32 @my_popcount(i32 noundef -2147483648)
  %.not14 = icmp eq i32 %295, 1
  br i1 %.not14, label %297, label %296

296:                                              ; preds = %294
  call void @abort() #4
  br label %UnifiedUnreachableBlock

297:                                              ; preds = %294
  %298 = call i32 @my_parity(i32 noundef -2147483648)
  %.not15 = icmp eq i32 %298, 1
  br i1 %.not15, label %300, label %299

299:                                              ; preds = %297
  call void @abort() #4
  br label %UnifiedUnreachableBlock

300:                                              ; preds = %297
  %301 = call i32 @my_ffs(i32 noundef 1073741824)
  %.not16 = icmp eq i32 %301, 31
  br i1 %.not16, label %303, label %302

302:                                              ; preds = %300
  call void @abort() #4
  br label %UnifiedUnreachableBlock

303:                                              ; preds = %300
  %304 = call i32 @my_clz(i32 noundef 1073741824)
  %.not17 = icmp eq i32 %304, 1
  br i1 %.not17, label %306, label %305

305:                                              ; preds = %303
  call void @abort() #4
  br label %UnifiedUnreachableBlock

306:                                              ; preds = %303
  %307 = call i32 @my_ctz(i32 noundef 1073741824)
  %.not18 = icmp eq i32 %307, 30
  br i1 %.not18, label %309, label %308

308:                                              ; preds = %306
  call void @abort() #4
  br label %UnifiedUnreachableBlock

309:                                              ; preds = %306
  %310 = call i32 @my_clrsb(i32 noundef 1073741824)
  %.not19 = icmp eq i32 %310, 0
  br i1 %.not19, label %312, label %311

311:                                              ; preds = %309
  call void @abort() #4
  br label %UnifiedUnreachableBlock

312:                                              ; preds = %309
  %313 = call i32 @my_popcount(i32 noundef 1073741824)
  %.not20 = icmp eq i32 %313, 1
  br i1 %.not20, label %315, label %314

314:                                              ; preds = %312
  call void @abort() #4
  br label %UnifiedUnreachableBlock

315:                                              ; preds = %312
  %316 = call i32 @my_parity(i32 noundef 1073741824)
  %.not21 = icmp eq i32 %316, 1
  br i1 %.not21, label %318, label %317

317:                                              ; preds = %315
  call void @abort() #4
  br label %UnifiedUnreachableBlock

318:                                              ; preds = %315
  %319 = call i32 @my_ffs(i32 noundef 65536)
  %.not22 = icmp eq i32 %319, 17
  br i1 %.not22, label %321, label %320

320:                                              ; preds = %318
  call void @abort() #4
  br label %UnifiedUnreachableBlock

321:                                              ; preds = %318
  %322 = call i32 @my_clz(i32 noundef 65536)
  %.not23 = icmp eq i32 %322, 15
  br i1 %.not23, label %324, label %323

323:                                              ; preds = %321
  call void @abort() #4
  br label %UnifiedUnreachableBlock

324:                                              ; preds = %321
  %325 = call i32 @my_ctz(i32 noundef 65536)
  %.not24 = icmp eq i32 %325, 16
  br i1 %.not24, label %327, label %326

326:                                              ; preds = %324
  call void @abort() #4
  br label %UnifiedUnreachableBlock

327:                                              ; preds = %324
  %328 = call i32 @my_clrsb(i32 noundef 65536)
  %.not25 = icmp eq i32 %328, 14
  br i1 %.not25, label %330, label %329

329:                                              ; preds = %327
  call void @abort() #4
  br label %UnifiedUnreachableBlock

330:                                              ; preds = %327
  %331 = call i32 @my_popcount(i32 noundef 65536)
  %.not26 = icmp eq i32 %331, 1
  br i1 %.not26, label %333, label %332

332:                                              ; preds = %330
  call void @abort() #4
  br label %UnifiedUnreachableBlock

333:                                              ; preds = %330
  %334 = call i32 @my_parity(i32 noundef 65536)
  %.not27 = icmp eq i32 %334, 1
  br i1 %.not27, label %336, label %335

335:                                              ; preds = %333
  call void @abort() #4
  br label %UnifiedUnreachableBlock

336:                                              ; preds = %333
  %337 = call i32 @my_ffs(i32 noundef 32768)
  %.not28 = icmp eq i32 %337, 16
  br i1 %.not28, label %339, label %338

338:                                              ; preds = %336
  call void @abort() #4
  br label %UnifiedUnreachableBlock

339:                                              ; preds = %336
  %340 = call i32 @my_clz(i32 noundef 32768)
  %.not29 = icmp eq i32 %340, 16
  br i1 %.not29, label %342, label %341

341:                                              ; preds = %339
  call void @abort() #4
  br label %UnifiedUnreachableBlock

342:                                              ; preds = %339
  %343 = call i32 @my_ctz(i32 noundef 32768)
  %.not30 = icmp eq i32 %343, 15
  br i1 %.not30, label %345, label %344

344:                                              ; preds = %342
  call void @abort() #4
  br label %UnifiedUnreachableBlock

345:                                              ; preds = %342
  %346 = call i32 @my_clrsb(i32 noundef 32768)
  %.not31 = icmp eq i32 %346, 15
  br i1 %.not31, label %348, label %347

347:                                              ; preds = %345
  call void @abort() #4
  br label %UnifiedUnreachableBlock

348:                                              ; preds = %345
  %349 = call i32 @my_popcount(i32 noundef 32768)
  %.not32 = icmp eq i32 %349, 1
  br i1 %.not32, label %351, label %350

350:                                              ; preds = %348
  call void @abort() #4
  br label %UnifiedUnreachableBlock

351:                                              ; preds = %348
  %352 = call i32 @my_parity(i32 noundef 32768)
  %.not33 = icmp eq i32 %352, 1
  br i1 %.not33, label %354, label %353

353:                                              ; preds = %351
  call void @abort() #4
  br label %UnifiedUnreachableBlock

354:                                              ; preds = %351
  %355 = call i32 @my_ffs(i32 noundef -1515870811)
  %.not34 = icmp eq i32 %355, 1
  br i1 %.not34, label %357, label %356

356:                                              ; preds = %354
  call void @abort() #4
  br label %UnifiedUnreachableBlock

357:                                              ; preds = %354
  %358 = call i32 @my_clz(i32 noundef -1515870811)
  %.not35 = icmp eq i32 %358, 0
  br i1 %.not35, label %360, label %359

359:                                              ; preds = %357
  call void @abort() #4
  br label %UnifiedUnreachableBlock

360:                                              ; preds = %357
  %361 = call i32 @my_ctz(i32 noundef -1515870811)
  %.not36 = icmp eq i32 %361, 0
  br i1 %.not36, label %363, label %362

362:                                              ; preds = %360
  call void @abort() #4
  br label %UnifiedUnreachableBlock

363:                                              ; preds = %360
  %364 = call i32 @my_clrsb(i32 noundef -1515870811)
  %.not37 = icmp eq i32 %364, 0
  br i1 %.not37, label %366, label %365

365:                                              ; preds = %363
  call void @abort() #4
  br label %UnifiedUnreachableBlock

366:                                              ; preds = %363
  %367 = call i32 @my_popcount(i32 noundef -1515870811)
  %.not38 = icmp eq i32 %367, 16
  br i1 %.not38, label %369, label %368

368:                                              ; preds = %366
  call void @abort() #4
  br label %UnifiedUnreachableBlock

369:                                              ; preds = %366
  %370 = call i32 @my_parity(i32 noundef -1515870811)
  %.not39 = icmp eq i32 %370, 0
  br i1 %.not39, label %372, label %371

371:                                              ; preds = %369
  call void @abort() #4
  br label %UnifiedUnreachableBlock

372:                                              ; preds = %369
  %373 = call i32 @my_ffs(i32 noundef 1515870810)
  %.not40 = icmp eq i32 %373, 2
  br i1 %.not40, label %375, label %374

374:                                              ; preds = %372
  call void @abort() #4
  br label %UnifiedUnreachableBlock

375:                                              ; preds = %372
  %376 = call i32 @my_clz(i32 noundef 1515870810)
  %.not41 = icmp eq i32 %376, 1
  br i1 %.not41, label %378, label %377

377:                                              ; preds = %375
  call void @abort() #4
  br label %UnifiedUnreachableBlock

378:                                              ; preds = %375
  %379 = call i32 @my_ctz(i32 noundef 1515870810)
  %.not42 = icmp eq i32 %379, 1
  br i1 %.not42, label %381, label %380

380:                                              ; preds = %378
  call void @abort() #4
  br label %UnifiedUnreachableBlock

381:                                              ; preds = %378
  %382 = call i32 @my_clrsb(i32 noundef 1515870810)
  %.not43 = icmp eq i32 %382, 0
  br i1 %.not43, label %384, label %383

383:                                              ; preds = %381
  call void @abort() #4
  br label %UnifiedUnreachableBlock

384:                                              ; preds = %381
  %385 = call i32 @my_popcount(i32 noundef 1515870810)
  %.not44 = icmp eq i32 %385, 16
  br i1 %.not44, label %387, label %386

386:                                              ; preds = %384
  call void @abort() #4
  br label %UnifiedUnreachableBlock

387:                                              ; preds = %384
  %388 = call i32 @my_parity(i32 noundef 1515870810)
  %.not45 = icmp eq i32 %388, 0
  br i1 %.not45, label %390, label %389

389:                                              ; preds = %387
  call void @abort() #4
  br label %UnifiedUnreachableBlock

390:                                              ; preds = %387
  %391 = call i32 @my_ffs(i32 noundef -889323520)
  %.not46 = icmp eq i32 %391, 18
  br i1 %.not46, label %393, label %392

392:                                              ; preds = %390
  call void @abort() #4
  br label %UnifiedUnreachableBlock

393:                                              ; preds = %390
  %394 = call i32 @my_clz(i32 noundef -889323520)
  %.not47 = icmp eq i32 %394, 0
  br i1 %.not47, label %396, label %395

395:                                              ; preds = %393
  call void @abort() #4
  br label %UnifiedUnreachableBlock

396:                                              ; preds = %393
  %397 = call i32 @my_ctz(i32 noundef -889323520)
  %.not48 = icmp eq i32 %397, 17
  br i1 %.not48, label %399, label %398

398:                                              ; preds = %396
  call void @abort() #4
  br label %UnifiedUnreachableBlock

399:                                              ; preds = %396
  %400 = call i32 @my_clrsb(i32 noundef -889323520)
  %.not49 = icmp eq i32 %400, 1
  br i1 %.not49, label %402, label %401

401:                                              ; preds = %399
  call void @abort() #4
  br label %UnifiedUnreachableBlock

402:                                              ; preds = %399
  %403 = call i32 @my_popcount(i32 noundef -889323520)
  %.not50 = icmp eq i32 %403, 11
  br i1 %.not50, label %405, label %404

404:                                              ; preds = %402
  call void @abort() #4
  br label %UnifiedUnreachableBlock

405:                                              ; preds = %402
  %406 = call i32 @my_parity(i32 noundef -889323520)
  %.not51 = icmp eq i32 %406, 1
  br i1 %.not51, label %408, label %407

407:                                              ; preds = %405
  call void @abort() #4
  br label %UnifiedUnreachableBlock

408:                                              ; preds = %405
  %409 = call i32 @my_ffs(i32 noundef 13303296)
  %.not52 = icmp eq i32 %409, 10
  br i1 %.not52, label %411, label %410

410:                                              ; preds = %408
  call void @abort() #4
  br label %UnifiedUnreachableBlock

411:                                              ; preds = %408
  %412 = call i32 @my_clz(i32 noundef 13303296)
  %.not53 = icmp eq i32 %412, 8
  br i1 %.not53, label %414, label %413

413:                                              ; preds = %411
  call void @abort() #4
  br label %UnifiedUnreachableBlock

414:                                              ; preds = %411
  %415 = call i32 @my_ctz(i32 noundef 13303296)
  %.not54 = icmp eq i32 %415, 9
  br i1 %.not54, label %417, label %416

416:                                              ; preds = %414
  call void @abort() #4
  br label %UnifiedUnreachableBlock

417:                                              ; preds = %414
  %418 = call i32 @my_clrsb(i32 noundef 13303296)
  %.not55 = icmp eq i32 %418, 7
  br i1 %.not55, label %420, label %419

419:                                              ; preds = %417
  call void @abort() #4
  br label %UnifiedUnreachableBlock

420:                                              ; preds = %417
  %421 = call i32 @my_popcount(i32 noundef 13303296)
  %.not56 = icmp eq i32 %421, 11
  br i1 %.not56, label %423, label %422

422:                                              ; preds = %420
  call void @abort() #4
  br label %UnifiedUnreachableBlock

423:                                              ; preds = %420
  %424 = call i32 @my_parity(i32 noundef 13303296)
  %.not57 = icmp eq i32 %424, 1
  br i1 %.not57, label %426, label %425

425:                                              ; preds = %423
  call void @abort() #4
  br label %UnifiedUnreachableBlock

426:                                              ; preds = %423
  %427 = call i32 @my_ffs(i32 noundef 51966)
  %.not58 = icmp eq i32 %427, 2
  br i1 %.not58, label %429, label %428

428:                                              ; preds = %426
  call void @abort() #4
  br label %UnifiedUnreachableBlock

429:                                              ; preds = %426
  %430 = call i32 @my_clz(i32 noundef 51966)
  %.not59 = icmp eq i32 %430, 16
  br i1 %.not59, label %432, label %431

431:                                              ; preds = %429
  call void @abort() #4
  br label %UnifiedUnreachableBlock

432:                                              ; preds = %429
  %433 = call i32 @my_ctz(i32 noundef 51966)
  %.not60 = icmp eq i32 %433, 1
  br i1 %.not60, label %435, label %434

434:                                              ; preds = %432
  call void @abort() #4
  br label %UnifiedUnreachableBlock

435:                                              ; preds = %432
  %436 = call i32 @my_clrsb(i32 noundef 51966)
  %.not61 = icmp eq i32 %436, 15
  br i1 %.not61, label %438, label %437

437:                                              ; preds = %435
  call void @abort() #4
  br label %UnifiedUnreachableBlock

438:                                              ; preds = %435
  %439 = call i32 @my_popcount(i32 noundef 51966)
  %.not62 = icmp eq i32 %439, 11
  br i1 %.not62, label %441, label %440

440:                                              ; preds = %438
  call void @abort() #4
  br label %UnifiedUnreachableBlock

441:                                              ; preds = %438
  %442 = call i32 @my_parity(i32 noundef 51966)
  %.not63 = icmp eq i32 %442, 1
  br i1 %.not63, label %444, label %443

443:                                              ; preds = %441
  call void @abort() #4
  br label %UnifiedUnreachableBlock

444:                                              ; preds = %441
  %445 = call i32 @my_ffs(i32 noundef -1)
  %.not64 = icmp eq i32 %445, 1
  br i1 %.not64, label %447, label %446

446:                                              ; preds = %444
  call void @abort() #4
  br label %UnifiedUnreachableBlock

447:                                              ; preds = %444
  %448 = call i32 @my_clz(i32 noundef -1)
  %.not65 = icmp eq i32 %448, 0
  br i1 %.not65, label %450, label %449

449:                                              ; preds = %447
  call void @abort() #4
  br label %UnifiedUnreachableBlock

450:                                              ; preds = %447
  %451 = call i32 @my_ctz(i32 noundef -1)
  %.not66 = icmp eq i32 %451, 0
  br i1 %.not66, label %453, label %452

452:                                              ; preds = %450
  call void @abort() #4
  br label %UnifiedUnreachableBlock

453:                                              ; preds = %450
  %454 = call i32 @my_clrsb(i32 noundef -1)
  %.not67 = icmp eq i32 %454, 31
  br i1 %.not67, label %456, label %455

455:                                              ; preds = %453
  call void @abort() #4
  br label %UnifiedUnreachableBlock

456:                                              ; preds = %453
  %457 = call i32 @my_popcount(i32 noundef -1)
  %.not68 = icmp eq i32 %457, 32
  br i1 %.not68, label %459, label %458

458:                                              ; preds = %456
  call void @abort() #4
  br label %UnifiedUnreachableBlock

459:                                              ; preds = %456
  %460 = call i32 @my_parity(i32 noundef -1)
  %.not69 = icmp eq i32 %460, 0
  br i1 %.not69, label %462, label %461

461:                                              ; preds = %459
  call void @abort() #4
  br label %UnifiedUnreachableBlock

462:                                              ; preds = %459
  %463 = call i32 @my_ffsll(i64 noundef 0)
  %.not70 = icmp eq i32 %463, 0
  br i1 %.not70, label %465, label %464

464:                                              ; preds = %462
  call void @abort() #4
  br label %UnifiedUnreachableBlock

465:                                              ; preds = %462
  %466 = call i32 @my_clrsbll(i64 noundef 0)
  %.not71 = icmp eq i32 %466, 63
  br i1 %.not71, label %468, label %467

467:                                              ; preds = %465
  call void @abort() #4
  br label %UnifiedUnreachableBlock

468:                                              ; preds = %465
  %469 = call i32 @my_popcountll(i64 noundef 0)
  %.not72 = icmp eq i32 %469, 0
  br i1 %.not72, label %471, label %470

470:                                              ; preds = %468
  call void @abort() #4
  br label %UnifiedUnreachableBlock

471:                                              ; preds = %468
  %472 = call i32 @my_parityll(i64 noundef 0)
  %.not73 = icmp eq i32 %472, 0
  br i1 %.not73, label %474, label %473

473:                                              ; preds = %471
  call void @abort() #4
  br label %UnifiedUnreachableBlock

474:                                              ; preds = %471
  %475 = call i32 @my_ffsll(i64 noundef 1)
  %.not74 = icmp eq i32 %475, 1
  br i1 %.not74, label %477, label %476

476:                                              ; preds = %474
  call void @abort() #4
  br label %UnifiedUnreachableBlock

477:                                              ; preds = %474
  %478 = call i32 @my_clzll(i64 noundef 1)
  %.not75 = icmp eq i32 %478, 63
  br i1 %.not75, label %480, label %479

479:                                              ; preds = %477
  call void @abort() #4
  br label %UnifiedUnreachableBlock

480:                                              ; preds = %477
  %481 = call i32 @my_ctzll(i64 noundef 1)
  %.not76 = icmp eq i32 %481, 0
  br i1 %.not76, label %483, label %482

482:                                              ; preds = %480
  call void @abort() #4
  br label %UnifiedUnreachableBlock

483:                                              ; preds = %480
  %484 = call i32 @my_clrsbll(i64 noundef 1)
  %.not77 = icmp eq i32 %484, 62
  br i1 %.not77, label %486, label %485

485:                                              ; preds = %483
  call void @abort() #4
  br label %UnifiedUnreachableBlock

486:                                              ; preds = %483
  %487 = call i32 @my_popcountll(i64 noundef 1)
  %.not78 = icmp eq i32 %487, 1
  br i1 %.not78, label %489, label %488

488:                                              ; preds = %486
  call void @abort() #4
  br label %UnifiedUnreachableBlock

489:                                              ; preds = %486
  %490 = call i32 @my_parityll(i64 noundef 1)
  %.not79 = icmp eq i32 %490, 1
  br i1 %.not79, label %492, label %491

491:                                              ; preds = %489
  call void @abort() #4
  br label %UnifiedUnreachableBlock

492:                                              ; preds = %489
  %493 = call i32 @my_ffsll(i64 noundef -9223372036854775808)
  %.not80 = icmp eq i32 %493, 64
  br i1 %.not80, label %495, label %494

494:                                              ; preds = %492
  call void @abort() #4
  br label %UnifiedUnreachableBlock

495:                                              ; preds = %492
  %496 = call i32 @my_clzll(i64 noundef -9223372036854775808)
  %.not81 = icmp eq i32 %496, 0
  br i1 %.not81, label %498, label %497

497:                                              ; preds = %495
  call void @abort() #4
  br label %UnifiedUnreachableBlock

498:                                              ; preds = %495
  %499 = call i32 @my_ctzll(i64 noundef -9223372036854775808)
  %.not82 = icmp eq i32 %499, 63
  br i1 %.not82, label %501, label %500

500:                                              ; preds = %498
  call void @abort() #4
  br label %UnifiedUnreachableBlock

501:                                              ; preds = %498
  %502 = call i32 @my_clrsbll(i64 noundef -9223372036854775808)
  %.not83 = icmp eq i32 %502, 0
  br i1 %.not83, label %504, label %503

503:                                              ; preds = %501
  call void @abort() #4
  br label %UnifiedUnreachableBlock

504:                                              ; preds = %501
  %505 = call i32 @my_popcountll(i64 noundef -9223372036854775808)
  %.not84 = icmp eq i32 %505, 1
  br i1 %.not84, label %507, label %506

506:                                              ; preds = %504
  call void @abort() #4
  br label %UnifiedUnreachableBlock

507:                                              ; preds = %504
  %508 = call i32 @my_parityll(i64 noundef -9223372036854775808)
  %.not85 = icmp eq i32 %508, 1
  br i1 %.not85, label %510, label %509

509:                                              ; preds = %507
  call void @abort() #4
  br label %UnifiedUnreachableBlock

510:                                              ; preds = %507
  %511 = call i32 @my_ffsll(i64 noundef 2)
  %.not86 = icmp eq i32 %511, 2
  br i1 %.not86, label %513, label %512

512:                                              ; preds = %510
  call void @abort() #4
  br label %UnifiedUnreachableBlock

513:                                              ; preds = %510
  %514 = call i32 @my_clzll(i64 noundef 2)
  %.not87 = icmp eq i32 %514, 62
  br i1 %.not87, label %516, label %515

515:                                              ; preds = %513
  call void @abort() #4
  br label %UnifiedUnreachableBlock

516:                                              ; preds = %513
  %517 = call i32 @my_ctzll(i64 noundef 2)
  %.not88 = icmp eq i32 %517, 1
  br i1 %.not88, label %519, label %518

518:                                              ; preds = %516
  call void @abort() #4
  br label %UnifiedUnreachableBlock

519:                                              ; preds = %516
  %520 = call i32 @my_clrsbll(i64 noundef 2)
  %.not89 = icmp eq i32 %520, 61
  br i1 %.not89, label %522, label %521

521:                                              ; preds = %519
  call void @abort() #4
  br label %UnifiedUnreachableBlock

522:                                              ; preds = %519
  %523 = call i32 @my_popcountll(i64 noundef 2)
  %.not90 = icmp eq i32 %523, 1
  br i1 %.not90, label %525, label %524

524:                                              ; preds = %522
  call void @abort() #4
  br label %UnifiedUnreachableBlock

525:                                              ; preds = %522
  %526 = call i32 @my_parityll(i64 noundef 2)
  %.not91 = icmp eq i32 %526, 1
  br i1 %.not91, label %528, label %527

527:                                              ; preds = %525
  call void @abort() #4
  br label %UnifiedUnreachableBlock

528:                                              ; preds = %525
  %529 = call i32 @my_ffsll(i64 noundef 4611686018427387904)
  %.not92 = icmp eq i32 %529, 63
  br i1 %.not92, label %531, label %530

530:                                              ; preds = %528
  call void @abort() #4
  br label %UnifiedUnreachableBlock

531:                                              ; preds = %528
  %532 = call i32 @my_clzll(i64 noundef 4611686018427387904)
  %.not93 = icmp eq i32 %532, 1
  br i1 %.not93, label %534, label %533

533:                                              ; preds = %531
  call void @abort() #4
  br label %UnifiedUnreachableBlock

534:                                              ; preds = %531
  %535 = call i32 @my_ctzll(i64 noundef 4611686018427387904)
  %.not94 = icmp eq i32 %535, 62
  br i1 %.not94, label %537, label %536

536:                                              ; preds = %534
  call void @abort() #4
  br label %UnifiedUnreachableBlock

537:                                              ; preds = %534
  %538 = call i32 @my_clrsbll(i64 noundef 4611686018427387904)
  %.not95 = icmp eq i32 %538, 0
  br i1 %.not95, label %540, label %539

539:                                              ; preds = %537
  call void @abort() #4
  br label %UnifiedUnreachableBlock

540:                                              ; preds = %537
  %541 = call i32 @my_popcountll(i64 noundef 4611686018427387904)
  %.not96 = icmp eq i32 %541, 1
  br i1 %.not96, label %543, label %542

542:                                              ; preds = %540
  call void @abort() #4
  br label %UnifiedUnreachableBlock

543:                                              ; preds = %540
  %544 = call i32 @my_parityll(i64 noundef 4611686018427387904)
  %.not97 = icmp eq i32 %544, 1
  br i1 %.not97, label %546, label %545

545:                                              ; preds = %543
  call void @abort() #4
  br label %UnifiedUnreachableBlock

546:                                              ; preds = %543
  %547 = call i32 @my_ffsll(i64 noundef 4294967296)
  %.not98 = icmp eq i32 %547, 33
  br i1 %.not98, label %549, label %548

548:                                              ; preds = %546
  call void @abort() #4
  br label %UnifiedUnreachableBlock

549:                                              ; preds = %546
  %550 = call i32 @my_clzll(i64 noundef 4294967296)
  %.not99 = icmp eq i32 %550, 31
  br i1 %.not99, label %552, label %551

551:                                              ; preds = %549
  call void @abort() #4
  br label %UnifiedUnreachableBlock

552:                                              ; preds = %549
  %553 = call i32 @my_ctzll(i64 noundef 4294967296)
  %.not100 = icmp eq i32 %553, 32
  br i1 %.not100, label %555, label %554

554:                                              ; preds = %552
  call void @abort() #4
  br label %UnifiedUnreachableBlock

555:                                              ; preds = %552
  %556 = call i32 @my_clrsbll(i64 noundef 4294967296)
  %.not101 = icmp eq i32 %556, 30
  br i1 %.not101, label %558, label %557

557:                                              ; preds = %555
  call void @abort() #4
  br label %UnifiedUnreachableBlock

558:                                              ; preds = %555
  %559 = call i32 @my_popcountll(i64 noundef 4294967296)
  %.not102 = icmp eq i32 %559, 1
  br i1 %.not102, label %561, label %560

560:                                              ; preds = %558
  call void @abort() #4
  br label %UnifiedUnreachableBlock

561:                                              ; preds = %558
  %562 = call i32 @my_parityll(i64 noundef 4294967296)
  %.not103 = icmp eq i32 %562, 1
  br i1 %.not103, label %564, label %563

563:                                              ; preds = %561
  call void @abort() #4
  br label %UnifiedUnreachableBlock

564:                                              ; preds = %561
  %565 = call i32 @my_ffsll(i64 noundef 2147483648)
  %.not104 = icmp eq i32 %565, 32
  br i1 %.not104, label %567, label %566

566:                                              ; preds = %564
  call void @abort() #4
  br label %UnifiedUnreachableBlock

567:                                              ; preds = %564
  %568 = call i32 @my_clzll(i64 noundef 2147483648)
  %.not105 = icmp eq i32 %568, 32
  br i1 %.not105, label %570, label %569

569:                                              ; preds = %567
  call void @abort() #4
  br label %UnifiedUnreachableBlock

570:                                              ; preds = %567
  %571 = call i32 @my_ctzll(i64 noundef 2147483648)
  %.not106 = icmp eq i32 %571, 31
  br i1 %.not106, label %573, label %572

572:                                              ; preds = %570
  call void @abort() #4
  br label %UnifiedUnreachableBlock

573:                                              ; preds = %570
  %574 = call i32 @my_clrsbll(i64 noundef 2147483648)
  %.not107 = icmp eq i32 %574, 31
  br i1 %.not107, label %576, label %575

575:                                              ; preds = %573
  call void @abort() #4
  br label %UnifiedUnreachableBlock

576:                                              ; preds = %573
  %577 = call i32 @my_popcountll(i64 noundef 2147483648)
  %.not108 = icmp eq i32 %577, 1
  br i1 %.not108, label %579, label %578

578:                                              ; preds = %576
  call void @abort() #4
  br label %UnifiedUnreachableBlock

579:                                              ; preds = %576
  %580 = call i32 @my_parityll(i64 noundef 2147483648)
  %.not109 = icmp eq i32 %580, 1
  br i1 %.not109, label %582, label %581

581:                                              ; preds = %579
  call void @abort() #4
  br label %UnifiedUnreachableBlock

582:                                              ; preds = %579
  %583 = call i32 @my_ffsll(i64 noundef -6510615555426900571)
  %.not110 = icmp eq i32 %583, 1
  br i1 %.not110, label %585, label %584

584:                                              ; preds = %582
  call void @abort() #4
  br label %UnifiedUnreachableBlock

585:                                              ; preds = %582
  %586 = call i32 @my_clzll(i64 noundef -6510615555426900571)
  %.not111 = icmp eq i32 %586, 0
  br i1 %.not111, label %588, label %587

587:                                              ; preds = %585
  call void @abort() #4
  br label %UnifiedUnreachableBlock

588:                                              ; preds = %585
  %589 = call i32 @my_ctzll(i64 noundef -6510615555426900571)
  %.not112 = icmp eq i32 %589, 0
  br i1 %.not112, label %591, label %590

590:                                              ; preds = %588
  call void @abort() #4
  br label %UnifiedUnreachableBlock

591:                                              ; preds = %588
  %592 = call i32 @my_clrsbll(i64 noundef -6510615555426900571)
  %.not113 = icmp eq i32 %592, 0
  br i1 %.not113, label %594, label %593

593:                                              ; preds = %591
  call void @abort() #4
  br label %UnifiedUnreachableBlock

594:                                              ; preds = %591
  %595 = call i32 @my_popcountll(i64 noundef -6510615555426900571)
  %.not114 = icmp eq i32 %595, 32
  br i1 %.not114, label %597, label %596

596:                                              ; preds = %594
  call void @abort() #4
  br label %UnifiedUnreachableBlock

597:                                              ; preds = %594
  %598 = call i32 @my_parityll(i64 noundef -6510615555426900571)
  %.not115 = icmp eq i32 %598, 0
  br i1 %.not115, label %600, label %599

599:                                              ; preds = %597
  call void @abort() #4
  br label %UnifiedUnreachableBlock

600:                                              ; preds = %597
  %601 = call i32 @my_ffsll(i64 noundef 6510615555426900570)
  %.not116 = icmp eq i32 %601, 2
  br i1 %.not116, label %603, label %602

602:                                              ; preds = %600
  call void @abort() #4
  br label %UnifiedUnreachableBlock

603:                                              ; preds = %600
  %604 = call i32 @my_clzll(i64 noundef 6510615555426900570)
  %.not117 = icmp eq i32 %604, 1
  br i1 %.not117, label %606, label %605

605:                                              ; preds = %603
  call void @abort() #4
  br label %UnifiedUnreachableBlock

606:                                              ; preds = %603
  %607 = call i32 @my_ctzll(i64 noundef 6510615555426900570)
  %.not118 = icmp eq i32 %607, 1
  br i1 %.not118, label %609, label %608

608:                                              ; preds = %606
  call void @abort() #4
  br label %UnifiedUnreachableBlock

609:                                              ; preds = %606
  %610 = call i32 @my_clrsbll(i64 noundef 6510615555426900570)
  %.not119 = icmp eq i32 %610, 0
  br i1 %.not119, label %612, label %611

611:                                              ; preds = %609
  call void @abort() #4
  br label %UnifiedUnreachableBlock

612:                                              ; preds = %609
  %613 = call i32 @my_popcountll(i64 noundef 6510615555426900570)
  %.not120 = icmp eq i32 %613, 32
  br i1 %.not120, label %615, label %614

614:                                              ; preds = %612
  call void @abort() #4
  br label %UnifiedUnreachableBlock

615:                                              ; preds = %612
  %616 = call i32 @my_parityll(i64 noundef 6510615555426900570)
  %.not121 = icmp eq i32 %616, 0
  br i1 %.not121, label %618, label %617

617:                                              ; preds = %615
  call void @abort() #4
  br label %UnifiedUnreachableBlock

618:                                              ; preds = %615
  %619 = call i32 @my_ffsll(i64 noundef -3819392241693097984)
  %.not122 = icmp eq i32 %619, 34
  br i1 %.not122, label %621, label %620

620:                                              ; preds = %618
  call void @abort() #4
  br label %UnifiedUnreachableBlock

621:                                              ; preds = %618
  %622 = call i32 @my_clzll(i64 noundef -3819392241693097984)
  %.not123 = icmp eq i32 %622, 0
  br i1 %.not123, label %624, label %623

623:                                              ; preds = %621
  call void @abort() #4
  br label %UnifiedUnreachableBlock

624:                                              ; preds = %621
  %625 = call i32 @my_ctzll(i64 noundef -3819392241693097984)
  %.not124 = icmp eq i32 %625, 33
  br i1 %.not124, label %627, label %626

626:                                              ; preds = %624
  call void @abort() #4
  br label %UnifiedUnreachableBlock

627:                                              ; preds = %624
  %628 = call i32 @my_clrsbll(i64 noundef -3819392241693097984)
  %.not125 = icmp eq i32 %628, 1
  br i1 %.not125, label %630, label %629

629:                                              ; preds = %627
  call void @abort() #4
  br label %UnifiedUnreachableBlock

630:                                              ; preds = %627
  %631 = call i32 @my_popcountll(i64 noundef -3819392241693097984)
  %.not126 = icmp eq i32 %631, 22
  br i1 %.not126, label %633, label %632

632:                                              ; preds = %630
  call void @abort() #4
  br label %UnifiedUnreachableBlock

633:                                              ; preds = %630
  %634 = call i32 @my_parityll(i64 noundef -3819392241693097984)
  %.not127 = icmp eq i32 %634, 0
  br i1 %.not127, label %636, label %635

635:                                              ; preds = %633
  call void @abort() #4
  br label %UnifiedUnreachableBlock

636:                                              ; preds = %633
  %637 = call i32 @my_ffsll(i64 noundef 223195676147712)
  %.not128 = icmp eq i32 %637, 18
  br i1 %.not128, label %639, label %638

638:                                              ; preds = %636
  call void @abort() #4
  br label %UnifiedUnreachableBlock

639:                                              ; preds = %636
  %640 = call i32 @my_clzll(i64 noundef 223195676147712)
  %.not129 = icmp eq i32 %640, 16
  br i1 %.not129, label %642, label %641

641:                                              ; preds = %639
  call void @abort() #4
  br label %UnifiedUnreachableBlock

642:                                              ; preds = %639
  %643 = call i32 @my_ctzll(i64 noundef 223195676147712)
  %.not130 = icmp eq i32 %643, 17
  br i1 %.not130, label %645, label %644

644:                                              ; preds = %642
  call void @abort() #4
  br label %UnifiedUnreachableBlock

645:                                              ; preds = %642
  %646 = call i32 @my_clrsbll(i64 noundef 223195676147712)
  %.not131 = icmp eq i32 %646, 15
  br i1 %.not131, label %648, label %647

647:                                              ; preds = %645
  call void @abort() #4
  br label %UnifiedUnreachableBlock

648:                                              ; preds = %645
  %649 = call i32 @my_popcountll(i64 noundef 223195676147712)
  %.not132 = icmp eq i32 %649, 22
  br i1 %.not132, label %651, label %650

650:                                              ; preds = %648
  call void @abort() #4
  br label %UnifiedUnreachableBlock

651:                                              ; preds = %648
  %652 = call i32 @my_parityll(i64 noundef 223195676147712)
  %.not133 = icmp eq i32 %652, 0
  br i1 %.not133, label %654, label %653

653:                                              ; preds = %651
  call void @abort() #4
  br label %UnifiedUnreachableBlock

654:                                              ; preds = %651
  %655 = call i32 @my_ffsll(i64 noundef 3405695742)
  %.not134 = icmp eq i32 %655, 2
  br i1 %.not134, label %657, label %656

656:                                              ; preds = %654
  call void @abort() #4
  br label %UnifiedUnreachableBlock

657:                                              ; preds = %654
  %658 = call i32 @my_clzll(i64 noundef 3405695742)
  %.not135 = icmp eq i32 %658, 32
  br i1 %.not135, label %660, label %659

659:                                              ; preds = %657
  call void @abort() #4
  br label %UnifiedUnreachableBlock

660:                                              ; preds = %657
  %661 = call i32 @my_ctzll(i64 noundef 3405695742)
  %.not136 = icmp eq i32 %661, 1
  br i1 %.not136, label %663, label %662

662:                                              ; preds = %660
  call void @abort() #4
  br label %UnifiedUnreachableBlock

663:                                              ; preds = %660
  %664 = call i32 @my_clrsbll(i64 noundef 3405695742)
  %.not137 = icmp eq i32 %664, 31
  br i1 %.not137, label %666, label %665

665:                                              ; preds = %663
  call void @abort() #4
  br label %UnifiedUnreachableBlock

666:                                              ; preds = %663
  %667 = call i32 @my_popcountll(i64 noundef 3405695742)
  %.not138 = icmp eq i32 %667, 22
  br i1 %.not138, label %669, label %668

668:                                              ; preds = %666
  call void @abort() #4
  br label %UnifiedUnreachableBlock

669:                                              ; preds = %666
  %670 = call i32 @my_parityll(i64 noundef 3405695742)
  %.not139 = icmp eq i32 %670, 0
  br i1 %.not139, label %672, label %671

671:                                              ; preds = %669
  call void @abort() #4
  br label %UnifiedUnreachableBlock

672:                                              ; preds = %669
  %673 = call i32 @my_ffsll(i64 noundef -1)
  %.not140 = icmp eq i32 %673, 1
  br i1 %.not140, label %675, label %674

674:                                              ; preds = %672
  call void @abort() #4
  br label %UnifiedUnreachableBlock

675:                                              ; preds = %672
  %676 = call i32 @my_clzll(i64 noundef -1)
  %.not141 = icmp eq i32 %676, 0
  br i1 %.not141, label %678, label %677

677:                                              ; preds = %675
  call void @abort() #4
  br label %UnifiedUnreachableBlock

678:                                              ; preds = %675
  %679 = call i32 @my_ctzll(i64 noundef -1)
  %.not142 = icmp eq i32 %679, 0
  br i1 %.not142, label %681, label %680

680:                                              ; preds = %678
  call void @abort() #4
  br label %UnifiedUnreachableBlock

681:                                              ; preds = %678
  %682 = call i32 @my_clrsbll(i64 noundef -1)
  %.not143 = icmp eq i32 %682, 63
  br i1 %.not143, label %684, label %683

683:                                              ; preds = %681
  call void @abort() #4
  br label %UnifiedUnreachableBlock

684:                                              ; preds = %681
  %685 = call i32 @my_popcountll(i64 noundef -1)
  %.not144 = icmp eq i32 %685, 64
  br i1 %.not144, label %687, label %686

686:                                              ; preds = %684
  call void @abort() #4
  br label %UnifiedUnreachableBlock

687:                                              ; preds = %684
  %688 = call i32 @my_parityll(i64 noundef -1)
  %.not145 = icmp eq i32 %688, 0
  br i1 %.not145, label %690, label %689

689:                                              ; preds = %687
  call void @abort() #4
  br label %UnifiedUnreachableBlock

690:                                              ; preds = %687
  call void @exit(i32 noundef 0) #4
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %690, %689, %686, %683, %680, %677, %674, %671, %668, %665, %662, %659, %656, %653, %650, %647, %644, %641, %638, %635, %632, %629, %626, %623, %620, %617, %614, %611, %608, %605, %602, %599, %596, %593, %590, %587, %584, %581, %578, %575, %572, %569, %566, %563, %560, %557, %554, %551, %548, %545, %542, %539, %536, %533, %530, %527, %524, %521, %518, %515, %512, %509, %506, %503, %500, %497, %494, %491, %488, %485, %482, %479, %476, %473, %470, %467, %464, %461, %458, %455, %452, %449, %446, %443, %440, %437, %434, %431, %428, %425, %422, %419, %416, %413, %410, %407, %404, %401, %398, %395, %392, %389, %386, %383, %380, %377, %374, %371, %368, %365, %362, %359, %356, %353, %350, %347, %344, %341, %338, %335, %332, %329, %326, %323, %320, %317, %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %248, %236, %225, %212, %197, %182, %162, %150, %139, %126, %111, %96, %76, %65, %55, %43, %29, %15
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.cttz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = !{i32 0, i32 33}
!24 = distinct !{!24, !5}
!25 = !{i64 0, i64 65}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
