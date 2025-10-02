; ModuleID = './compare-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/compare-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ieq(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %.not = icmp sgt i32 %0, %1
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  %.not12 = icmp slt i32 %0, %1
  br i1 %.not12, label %8, label %5

5:                                                ; preds = %4
  %.not13 = icmp eq i32 %2, 0
  br i1 %.not13, label %6, label %7

6:                                                ; preds = %5
  call void @abort() #2
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %5
  br label %11

8:                                                ; preds = %4, %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %10, label %9

9:                                                ; preds = %8
  call void @abort() #2
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  br label %11

11:                                               ; preds = %10, %7
  %.not2 = icmp sgt i32 %0, %1
  br i1 %.not2, label %17, label %12

12:                                               ; preds = %11
  %13 = icmp eq i32 %0, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %12
  %.not11 = icmp eq i32 %2, 0
  br i1 %.not11, label %15, label %16

15:                                               ; preds = %14
  call void @abort() #2
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  br label %20

17:                                               ; preds = %12, %11
  %.not3 = icmp eq i32 %2, 0
  br i1 %.not3, label %19, label %18

18:                                               ; preds = %17
  call void @abort() #2
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %16
  %.not4 = icmp sgt i32 %0, %1
  br i1 %.not4, label %25, label %21

21:                                               ; preds = %20
  %.not9 = icmp sgt i32 %1, %0
  br i1 %.not9, label %25, label %22

22:                                               ; preds = %21
  %.not10 = icmp eq i32 %2, 0
  br i1 %.not10, label %23, label %24

23:                                               ; preds = %22
  call void @abort() #2
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %22
  br label %28

25:                                               ; preds = %21, %20
  %.not5 = icmp eq i32 %2, 0
  br i1 %.not5, label %27, label %26

26:                                               ; preds = %25
  call void @abort() #2
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %27, %24
  %29 = icmp eq i32 %1, %0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br i1 false, label %34, label %31

31:                                               ; preds = %30
  %.not8 = icmp eq i32 %2, 0
  br i1 %.not8, label %32, label %33

32:                                               ; preds = %31
  call void @abort() #2
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %31
  br label %37

34:                                               ; preds = %30, %28
  %.not6 = icmp eq i32 %2, 0
  br i1 %.not6, label %36, label %35

35:                                               ; preds = %34
  call void @abort() #2
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %33
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %35, %32, %26, %23, %18, %15, %9, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ine(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp sgt i32 %0, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5, %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %9
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %11, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ilt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, %1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  br i1 false, label %9, label %6

6:                                                ; preds = %5
  %.not2 = icmp eq i32 %2, 0
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br label %12

9:                                                ; preds = %5, %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %8
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %10, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ile(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5, %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %9
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %11, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @igt(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %0, %1
  br i1 %4, label %5, label %9

5:                                                ; preds = %3
  br i1 false, label %9, label %6

6:                                                ; preds = %5
  %.not2 = icmp eq i32 %2, 0
  br i1 %.not2, label %7, label %8

7:                                                ; preds = %6
  call void @abort() #2
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  br label %12

9:                                                ; preds = %5, %3
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %9
  call void @abort() #2
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %8
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %10, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ige(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %0, %1
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %0, %1
  br i1 %6, label %7, label %10

7:                                                ; preds = %5, %3
  %.not1 = icmp eq i32 %2, 0
  br i1 %.not1, label %8, label %9

8:                                                ; preds = %7
  call void @abort() #2
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %13

10:                                               ; preds = %5
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %12, label %11

11:                                               ; preds = %10
  call void @abort() #2
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %9
  ret i32 undef

UnifiedUnreachableBlock:                          ; preds = %11, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i32 @ieq(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %2 = call i32 @ieq(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %3 = call i32 @ieq(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %4 = call i32 @ine(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %5 = call i32 @ine(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %6 = call i32 @ine(i32 noundef 5, i32 noundef 2, i32 noundef 1)
  %7 = call i32 @ilt(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %8 = call i32 @ilt(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %9 = call i32 @ilt(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %10 = call i32 @ile(i32 noundef 1, i32 noundef 4, i32 noundef 1)
  %11 = call i32 @ile(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %12 = call i32 @ile(i32 noundef 5, i32 noundef 2, i32 noundef 0)
  %13 = call i32 @igt(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %14 = call i32 @igt(i32 noundef 3, i32 noundef 3, i32 noundef 0)
  %15 = call i32 @igt(i32 noundef 5, i32 noundef 2, i32 noundef 1)
  %16 = call i32 @ige(i32 noundef 1, i32 noundef 4, i32 noundef 0)
  %17 = call i32 @ige(i32 noundef 3, i32 noundef 3, i32 noundef 1)
  %18 = call i32 @ige(i32 noundef 5, i32 noundef 2, i32 noundef 1)
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
