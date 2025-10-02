; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990326-1.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a1() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.x, i32 0, i32 0), align 2
  %2 = sext i8 %1 to i32
  %3 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.y, i32 0, i32 0), align 2
  %4 = sext i8 %3 to i32
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.x, i32 0, i32 1), align 1
  %9 = sext i8 %8 to i32
  %10 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a1.y, i32 0, i32 1), align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i1 [ false, %0 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a2() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.x, i32 0, i32 0), align 2
  %2 = sext i8 %1 to i32
  %3 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.y, i32 0, i32 0), align 2
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.x, i32 0, i32 1), align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, -65
  %10 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a2.y, i32 0, i32 1), align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %9, %11
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i1 [ false, %0 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @a3() #0 {
  %1 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.x, i32 0, i32 0), align 2
  %2 = sext i8 %1 to i32
  %3 = and i32 %2, -9
  %4 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.y, i32 0, i32 0), align 2
  %5 = sext i8 %4 to i32
  %6 = and i32 %5, -33
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.x, i32 0, i32 1), align 1
  %10 = sext i8 %9 to i32
  %11 = and i32 %10, -65
  %12 = load i8, i8* getelementptr inbounds (%struct.a, %struct.a* @a3.y, i32 0, i32 1), align 1
  %13 = sext i8 %12 to i32
  %14 = and i32 %13, -17
  %15 = icmp eq i32 %11, %14
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i1 [ false, %0 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b1() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.x, i32 0, i32 2), align 2
  %2 = sext i16 %1 to i32
  %3 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.y, i32 0, i32 2), align 2
  %4 = sext i16 %3 to i32
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.x, i32 0, i32 1), align 4
  %9 = sext i16 %8 to i32
  %10 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b1.y, i32 0, i32 1), align 4
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %9, %11
  br label %13

13:                                               ; preds = %7, %0
  %14 = phi i1 [ false, %0 ], [ %12, %7 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b2() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.x, i32 0, i32 2), align 2
  %2 = sext i16 %1 to i32
  %3 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.y, i32 0, i32 2), align 2
  %4 = sext i16 %3 to i32
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.x, i32 0, i32 1), align 4
  %8 = sext i16 %7 to i32
  %9 = and i32 %8, -65
  %10 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b2.y, i32 0, i32 1), align 4
  %11 = sext i16 %10 to i32
  %12 = icmp eq i32 %9, %11
  br label %13

13:                                               ; preds = %6, %0
  %14 = phi i1 [ false, %0 ], [ %12, %6 ]
  %15 = zext i1 %14 to i32
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @b3() #0 {
  %1 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.x, i32 0, i32 2), align 2
  %2 = sext i16 %1 to i32
  %3 = and i32 %2, -9
  %4 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.y, i32 0, i32 2), align 2
  %5 = sext i16 %4 to i32
  %6 = and i32 %5, -33
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.x, i32 0, i32 1), align 4
  %10 = sext i16 %9 to i32
  %11 = and i32 %10, -65
  %12 = load i16, i16* getelementptr inbounds (%struct.b, %struct.b* @b3.y, i32 0, i32 1), align 4
  %13 = sext i16 %12 to i32
  %14 = and i32 %13, -17
  %15 = icmp eq i32 %11, %14
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i1 [ false, %0 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.y to i32*), align 16
  %4 = lshr i32 %3, 18
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.x to i32*), align 16
  %9 = lshr i32 %8, 4
  %10 = and i32 %9, 16383
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c1.y to i32*), align 16
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 16383
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i1 [ false, %0 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.y to i32*), align 16
  %4 = lshr i32 %3, 18
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.x to i32*), align 16
  %8 = lshr i32 %7, 4
  %9 = and i32 %8, 16383
  %10 = and i32 %9, -65
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c2.y to i32*), align 16
  %12 = lshr i32 %11, 4
  %13 = and i32 %12, 16383
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %6, %0
  %16 = phi i1 [ false, %0 ], [ %14, %6 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @c3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.x to i32*), align 16
  %2 = lshr i32 %1, 18
  %3 = and i32 %2, -9
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.y to i32*), align 16
  %5 = lshr i32 %4, 18
  %6 = and i32 %5, -33
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.x to i32*), align 16
  %10 = lshr i32 %9, 4
  %11 = and i32 %10, 16383
  %12 = and i32 %11, -65
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @c3.y to i32*), align 16
  %14 = lshr i32 %13, 4
  %15 = and i32 %14, 16383
  %16 = and i32 %15, -17
  %17 = icmp eq i32 %12, %16
  br label %18

18:                                               ; preds = %8, %0
  %19 = phi i1 [ false, %0 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.x to i32*), align 16
  %2 = and i32 %1, 16383
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.y to i32*), align 16
  %4 = and i32 %3, 16383
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.x to i32*), align 16
  %9 = lshr i32 %8, 14
  %10 = and i32 %9, 16383
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d1.y to i32*), align 16
  %12 = lshr i32 %11, 14
  %13 = and i32 %12, 16383
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i1 [ false, %0 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.x to i32*), align 16
  %2 = and i32 %1, 16383
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.y to i32*), align 16
  %4 = and i32 %3, 16383
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.x to i32*), align 16
  %8 = lshr i32 %7, 14
  %9 = and i32 %8, 16383
  %10 = and i32 %9, -65
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d2.y to i32*), align 16
  %12 = lshr i32 %11, 14
  %13 = and i32 %12, 16383
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %6, %0
  %16 = phi i1 [ false, %0 ], [ %14, %6 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.x to i32*), align 16
  %2 = and i32 %1, 16383
  %3 = and i32 %2, -9
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.y to i32*), align 16
  %5 = and i32 %4, 16383
  %6 = and i32 %5, -33
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.x to i32*), align 16
  %10 = lshr i32 %9, 14
  %11 = and i32 %10, 16383
  %12 = and i32 %11, -65
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @d3.y to i32*), align 16
  %14 = lshr i32 %13, 14
  %15 = and i32 %14, 16383
  %16 = and i32 %15, -17
  %17 = icmp eq i32 %12, %16
  br label %18

18:                                               ; preds = %8, %0
  %19 = phi i1 [ false, %0 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.y to i32*), align 16
  %4 = ashr i32 %3, 18
  %5 = and i32 %4, -65
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.x to i32*), align 16
  %9 = shl i32 %8, 14
  %10 = ashr i32 %9, 18
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e1.y to i32*), align 16
  %12 = shl i32 %11, 14
  %13 = ashr i32 %12, 18
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %7, %0
  %16 = phi i1 [ false, %0 ], [ %14, %7 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.y to i32*), align 16
  %4 = ashr i32 %3, 18
  %5 = icmp eq i32 %2, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.x to i32*), align 16
  %8 = shl i32 %7, 14
  %9 = ashr i32 %8, 18
  %10 = and i32 %9, -65
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e2.y to i32*), align 16
  %12 = shl i32 %11, 14
  %13 = ashr i32 %12, 18
  %14 = icmp eq i32 %10, %13
  br label %15

15:                                               ; preds = %6, %0
  %16 = phi i1 [ false, %0 ], [ %14, %6 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
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
  br label %18

18:                                               ; preds = %8, %0
  %19 = phi i1 [ false, %0 ], [ %17, %8 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @e4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e4.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %0
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @e4.x to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, 8192
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %4, %0
  %11 = phi i1 [ false, %0 ], [ %9, %4 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.y to i32*), align 16
  %5 = shl i32 %4, 18
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, -65
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.x to i32*), align 16
  %11 = shl i32 %10, 4
  %12 = ashr i32 %11, 18
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f1.y to i32*), align 16
  %14 = shl i32 %13, 4
  %15 = ashr i32 %14, 18
  %16 = icmp eq i32 %12, %15
  br label %17

17:                                               ; preds = %9, %0
  %18 = phi i1 [ false, %0 ], [ %16, %9 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.y to i32*), align 16
  %5 = shl i32 %4, 18
  %6 = ashr i32 %5, 18
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.x to i32*), align 16
  %10 = shl i32 %9, 4
  %11 = ashr i32 %10, 18
  %12 = and i32 %11, -65
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f2.y to i32*), align 16
  %14 = shl i32 %13, 4
  %15 = ashr i32 %14, 18
  %16 = icmp eq i32 %12, %15
  br label %17

17:                                               ; preds = %8, %0
  %18 = phi i1 [ false, %0 ], [ %16, %8 ]
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = and i32 %3, -9
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f3.y to i32*), align 16
  %6 = shl i32 %5, 18
  %7 = ashr i32 %6, 18
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
  br label %20

20:                                               ; preds = %10, %0
  %21 = phi i1 [ false, %0 ], [ %19, %10 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f4.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @f4.x to i32*), align 16
  %7 = shl i32 %6, 4
  %8 = ashr i32 %7, 18
  %9 = and i32 %8, 8192
  %10 = icmp ne i32 %9, 0
  br label %11

11:                                               ; preds = %5, %0
  %12 = phi i1 [ false, %0 ], [ %10, %5 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.y to i32*), align 16
  %4 = shl i32 %3, 4
  %5 = ashr i32 %4, 18
  %6 = and i32 %5, -65
  %7 = icmp eq i32 %2, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.x to i32*), align 16
  %10 = shl i32 %9, 14
  %11 = ashr i32 %10, 18
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g1.y to i32*), align 16
  %13 = shl i32 %12, 18
  %14 = ashr i32 %13, 18
  %15 = icmp eq i32 %11, %14
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i1 [ false, %0 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.y to i32*), align 16
  %4 = shl i32 %3, 4
  %5 = ashr i32 %4, 18
  %6 = icmp eq i32 %2, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %0
  %8 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.x to i32*), align 16
  %9 = shl i32 %8, 14
  %10 = ashr i32 %9, 18
  %11 = and i32 %10, -65
  %12 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g2.y to i32*), align 16
  %13 = shl i32 %12, 18
  %14 = ashr i32 %13, 18
  %15 = icmp eq i32 %11, %14
  br label %16

16:                                               ; preds = %7, %0
  %17 = phi i1 [ false, %0 ], [ %15, %7 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
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
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, -17
  %18 = icmp eq i32 %13, %17
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i1 [ false, %0 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, 240
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.y to i32*), align 16
  %5 = shl i32 %4, 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, 3840
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.x to i32*), align 16
  %11 = shl i32 %10, 14
  %12 = ashr i32 %11, 18
  %13 = and i32 %12, 240
  %14 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g4.y to i32*), align 16
  %15 = shl i32 %14, 18
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 3840
  %18 = icmp eq i32 %13, %17
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i1 [ false, %0 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g5() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, 3840
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.y to i32*), align 16
  %5 = shl i32 %4, 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, 240
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.x to i32*), align 16
  %11 = shl i32 %10, 14
  %12 = ashr i32 %11, 18
  %13 = and i32 %12, 3840
  %14 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g5.y to i32*), align 16
  %15 = shl i32 %14, 18
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 240
  %18 = icmp eq i32 %13, %17
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i1 [ false, %0 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g6() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, 1023
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.y to i32*), align 16
  %5 = shl i32 %4, 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, 16368
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.x to i32*), align 16
  %11 = shl i32 %10, 14
  %12 = ashr i32 %11, 18
  %13 = and i32 %12, 1023
  %14 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g6.y to i32*), align 16
  %15 = shl i32 %14, 18
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 16368
  %18 = icmp eq i32 %13, %17
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i1 [ false, %0 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @g7() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.x to i32*), align 16
  %2 = ashr i32 %1, 18
  %3 = and i32 %2, 16368
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.y to i32*), align 16
  %5 = shl i32 %4, 4
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, 1023
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.x to i32*), align 16
  %11 = shl i32 %10, 14
  %12 = ashr i32 %11, 18
  %13 = and i32 %12, 16368
  %14 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @g7.y to i32*), align 16
  %15 = shl i32 %14, 18
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 1023
  %18 = icmp eq i32 %13, %17
  br label %19

19:                                               ; preds = %9, %0
  %20 = phi i1 [ false, %0 ], [ %18, %9 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h1() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.y to i32*), align 16
  %5 = shl i32 %4, 14
  %6 = ashr i32 %5, 18
  %7 = and i32 %6, -65
  %8 = icmp eq i32 %3, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.x to i32*), align 16
  %11 = shl i32 %10, 4
  %12 = ashr i32 %11, 18
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h1.y to i32*), align 16
  %14 = ashr i32 %13, 18
  %15 = icmp eq i32 %12, %14
  br label %16

16:                                               ; preds = %9, %0
  %17 = phi i1 [ false, %0 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h2() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.y to i32*), align 16
  %5 = shl i32 %4, 14
  %6 = ashr i32 %5, 18
  %7 = icmp eq i32 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.x to i32*), align 16
  %10 = shl i32 %9, 4
  %11 = ashr i32 %10, 18
  %12 = and i32 %11, -65
  %13 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h2.y to i32*), align 16
  %14 = ashr i32 %13, 18
  %15 = icmp eq i32 %12, %14
  br label %16

16:                                               ; preds = %8, %0
  %17 = phi i1 [ false, %0 ], [ %15, %8 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h3() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h3.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
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
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i1 [ false, %0 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h4() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = and i32 %3, 240
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.y to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, 3840
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, 240
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h4.y to i32*), align 16
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 3840
  %18 = icmp eq i32 %14, %17
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i1 [ false, %0 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h5() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = and i32 %3, 3840
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.y to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, 240
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, 3840
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h5.y to i32*), align 16
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 240
  %18 = icmp eq i32 %14, %17
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i1 [ false, %0 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h6() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = and i32 %3, 1023
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.y to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, 16368
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, 1023
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h6.y to i32*), align 16
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 16368
  %18 = icmp eq i32 %14, %17
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i1 [ false, %0 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @h7() #0 {
  %1 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.x to i32*), align 16
  %2 = shl i32 %1, 18
  %3 = ashr i32 %2, 18
  %4 = and i32 %3, 16368
  %5 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.y to i32*), align 16
  %6 = shl i32 %5, 14
  %7 = ashr i32 %6, 18
  %8 = and i32 %7, 1023
  %9 = icmp eq i32 %4, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %0
  %11 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.x to i32*), align 16
  %12 = shl i32 %11, 4
  %13 = ashr i32 %12, 18
  %14 = and i32 %13, 16368
  %15 = load i32, i32* bitcast ({ i8, i8, i8, i8, [12 x i8] }* @h7.y to i32*), align 16
  %16 = ashr i32 %15, 18
  %17 = and i32 %16, 1023
  %18 = icmp eq i32 %14, %17
  br label %19

19:                                               ; preds = %10, %0
  %20 = phi i1 [ false, %0 ], [ %18, %10 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @a1()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  call void @abort() #2
  unreachable

5:                                                ; preds = %0
  %6 = call i32 @a2()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  call void @abort() #2
  unreachable

9:                                                ; preds = %5
  %10 = call i32 @a3()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  call void @abort() #2
  unreachable

13:                                               ; preds = %9
  %14 = call i32 @b1()
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  %18 = call i32 @b2()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  call void @abort() #2
  unreachable

21:                                               ; preds = %17
  %22 = call i32 @b3()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  call void @abort() #2
  unreachable

25:                                               ; preds = %21
  %26 = call i32 @c1()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @abort() #2
  unreachable

29:                                               ; preds = %25
  %30 = call i32 @c2()
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @abort() #2
  unreachable

33:                                               ; preds = %29
  %34 = call i32 @c3()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @abort() #2
  unreachable

37:                                               ; preds = %33
  %38 = call i32 @d1()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @abort() #2
  unreachable

41:                                               ; preds = %37
  %42 = call i32 @d2()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @abort() #2
  unreachable

45:                                               ; preds = %41
  %46 = call i32 @d3()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @abort() #2
  unreachable

49:                                               ; preds = %45
  %50 = call i32 @e1()
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  call void @abort() #2
  unreachable

53:                                               ; preds = %49
  %54 = call i32 @e2()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @abort() #2
  unreachable

57:                                               ; preds = %53
  %58 = call i32 @e3()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  call void @abort() #2
  unreachable

61:                                               ; preds = %57
  %62 = call i32 @e4()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  call void @abort() #2
  unreachable

65:                                               ; preds = %61
  %66 = call i32 @f1()
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  call void @abort() #2
  unreachable

69:                                               ; preds = %65
  %70 = call i32 @f2()
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  call void @abort() #2
  unreachable

73:                                               ; preds = %69
  %74 = call i32 @f3()
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  call void @abort() #2
  unreachable

77:                                               ; preds = %73
  %78 = call i32 @f4()
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @abort() #2
  unreachable

81:                                               ; preds = %77
  %82 = call i32 @g1()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  call void @abort() #2
  unreachable

85:                                               ; preds = %81
  %86 = call i32 @g2()
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  call void @abort() #2
  unreachable

89:                                               ; preds = %85
  %90 = call i32 @g3()
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  call void @abort() #2
  unreachable

93:                                               ; preds = %89
  %94 = call i32 @g4()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  call void @abort() #2
  unreachable

97:                                               ; preds = %93
  %98 = call i32 @g5()
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @abort() #2
  unreachable

101:                                              ; preds = %97
  %102 = call i32 @g6()
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @abort() #2
  unreachable

105:                                              ; preds = %101
  %106 = call i32 @g7()
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  call void @abort() #2
  unreachable

109:                                              ; preds = %105
  %110 = call i32 @h1()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %109
  call void @abort() #2
  unreachable

113:                                              ; preds = %109
  %114 = call i32 @h2()
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  call void @abort() #2
  unreachable

117:                                              ; preds = %113
  %118 = call i32 @h3()
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  call void @abort() #2
  unreachable

121:                                              ; preds = %117
  %122 = call i32 @h4()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @abort() #2
  unreachable

125:                                              ; preds = %121
  %126 = call i32 @h5()
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  call void @abort() #2
  unreachable

129:                                              ; preds = %125
  %130 = call i32 @h6()
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void @abort() #2
  unreachable

133:                                              ; preds = %129
  %134 = call i32 @h7()
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @abort() #2
  unreachable

137:                                              ; preds = %133
  call void @exit(i32 noundef 0) #2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
