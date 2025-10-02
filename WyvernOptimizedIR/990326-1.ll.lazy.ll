; ModuleID = './990326-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990326-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a = type { i8, i8, i16 }
%struct.b = type { i32, i16, i16 }

@a1.x = internal global %struct.a { i8 1, i8 2, i16 -2 }, align 2
@a1.y = internal global %struct.a { i8 65, i8 2, i16 -3 }, align 2
@a2.x = internal global %struct.a { i8 1, i8 66, i16 -2 }, align 2
@a2.y = internal global %struct.a { i8 1, i8 2, i16 -3 }, align 2
@a3.x = internal global %struct.a { i8 9, i8 66, i16 -2 }, align 2
@a3.y = internal global %struct.a { i8 33, i8 18, i16 -3 }, align 2
@b1.x = internal global %struct.b { i32 -2, i16 2, i16 1 }, align 4
@b1.y = internal global %struct.b { i32 -3, i16 2, i16 65 }, align 4
@b2.x = internal global %struct.b { i32 -2, i16 66, i16 1 }, align 4
@b2.y = internal global %struct.b { i32 -3, i16 2, i16 1 }, align 4
@b3.x = internal global %struct.b { i32 -2, i16 66, i16 9 }, align 4
@b3.y = internal global %struct.b { i32 -3, i16 18, i16 33 }, align 4
@c1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 0, i8 4, i8 0, [12 x i8] undef }, align 16
@c1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 0, i8 4, i8 1, [12 x i8] undef }, align 16
@c2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 4, i8 4, i8 0, [12 x i8] undef }, align 16
@c2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 0, i8 4, i8 0, [12 x i8] undef }, align 16
@c3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 46, i8 4, i8 36, i8 0, [12 x i8] undef }, align 16
@c3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 45, i8 1, i8 -124, i8 0, [12 x i8] undef }, align 16
@d1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 0, i8 -32, [12 x i8] undef }, align 16
@d1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 65, i8 -128, i8 0, i8 -48, [12 x i8] undef }, align 16
@d2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 16, i8 -32, [12 x i8] undef }, align 16
@d2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 1, i8 -128, i8 0, i8 -48, [12 x i8] undef }, align 16
@d3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 9, i8 -128, i8 16, i8 -32, [12 x i8] undef }, align 16
@d3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 33, i8 -128, i8 4, i8 -48, [12 x i8] undef }, align 16
@e1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -2, [12 x i8] undef }, align 16
@e1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -1, i8 -1, i8 -1, [12 x i8] undef }, align 16
@e2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -1, [12 x i8] undef }, align 16
@e2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -5, i8 -1, i8 -1, [12 x i8] undef }, align 16
@e3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -2, i8 127, i8 -1, [12 x i8] undef }, align 16
@e3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -19, i8 -5, i8 -33, i8 -1, [12 x i8] undef }, align 16
@e4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -1, i8 3, i8 0, [12 x i8] undef }, align 16
@f1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -65, i8 -65, i8 -1, i8 -17, [12 x i8] undef }, align 16
@f1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -33, [12 x i8] undef }, align 16
@f2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -17, [12 x i8] undef }, align 16
@f2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -17, i8 -33, [12 x i8] undef }, align 16
@f3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -33, i8 -65, i8 -5, i8 -17, [12 x i8] undef }, align 16
@f3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -9, i8 -65, i8 -17, i8 -33, [12 x i8] undef }, align 16
@f4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 -64, i8 -1, i8 -1, [12 x i8] undef }, align 16
@g1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -2, [12 x i8] undef }, align 16
@g1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -2, i8 -1, i8 -1, i8 -33, [12 x i8] undef }, align 16
@g2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -1, i8 -1, i8 -1, [12 x i8] undef }, align 16
@g2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -66, i8 -1, i8 -1, i8 -33, [12 x i8] undef }, align 16
@g3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -18, i8 -2, i8 127, i8 -1, [12 x i8] undef }, align 16
@g3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -66, i8 -1, i8 -3, i8 -33, [12 x i8] undef }, align 16
@g4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 2, i8 64, i8 0, [12 x i8] undef }, align 16
@g4.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 2, i8 64, i8 -48, [12 x i8] undef }, align 16
@g5.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 32, i8 0, i8 4, [12 x i8] undef }, align 16
@g5.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 32, i8 0, i8 4, i8 -48, [12 x i8] undef }, align 16
@g6.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 14, i8 -30, i8 67, i8 -12, [12 x i8] undef }, align 16
@g6.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 47, i8 -62, i8 71, i8 -48, [12 x i8] undef }, align 16
@g7.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -2, i8 34, i8 124, i8 4, [12 x i8] undef }, align 16
@g7.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 32, i8 62, i8 68, i8 -33, [12 x i8] undef }, align 16
@h1.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -65, i8 -65, i8 -1, i8 -17, [12 x i8] undef }, align 16
@h1.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 -1, i8 -5, i8 -1, [12 x i8] undef }, align 16
@h2.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -1, i8 -65, i8 -1, i8 -17, [12 x i8] undef }, align 16
@h2.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 -1, i8 -5, i8 -2, [12 x i8] undef }, align 16
@h3.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -33, i8 -65, i8 -5, i8 -17, [12 x i8] undef }, align 16
@h3.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 125, i8 -1, i8 -5, i8 -2, [12 x i8] undef }, align 16
@h4.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 16, i8 0, i8 8, i8 -32, [12 x i8] undef }, align 16
@h4.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 16, i8 0, i8 8, [12 x i8] undef }, align 16
@h5.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 0, i8 1, i8 -128, i8 -32, [12 x i8] undef }, align 16
@h5.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 1, i8 -128, i8 0, [12 x i8] undef }, align 16
@h6.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 16, i8 61, i8 -120, i8 -17, [12 x i8] undef }, align 16
@h6.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 -3, i8 17, i8 -68, i8 8, [12 x i8] undef }, align 16
@h7.x = internal global { i8, i8, i8, i8, [12 x i8] } { i8 31, i8 -63, i8 -117, i8 -32, [12 x i8] undef }, align 16
@h7.y = internal global { i8, i8, i8, i8, [12 x i8] } { i8 13, i8 -47, i8 -125, i8 -8, [12 x i8] undef }, align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @a1() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.x, i64 0, i32 0), align 2
  %2 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.y, i64 0, i32 0), align 2
  %3 = and i8 %2, -65
  %4 = icmp eq i8 %1, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.x, i64 0, i32 1), align 1
  %7 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.y, i64 0, i32 1), align 1
  %8 = icmp eq i8 %6, %7
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @a2() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.x, i64 0, i32 0), align 2
  %2 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.y, i64 0, i32 0), align 2
  %3 = icmp eq i8 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.x, i64 0, i32 1), align 1
  %6 = and i8 %5, -65
  %7 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.y, i64 0, i32 1), align 1
  %8 = icmp eq i8 %6, %7
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %4, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @a3() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.x, i64 0, i32 0), align 2
  %2 = and i8 %1, -9
  %3 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.y, i64 0, i32 0), align 2
  %4 = and i8 %3, -33
  %5 = icmp eq i8 %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.x, i64 0, i32 1), align 1
  %8 = and i8 %7, -65
  %9 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.y, i64 0, i32 1), align 1
  %10 = and i8 %9, -17
  %11 = icmp eq i8 %8, %10
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @b1() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.x, i64 0, i32 2), align 2
  %2 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.y, i64 0, i32 2), align 2
  %3 = and i16 %2, -65
  %4 = icmp eq i16 %1, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.x, i64 0, i32 1), align 4
  %7 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.y, i64 0, i32 1), align 4
  %8 = icmp eq i16 %6, %7
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %5, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %5 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @b2() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.x, i64 0, i32 2), align 2
  %2 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.y, i64 0, i32 2), align 2
  %3 = icmp eq i16 %1, %2
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.x, i64 0, i32 1), align 4
  %6 = and i16 %5, -65
  %7 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.y, i64 0, i32 1), align 4
  %8 = icmp eq i16 %6, %7
  %phi.cast = zext i1 %8 to i32
  br label %9

9:                                                ; preds = %4, %0
  %10 = phi i32 [ 0, %0 ], [ %phi.cast, %4 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @b3() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.x, i64 0, i32 2), align 2
  %2 = and i16 %1, -9
  %3 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.y, i64 0, i32 2), align 2
  %4 = and i16 %3, -33
  %5 = icmp eq i16 %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.x, i64 0, i32 1), align 4
  %8 = and i16 %7, -65
  %9 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.y, i64 0, i32 1), align 4
  %10 = and i16 %9, -17
  %11 = icmp eq i16 %8, %10
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @c1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.y to i32*), align 16
  %4 = lshr i32 %3, 18
  %5 = and i32 %4, 16319
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.x to i32*), align 16
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.y to i32*), align 16
  %10 = xor i32 %8, %9
  %11 = and i32 %10, 262128
  %12 = icmp eq i32 %11, 0
  %phi.cast = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @c2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.x to i32*), align 16
  %2 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.y to i32*), align 16
  %.unshifted = xor i32 %1, %2
  %3 = icmp ult i32 %.unshifted, 262144
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.x to i32*), align 16
  %6 = lshr i32 %5, 4
  %7 = and i32 %6, 16319
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.y to i32*), align 16
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 16383
  %11 = icmp eq i32 %7, %10
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %4, %0
  %13 = phi i32 [ 0, %0 ], [ %phi.cast, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @c3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, 16375
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.y to i32*), align 16
  %5 = lshr i32 %4, 18
  %6 = and i32 %5, 16351
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 16319
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.y to i32*), align 16
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 16367
  %15 = icmp eq i32 %11, %14
  %phi.cast = zext i1 %15 to i32
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @d1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.x to i32*), align 16
  %2 = and i32 %1, 16383
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.y to i32*), align 16
  %4 = and i32 %3, 16319
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.x to i32*), align 16
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.y to i32*), align 16
  %9 = xor i32 %7, %8
  %10 = and i32 %9, 268419072
  %11 = icmp eq i32 %10, 0
  %phi.cast = zext i1 %11 to i32
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @d2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.x to i32*), align 16
  %2 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.y to i32*), align 16
  %3 = xor i32 %1, %2
  %4 = and i32 %3, 16383
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.x to i32*), align 16
  %8 = lshr i32 %7, 14
  %9 = and i32 %8, 16319
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.y to i32*), align 16
  %11 = lshr i32 %10, 14
  %12 = and i32 %11, 16383
  %13 = icmp eq i32 %9, %12
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %6, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @d3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.x to i32*), align 16
  %2 = and i32 %1, 16375
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.y to i32*), align 16
  %4 = and i32 %3, 16351
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.x to i32*), align 16
  %8 = lshr i32 %7, 14
  %9 = and i32 %8, 16319
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.y to i32*), align 16
  %11 = lshr i32 %10, 14
  %12 = and i32 %11, 16367
  %13 = icmp eq i32 %9, %12
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %6, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @e1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.y to i32*), align 16
  %4 = ashr i32 %3, 18
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.x to i32*), align 16
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.y to i32*), align 16
  %10 = xor i32 %8, %9
  %11 = and i32 %10, 262128
  %12 = icmp eq i32 %11, 0
  %phi.cast = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @e2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.x to i32*), align 16
  %2 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.y to i32*), align 16
  %.unshifted = xor i32 %1, %2
  %3 = icmp ult i32 %.unshifted, 262144
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.x to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, -65
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.y to i32*), align 16
  %10 = shl i32 %9, 14
  %11 = ashr i32 %10, 18
  %12 = icmp eq i32 %8, %11
  %phi.cast = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %4, %0
  %14 = phi i32 [ 0, %0 ], [ %phi.cast, %4 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @e3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e3.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, -9
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e3.y to i32*), align 16
  %5 = ashr i32 %4, 18
  %6 = and i32 %5, -33
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e3.x to i32*), align 16
  %10 = shl i32 %9, 14
  %11 = ashr i32 %10, 18
  %12 = and i32 %11, -65
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e3.y to i32*), align 16
  %14 = shl i32 %13, 14
  %15 = ashr i32 %14, 18
  %16 = and i32 %15, -17
  %17 = icmp eq i32 %12, %16
  %phi.cast = zext i1 %17 to i32
  br label %18

18:                                               ; preds = %8, %0
  %19 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @e4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e4.x to i32*), align 16
  %2 = icmp ult i32 %1, 262144
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e4.x to i32*), align 16
  %5 = lshr i32 %4, 17
  %6 = and i32 %5, 1
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 0, %0 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @f1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr exact i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.y to i32*), align 16
  %5 = shl i32 %4, 18
  %6 = ashr exact i32 %5, 18
  %7 = and i32 %6, -65
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.x to i32*), align 16
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.y to i32*), align 16
  %12 = xor i32 %10, %11
  %13 = and i32 %12, 268419072
  %14 = icmp eq i32 %13, 0
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %9, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %9 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @f2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.x to i32*), align 16
  %2 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.y to i32*), align 16
  %.unshifted = xor i32 %1, %2
  %.mask = and i32 %.unshifted, 16383
  %3 = icmp eq i32 %.mask, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.x to i32*), align 16
  %6 = shl i32 %5, 4
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, -65
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.y to i32*), align 16
  %10 = shl i32 %9, 4
  %11 = ashr i32 %10, 18
  %12 = icmp eq i32 %8, %11
  %phi.cast = zext i1 %12 to i32
  br label %13

13:                                               ; preds = %4, %0
  %14 = phi i32 [ 0, %0 ], [ %phi.cast, %4 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @f3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr exact i32 %2, 18
  %4 = and i32 %3, -9
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.y to i32*), align 16
  %6 = shl i32 %5, 18
  %7 = ashr exact i32 %6, 18
  %8 = and i32 %7, -33
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %20

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, -65
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.y to i32*), align 16
  %16 = shl i32 %15, 4
  %17 = ashr i32 %16, 18
  %18 = and i32 %17, -17
  %19 = icmp eq i32 %14, %18
  %phi.cast = zext i1 %19 to i32
  br label %20

20:                                               ; preds = %10, %0
  %21 = phi i32 [ 0, %0 ], [ %phi.cast, %10 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @f4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f4.x to i32*), align 16
  %.mask = and i32 %1, 16383
  %2 = icmp eq i32 %.mask, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f4.x to i32*), align 16
  %5 = lshr i32 %4, 27
  %6 = and i32 %5, 1
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i32 [ 0, %0 ], [ %6, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.y to i32*), align 16
  %4 = shl i32 %3, 4
  %5 = ashr i32 %4, 18
  %6 = and i32 %5, -65
  %7 = icmp eq i32 %2, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.x to i32*), align 16
  %10 = shl i32 %9, 14
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.y to i32*), align 16
  %12 = shl i32 %11, 18
  %.unshifted = xor i32 %10, %12
  %13 = icmp ult i32 %.unshifted, 262144
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %8, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.x to i32*), align 16
  %2 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.y to i32*), align 16
  %3 = shl i32 %2, 4
  %.unshifted = xor i32 %1, %3
  %4 = icmp ult i32 %.unshifted, 262144
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.x to i32*), align 16
  %7 = shl i32 %6, 14
  %8 = ashr i32 %7, 18
  %9 = and i32 %8, -65
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.y to i32*), align 16
  %11 = shl i32 %10, 18
  %12 = ashr exact i32 %11, 18
  %13 = icmp eq i32 %9, %12
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %5, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g3.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, -9
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g3.y to i32*), align 16
  %5 = shl i32 %4, 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, -33
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g3.x to i32*), align 16
  %11 = shl i32 %10, 14
  %12 = ashr i32 %11, 18
  %13 = and i32 %12, -65
  %14 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g3.y to i32*), align 16
  %15 = shl i32 %14, 18
  %16 = ashr exact i32 %15, 18
  %17 = and i32 %16, -17
  %18 = icmp eq i32 %13, %17
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i32 [ 0, %0 ], [ %phi.cast, %9 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, 240
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.y to i32*), align 16
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 3840
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 240
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.y to i32*), align 16
  %13 = and i32 %12, 3840
  %14 = icmp eq i32 %11, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %8, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g5() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, 3840
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.y to i32*), align 16
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 240
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 3840
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.y to i32*), align 16
  %13 = and i32 %12, 240
  %14 = icmp eq i32 %11, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %8, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g6() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, 1023
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.y to i32*), align 16
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 16368
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 1023
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.y to i32*), align 16
  %13 = and i32 %12, 16368
  %14 = icmp eq i32 %11, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %8, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @g7() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, 16368
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.y to i32*), align 16
  %5 = lshr i32 %4, 14
  %6 = and i32 %5, 1023
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 16368
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.y to i32*), align 16
  %13 = and i32 %12, 1023
  %14 = icmp eq i32 %11, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %8, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %8 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr exact i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.y to i32*), align 16
  %5 = shl i32 %4, 14
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, -65
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.x to i32*), align 16
  %11 = shl i32 %10, 4
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.y to i32*), align 16
  %.unshifted = xor i32 %11, %12
  %13 = icmp ult i32 %.unshifted, 262144
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.y to i32*), align 16
  %4 = shl i32 %3, 14
  %.unshifted = xor i32 %2, %4
  %5 = icmp ult i32 %.unshifted, 262144
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.x to i32*), align 16
  %8 = shl i32 %7, 4
  %9 = ashr i32 %8, 18
  %10 = and i32 %9, -65
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.y to i32*), align 16
  %12 = ashr i32 %11, 18
  %13 = icmp eq i32 %10, %12
  %phi.cast = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %6, %0
  %15 = phi i32 [ 0, %0 ], [ %phi.cast, %6 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h3.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr exact i32 %2, 18
  %4 = and i32 %3, -9
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h3.y to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, -33
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h3.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, -65
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h3.y to i32*), align 16
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, -17
  %18 = icmp eq i32 %14, %17
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i32 [ 0, %0 ], [ %phi.cast, %10 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.x to i32*), align 16
  %2 = and i32 %1, 240
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.y to i32*), align 16
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 3840
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.x to i32*), align 16
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 240
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.y to i32*), align 16
  %12 = lshr i32 %11, 18
  %13 = and i32 %12, 3840
  %14 = icmp eq i32 %10, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h5() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.x to i32*), align 16
  %2 = and i32 %1, 3840
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.y to i32*), align 16
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 240
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.x to i32*), align 16
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 3840
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.y to i32*), align 16
  %12 = lshr i32 %11, 18
  %13 = and i32 %12, 240
  %14 = icmp eq i32 %10, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h6() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.x to i32*), align 16
  %2 = and i32 %1, 1023
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.y to i32*), align 16
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 16368
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.x to i32*), align 16
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 1023
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.y to i32*), align 16
  %12 = lshr i32 %11, 18
  %13 = and i32 %12, 16368
  %14 = icmp eq i32 %10, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @h7() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.x to i32*), align 16
  %2 = and i32 %1, 16368
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.y to i32*), align 16
  %4 = lshr i32 %3, 4
  %5 = and i32 %4, 1023
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.x to i32*), align 16
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 16368
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.y to i32*), align 16
  %12 = lshr i32 %11, 18
  %13 = and i32 %12, 1023
  %14 = icmp eq i32 %10, %13
  %phi.cast = zext i1 %14 to i32
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i32 [ 0, %0 ], [ %phi.cast, %7 ]
  ret i32 %16
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @a1()
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %3

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @a2()
  %.not1 = icmp eq i32 %4, 0
  br i1 %.not1, label %5, label %6

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @a3()
  %.not2 = icmp eq i32 %7, 0
  br i1 %.not2, label %8, label %9

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @b1()
  %.not3 = icmp eq i32 %10, 0
  br i1 %.not3, label %11, label %12

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  %13 = call i32 @b2()
  %.not4 = icmp eq i32 %13, 0
  br i1 %.not4, label %14, label %15

14:                                               ; preds = %12
  call void @abort() #3
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  %16 = call i32 @b3()
  %.not5 = icmp eq i32 %16, 0
  br i1 %.not5, label %17, label %18

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  %19 = call i32 @c1()
  %.not6 = icmp eq i32 %19, 0
  br i1 %.not6, label %20, label %21

20:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  %22 = call i32 @c2()
  %.not7 = icmp eq i32 %22, 0
  br i1 %.not7, label %23, label %24

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  %25 = call i32 @c3()
  %.not8 = icmp eq i32 %25, 0
  br i1 %.not8, label %26, label %27

26:                                               ; preds = %24
  call void @abort() #3
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  %28 = call i32 @d1()
  %.not9 = icmp eq i32 %28, 0
  br i1 %.not9, label %29, label %30

29:                                               ; preds = %27
  call void @abort() #3
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  %31 = call i32 @d2()
  %.not10 = icmp eq i32 %31, 0
  br i1 %.not10, label %32, label %33

32:                                               ; preds = %30
  call void @abort() #3
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  %34 = call i32 @d3()
  %.not11 = icmp eq i32 %34, 0
  br i1 %.not11, label %35, label %36

35:                                               ; preds = %33
  call void @abort() #3
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = call i32 @e1()
  %.not12 = icmp eq i32 %37, 0
  br i1 %.not12, label %38, label %39

38:                                               ; preds = %36
  call void @abort() #3
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %36
  %40 = call i32 @e2()
  %.not13 = icmp eq i32 %40, 0
  br i1 %.not13, label %41, label %42

41:                                               ; preds = %39
  call void @abort() #3
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %39
  %43 = call i32 @e3()
  %.not14 = icmp eq i32 %43, 0
  br i1 %.not14, label %44, label %45

44:                                               ; preds = %42
  call void @abort() #3
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %42
  %46 = call i32 @e4()
  %.not15 = icmp eq i32 %46, 0
  br i1 %.not15, label %47, label %48

47:                                               ; preds = %45
  call void @abort() #3
  br label %UnifiedUnreachableBlock

48:                                               ; preds = %45
  %49 = call i32 @f1()
  %.not16 = icmp eq i32 %49, 0
  br i1 %.not16, label %50, label %51

50:                                               ; preds = %48
  call void @abort() #3
  br label %UnifiedUnreachableBlock

51:                                               ; preds = %48
  %52 = call i32 @f2()
  %.not17 = icmp eq i32 %52, 0
  br i1 %.not17, label %53, label %54

53:                                               ; preds = %51
  call void @abort() #3
  br label %UnifiedUnreachableBlock

54:                                               ; preds = %51
  %55 = call i32 @f3()
  %.not18 = icmp eq i32 %55, 0
  br i1 %.not18, label %56, label %57

56:                                               ; preds = %54
  call void @abort() #3
  br label %UnifiedUnreachableBlock

57:                                               ; preds = %54
  %58 = call i32 @f4()
  %.not19 = icmp eq i32 %58, 0
  br i1 %.not19, label %59, label %60

59:                                               ; preds = %57
  call void @abort() #3
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %57
  %61 = call i32 @g1()
  %.not20 = icmp eq i32 %61, 0
  br i1 %.not20, label %62, label %63

62:                                               ; preds = %60
  call void @abort() #3
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %60
  %64 = call i32 @g2()
  %.not21 = icmp eq i32 %64, 0
  br i1 %.not21, label %65, label %66

65:                                               ; preds = %63
  call void @abort() #3
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %63
  %67 = call i32 @g3()
  %.not22 = icmp eq i32 %67, 0
  br i1 %.not22, label %68, label %69

68:                                               ; preds = %66
  call void @abort() #3
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %66
  %70 = call i32 @g4()
  %.not23 = icmp eq i32 %70, 0
  br i1 %.not23, label %72, label %71

71:                                               ; preds = %69
  call void @abort() #3
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %69
  %73 = call i32 @g5()
  %.not24 = icmp eq i32 %73, 0
  br i1 %.not24, label %75, label %74

74:                                               ; preds = %72
  call void @abort() #3
  br label %UnifiedUnreachableBlock

75:                                               ; preds = %72
  %76 = call i32 @g6()
  %.not25 = icmp eq i32 %76, 0
  br i1 %.not25, label %77, label %78

77:                                               ; preds = %75
  call void @abort() #3
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %75
  %79 = call i32 @g7()
  %.not26 = icmp eq i32 %79, 0
  br i1 %.not26, label %80, label %81

80:                                               ; preds = %78
  call void @abort() #3
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %78
  %82 = call i32 @h1()
  %.not27 = icmp eq i32 %82, 0
  br i1 %.not27, label %83, label %84

83:                                               ; preds = %81
  call void @abort() #3
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %81
  %85 = call i32 @h2()
  %.not28 = icmp eq i32 %85, 0
  br i1 %.not28, label %86, label %87

86:                                               ; preds = %84
  call void @abort() #3
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %84
  %88 = call i32 @h3()
  %.not29 = icmp eq i32 %88, 0
  br i1 %.not29, label %89, label %90

89:                                               ; preds = %87
  call void @abort() #3
  br label %UnifiedUnreachableBlock

90:                                               ; preds = %87
  %91 = call i32 @h4()
  %.not30 = icmp eq i32 %91, 0
  br i1 %.not30, label %93, label %92

92:                                               ; preds = %90
  call void @abort() #3
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %90
  %94 = call i32 @h5()
  %.not31 = icmp eq i32 %94, 0
  br i1 %.not31, label %96, label %95

95:                                               ; preds = %93
  call void @abort() #3
  br label %UnifiedUnreachableBlock

96:                                               ; preds = %93
  %97 = call i32 @h6()
  %.not32 = icmp eq i32 %97, 0
  br i1 %.not32, label %98, label %99

98:                                               ; preds = %96
  call void @abort() #3
  br label %UnifiedUnreachableBlock

99:                                               ; preds = %96
  %100 = call i32 @h7()
  %.not33 = icmp eq i32 %100, 0
  br i1 %.not33, label %101, label %102

101:                                              ; preds = %99
  call void @abort() #3
  br label %UnifiedUnreachableBlock

102:                                              ; preds = %99
  call void @exit(i32 noundef 0) #3
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %102, %101, %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
