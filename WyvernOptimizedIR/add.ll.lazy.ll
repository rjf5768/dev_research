; ModuleID = './add.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"a != MIN_WORD || b != MIN_WORD\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/add.c\00", align 1
@__PRETTY_FUNCTION__.gsm_L_mult = private unnamed_addr constant [32 x i8] c"longword gsm_L_mult(word, word)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"a != 0\00", align 1
@__PRETTY_FUNCTION__.gsm_norm = private unnamed_addr constant [24 x i8] c"word gsm_norm(longword)\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"num >= 0 && denum >= num\00", align 1
@__PRETTY_FUNCTION__.gsm_div = private unnamed_addr constant [25 x i8] c"word gsm_div(word, word)\00", align 1
@bitoff = internal global <{ [128 x i8], [128 x i8] }> <{ [128 x i8] c"\08\07\06\06\05\05\05\05\04\04\04\04\04\04\04\04\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [128 x i8] zeroinitializer }>, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_add(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = sext i16 %0 to i64
  %4 = sext i16 %1 to i64
  %5 = add nsw i64 %3, %4
  %6 = icmp slt i64 %5, -32768
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = icmp sgt i64 %5, 32767
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i64 [ 32767, %10 ], [ %5, %11 ]
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i64 [ -32768, %7 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i16
  ret i16 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_sub(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = sext i16 %0 to i64
  %4 = sext i16 %1 to i64
  %5 = sub nsw i64 %3, %4
  %6 = icmp slt i64 %5, -32768
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %14

8:                                                ; preds = %2
  %9 = icmp sgt i64 %5, 32767
  br i1 %9, label %10, label %11

10:                                               ; preds = %8
  br label %12

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %11, %10
  %13 = phi i64 [ 32767, %10 ], [ %5, %11 ]
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i64 [ -32768, %7 ], [ %13, %12 ]
  %16 = trunc i64 %15 to i16
  ret i16 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_mult(i16 noundef signext %0, i16 noundef signext %1) #1 {
  %3 = icmp eq i16 %0, -32768
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = icmp eq i16 %1, -32768
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %13

7:                                                ; preds = %4, %2
  %8 = sext i16 %0 to i64
  %9 = sext i16 %1 to i64
  %10 = mul nsw i64 %8, %9
  %11 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %10, i32 noundef 15) #4
  %12 = trunc i32 %11 to i16
  br label %13

13:                                               ; preds = %7, %6
  %.0 = phi i16 [ 32767, %6 ], [ %12, %7 ]
  ret i16 %.0
}

declare dso_local i32 @SASR(...) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_mult_r(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = icmp eq i16 %1, -32768
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = icmp eq i16 %0, -32768
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  br label %14

7:                                                ; preds = %4, %2
  %8 = sext i16 %0 to i64
  %9 = sext i16 %1 to i64
  %10 = mul nsw i64 %8, %9
  %11 = add nsw i64 %10, 16384
  %12 = lshr i64 %11, 15
  %13 = trunc i64 %12 to i16
  br label %14

14:                                               ; preds = %7, %6
  %.0 = phi i16 [ 32767, %6 ], [ %13, %7 ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_abs(i16 noundef signext %0) #0 {
  %2 = icmp slt i16 %0, 0
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = icmp eq i16 %0, -32768
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %8

6:                                                ; preds = %3
  %7 = sub i16 0, %0
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i16 [ 32767, %5 ], [ %7, %6 ]
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i16 [ %9, %8 ], [ %0, %10 ]
  ret i16 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_mult(i16 noundef signext %0, i16 noundef signext %1) #1 {
  %.not = icmp eq i16 %0, -32768
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  %.not1 = icmp eq i16 %1, -32768
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3, %2
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.gsm_L_mult, i64 0, i64 0)) #5
  unreachable

6:                                                ; preds = %4
  %7 = sext i16 %0 to i64
  %8 = sext i16 %1 to i64
  %9 = mul nsw i64 %7, %8
  %10 = shl nsw i64 %9, 1
  ret i64 %10
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gsm_L_add(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp slt i64 %0, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = add nsw i64 %0, %1
  br label %29

8:                                                ; preds = %4
  %9 = xor i64 %0, -1
  %10 = xor i64 %1, -1
  %11 = add i64 %9, %10
  %12 = icmp ugt i64 %11, 2147483646
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %16

14:                                               ; preds = %8
  %15 = sub i64 -2, %11
  br label %16

16:                                               ; preds = %14, %13
  %17 = phi i64 [ -2147483648, %13 ], [ %15, %14 ]
  br label %29

18:                                               ; preds = %2
  %19 = icmp slt i64 %1, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = add nsw i64 %0, %1
  br label %29

22:                                               ; preds = %18
  %23 = add i64 %0, %1
  %24 = icmp ugt i64 %23, 2147483647
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %25
  %28 = phi i64 [ 2147483647, %25 ], [ %23, %26 ]
  br label %29

29:                                               ; preds = %27, %20, %16, %6
  %.0 = phi i64 [ %7, %6 ], [ %17, %16 ], [ %21, %20 ], [ %28, %27 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gsm_L_sub(i64 noundef %0, i64 noundef %1) #0 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = icmp sgt i64 %1, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = sub nsw i64 %0, %1
  br label %30

8:                                                ; preds = %4
  %9 = xor i64 %1, -1
  %10 = add i64 %9, %0
  %11 = icmp ugt i64 %10, 2147483646
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  br label %15

13:                                               ; preds = %8
  %14 = sub i64 %0, %1
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i64 [ 2147483647, %12 ], [ %14, %13 ]
  br label %30

17:                                               ; preds = %2
  %18 = icmp slt i64 %1, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = sub nsw i64 %0, %1
  br label %30

21:                                               ; preds = %17
  %22 = xor i64 %0, -1
  %23 = add i64 %22, %1
  %24 = icmp ugt i64 %23, 2147483646
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21
  %27 = sub i64 %0, %1
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i64 [ -2147483648, %25 ], [ %27, %26 ]
  br label %30

30:                                               ; preds = %28, %19, %15, %6
  %.0 = phi i64 [ %7, %6 ], [ %16, %15 ], [ %20, %19 ], [ %29, %28 ]
  ret i64 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_norm(i64 noundef %0) #1 {
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.gsm_norm, i64 0, i64 0)) #5
  unreachable

4:                                                ; preds = %2
  %5 = icmp slt i64 %0, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = icmp slt i64 %0, -1073741823
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %50

9:                                                ; preds = %6
  %10 = xor i64 %0, -1
  br label %11

11:                                               ; preds = %9, %4
  %.01 = phi i64 [ %10, %9 ], [ %0, %4 ]
  %12 = and i64 %.01, 4294901760
  %.not2 = icmp eq i64 %12, 0
  br i1 %.not2, label %31, label %13

13:                                               ; preds = %11
  %14 = and i64 %.01, 4278190080
  %.not4 = icmp eq i64 %14, 0
  br i1 %.not4, label %22, label %15

15:                                               ; preds = %13
  %16 = lshr i64 %.01, 24
  %17 = and i64 %16, 255
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i16
  %21 = add nsw i16 %20, -1
  br label %29

22:                                               ; preds = %13
  %23 = lshr i64 %.01, 16
  %24 = and i64 %23, 255
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i16
  %28 = add nuw nsw i16 %27, 7
  br label %29

29:                                               ; preds = %22, %15
  %30 = phi i16 [ %21, %15 ], [ %28, %22 ]
  br label %48

31:                                               ; preds = %11
  %32 = and i64 %.01, 65280
  %.not3 = icmp eq i64 %32, 0
  br i1 %.not3, label %40, label %33

33:                                               ; preds = %31
  %34 = lshr i64 %.01, 8
  %35 = and i64 %34, 255
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i16
  %39 = add nuw nsw i16 %38, 15
  br label %46

40:                                               ; preds = %31
  %41 = and i64 %.01, 255
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i16
  %45 = add nuw nsw i16 %44, 23
  br label %46

46:                                               ; preds = %40, %33
  %47 = phi i16 [ %39, %33 ], [ %45, %40 ]
  br label %48

48:                                               ; preds = %46, %29
  %49 = phi i16 [ %30, %29 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %8
  %.0 = phi i16 [ 0, %8 ], [ %49, %48 ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gsm_L_asl(i64 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %16

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, -31
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  %.lobit.neg = ashr i64 %0, 63
  br label %16

8:                                                ; preds = %5
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = call i64 @gsm_L_asr(i64 noundef %0, i32 noundef %11)
  br label %16

13:                                               ; preds = %8
  %14 = zext i32 %1 to i64
  %15 = shl i64 %0, %14
  br label %16

16:                                               ; preds = %13, %10, %7, %4
  %.0 = phi i64 [ 0, %4 ], [ %.lobit.neg, %7 ], [ %12, %10 ], [ %15, %13 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @gsm_L_asr(i64 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 31
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  %.lobit.neg = ashr i64 %0, 63
  br label %24

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, -31
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %24

8:                                                ; preds = %5
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = zext i32 %11 to i64
  %13 = shl i64 %0, %12
  br label %24

14:                                               ; preds = %8
  %15 = icmp sgt i64 %0, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = zext i32 %1 to i64
  %18 = ashr i64 %0, %17
  br label %24

19:                                               ; preds = %14
  %20 = sub i64 0, %0
  %21 = zext i32 %1 to i64
  %22 = lshr i64 %20, %21
  %23 = sub nsw i64 0, %22
  br label %24

24:                                               ; preds = %19, %16, %10, %7, %4
  %.0 = phi i64 [ %.lobit.neg, %4 ], [ 0, %7 ], [ %13, %10 ], [ %18, %16 ], [ %23, %19 ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_asl(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %17

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, -15
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  %.lobit.neg = ashr i16 %0, 15
  br label %17

8:                                                ; preds = %5
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = sub nsw i32 0, %1
  %12 = call signext i16 @gsm_asr(i16 noundef signext %0, i32 noundef %11)
  br label %17

13:                                               ; preds = %8
  %14 = zext i16 %0 to i32
  %15 = shl i32 %14, %1
  %16 = trunc i32 %15 to i16
  br label %17

17:                                               ; preds = %13, %10, %7, %4
  %.0 = phi i16 [ 0, %4 ], [ %.lobit.neg, %7 ], [ %12, %10 ], [ %16, %13 ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local signext i16 @gsm_asr(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 15
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  %.lobit.neg = ashr i16 %0, 15
  br label %27

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, -15
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %27

8:                                                ; preds = %5
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = zext i16 %0 to i32
  %12 = sub nsw i32 0, %1
  %13 = shl i32 %11, %12
  %14 = trunc i32 %13 to i16
  br label %27

15:                                               ; preds = %8
  %16 = icmp sgt i16 %0, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = sext i16 %0 to i32
  %19 = ashr i32 %18, %1
  %20 = trunc i32 %19 to i16
  br label %27

21:                                               ; preds = %15
  %22 = zext i16 %0 to i32
  %23 = sub nsw i32 0, %22
  %24 = ashr i32 %23, %1
  %25 = trunc i32 %24 to i16
  %26 = sub i16 0, %25
  br label %27

27:                                               ; preds = %21, %17, %10, %7, %4
  %.0 = phi i16 [ %.lobit.neg, %4 ], [ 0, %7 ], [ %14, %10 ], [ %20, %17 ], [ %26, %21 ]
  ret i16 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_div(i16 noundef signext %0, i16 noundef signext %1) #1 {
  %3 = sext i16 %0 to i64
  %4 = sext i16 %1 to i64
  %5 = icmp sgt i16 %0, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %.not = icmp slt i16 %1, %0
  br i1 %.not, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gsm_div, i64 0, i64 0)) #5
  unreachable

9:                                                ; preds = %7
  %10 = icmp eq i16 %0, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  br label %23

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %21, %12
  %.03 = phi i64 [ %3, %12 ], [ %.14, %21 ]
  %.02 = phi i16 [ 0, %12 ], [ %.1, %21 ]
  %.01 = phi i32 [ 15, %12 ], [ %14, %21 ]
  %14 = add nsw i32 %.01, -1
  %.not5 = icmp eq i32 %.01, 0
  br i1 %.not5, label %22, label %15

15:                                               ; preds = %13
  %16 = shl i16 %.02, 1
  %17 = shl i64 %.03, 1
  %.not6 = icmp slt i64 %17, %4
  br i1 %.not6, label %21, label %18

18:                                               ; preds = %15
  %19 = sub nsw i64 %17, %4
  %20 = or i16 %16, 1
  br label %21

21:                                               ; preds = %18, %15
  %.14 = phi i64 [ %19, %18 ], [ %17, %15 ]
  %.1 = phi i16 [ %20, %18 ], [ %16, %15 ]
  br label %13, !llvm.loop !4

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %11
  %.0 = phi i16 [ 0, %11 ], [ %.02, %22 ]
  ret i16 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
