; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/add.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_add(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %3, align 2
  %7 = sext i16 %6 to i64
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i64
  %10 = add nsw i64 %7, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, -32768
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %15, 32767
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i64 [ 32767, %17 ], [ %19, %18 ]
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i64 [ -32768, %13 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i16
  ret i16 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_sub(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %3, align 2
  %7 = sext i16 %6 to i64
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i64
  %10 = sub nsw i64 %7, %9
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %11, -32768
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp sgt i64 %15, 32767
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %20

18:                                               ; preds = %14
  %19 = load i64, i64* %5, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i64 [ 32767, %17 ], [ %19, %18 ]
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i64 [ -32768, %13 ], [ %21, %20 ]
  %24 = trunc i64 %23 to i16
  ret i16 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_mult(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %6 = load i16, i16* %4, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp eq i32 %7, -32768
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %11, -32768
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i16 32767, i16* %3, align 2
  br label %22

14:                                               ; preds = %9, %2
  %15 = load i16, i16* %4, align 2
  %16 = sext i16 %15 to i64
  %17 = load i16, i16* %5, align 2
  %18 = sext i16 %17 to i64
  %19 = mul nsw i64 %16, %18
  %20 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %19, i32 noundef 15)
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %3, align 2
  br label %22

22:                                               ; preds = %14, %13
  %23 = load i16, i16* %3, align 2
  ret i16 %23
}

declare dso_local i32 @SASR(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_mult_r(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i16, i16* %4, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp eq i32 %12, -32768
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i16 32767, i16* %3, align 2
  br label %27

15:                                               ; preds = %10, %2
  %16 = load i16, i16* %4, align 2
  %17 = sext i16 %16 to i64
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i64
  %20 = mul nsw i64 %17, %19
  %21 = add nsw i64 %20, 16384
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = ashr i64 %22, 15
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %24, 65535
  %26 = trunc i64 %25 to i16
  store i16 %26, i16* %3, align 2
  br label %27

27:                                               ; preds = %15, %14
  %28 = load i16, i16* %3, align 2
  ret i16 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_abs(i16 noundef signext %0) #0 {
  %2 = alloca i16, align 2
  store i16 %0, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = sext i16 %3 to i32
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i16, i16* %2, align 2
  %8 = sext i16 %7 to i32
  %9 = icmp eq i32 %8, -32768
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %15

11:                                               ; preds = %6
  %12 = load i16, i16* %2, align 2
  %13 = sext i16 %12 to i32
  %14 = sub nsw i32 0, %13
  br label %15

15:                                               ; preds = %11, %10
  %16 = phi i32 [ 32767, %10 ], [ %14, %11 ]
  br label %20

17:                                               ; preds = %1
  %18 = load i16, i16* %2, align 2
  %19 = sext i16 %18 to i32
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %16, %15 ], [ %19, %17 ]
  %22 = trunc i32 %21 to i16
  ret i16 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_mult(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %3, align 2
  %6 = sext i16 %5 to i32
  %7 = icmp ne i32 %6, -32768
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp ne i32 %10, -32768
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %14

13:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.gsm_L_mult, i64 0, i64 0)) #3
  unreachable

14:                                               ; preds = %12
  %15 = load i16, i16* %3, align 2
  %16 = sext i16 %15 to i64
  %17 = load i16, i16* %4, align 2
  %18 = sext i16 %17 to i64
  %19 = mul nsw i64 %16, %18
  %20 = shl i64 %19, 1
  ret i64 %20
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_add(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %3, align 8
  br label %52

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = add nsw i64 %18, 1
  %20 = sub nsw i64 0, %19
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %21, 1
  %23 = sub nsw i64 0, %22
  %24 = add i64 %20, %23
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp uge i64 %25, 2147483647
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  %30 = sub nsw i64 0, %29
  %31 = sub nsw i64 %30, 2
  br label %32

32:                                               ; preds = %28, %27
  %33 = phi i64 [ -2147483648, %27 ], [ %31, %28 ]
  store i64 %33, i64* %3, align 8
  br label %52

34:                                               ; preds = %2
  %35 = load i64, i64* %5, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %3, align 8
  br label %52

41:                                               ; preds = %34
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %42, %43
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ugt i64 %45, 2147483647
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i64 [ 2147483647, %47 ], [ %49, %48 ]
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %50, %37, %32, %13
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_sub(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = sub nsw i64 %14, %15
  store i64 %16, i64* %3, align 8
  br label %53

17:                                               ; preds = %10
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = add nsw i64 %19, 1
  %21 = sub nsw i64 0, %20
  %22 = add i64 %18, %21
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp uge i64 %23, 2147483647
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %29

26:                                               ; preds = %17
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i64 [ 2147483647, %25 ], [ %28, %26 ]
  store i64 %30, i64* %3, align 8
  br label %53

31:                                               ; preds = %2
  %32 = load i64, i64* %5, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %3, align 8
  br label %53

38:                                               ; preds = %31
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %39, 1
  %41 = sub nsw i64 0, %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp uge i64 %44, 2147483647
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %51

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = sub nsw i64 0, %48
  %50 = sub nsw i64 %49, 1
  br label %51

51:                                               ; preds = %47, %46
  %52 = phi i64 [ -2147483648, %46 ], [ %50, %47 ]
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %51, %34, %29, %13
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_norm(i64 noundef %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 137, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.gsm_norm, i64 0, i64 0)) #3
  unreachable

8:                                                ; preds = %6
  %9 = load i64, i64* %3, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = icmp sle i64 %12, -1073741824
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i16 0, i16* %2, align 2
  br label %68

15:                                               ; preds = %11
  %16 = load i64, i64* %3, align 8
  %17 = xor i64 %16, -1
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %15, %8
  %19 = load i64, i64* %3, align 8
  %20 = and i64 %19, 4294901760
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, 4278190080
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = ashr i64 %27, 24
  %29 = and i64 255, %28
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 -1, %32
  br label %42

34:                                               ; preds = %22
  %35 = load i64, i64* %3, align 8
  %36 = ashr i64 %35, 16
  %37 = and i64 255, %36
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 7, %40
  br label %42

42:                                               ; preds = %34, %26
  %43 = phi i32 [ %33, %26 ], [ %41, %34 ]
  br label %65

44:                                               ; preds = %18
  %45 = load i64, i64* %3, align 8
  %46 = and i64 %45, 65280
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = ashr i64 %49, 8
  %51 = and i64 255, %50
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 15, %54
  br label %63

56:                                               ; preds = %44
  %57 = load i64, i64* %3, align 8
  %58 = and i64 255, %57
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [128 x i8], [128 x i8] }>* @bitoff to [256 x i8]*), i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = add nsw i32 23, %61
  br label %63

63:                                               ; preds = %56, %48
  %64 = phi i32 [ %55, %48 ], [ %62, %56 ]
  br label %65

65:                                               ; preds = %63, %42
  %66 = phi i32 [ %43, %42 ], [ %64, %63 ]
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %2, align 2
  br label %68

68:                                               ; preds = %65, %14
  %69 = load i16, i16* %2, align 2
  ret i16 %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_asl(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %31

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, -32
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = sub nsw i32 0, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %3, align 8
  br label %31

18:                                               ; preds = %9
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i64 @gsm_L_asr(i64 noundef %22, i32 noundef %24)
  store i64 %25, i64* %3, align 8
  br label %31

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 %27, %29
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %26, %21, %12, %8
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @gsm_L_asr(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 32
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = sub nsw i32 0, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  br label %42

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %15, -32
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %42

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  %25 = zext i32 %24 to i64
  %26 = shl i64 %22, %25
  store i64 %26, i64* %3, align 8
  br label %42

27:                                               ; preds = %18
  %28 = load i64, i64* %4, align 8
  %29 = icmp sge i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = ashr i64 %31, %33
  store i64 %34, i64* %3, align 8
  br label %42

35:                                               ; preds = %27
  %36 = load i64, i64* %4, align 8
  %37 = sub i64 0, %36
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = lshr i64 %37, %39
  %41 = sub nsw i64 0, %40
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %35, %30, %21, %17, %8
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_asl(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 16
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i16 0, i16* %3, align 2
  br label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sle i32 %10, -16
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = sub nsw i32 0, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %3, align 2
  br label %33

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i16, i16* %4, align 2
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  %26 = call signext i16 @gsm_asr(i16 noundef signext %23, i32 noundef %25)
  store i16 %26, i16* %3, align 2
  br label %33

27:                                               ; preds = %19
  %28 = load i16, i16* %4, align 2
  %29 = sext i16 %28 to i32
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %29, %30
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %3, align 2
  br label %33

33:                                               ; preds = %27, %22, %12, %8
  %34 = load i16, i16* %3, align 2
  ret i16 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_asr(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 16
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp slt i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = sub nsw i32 0, %12
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %3, align 2
  br label %49

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, -16
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i16 0, i16* %3, align 2
  br label %49

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i16, i16* %4, align 2
  %24 = sext i16 %23 to i32
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  %27 = shl i32 %24, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %3, align 2
  br label %49

29:                                               ; preds = %19
  %30 = load i16, i16* %4, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i16, i16* %4, align 2
  %35 = sext i16 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %35, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %3, align 2
  br label %49

39:                                               ; preds = %29
  %40 = load i16, i16* %4, align 2
  %41 = zext i16 %40 to i32
  %42 = sub nsw i32 0, %41
  %43 = load i32, i32* %5, align 4
  %44 = ashr i32 %42, %43
  %45 = trunc i32 %44 to i16
  %46 = sext i16 %45 to i32
  %47 = sub nsw i32 0, %46
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %3, align 2
  br label %49

49:                                               ; preds = %39, %33, %22, %18, %8
  %50 = load i16, i16* %3, align 2
  ret i16 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @gsm_div(i16 noundef signext %0, i16 noundef signext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %10 = load i16, i16* %4, align 2
  %11 = sext i16 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i16, i16* %5, align 2
  %13 = sext i16 %12 to i64
  store i64 %13, i64* %7, align 8
  store i16 0, i16* %8, align 2
  store i32 15, i32* %9, align 4
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i16, i16* %5, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %4, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %25

24:                                               ; preds = %17, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 220, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @__PRETTY_FUNCTION__.gsm_div, i64 0, i64 0)) #3
  unreachable

25:                                               ; preds = %23
  %26 = load i16, i16* %4, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i16 0, i16* %3, align 2
  br label %54

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %31
  %36 = load i16, i16* %8, align 2
  %37 = sext i16 %36 to i32
  %38 = shl i32 %37, 1
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %8, align 2
  %40 = load i64, i64* %6, align 8
  %41 = shl i64 %40, 1
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load i16, i16* %8, align 2
  %50 = add i16 %49, 1
  store i16 %50, i16* %8, align 2
  br label %51

51:                                               ; preds = %45, %35
  br label %31, !llvm.loop !4

52:                                               ; preds = %31
  %53 = load i16, i16* %8, align 2
  store i16 %53, i16* %3, align 2
  br label %54

54:                                               ; preds = %52, %29
  %55 = load i16, i16* %3, align 2
  ret i16 %55
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
