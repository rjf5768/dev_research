; ModuleID = './20020506-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20020506-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i8 noundef signext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i8 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i8 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i8 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i8 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i8 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i8 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i8 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i8 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i8 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(i16 noundef signext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i16 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i16 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i16 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i16 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(i16 noundef zeroext %0, i32 noundef %1) #0 {
  %3 = icmp sgt i16 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i16 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i16 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i16 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test5(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i32 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i32 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i32 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test6(i32 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i32 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i32 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i32 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test7(i64 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i64 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i64 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i64 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test8(i64 noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i64 %0, -1
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %.not9 = icmp eq i32 %1, 0
  br i1 %.not9, label %6, label %5

5:                                                ; preds = %4
  call void @abort() #2
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  br label %10

7:                                                ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %6
  %.not1 = icmp sgt i64 %0, -1
  br i1 %.not1, label %14, label %11

11:                                               ; preds = %10
  %.not8 = icmp eq i32 %1, 0
  br i1 %.not8, label %12, label %13

12:                                               ; preds = %11
  call void @abort() #2
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  br label %17

14:                                               ; preds = %10
  %.not2 = icmp eq i32 %1, 0
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %13
  %18 = icmp slt i64 %0, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %.not7 = icmp eq i32 %1, 0
  br i1 %.not7, label %20, label %21

20:                                               ; preds = %19
  call void @abort() #2
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %19
  br label %25

22:                                               ; preds = %17
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %24, label %23

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %21
  %.not4 = icmp slt i64 %0, 0
  br i1 %.not4, label %29, label %26

26:                                               ; preds = %25
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  call void @abort() #2
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  br label %32

29:                                               ; preds = %25
  %.not5 = icmp eq i32 %1, 0
  br i1 %.not5, label %30, label %31

30:                                               ; preds = %29
  call void @abort() #2
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31, %28
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %27, %23, %20, %15, %12, %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @test1(i8 noundef signext 0, i32 noundef 0)
  call void @test1(i8 noundef signext 127, i32 noundef 0)
  call void @test1(i8 noundef signext -128, i32 noundef 1)
  call void @test1(i8 noundef signext -1, i32 noundef 1)
  call void @test2(i8 noundef zeroext 0, i32 noundef 0)
  call void @test2(i8 noundef zeroext 127, i32 noundef 0)
  call void @test2(i8 noundef zeroext -128, i32 noundef 1)
  call void @test2(i8 noundef zeroext -1, i32 noundef 1)
  call void @test3(i16 noundef signext 0, i32 noundef 0)
  call void @test3(i16 noundef signext 32767, i32 noundef 0)
  call void @test3(i16 noundef signext -32768, i32 noundef 1)
  call void @test3(i16 noundef signext -1, i32 noundef 1)
  call void @test4(i16 noundef zeroext 0, i32 noundef 0)
  call void @test4(i16 noundef zeroext 32767, i32 noundef 0)
  call void @test4(i16 noundef zeroext -32768, i32 noundef 1)
  call void @test4(i16 noundef zeroext -1, i32 noundef 1)
  call void @test5(i32 noundef 0, i32 noundef 0)
  call void @test5(i32 noundef 2147483647, i32 noundef 0)
  call void @test5(i32 noundef -2147483648, i32 noundef 1)
  call void @test5(i32 noundef -1, i32 noundef 1)
  call void @test6(i32 noundef 0, i32 noundef 0)
  call void @test6(i32 noundef 2147483647, i32 noundef 0)
  call void @test6(i32 noundef -2147483648, i32 noundef 1)
  call void @test6(i32 noundef -1, i32 noundef 1)
  call void @test7(i64 noundef 0, i32 noundef 0)
  call void @test7(i64 noundef 9223372036854775807, i32 noundef 0)
  call void @test7(i64 noundef -9223372036854775808, i32 noundef 1)
  call void @test7(i64 noundef -1, i32 noundef 1)
  call void @test8(i64 noundef 0, i32 noundef 0)
  call void @test8(i64 noundef 9223372036854775807, i32 noundef 0)
  call void @test8(i64 noundef -9223372036854775808, i32 noundef 1)
  call void @test8(i64 noundef -1, i32 noundef 1)
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
