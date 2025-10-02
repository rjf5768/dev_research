; ModuleID = './aha.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @neg(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = sub nsw i32 0, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Not(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, -1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @pop(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = lshr i32 %0, 1
  %5 = and i32 %4, 1431655765
  %6 = sub i32 %0, %5
  %7 = and i32 %6, 858993459
  %8 = lshr i32 %6, 2
  %9 = and i32 %8, 858993459
  %10 = add nuw nsw i32 %7, %9
  %11 = lshr i32 %10, 4
  %12 = add nuw nsw i32 %10, %11
  %13 = and i32 %12, 252645135
  %14 = mul i32 %13, 16843009
  %15 = lshr i32 %14, 24
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @nlz(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %30

6:                                                ; preds = %3
  %7 = icmp ult i32 %0, 65536
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = shl i32 %0, 16
  br label %10

10:                                               ; preds = %8, %6
  %.02 = phi i32 [ %9, %8 ], [ %0, %6 ]
  %.01 = phi i32 [ 16, %8 ], [ 0, %6 ]
  %11 = icmp ult i32 %.02, 16777216
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or i32 %.01, 8
  %14 = shl i32 %.02, 8
  br label %15

15:                                               ; preds = %12, %10
  %.13 = phi i32 [ %14, %12 ], [ %.02, %10 ]
  %.1 = phi i32 [ %13, %12 ], [ %.01, %10 ]
  %16 = icmp ult i32 %.13, 268435456
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = add nsw i32 %.1, 4
  %19 = shl i32 %.13, 4
  br label %20

20:                                               ; preds = %17, %15
  %.24 = phi i32 [ %19, %17 ], [ %.13, %15 ]
  %.2 = phi i32 [ %18, %17 ], [ %.1, %15 ]
  %21 = icmp ult i32 %.24, 1073741824
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = add nsw i32 %.2, 2
  %24 = shl i32 %.24, 2
  br label %25

25:                                               ; preds = %22, %20
  %.35 = phi i32 [ %24, %22 ], [ %.24, %20 ]
  %.3 = phi i32 [ %23, %22 ], [ %.2, %20 ]
  %26 = icmp sgt i32 %.35, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = add nsw i32 %.3, 1
  br label %29

29:                                               ; preds = %27, %25
  %.4 = phi i32 [ %28, %27 ], [ %.3, %25 ]
  br label %30

30:                                               ; preds = %29, %5
  %.0 = phi i32 [ 32, %5 ], [ %.4, %29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @rev(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call i32 @llvm.bitreverse.i32(i32 %0)
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @add(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @sub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = sub nsw i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mul(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = mul nsw i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @divide(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %1, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = icmp eq i32 %0, -2147483648
  br i1 %8, label %9, label %10

9:                                                ; preds = %7, %3
  store i32 1, i32* @unacceptable, align 4
  br label %12

10:                                               ; preds = %7, %5
  %11 = sdiv i32 %0, %1
  br label %12

12:                                               ; preds = %10, %9
  %.0 = phi i32 [ 0, %9 ], [ %11, %10 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @divu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  store i32 1, i32* @unacceptable, align 4
  br label %8

6:                                                ; preds = %3
  %7 = udiv i32 %0, %1
  br label %8

8:                                                ; preds = %6, %5
  %.0 = phi i32 [ 0, %5 ], [ %7, %6 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @And(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Or(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @Xor(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = xor i32 %0, %1
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @rotl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, 63
  %5 = shl i32 %0, %4
  %6 = sub nsw i32 32, %4
  %7 = lshr i32 %0, %6
  %8 = or i32 %5, %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @shl(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, 63
  %5 = icmp ugt i32 %4, 31
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = shl i32 %0, %4
  br label %9

9:                                                ; preds = %7, %6
  %.0 = phi i32 [ 0, %6 ], [ %8, %7 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @shr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, 63
  %5 = icmp ugt i32 %4, 31
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %9

7:                                                ; preds = %3
  %8 = lshr i32 %0, %4
  br label %9

9:                                                ; preds = %7, %6
  %.0 = phi i32 [ 0, %6 ], [ %8, %7 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @shrs(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %1, 63
  %5 = icmp ugt i32 %4, 31
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = ashr i32 %0, 31
  br label %10

8:                                                ; preds = %3
  %9 = ashr i32 %0, %4
  br label %10

10:                                               ; preds = %8, %6
  %.0 = phi i32 [ %7, %6 ], [ %9, %8 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmpeq(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %0, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmplt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmpltu(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %0, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @seleq(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ %1, %5 ], [ %2, %6 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @sellt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ %1, %5 ], [ %2, %6 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @selle(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %7

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %6, %5
  %8 = phi i32 [ %1, %5 ], [ %2, %6 ]
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_expr(i32 noundef %0) #2 {
  %2 = icmp slt i32 %0, 11
  br i1 %2, label %3, label %24

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sgt i32 %6, -32
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %16) #7
  br label %23

18:                                               ; preds = %8, %3
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef %21) #7
  br label %23

23:                                               ; preds = %18, %13
  br label %62

24:                                               ; preds = %1
  %25 = icmp eq i32 %0, 11
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  %putchar1 = call i32 @putchar(i32 120)
  br label %61

27:                                               ; preds = %24
  %28 = add nsw i32 %0, -12
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %29, i32 0
  %31 = load i32, i32* %30, align 16
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %32, i32 5
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %34) #7
  br label %36

36:                                               ; preds = %58, %27
  %.0 = phi i32 [ 0, %27 ], [ %59, %58 ]
  %37 = sext i32 %31 to i64
  %38 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %37, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %.0, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = sext i32 %28 to i64
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %42, i32 1, i64 %43
  %45 = load i32, i32* %44, align 4
  call void @print_expr(i32 noundef %45)
  %46 = sext i32 %31 to i64
  %47 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %46, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  %50 = icmp slt i32 %.0, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = sext i32 %31 to i64
  %53 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %52, i32 6
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %54) #7
  br label %57

56:                                               ; preds = %41
  %putchar = call i32 @putchar(i32 41)
  br label %57

57:                                               ; preds = %56, %51
  br label %58

58:                                               ; preds = %57
  %59 = add nuw nsw i32 %.0, 1
  br label %36, !llvm.loop !4

60:                                               ; preds = %36
  br label %61

61:                                               ; preds = %60, %26
  br label %62

62:                                               ; preds = %61, %23
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_pgm() #2 {
  br label %1

1:                                                ; preds = %55, %0
  %.0 = phi i32 [ 0, %0 ], [ %56, %55 ]
  %2 = load i32, i32* @numi, align 4
  %3 = icmp slt i32 %.0, %2
  br i1 %3, label %4, label %57

4:                                                ; preds = %1
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %5, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %8, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = add nuw nsw i32 %.0, 1
  %12 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* noundef %10, i32 noundef %11) #7
  br label %13

13:                                               ; preds = %52, %4
  %.01 = phi i32 [ 0, %4 ], [ %53, %52 ]
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %14, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %.01, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %13
  %19 = zext i32 %.0 to i64
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %19, i32 1, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 11
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, -32
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = icmp slt i32 %27, 32
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32 noundef %27) #7
  br label %35

33:                                               ; preds = %29, %24
  %34 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 noundef %27) #7
  br label %35

35:                                               ; preds = %33, %31
  br label %44

36:                                               ; preds = %18
  %37 = icmp eq i32 %22, 11
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #7
  br label %43

40:                                               ; preds = %36
  %41 = add nsw i32 %22, -11
  %42 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i32 noundef %41) #7
  br label %43

43:                                               ; preds = %40, %38
  br label %44

44:                                               ; preds = %43, %35
  %45 = sext i32 %7 to i64
  %46 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %45, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, -1
  %49 = icmp slt i32 %.01, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  %putchar3 = call i32 @putchar(i32 44)
  br label %51

51:                                               ; preds = %50, %44
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !6

54:                                               ; preds = %13
  %putchar2 = call i32 @putchar(i32 10)
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !7

57:                                               ; preds = %1
  %58 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i64 0, i64 0)) #7
  %59 = load i32, i32* @numi, align 4
  %60 = add nsw i32 %59, 11
  call void @print_expr(i32 noundef %60)
  %putchar = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check(i32 noundef %0) #2 {
  br label %2

2:                                                ; preds = %6, %1
  %.01 = phi i32 [ %0, %1 ], [ %7, %6 ]
  call void @simulate_one_instruction(i32 noundef %.01)
  %3 = load i32, i32* @numi, align 4
  %4 = add nsw i32 %3, -1
  %5 = icmp slt i32 %.01, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = add nsw i32 %.01, 1
  br label %2

8:                                                ; preds = %2
  %9 = load i32, i32* @unacceptable, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %8
  store i32 0, i32* @unacceptable, align 4
  br label %55

11:                                               ; preds = %8
  %12 = load i32, i32* @numi, align 4
  %13 = add nsw i32 %12, 11
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @corr_result, align 4
  %.not3 = icmp eq i32 %16, %17
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %11
  br label %55

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %52, %19
  %.02 = phi i32 [ 0, %19 ], [ %53, %52 ]
  %21 = icmp ult i32 %.02, 16
  br i1 %21, label %22, label %54

22:                                               ; preds = %20
  %23 = load i32, i32* @check.itrialx, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp sgt i32 %23, 15
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %22
  %storemerge = phi i32 [ 0, %26 ], [ %24, %22 ]
  store i32 %storemerge, i32* @check.itrialx, align 4
  %28 = sext i32 %storemerge to i64
  %29 = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i64 0, i64 11), align 4
  %31 = sext i32 %storemerge to i64
  %32 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* @corr_result, align 4
  br label %34

34:                                               ; preds = %38, %27
  %.1 = phi i32 [ 0, %27 ], [ %39, %38 ]
  %35 = load i32, i32* @numi, align 4
  %36 = icmp slt i32 %.1, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  call void @simulate_one_instruction(i32 noundef %.1)
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.1, 1
  br label %34, !llvm.loop !8

40:                                               ; preds = %34
  %41 = load i32, i32* @unacceptable, align 4
  %.not4 = icmp eq i32 %41, 0
  br i1 %.not4, label %43, label %42

42:                                               ; preds = %40
  store i32 0, i32* @unacceptable, align 4
  br label %55

43:                                               ; preds = %40
  %44 = load i32, i32* @numi, align 4
  %45 = add nsw i32 %44, 11
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @corr_result, align 4
  %.not5 = icmp eq i32 %48, %49
  br i1 %.not5, label %51, label %50

50:                                               ; preds = %43
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.02, 1
  br label %20, !llvm.loop !9

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %54, %50, %42, %18, %10
  %.0 = phi i32 [ 0, %10 ], [ 0, %18 ], [ 0, %42 ], [ 0, %50 ], [ 1, %54 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @simulate_one_instruction(i32 noundef %0) #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %2, i32 1, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %0 to i64
  %9 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %8, i32 1, i64 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %0 to i64
  %15 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %14, i32 1, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %20, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %23, i32 0
  %25 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %24, align 8
  %26 = call i32 %25(i32 noundef %7, i32 noundef %13, i32 noundef %19) #7
  %27 = add nsw i32 %0, 12
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [17 x i32], [17 x i32]* @r, i64 0, i64 %28
  store i32 %26, i32* %29, align 4
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, 1
  %34 = sext i32 %0 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %34
  store i32 %33, i32* %35, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fix_operands(i32 noundef %0) #2 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %2, i32 0
  %4 = load i32, i32* %3, align 16
  %5 = load i32, i32* @numi, align 4
  %6 = add nsw i32 %5, -1
  %7 = icmp eq i32 %6, %0
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = load i32, i32* @numi, align 4
  %10 = add nsw i32 %9, 10
  %11 = sext i32 %0 to i64
  %12 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %11, i32 1, i64 1
  %13 = load i32, i32* %12, align 8
  %.not3 = icmp eq i32 %13, %10
  br i1 %.not3, label %21, label %14

14:                                               ; preds = %8
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %15, i32 1, i64 2
  %17 = load i32, i32* %16, align 4
  %.not9 = icmp eq i32 %17, %10
  br i1 %.not9, label %21, label %18

18:                                               ; preds = %14
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %19, i32 1, i64 0
  store i32 %10, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %14, %8
  %22 = add nsw i32 %9, 9
  %23 = icmp sgt i32 %9, 2
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = add nsw i32 %0, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %26, i32 1, i64 0
  %28 = load i32, i32* %27, align 4
  %.not4 = icmp eq i32 %28, %22
  br i1 %.not4, label %65, label %29

29:                                               ; preds = %24
  %30 = add nsw i32 %0, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %31, i32 1, i64 1
  %33 = load i32, i32* %32, align 8
  %.not5 = icmp eq i32 %33, %22
  br i1 %.not5, label %65, label %34

34:                                               ; preds = %29
  %35 = add nsw i32 %0, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %36, i32 1, i64 2
  %38 = load i32, i32* %37, align 4
  %.not6 = icmp eq i32 %38, %22
  br i1 %.not6, label %65, label %39

39:                                               ; preds = %34
  %40 = sext i32 %0 to i64
  %41 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %40, i32 1, i64 1
  %42 = load i32, i32* %41, align 8
  %.not7 = icmp eq i32 %42, %22
  br i1 %.not7, label %65, label %43

43:                                               ; preds = %39
  %44 = sext i32 %0 to i64
  %45 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %44, i32 1, i64 2
  %46 = load i32, i32* %45, align 4
  %.not8 = icmp eq i32 %46, %22
  br i1 %.not8, label %65, label %47

47:                                               ; preds = %43
  %48 = sext i32 %0 to i64
  %49 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %48, i32 1, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, %22
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = sext i32 %0 to i64
  %54 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %53, i32 1, i64 0
  store i32 %22, i32* %54, align 4
  br label %64

55:                                               ; preds = %47
  %56 = sext i32 %4 to i64
  %57 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %56, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = sext i32 %0 to i64
  %62 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %61, i32 1, i64 1
  store i32 %22, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64, %43, %39, %34, %29, %24, %21
  br label %66

66:                                               ; preds = %65, %1
  %67 = sext i32 %4 to i64
  %68 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %67, i32 2
  %69 = load i32, i32* %68, align 4
  %.not = icmp eq i32 %69, 0
  br i1 %.not, label %85, label %70

70:                                               ; preds = %66
  %71 = sext i32 %0 to i64
  %72 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %71, i32 1, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %0 to i64
  %75 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %74, i32 1, i64 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = sext i32 %0 to i64
  %80 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %79, i32 1, i64 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %0 to i64
  %83 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %82, i32 1, i64 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %70
  br label %112

85:                                               ; preds = %66
  %86 = load i32, i32* @numi, align 4
  %87 = add nsw i32 %86, -1
  %.not1 = icmp eq i32 %87, %0
  br i1 %.not1, label %112, label %88

88:                                               ; preds = %85
  %89 = sext i32 %0 to i64
  %90 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %89, i32 1, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 11
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = sext i32 %0 to i64
  %95 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %94, i32 1, i64 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 11
  br i1 %97, label %98, label %111

98:                                               ; preds = %93
  %99 = sext i32 %0 to i64
  %100 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %99, i32 1, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %101, 11
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = sext i32 %4 to i64
  %105 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %104, i32 2
  %106 = load i32, i32* %105, align 4
  %.not2 = icmp eq i32 %106, 0
  br i1 %.not2, label %108, label %107

107:                                              ; preds = %103
  call void @abort() #8
  unreachable

108:                                              ; preds = %103
  %109 = sext i32 %0 to i64
  %110 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %109, i32 1, i64 0
  store i32 11, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %98, %93, %88
  br label %112

112:                                              ; preds = %111, %85, %84
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @search() #2 {
  %1 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @trialx, i64 0, i64 0), align 16
  store i32 %1, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @r, i64 0, i64 11), align 4
  %2 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @correct_result, i64 0, i64 0), align 16
  store i32 %2, i32* @corr_result, align 4
  br label %3

3:                                                ; preds = %14, %0
  %.02 = phi i32 [ 0, %0 ], [ %13, %14 ]
  %.01 = phi i32 [ 0, %0 ], [ %.1, %14 ]
  %4 = call i32 @check(i32 noundef %.02)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %12, label %5

5:                                                ; preds = %3
  %6 = add nsw i32 %.01, 1
  %7 = load i32, i32* @numi, align 4
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0), i32 noundef %7) #7
  call void @print_pgm()
  %9 = icmp eq i32 %6, 5
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  br label %17

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %3
  %.1 = phi i32 [ %6, %11 ], [ %.01, %3 ]
  %13 = call i32 @increment()
  br label %14

14:                                               ; preds = %12
  %15 = icmp sgt i32 %13, -1
  br i1 %15, label %3, label %16, !llvm.loop !10

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %10
  %.0 = phi i32 [ %6, %10 ], [ %.1, %16 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @increment() #2 {
  %1 = load i32, i32* @numi, align 4
  br label %2

2:                                                ; preds = %91, %0
  %.01.in = phi i32 [ %1, %0 ], [ %.01, %91 ]
  %.01 = add nsw i32 %.01.in, -1
  %3 = icmp sgt i32 %.01.in, 0
  br i1 %3, label %4, label %92

4:                                                ; preds = %2
  %5 = sext i32 %.01 to i64
  %6 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %5, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %8, i32 1
  %10 = load i32, i32* %9, align 8
  br label %11

11:                                               ; preds = %50, %4
  %.02 = phi i32 [ 0, %4 ], [ %51, %50 ]
  %12 = icmp slt i32 %.02, %10
  br i1 %12, label %13, label %.loopexit

13:                                               ; preds = %11
  %14 = sext i32 %.01 to i64
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %14, i32 1, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = sext i32 %.01 to i64
  %21 = zext i32 %.02 to i64
  %22 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %20, i32 1, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  br label %52

25:                                               ; preds = %13
  %26 = icmp eq i32 %17, 6
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = sext i32 %.01 to i64
  %29 = zext i32 %.02 to i64
  %30 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %28, i32 1, i64 %29
  store i32 11, i32* %30, align 4
  br label %52

31:                                               ; preds = %25
  %32 = add nsw i32 %.01.in, 10
  %33 = icmp slt i32 %17, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = sext i32 %.01 to i64
  %36 = zext i32 %.02 to i64
  %37 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %35, i32 1, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %52

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = sext i32 %7 to i64
  %44 = zext i32 %.02 to i64
  %45 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %43, i32 3, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %.01 to i64
  %48 = zext i32 %.02 to i64
  %49 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %47, i32 1, i64 %48
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %42
  %51 = add nuw nsw i32 %.02, 1
  br label %11, !llvm.loop !11

.loopexit:                                        ; preds = %11
  br label %52

52:                                               ; preds = %.loopexit, %34, %27, %19
  %53 = icmp eq i32 %.02, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  br label %93

55:                                               ; preds = %52
  %56 = icmp slt i32 %.02, %10
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  call void @fix_operands(i32 noundef %.01)
  br label %93

58:                                               ; preds = %55
  %59 = icmp slt i32 %7, 12
  br i1 %59, label %60, label %79

60:                                               ; preds = %58
  %61 = add nsw i32 %7, 1
  %62 = sext i32 %.01 to i64
  %63 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %62, i32 0
  store i32 %61, i32* %63, align 16
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %64, i32 3, i64 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %.01 to i64
  %68 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %67, i32 1, i64 0
  store i32 %66, i32* %68, align 4
  %69 = sext i32 %61 to i64
  %70 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %69, i32 3, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %.01 to i64
  %73 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %72, i32 1, i64 1
  store i32 %71, i32* %73, align 8
  %74 = sext i32 %61 to i64
  %75 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 %74, i32 3, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %.01 to i64
  %78 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %77, i32 1, i64 2
  store i32 %76, i32* %78, align 4
  call void @fix_operands(i32 noundef %.01)
  br label %93

79:                                               ; preds = %58
  %80 = sext i32 %.01 to i64
  %81 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %80, i32 0
  store i32 0, i32* %81, align 16
  %82 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 0), align 16
  %83 = sext i32 %.01 to i64
  %84 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %83, i32 1, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 1), align 4
  %86 = sext i32 %.01 to i64
  %87 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %86, i32 1, i64 1
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 2), align 8
  %89 = sext i32 %.01 to i64
  %90 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %89, i32 1, i64 2
  store i32 %88, i32* %90, align 4
  call void @fix_operands(i32 noundef %.01)
  br label %91

91:                                               ; preds = %79
  br label %2, !llvm.loop !12

92:                                               ; preds = %2
  br label %93

93:                                               ; preds = %92, %60, %57, %54
  %.0 = phi i32 [ %.01, %54 ], [ %.01, %57 ], [ %.01, %60 ], [ -1, %92 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  br label %3

3:                                                ; preds = %61, %2
  %storemerge = phi i32 [ 1, %2 ], [ %63, %61 ]
  %.01 = phi i32 [ 0, %2 ], [ %42, %61 ]
  store i32 %storemerge, i32* @numi, align 4
  %4 = icmp slt i32 %storemerge, 6
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = icmp eq i32 %.01, 0
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i1 [ false, %3 ], [ %6, %5 ]
  br i1 %8, label %9, label %64

9:                                                ; preds = %7
  %10 = load i32, i32* @numi, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.40, i64 0, i64 0), i32 noundef %10) #7
  br label %12

12:                                               ; preds = %21, %9
  %.02 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %13 = icmp ult i32 %.02, 17
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = zext i32 %.02 to i64
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* @trialx, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @userfun(i32 noundef %17) #7
  %19 = zext i32 %.02 to i64
  %20 = getelementptr inbounds [17 x i32], [17 x i32]* @correct_result, i64 0, i64 %19
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %14
  %22 = add nuw nsw i32 %.02, 1
  br label %12, !llvm.loop !13

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %39, %23
  %.1 = phi i32 [ 0, %23 ], [ %40, %39 ]
  %25 = load i32, i32* @numi, align 4
  %26 = icmp slt i32 %.1, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = zext i32 %.1 to i64
  %29 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %28, i32 0
  store i32 0, i32* %29, align 16
  %30 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 0), align 16
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %31, i32 1, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 1), align 4
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %34, i32 1, i64 1
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* getelementptr inbounds ([13 x %struct.anon], [13 x %struct.anon]* @isa, i64 0, i64 0, i32 3, i64 2), align 8
  %37 = zext i32 %.1 to i64
  %38 = getelementptr inbounds [5 x %struct.anon.0], [5 x %struct.anon.0]* @pgm, i64 0, i64 %37, i32 1, i64 2
  store i32 %36, i32* %38, align 4
  call void @fix_operands(i32 noundef %.1)
  br label %39

39:                                               ; preds = %27
  %40 = add nuw nsw i32 %.1, 1
  br label %24, !llvm.loop !14

41:                                               ; preds = %24
  %42 = call i32 @search()
  %43 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i64 0, i64 0), i32 noundef %42) #7
  %44 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0)) #7
  br label %45

45:                                               ; preds = %53, %41
  %.2 = phi i32 [ 0, %41 ], [ %58, %53 ]
  %.0 = phi i32 [ 0, %41 ], [ %57, %53 ]
  %46 = load i32, i32* @numi, align 4
  %47 = icmp slt i32 %.2, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = zext i32 %.2 to i64
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 noundef %51) #7
  br label %53

53:                                               ; preds = %48
  %54 = zext i32 %.2 to i64
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* @counter, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %.0, %56
  %58 = add nuw nsw i32 %.2, 1
  br label %45, !llvm.loop !15

59:                                               ; preds = %45
  %60 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i32 noundef %.0) #7
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* @numi, align 4
  %63 = add nsw i32 %62, 1
  br label %3, !llvm.loop !16

64:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @userfun(i32 noundef) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bitreverse.i32(i32) #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
