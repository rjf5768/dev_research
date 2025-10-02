; ModuleID = './pr35800.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr35800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"unsigned short\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"unsigned long\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"long double\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"boolean\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"short real\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"stringptr\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"character\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"logical*1\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"logical*2\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"logical*4\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"complex\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"double complex\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"integer*1\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"integer*2\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"integer*4\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"wchar\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"long long\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"unsigned long long\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"logical*8\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"integer*8\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @stab_xcoff_builtin_type(i32 noundef %0) #0 {
  %2 = icmp sgt i32 %0, -1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = icmp slt i32 %0, -34
  br i1 %4, label %5, label %6

5:                                                ; preds = %3, %1
  br label %45

6:                                                ; preds = %3
  %7 = sub nsw i32 0, %0
  switch i32 %7, label %42 [
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
    i32 5, label %12
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 10, label %17
    i32 11, label %18
    i32 12, label %19
    i32 13, label %20
    i32 14, label %21
    i32 15, label %22
    i32 16, label %23
    i32 17, label %24
    i32 18, label %25
    i32 19, label %26
    i32 20, label %27
    i32 21, label %28
    i32 22, label %29
    i32 23, label %30
    i32 24, label %31
    i32 25, label %32
    i32 26, label %33
    i32 27, label %34
    i32 28, label %35
    i32 29, label %36
    i32 30, label %37
    i32 31, label %38
    i32 32, label %39
    i32 33, label %40
    i32 34, label %41
  ]

8:                                                ; preds = %6
  br label %42

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9, %6
  br label %42

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %6
  br label %13

13:                                               ; preds = %12, %6
  br label %14

14:                                               ; preds = %13, %6
  br label %15

15:                                               ; preds = %14, %6
  br label %16

16:                                               ; preds = %15, %6
  br label %17

17:                                               ; preds = %16, %6
  br label %18

18:                                               ; preds = %17, %6
  br label %19

19:                                               ; preds = %18, %6
  br label %20

20:                                               ; preds = %19, %6
  br label %21

21:                                               ; preds = %20, %6
  br label %22

22:                                               ; preds = %21, %6
  br label %23

23:                                               ; preds = %22, %6
  br label %24

24:                                               ; preds = %23, %6
  br label %25

25:                                               ; preds = %24, %6
  br label %26

26:                                               ; preds = %25, %6
  br label %27

27:                                               ; preds = %26, %6
  br label %28

28:                                               ; preds = %27, %6
  br label %29

29:                                               ; preds = %28, %6
  br label %30

30:                                               ; preds = %29, %6
  br label %31

31:                                               ; preds = %30, %6
  br label %32

32:                                               ; preds = %31, %6
  br label %33

33:                                               ; preds = %32, %6
  br label %34

34:                                               ; preds = %33, %6
  br label %35

35:                                               ; preds = %34, %6
  br label %36

36:                                               ; preds = %35, %6
  br label %37

37:                                               ; preds = %36, %6
  br label %38

38:                                               ; preds = %37, %6
  br label %39

39:                                               ; preds = %38, %6
  br label %40

40:                                               ; preds = %39, %6
  br label %41

41:                                               ; preds = %40, %6
  br label %42

42:                                               ; preds = %41, %10, %8, %6
  %.01 = phi i8* [ undef, %6 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), %41 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %10 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %8 ]
  %43 = load i8, i8* %.01, align 1
  %44 = sext i8 %43 to i32
  br label %45

45:                                               ; preds = %42, %5
  %.0 = phi i32 [ 0, %5 ], [ %44, %42 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  %1 = call i32 @stab_xcoff_builtin_type(i32 noundef 0)
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  %4 = call i32 @stab_xcoff_builtin_type(i32 noundef -1)
  %.not1 = icmp eq i32 %4, 105
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #3
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  %7 = call i32 @stab_xcoff_builtin_type(i32 noundef -2)
  %.not2 = icmp eq i32 %7, 115
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = call i32 @stab_xcoff_builtin_type(i32 noundef -3)
  %.not3 = icmp eq i32 %10, 115
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i32 [ -4, %12 ], [ %20, %19 ]
  %14 = icmp ugt i32 %.0, -35
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = call i32 @stab_xcoff_builtin_type(i32 noundef %.0)
  %.not5 = icmp eq i32 %16, 105
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = add nsw i32 %.0, -1
  br label %13, !llvm.loop !4

21:                                               ; preds = %13
  %22 = call i32 @stab_xcoff_builtin_type(i32 noundef -35)
  %.not4 = icmp eq i32 %22, 0
  br i1 %.not4, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #3
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %23, %17, %11, %8, %5, %2
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
