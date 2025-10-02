; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/aha/aha.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/aha/aha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32 (i32, i32, i32)*, i32, i32, [3 x i32], i8*, i8*, i8* }
%struct.anon.0 = type { i32, [3 x i32] }

@debug = dso_local constant i32 0, align 4
@counters = dso_local constant i32 1, align 4
@trialx = dso_local global [17 x i32] [i32 1, i32 0, i32 -1, i32 -2147483648, i32 2147483647, i32 -2147483647, i32 2147483646, i32 19088743, i32 -1985229329, i32 -2, i32 2, i32 -3, i32 3, i32 -64, i32 64, i32 -5, i32 -31415], align 16
@dummy1 = dso_local global [7 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3], align 16
@dummy2 = dso_local global [4 x i32] [i32 1, i32 2, i32 30, i32 31], align 16
@unacceptable = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"~(\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"divu\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" /u \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" & \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" ^ \00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"shl\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" << \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"shr\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" >>u \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"shrs\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c" >>s \00", align 1
@isa = dso_local global [13 x %struct.anon] [%struct.anon { i32 (i32, i32, i32)* @neg, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Not, i32 1, i32 0, [3 x i32] [i32 11, i32 0, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @add, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @sub, i32 2, i32 0, [3 x i32] [i32 2, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @mul, i32 2, i32 1, [3 x i32] [i32 11, i32 3, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @divide, i32 2, i32 0, [3 x i32] [i32 1, i32 3, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @divu, i32 2, i32 0, [3 x i32] [i32 1, i32 1, i32 0], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @And, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Or, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @Xor, i32 2, i32 1, [3 x i32] [i32 11, i32 2, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shl, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shr, i32 2, i32 0, [3 x i32] [i32 1, i32 7, i32 0], i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0) }, %struct.anon { i32 (i32, i32, i32)* @shrs, i32 2, i32 0, [3 x i32] [i32 3, i32 7, i32 0], i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0) }], align 16
@r = dso_local global [17 x i32] [i32 0, i32 -1, i32 1, i32 -2147483648, i32 -2, i32 2, i32 3, i32 1, i32 2, i32 30, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@.str.28 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0x%X\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@pgm = dso_local global [5 x %struct.anon.0] zeroinitializer, align 16
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c")\00", align 1
@numi = dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [13 x i8] c"   %-5s r%d,\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"r%d\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"   Expr: \00", align 1
@check.itrialx = internal global i32 0, align 4
@corr_result = dso_local global i32 0, align 4
@correct_result = dso_local global [17 x i32] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [32 x i8] c"\0AFound a %d-operation program:\0A\00", align 1
@.str.40 = private unnamed_addr constant [44 x i8] c"Searching for programs with %d operations.\0A\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"Found %d solutions.\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"Counters = \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@counter = dso_local global [5 x i32] zeroinitializer, align 16
@.str.44 = private unnamed_addr constant [12 x i8] c"total = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @neg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Not(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = xor i32 %7, -1
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pop(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = lshr i32 %10, 1
  %12 = and i32 %11, 1431655765
  %13 = sub i32 %9, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 858993459
  %16 = load i32, i32* %7, align 4
  %17 = lshr i32 %16, 2
  %18 = and i32 %17, 858993459
  %19 = add i32 %15, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = lshr i32 %21, 4
  %23 = add i32 %20, %22
  %24 = and i32 %23, 252645135
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 8
  %28 = add i32 %25, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 16
  %32 = add i32 %29, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %33, 24
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nlz(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 32, i32* %4, align 4
  br label %54

14:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ule i32 %15, 65535
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %9, align 4
  %19 = add nsw i32 %18, 16
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = shl i32 %20, 16
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* %8, align 4
  %24 = icmp ule i32 %23, 16777215
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, 8
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i32, i32* %8, align 4
  %32 = icmp ule i32 %31, 268435455
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 4
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp ule i32 %39, 1073741823
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 2
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 2
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %8, align 4
  %48 = icmp ule i32 %47, 2147483647
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rev(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = and i32 %9, 1431655765
  %11 = shl i32 %10, 1
  %12 = load i32, i32* %7, align 4
  %13 = lshr i32 %12, 1
  %14 = and i32 %13, 1431655765
  %15 = or i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 858993459
  %18 = shl i32 %17, 2
  %19 = load i32, i32* %7, align 4
  %20 = lshr i32 %19, 2
  %21 = and i32 %20, 858993459
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 252645135
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %7, align 4
  %27 = lshr i32 %26, 4
  %28 = and i32 %27, 252645135
  %29 = or i32 %25, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 24
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 65280
  %34 = shl i32 %33, 8
  %35 = or i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 65280
  %39 = or i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = lshr i32 %40, 24
  %42 = or i32 %39, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @add(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sub nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mul(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = mul nsw i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @divide(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, -2147483648
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 1, i32* @unacceptable, align 4
  store i32 0, i32* %4, align 4
  br label %21

17:                                               ; preds = %13, %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @divu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 1, i32* @unacceptable, align 4
  store i32 0, i32* %4, align 4
  br label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = udiv i32 %12, %13
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %11, %10
  %16 = load i32, i32* %4, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @And(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Or(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = or i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Xor(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = xor i32 %7, %8
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rotl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 63
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %7, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 32, %14
  %16 = lshr i32 %13, %15
  %17 = or i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @shl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 63
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @shr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 63
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %18

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %8, align 4
  %17 = lshr i32 %15, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @shrs(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = and i32 %9, 63
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp sge i32 %11, 32
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 31
  store i32 %15, i32* %4, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %8, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmpeq(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmplt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cmpltu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %7, %8
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @seleq(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sellt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @selle(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  br label %13

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_expr(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 -31, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sle i32 %18, 31
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %24)
  br label %32

26:                                               ; preds = %14, %8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef %30)
  br label %32

32:                                               ; preds = %26, %20
  br label %92

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 11
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0))
  br label %91

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = sub nsw i32 %39, 12
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 16
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %87, %38
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %53, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %52
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %63, i32 0, i32 1
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %64, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  call void @print_expr(i32 noundef %68)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = icmp slt i32 %69, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %60
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 6
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %82)
  br label %86

84:                                               ; preds = %60
  %85 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %52, !llvm.loop !4

90:                                               ; preds = %52
  br label %91

91:                                               ; preds = %90, %36
  br label %92

92:                                               ; preds = %91, %32
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_pgm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %87, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @numi, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %90

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef %19, i32 noundef %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %82, %9
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %23
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %34, i32 0, i32 1
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %35, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 11
  br i1 %41, label %42, label %59

42:                                               ; preds = %31
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp sge i32 %47, -31
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp sle i32 %50, 31
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %53)
  br label %58

55:                                               ; preds = %49, %42
  %56 = load i32, i32* %4, align 4
  %57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef %56)
  br label %58

58:                                               ; preds = %55, %52
  br label %70

59:                                               ; preds = %31
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %60, 11
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  br label %69

64:                                               ; preds = %59
  %65 = load i32, i32* %4, align 4
  %66 = sub nsw i32 %65, 12
  %67 = add nsw i32 %66, 1
  %68 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i32 noundef %67)
  br label %69

69:                                               ; preds = %64, %62
  br label %70

70:                                               ; preds = %69, %58
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %71, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %23, !llvm.loop !6

85:                                               ; preds = %23
  %86 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %5, !llvm.loop !7

90:                                               ; preds = %5
  %91 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0))
  %92 = load i32, i32* @numi, align 4
  %93 = sub nsw i32 %92, 1
  %94 = add nsw i32 %93, 12
  call void @print_expr(i32 noundef %94)
  %95 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %11, %1
  %6 = load i32, i32* %3, align 4
  call void @simulate_one_instruction(i32 noundef %6)
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @numi, align 4
  %9 = sub nsw i32 %8, 1
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* @unacceptable, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* @unacceptable, align 4
  store i32 0, i32* %2, align 4
  br label %75

18:                                               ; preds = %14
  %19 = load i32, i32* @numi, align 4
  %20 = sub nsw i32 %19, 1
  %21 = add nsw i32 %20, 12
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @corr_result, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %75

28:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %74

32:                                               ; preds = %29
  %33 = load i32, i32* @check.itrialx, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @check.itrialx, align 4
  %35 = load i32, i32* @check.itrialx, align 4
  %36 = icmp sge i32 %35, 17
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* @check.itrialx, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load i32, i32* @check.itrialx, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i64 0, i64 11), align 4
  %43 = load i32, i32* @check.itrialx, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* @corr_result, align 4
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %53, %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @numi, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  call void @simulate_one_instruction(i32 noundef %52)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %47, !llvm.loop !8

56:                                               ; preds = %47
  %57 = load i32, i32* @unacceptable, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* @unacceptable, align 4
  store i32 0, i32* %2, align 4
  br label %75

60:                                               ; preds = %56
  %61 = load i32, i32* @numi, align 4
  %62 = add nsw i32 %61, 12
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @corr_result, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %75

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  br label %29, !llvm.loop !9

74:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %69, %59, %27, %17
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind uwtable
define internal void @simulate_one_instruction(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 1
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %17, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %26, i32 0, i32 1
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %27, i64 0, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 16
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %41(i32 noundef %42, i32 noundef %43, i32 noundef %44)
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 12
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add i32 %53, 1
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fix_operands(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @numi, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %129

15:                                               ; preds = %1
  %16 = load i32, i32* @numi, align 4
  %17 = add nsw i32 %16, 12
  %18 = sub nsw i32 %17, 2
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %21, i32 0, i32 1
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %15
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %30, i32 0, i32 1
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %40, i32 0, i32 1
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %41, i64 0, i64 0
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %27, %15
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 12
  br i1 %47, label %48, label %128

48:                                               ; preds = %43
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %52, i32 0, i32 1
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %53, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %128

58:                                               ; preds = %48
  %59 = load i32, i32* %2, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %62, i32 0, i32 1
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %63, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %128

68:                                               ; preds = %58
  %69 = load i32, i32* %2, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %72, i32 0, i32 1
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %128

78:                                               ; preds = %68
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %81, i32 0, i32 1
  %83 = getelementptr inbounds [3 x i32], [3 x i32]* %82, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %128

87:                                               ; preds = %78
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %90, i32 0, i32 1
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %91, i64 0, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %128

96:                                               ; preds = %87
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 1
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %100, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %96
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %109, i32 0, i32 1
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %110, i64 0, i64 0
  store i32 %106, i32* %111, align 4
  br label %127

112:                                              ; preds = %96
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %2, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %123, i32 0, i32 1
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %124, i64 0, i64 1
  store i32 %120, i32* %125, align 4
  br label %126

126:                                              ; preds = %119, %112
  br label %127

127:                                              ; preds = %126, %105
  br label %128

128:                                              ; preds = %127, %87, %78, %68, %58, %48, %43
  br label %129

129:                                              ; preds = %128, %1
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %163

136:                                              ; preds = %129
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %139, i32 0, i32 1
  %141 = getelementptr inbounds [3 x i32], [3 x i32]* %140, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %2, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %145, i32 0, i32 1
  %147 = getelementptr inbounds [3 x i32], [3 x i32]* %146, i64 0, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %142, %148
  br i1 %149, label %150, label %162

150:                                              ; preds = %136
  %151 = load i32, i32* %2, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %153, i32 0, i32 1
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %154, i64 0, i64 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %159, i32 0, i32 1
  %161 = getelementptr inbounds [3 x i32], [3 x i32]* %160, i64 0, i64 0
  store i32 %156, i32* %161, align 4
  br label %162

162:                                              ; preds = %150, %136
  br label %207

163:                                              ; preds = %129
  %164 = load i32, i32* %2, align 4
  %165 = load i32, i32* @numi, align 4
  %166 = sub nsw i32 %165, 1
  %167 = icmp ne i32 %164, %166
  br i1 %167, label %168, label %207

168:                                              ; preds = %163
  %169 = load i32, i32* %2, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %171, i32 0, i32 1
  %173 = getelementptr inbounds [3 x i32], [3 x i32]* %172, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp slt i32 %174, 11
  br i1 %175, label %176, label %206

176:                                              ; preds = %168
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %179, i32 0, i32 1
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %180, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %182, 11
  br i1 %183, label %184, label %206

184:                                              ; preds = %176
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %186
  %188 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %187, i32 0, i32 1
  %189 = getelementptr inbounds [3 x i32], [3 x i32]* %188, i64 0, i64 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %190, 11
  br i1 %191, label %192, label %206

192:                                              ; preds = %184
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  call void @abort() #3
  unreachable

200:                                              ; preds = %192
  %201 = load i32, i32* %2, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %202
  %204 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %203, i32 0, i32 1
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %204, i64 0, i64 0
  store i32 11, i32* %205, align 4
  br label %206

206:                                              ; preds = %200, %184, %176, %168
  br label %207

207:                                              ; preds = %162, %206, %163
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @search() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @trialx, i64 0, i64 0), align 16
  store i32 %5, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i64 0, i64 11), align 4
  %6 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @correct_result, i64 0, i64 0), align 16
  store i32 %6, i32* @corr_result, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @check(i32 noundef %8)
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @numi, align 4
  %16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0), i32 noundef %15)
  call void (i32, ...) bitcast (void ()* @print_pgm to void (i32, ...)*)(i32 noundef 3)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %1, align 4
  br label %29

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21, %7
  %23 = call i32 @increment()
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %3, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %7, label %27, !llvm.loop !10

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %1, align 4
  br label %29

29:                                               ; preds = %27, %19
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @increment() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @numi, align 4
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %2, align 4
  br label %9

9:                                                ; preds = %178, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %181

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %93, %12
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %30, i32 0, i32 1
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %41, i32 0, i32 1
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %42, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %96

48:                                               ; preds = %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %54, i32 0, i32 1
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %55, i64 0, i64 %57
  store i32 11, i32* %58, align 4
  br label %96

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 12
  %63 = sub nsw i32 %62, 1
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %68, i32 0, i32 1
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %96

75:                                               ; preds = %59
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 3
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %88, i32 0, i32 1
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %89, i64 0, i64 %91
  store i32 %85, i32* %92, align 4
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %3, align 4
  br label %23, !llvm.loop !11

96:                                               ; preds = %65, %51, %38, %23
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %2, align 4
  store i32 %100, i32* %1, align 4
  br label %182

101:                                              ; preds = %96
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %2, align 4
  call void @fix_operands(i32 noundef %106)
  %107 = load i32, i32* %2, align 4
  store i32 %107, i32* %1, align 4
  br label %182

108:                                              ; preds = %101
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 12
  br i1 %110, label %111, label %154

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %117, i32 0, i32 0
  store i32 %114, i32* %118, align 16
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %121, i32 0, i32 3
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %122, i64 0, i64 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %2, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %127, i32 0, i32 1
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %128, i64 0, i64 0
  store i32 %124, i32* %129, align 4
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.anon, %struct.anon* %132, i32 0, i32 3
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %133, i64 0, i64 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %2, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %138, i32 0, i32 1
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %139, i64 0, i64 1
  store i32 %135, i32* %140, align 4
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.anon, %struct.anon* %143, i32 0, i32 3
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %144, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %149, i32 0, i32 1
  %151 = getelementptr inbounds [3 x i32], [3 x i32]* %150, i64 0, i64 2
  store i32 %146, i32* %151, align 4
  %152 = load i32, i32* %2, align 4
  call void @fix_operands(i32 noundef %152)
  %153 = load i32, i32* %2, align 4
  store i32 %153, i32* %1, align 4
  br label %182

154:                                              ; preds = %108
  %155 = load i32, i32* %2, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %157, i32 0, i32 0
  store i32 0, i32* %158, align 16
  %159 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 0), align 16
  %160 = load i32, i32* %2, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %162, i32 0, i32 1
  %164 = getelementptr inbounds [3 x i32], [3 x i32]* %163, i64 0, i64 0
  store i32 %159, i32* %164, align 4
  %165 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 1), align 4
  %166 = load i32, i32* %2, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %168, i32 0, i32 1
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %169, i64 0, i64 1
  store i32 %165, i32* %170, align 4
  %171 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 2), align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %174, i32 0, i32 1
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %175, i64 0, i64 2
  store i32 %171, i32* %176, align 4
  %177 = load i32, i32* %2, align 4
  call void @fix_operands(i32 noundef %177)
  br label %178

178:                                              ; preds = %154
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %2, align 4
  br label %9, !llvm.loop !12

181:                                              ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %182

182:                                              ; preds = %181, %111, %105, %99
  %183 = load i32, i32* %1, align 4
  ret i32 %183
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* @numi, align 4
  br label %9

9:                                                ; preds = %94, %2
  %10 = load i32, i32* @numi, align 4
  %11 = icmp sle i32 %10, 5
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i1 [ false, %9 ], [ %14, %12 ]
  br i1 %16, label %17, label %97

17:                                               ; preds = %15
  %18 = load i32, i32* @numi, align 4
  %19 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0), i32 noundef %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 17
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @userfun(i32 noundef %27)
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i64 0, i64 %30
  store i32 %28, i32* %31, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20, !llvm.loop !13

35:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %64, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @numi, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %43, i32 0, i32 0
  store i32 0, i32* %44, align 16
  %45 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 0), align 16
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %48, i32 0, i32 1
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 0
  store i32 %45, i32* %50, align 4
  %51 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 1), align 4
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %54, i32 0, i32 1
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %55, i64 0, i64 1
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 2), align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %60, i32 0, i32 1
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* %61, i64 0, i64 2
  store i32 %57, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  call void @fix_operands(i32 noundef %63)
  br label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %36, !llvm.loop !14

67:                                               ; preds = %36
  %68 = call i32 @search()
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 noundef %69)
  store i32 0, i32* %8, align 4
  %71 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %88, %67
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @numi, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 noundef %80)
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %82, %86
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %72, !llvm.loop !15

91:                                               ; preds = %72
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 noundef %92)
  br label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @numi, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @numi, align 4
  br label %9, !llvm.loop !16

97:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @userfun(i32 noundef) #1

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
attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }
attributes #3 = { noreturn nounwind }
attributes #4 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #5 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #6 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #7 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #8 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #9 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #10 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #11 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #12 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #13 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #14 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #15 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #16 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #17 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #18 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #19 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #20 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #21 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #22 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #23 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #24 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #25 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #26 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #27 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
attributes #28 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
