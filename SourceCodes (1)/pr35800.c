; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr35800.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @stab_xcoff_builtin_type(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, -34
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %53

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 0, %12
  switch i32 %13, label %48 [
    i32 1, label %14
    i32 2, label %15
    i32 3, label %16
    i32 4, label %17
    i32 5, label %18
    i32 6, label %19
    i32 7, label %20
    i32 8, label %21
    i32 9, label %22
    i32 10, label %23
    i32 11, label %24
    i32 12, label %25
    i32 13, label %26
    i32 14, label %27
    i32 15, label %28
    i32 16, label %29
    i32 17, label %30
    i32 18, label %31
    i32 19, label %32
    i32 20, label %33
    i32 21, label %34
    i32 22, label %35
    i32 23, label %36
    i32 24, label %37
    i32 25, label %38
    i32 26, label %39
    i32 27, label %40
    i32 28, label %41
    i32 29, label %42
    i32 30, label %43
    i32 31, label %44
    i32 32, label %45
    i32 33, label %46
    i32 34, label %47
  ]

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %48

15:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %16

16:                                               ; preds = %11, %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %48

17:                                               ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %18

18:                                               ; preds = %11, %17
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %19

19:                                               ; preds = %11, %18
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %20

20:                                               ; preds = %11, %19
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  br label %21

21:                                               ; preds = %11, %20
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %22

22:                                               ; preds = %11, %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  br label %23

23:                                               ; preds = %11, %22
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  br label %24

24:                                               ; preds = %11, %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  br label %25

25:                                               ; preds = %11, %24
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %4, align 8
  br label %26

26:                                               ; preds = %11, %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %4, align 8
  br label %27

27:                                               ; preds = %11, %26
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8** %4, align 8
  br label %28

28:                                               ; preds = %11, %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %4, align 8
  br label %29

29:                                               ; preds = %11, %28
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %4, align 8
  br label %30

30:                                               ; preds = %11, %29
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8** %4, align 8
  br label %31

31:                                               ; preds = %11, %30
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8** %4, align 8
  br label %32

32:                                               ; preds = %11, %31
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %4, align 8
  br label %33

33:                                               ; preds = %11, %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i8** %4, align 8
  br label %34

34:                                               ; preds = %11, %33
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i8** %4, align 8
  br label %35

35:                                               ; preds = %11, %34
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i8** %4, align 8
  br label %36

36:                                               ; preds = %11, %35
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8** %4, align 8
  br label %37

37:                                               ; preds = %11, %36
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %4, align 8
  br label %38

38:                                               ; preds = %11, %37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %4, align 8
  br label %39

39:                                               ; preds = %11, %38
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8** %4, align 8
  br label %40

40:                                               ; preds = %11, %39
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0), i8** %4, align 8
  br label %41

41:                                               ; preds = %11, %40
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8** %4, align 8
  br label %42

42:                                               ; preds = %11, %41
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i8** %4, align 8
  br label %43

43:                                               ; preds = %11, %42
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0), i8** %4, align 8
  br label %44

44:                                               ; preds = %11, %43
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0), i8** %4, align 8
  br label %45

45:                                               ; preds = %11, %44
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i8** %4, align 8
  br label %46

46:                                               ; preds = %11, %45
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0), i8** %4, align 8
  br label %47

47:                                               ; preds = %11, %46
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i8** %4, align 8
  br label %48

48:                                               ; preds = %47, %11, %16, %14
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = call i32 @stab_xcoff_builtin_type(i32 noundef 0)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @abort() #2
  unreachable

6:                                                ; preds = %0
  %7 = call i32 @stab_xcoff_builtin_type(i32 noundef -1)
  %8 = icmp ne i32 %7, 105
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  call void @abort() #2
  unreachable

10:                                               ; preds = %6
  %11 = call i32 @stab_xcoff_builtin_type(i32 noundef -2)
  %12 = icmp ne i32 %11, 115
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @abort() #2
  unreachable

14:                                               ; preds = %10
  %15 = call i32 @stab_xcoff_builtin_type(i32 noundef -3)
  %16 = icmp ne i32 %15, 115
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @abort() #2
  unreachable

18:                                               ; preds = %14
  store i32 -4, i32* %2, align 4
  br label %19

19:                                               ; preds = %28, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp sge i32 %20, -34
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @stab_xcoff_builtin_type(i32 noundef %23)
  %25 = icmp ne i32 %24, 105
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #2
  unreachable

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %2, align 4
  br label %19, !llvm.loop !4

31:                                               ; preds = %19
  %32 = call i32 @stab_xcoff_builtin_type(i32 noundef -35)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @abort() #2
  unreachable

35:                                               ; preds = %31
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
