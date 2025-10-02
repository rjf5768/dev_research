; ModuleID = './compare-fp-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/compare-fp-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pinf = dso_local global float 0.000000e+00, align 4
@ninf = dso_local global float 0.000000e+00, align 4
@NaN = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iuneq(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp oeq float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp ueq float %0, %1
  %12 = zext i1 %11 to i32
  %.not1 = icmp eq i32 %12, %2
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = fcmp uno float %0, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %14
  %17 = fcmp ugt float %0, %1
  br i1 %17, label %24, label %18

18:                                               ; preds = %16, %14
  %19 = fcmp uno float %0, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %18
  %21 = fcmp oge float %0, %1
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i1 [ true, %18 ], [ %21, %20 ]
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i1 [ false, %16 ], [ %23, %22 ]
  %26 = zext i1 %25 to i32
  %.not2 = icmp eq i32 %26, %2
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %24
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %24
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %27, %13, %9
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ieq(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = fcmp uno float %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = fcmp oeq float %0, %1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  %.not = icmp eq i32 %13, %2
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  unreachable

15:                                               ; preds = %11
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iltgt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp une float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 0, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp one float %0, %1
  %12 = zext i1 %11 to i32
  %.not1 = icmp eq i32 %12, %2
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %10
  %15 = fcmp uno float %0, %1
  br i1 %15, label %28, label %16

16:                                               ; preds = %14
  %17 = fcmp uno float %0, %1
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = fcmp olt float %0, %1
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = fcmp uno float %0, %1
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = fcmp ogt float %0, %1
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i1 [ true, %20 ], [ %23, %22 ]
  br label %26

26:                                               ; preds = %24, %18, %16
  %27 = phi i1 [ true, %18 ], [ true, %16 ], [ %25, %24 ]
  br label %28

28:                                               ; preds = %26, %14
  %29 = phi i1 [ false, %14 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  %.not2 = icmp eq i32 %30, %2
  br i1 %.not2, label %32, label %31

31:                                               ; preds = %28
  call void @abort() #2
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %28
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %31, %13, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ine(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = fcmp olt float %0, %1
  br i1 %6, label %13, label %7

7:                                                ; preds = %5
  %8 = fcmp uno float %0, %1
  br i1 %8, label %11, label %9

9:                                                ; preds = %7
  %10 = fcmp ogt float %0, %1
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi i1 [ true, %7 ], [ %10, %9 ]
  br label %13

13:                                               ; preds = %11, %5, %3
  %14 = phi i1 [ true, %5 ], [ true, %3 ], [ %12, %11 ]
  %15 = zext i1 %14 to i32
  %.not = icmp eq i32 %15, %2
  br i1 %.not, label %17, label %16

16:                                               ; preds = %13
  call void @abort() #2
  unreachable

17:                                               ; preds = %13
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunlt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp olt float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp uno float %0, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = fcmp olt float %0, %1
  %phi.cast1 = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1, %10 ], [ %phi.cast1, %12 ]
  %.not2 = icmp eq i32 %15, %2
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %16, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ilt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = fcmp uno float %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = fcmp olt float %0, %1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  %.not = icmp eq i32 %13, %2
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = fcmp ugt float %0, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = fcmp une float %0, %1
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 0, %15 ], [ %phi.cast, %17 ]
  %.not1 = icmp eq i32 %20, %2
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  %23 = fcmp ugt float %0, %1
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = fcmp une float %1, %0
  %phi.cast2 = zext i1 %25 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 0, %22 ], [ %phi.cast2, %24 ]
  %.not3 = icmp eq i32 %27, %2
  br i1 %.not3, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = fcmp une float %0, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = fcmp ole float %0, %1
  %phi.cast4 = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ 0, %29 ], [ %phi.cast4, %31 ]
  %.not5 = icmp eq i32 %34, %2
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = fcmp une float %1, %0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = fcmp ole float %0, %1
  %phi.cast6 = zext i1 %39 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 0, %36 ], [ %phi.cast6, %38 ]
  %.not7 = icmp eq i32 %41, %2
  br i1 %.not7, label %43, label %42

42:                                               ; preds = %40
  call void @abort() #2
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %40
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %42, %35, %28, %21, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunle(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp ole float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp uno float %0, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = fcmp ole float %0, %1
  %phi.cast1 = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1, %10 ], [ %phi.cast1, %12 ]
  %.not2 = icmp eq i32 %15, %2
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %16, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ile(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = fcmp uno float %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = fcmp ole float %0, %1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  %.not = icmp eq i32 %13, %2
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = fcmp olt float %0, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = fcmp oeq float %0, %1
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 1, %15 ], [ %phi.cast, %17 ]
  %.not1 = icmp eq i32 %20, %2
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  %23 = fcmp ogt float %1, %0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = fcmp oeq float %0, %1
  %phi.cast2 = zext i1 %25 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 1, %22 ], [ %phi.cast2, %24 ]
  %.not3 = icmp eq i32 %27, %2
  br i1 %.not3, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = fcmp oeq float %0, %1
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = fcmp olt float %0, %1
  %phi.cast4 = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ 1, %29 ], [ %phi.cast4, %31 ]
  %.not5 = icmp eq i32 %34, %2
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = fcmp oeq float %1, %0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = fcmp olt float %0, %1
  %phi.cast6 = zext i1 %39 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 1, %36 ], [ %phi.cast6, %38 ]
  %.not7 = icmp eq i32 %41, %2
  br i1 %.not7, label %43, label %42

42:                                               ; preds = %40
  call void @abort() #2
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %40
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %42, %35, %28, %21, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iungt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp ogt float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp uno float %0, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = fcmp ogt float %0, %1
  %phi.cast1 = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1, %10 ], [ %phi.cast1, %12 ]
  %.not2 = icmp eq i32 %15, %2
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %16, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @igt(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = fcmp uno float %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = fcmp ogt float %0, %1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  %.not = icmp eq i32 %13, %2
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = fcmp ult float %0, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = fcmp une float %0, %1
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 0, %15 ], [ %phi.cast, %17 ]
  %.not1 = icmp eq i32 %20, %2
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  %23 = fcmp ult float %0, %1
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = fcmp une float %1, %0
  %phi.cast2 = zext i1 %25 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 0, %22 ], [ %phi.cast2, %24 ]
  %.not3 = icmp eq i32 %27, %2
  br i1 %.not3, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = fcmp une float %0, %1
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = fcmp oge float %0, %1
  %phi.cast4 = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ 0, %29 ], [ %phi.cast4, %31 ]
  %.not5 = icmp eq i32 %34, %2
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = fcmp une float %1, %0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = fcmp oge float %0, %1
  %phi.cast6 = zext i1 %39 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 0, %36 ], [ %phi.cast6, %38 ]
  %.not7 = icmp eq i32 %41, %2
  br i1 %.not7, label %43, label %42

42:                                               ; preds = %40
  call void @abort() #2
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %40
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %42, %35, %28, %21, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @iunge(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = fcmp oge float %0, %1
  %phi.cast = zext i1 %6 to i32
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %3 ], [ %phi.cast, %5 ]
  %.not = icmp eq i32 %8, %2
  br i1 %.not, label %10, label %9

9:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %7
  %11 = fcmp uno float %0, %1
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = fcmp oge float %0, %1
  %phi.cast1 = zext i1 %13 to i32
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1, %10 ], [ %phi.cast1, %12 ]
  %.not2 = icmp eq i32 %15, %2
  br i1 %.not2, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %16, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ige(float noundef %0, float noundef %1, i32 noundef %2) #0 {
  %4 = fcmp uno float %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = fcmp uno float %0, %1
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = fcmp oge float %0, %1
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i1 [ true, %5 ], [ %8, %7 ]
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i1 [ false, %3 ], [ %10, %9 ]
  %13 = zext i1 %12 to i32
  %.not = icmp eq i32 %13, %2
  br i1 %.not, label %15, label %14

14:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %11
  %16 = fcmp ogt float %0, %1
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  %18 = fcmp oeq float %0, %1
  %phi.cast = zext i1 %18 to i32
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ 1, %15 ], [ %phi.cast, %17 ]
  %.not1 = icmp eq i32 %20, %2
  br i1 %.not1, label %22, label %21

21:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  %23 = fcmp olt float %1, %0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = fcmp oeq float %0, %1
  %phi.cast2 = zext i1 %25 to i32
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ 1, %22 ], [ %phi.cast2, %24 ]
  %.not3 = icmp eq i32 %27, %2
  br i1 %.not3, label %29, label %28

28:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %26
  %30 = fcmp oeq float %0, %1
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = fcmp ogt float %0, %1
  %phi.cast4 = zext i1 %32 to i32
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ 1, %29 ], [ %phi.cast4, %31 ]
  %.not5 = icmp eq i32 %34, %2
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %33
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %33
  %37 = fcmp oeq float %1, %0
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = fcmp ogt float %0, %1
  %phi.cast6 = zext i1 %39 to i32
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ 1, %36 ], [ %phi.cast6, %38 ]
  %.not7 = icmp eq i32 %41, %2
  br i1 %.not7, label %43, label %42

42:                                               ; preds = %40
  call void @abort() #2
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %40
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %42, %35, %28, %21, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  store float 0x7FF0000000000000, float* @pinf, align 4
  store float 0xFFF0000000000000, float* @ninf, align 4
  store float 0x7FF8000000000000, float* @NaN, align 4
  %1 = call i32 @iuneq(float noundef 0xFFF0000000000000, float noundef 0x7FF0000000000000, i32 noundef 0)
  %2 = load float, float* @NaN, align 4
  %3 = call i32 @iuneq(float noundef %2, float noundef %2, i32 noundef 1)
  %4 = load float, float* @pinf, align 4
  %5 = load float, float* @ninf, align 4
  %6 = call i32 @iuneq(float noundef %4, float noundef %5, i32 noundef 0)
  %7 = call i32 @iuneq(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %8 = call i32 @iuneq(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %9 = call i32 @iuneq(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %10 = call i32 @ieq(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %11 = call i32 @ieq(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %12 = call i32 @ieq(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %13 = load float, float* @ninf, align 4
  %14 = load float, float* @pinf, align 4
  %15 = call i32 @iltgt(float noundef %13, float noundef %14, i32 noundef 1)
  %16 = load float, float* @NaN, align 4
  %17 = call i32 @iltgt(float noundef %16, float noundef %16, i32 noundef 0)
  %18 = load float, float* @pinf, align 4
  %19 = load float, float* @ninf, align 4
  %20 = call i32 @iltgt(float noundef %18, float noundef %19, i32 noundef 1)
  %21 = call i32 @iltgt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %22 = call i32 @iltgt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %23 = call i32 @iltgt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %24 = call i32 @ine(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %25 = call i32 @ine(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %26 = call i32 @ine(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %27 = load float, float* @NaN, align 4
  %28 = load float, float* @ninf, align 4
  %29 = call i32 @iunlt(float noundef %27, float noundef %28, i32 noundef 1)
  %30 = load float, float* @pinf, align 4
  %31 = load float, float* @NaN, align 4
  %32 = call i32 @iunlt(float noundef %30, float noundef %31, i32 noundef 1)
  %33 = load float, float* @pinf, align 4
  %34 = load float, float* @ninf, align 4
  %35 = call i32 @iunlt(float noundef %33, float noundef %34, i32 noundef 0)
  %36 = load float, float* @pinf, align 4
  %37 = call i32 @iunlt(float noundef %36, float noundef %36, i32 noundef 0)
  %38 = load float, float* @ninf, align 4
  %39 = call i32 @iunlt(float noundef %38, float noundef %38, i32 noundef 0)
  %40 = call i32 @iunlt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %41 = call i32 @iunlt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %42 = call i32 @iunlt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %43 = call i32 @ilt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %44 = call i32 @ilt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %45 = call i32 @ilt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %46 = load float, float* @NaN, align 4
  %47 = load float, float* @ninf, align 4
  %48 = call i32 @iunle(float noundef %46, float noundef %47, i32 noundef 1)
  %49 = load float, float* @pinf, align 4
  %50 = load float, float* @NaN, align 4
  %51 = call i32 @iunle(float noundef %49, float noundef %50, i32 noundef 1)
  %52 = load float, float* @pinf, align 4
  %53 = load float, float* @ninf, align 4
  %54 = call i32 @iunle(float noundef %52, float noundef %53, i32 noundef 0)
  %55 = load float, float* @pinf, align 4
  %56 = call i32 @iunle(float noundef %55, float noundef %55, i32 noundef 1)
  %57 = load float, float* @ninf, align 4
  %58 = call i32 @iunle(float noundef %57, float noundef %57, i32 noundef 1)
  %59 = call i32 @iunle(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %60 = call i32 @iunle(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %61 = call i32 @iunle(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %62 = call i32 @ile(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 1)
  %63 = call i32 @ile(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %64 = call i32 @ile(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 0)
  %65 = load float, float* @NaN, align 4
  %66 = load float, float* @ninf, align 4
  %67 = call i32 @iungt(float noundef %65, float noundef %66, i32 noundef 1)
  %68 = load float, float* @pinf, align 4
  %69 = load float, float* @NaN, align 4
  %70 = call i32 @iungt(float noundef %68, float noundef %69, i32 noundef 1)
  %71 = load float, float* @pinf, align 4
  %72 = load float, float* @ninf, align 4
  %73 = call i32 @iungt(float noundef %71, float noundef %72, i32 noundef 1)
  %74 = load float, float* @pinf, align 4
  %75 = call i32 @iungt(float noundef %74, float noundef %74, i32 noundef 0)
  %76 = load float, float* @ninf, align 4
  %77 = call i32 @iungt(float noundef %76, float noundef %76, i32 noundef 0)
  %78 = call i32 @iungt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %79 = call i32 @iungt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %80 = call i32 @iungt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %81 = call i32 @igt(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %82 = call i32 @igt(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 0)
  %83 = call i32 @igt(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %84 = load float, float* @NaN, align 4
  %85 = load float, float* @ninf, align 4
  %86 = call i32 @iunge(float noundef %84, float noundef %85, i32 noundef 1)
  %87 = load float, float* @pinf, align 4
  %88 = load float, float* @NaN, align 4
  %89 = call i32 @iunge(float noundef %87, float noundef %88, i32 noundef 1)
  %90 = load float, float* @ninf, align 4
  %91 = load float, float* @pinf, align 4
  %92 = call i32 @iunge(float noundef %90, float noundef %91, i32 noundef 0)
  %93 = load float, float* @pinf, align 4
  %94 = call i32 @iunge(float noundef %93, float noundef %93, i32 noundef 1)
  %95 = load float, float* @ninf, align 4
  %96 = call i32 @iunge(float noundef %95, float noundef %95, i32 noundef 1)
  %97 = call i32 @iunge(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %98 = call i32 @iunge(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %99 = call i32 @iunge(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  %100 = call i32 @ige(float noundef 1.000000e+00, float noundef 4.000000e+00, i32 noundef 0)
  %101 = call i32 @ige(float noundef 3.000000e+00, float noundef 3.000000e+00, i32 noundef 1)
  %102 = call i32 @ige(float noundef 5.000000e+00, float noundef 2.000000e+00, i32 noundef 1)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
