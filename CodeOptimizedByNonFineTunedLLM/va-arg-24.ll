; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-24.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@errors = internal global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"varargs0\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c" %s: n[%d] = %d expected %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"varargs1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"varargs2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"varargs3\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"varargs4\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"varargs5\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"varargs6\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"varargs7\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"varargs8\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"varargs9\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @varargs0(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, ...) @varargs1(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, ...) @varargs2(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, ...) @varargs3(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, ...) @varargs4(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, i32, ...) @varargs5(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, i32, i32, ...) @varargs6(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, ...) @varargs7(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @varargs8(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ...) @varargs9(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10)
  %2 = load i32, i32* @errors, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs0(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [11 x i32], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  store i32 %8, i32* %9, align 16
  store i32 1, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 10
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ule i32 %16, 40
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = getelementptr i8, i8* %20, i32 %16
  %22 = bitcast i8* %21 to i32*
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %29

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr i8, i8* %26, i32 8
  store i8* %28, i8** %25, align 8
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i32* [ %22, %18 ], [ %27, %24 ]
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10, !llvm.loop !4

38:                                               ; preds = %10
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %40 = bitcast %struct.__va_list_tag* %39 to i8*
  call void @llvm.va_end(i8* %40)
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* noundef %41)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs1(i32 noundef %0, i32 noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca [11 x i32], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  store i32 %10, i32* %11, align 16
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 1
  store i32 %12, i32* %13, align 4
  store i32 2, i32* %7, align 4
  br label %14

14:                                               ; preds = %39, %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %15, 10
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp ule i32 %20, 40
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = getelementptr i8, i8* %24, i32 %20
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %20, 8
  store i32 %27, i32* %19, align 16
  br label %33

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %18, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = getelementptr i8, i8* %30, i32 8
  store i8* %32, i8** %29, align 8
  br label %33

33:                                               ; preds = %28, %22
  %34 = phi i32* [ %26, %22 ], [ %31, %28 ]
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %14, !llvm.loop !6

42:                                               ; preds = %14
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %44 = bitcast %struct.__va_list_tag* %43 to i8*
  call void @llvm.va_end(i8* %44)
  %45 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* noundef %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs2(i32 noundef %0, i32 noundef %1, i32 noundef %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca [11 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %12, i32* %13, align 16
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %16, i32* %17, align 8
  store i32 3, i32* %9, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %19, 10
  br i1 %20, label %21, label %46

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ule i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr i8, i8* %28, i32 %24
  %30 = bitcast i8* %29 to i32*
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %37

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr i8, i8* %34, i32 8
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32* [ %30, %26 ], [ %35, %32 ]
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %18, !llvm.loop !7

46:                                               ; preds = %18
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %48 = bitcast %struct.__va_list_tag* %47 to i8*
  call void @llvm.va_end(i8* %48)
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* noundef %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca [11 x i32], align 16
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 2
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 3
  store i32 %20, i32* %21, align 4
  store i32 4, i32* %11, align 4
  br label %22

22:                                               ; preds = %47, %4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sle i32 %23, 10
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ule i32 %28, 40
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = getelementptr i8, i8* %32, i32 %28
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr i8, i8* %38, i32 8
  store i8* %40, i8** %37, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32* [ %34, %30 ], [ %39, %36 ]
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  br label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %22, !llvm.loop !8

50:                                               ; preds = %22
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %52 = bitcast %struct.__va_list_tag* %51 to i8*
  call void @llvm.va_end(i8* %52)
  %53 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* noundef %53)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  %12 = alloca [11 x i32], align 16
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_start(i8* %15)
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  store i32 5, i32* %13, align 4
  br label %26

26:                                               ; preds = %51, %5
  %27 = load i32, i32* %13, align 4
  %28 = icmp sle i32 %27, 10
  br i1 %28, label %29, label %54

29:                                               ; preds = %26
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp ule i32 %32, 40
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 3
  %36 = load i8*, i8** %35, align 16
  %37 = getelementptr i8, i8* %36, i32 %32
  %38 = bitcast i8* %37 to i32*
  %39 = add i32 %32, 8
  store i32 %39, i32* %31, align 16
  br label %45

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr i8, i8* %42, i32 8
  store i8* %44, i8** %41, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i32* [ %38, %34 ], [ %43, %40 ]
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %26, !llvm.loop !9

54:                                               ; preds = %26
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  %57 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* noundef %57)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ...) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  %14 = alloca [11 x i32], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 2
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 3
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 4
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 5
  store i32 %28, i32* %29, align 4
  store i32 6, i32* %15, align 4
  br label %30

30:                                               ; preds = %55, %6
  %31 = load i32, i32* %15, align 4
  %32 = icmp sle i32 %31, 10
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 16
  %37 = icmp ule i32 %36, 40
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 3
  %40 = load i8*, i8** %39, align 16
  %41 = getelementptr i8, i8* %40, i32 %36
  %42 = bitcast i8* %41 to i32*
  %43 = add i32 %36, 8
  store i32 %43, i32* %35, align 16
  br label %49

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr i8, i8* %46, i32 8
  store i8* %48, i8** %45, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32* [ %42, %38 ], [ %47, %44 ]
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 %53
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %15, align 4
  br label %30, !llvm.loop !10

58:                                               ; preds = %30
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %60 = bitcast %struct.__va_list_tag* %59 to i8*
  call void @llvm.va_end(i8* %60)
  %61 = getelementptr inbounds [11 x i32], [11 x i32]* %14, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* noundef %61)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ...) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = alloca [11 x i32], align 16
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 2
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 3
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 4
  store i32 %28, i32* %29, align 16
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 5
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 6
  store i32 %32, i32* %33, align 8
  store i32 7, i32* %17, align 4
  br label %34

34:                                               ; preds = %59, %7
  %35 = load i32, i32* %17, align 4
  %36 = icmp sle i32 %35, 10
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp ule i32 %40, 40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = getelementptr i8, i8* %44, i32 %40
  %46 = bitcast i8* %45 to i32*
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 16
  br label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr i8, i8* %50, i32 8
  store i8* %52, i8** %49, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32* [ %46, %42 ], [ %51, %48 ]
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %34, !llvm.loop !11

62:                                               ; preds = %34
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %64 = bitcast %struct.__va_list_tag* %63 to i8*
  call void @llvm.va_end(i8* %64)
  %65 = getelementptr inbounds [11 x i32], [11 x i32]* %16, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* noundef %65)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ...) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [1 x %struct.__va_list_tag], align 16
  %18 = alloca [11 x i32], align 16
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 4
  store i32 %30, i32* %31, align 16
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 6
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 7
  store i32 %36, i32* %37, align 4
  store i32 8, i32* %19, align 4
  br label %38

38:                                               ; preds = %63, %8
  %39 = load i32, i32* %19, align 4
  %40 = icmp sle i32 %39, 10
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 16
  %45 = icmp ule i32 %44, 40
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 3
  %48 = load i8*, i8** %47, align 16
  %49 = getelementptr i8, i8* %48, i32 %44
  %50 = bitcast i8* %49 to i32*
  %51 = add i32 %44, 8
  store i32 %51, i32* %43, align 16
  br label %57

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = getelementptr i8, i8* %54, i32 8
  store i8* %56, i8** %53, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i32* [ %50, %46 ], [ %55, %52 ]
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %19, align 4
  br label %38, !llvm.loop !12

66:                                               ; preds = %38
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %68 = bitcast %struct.__va_list_tag* %67 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = getelementptr inbounds [11 x i32], [11 x i32]* %18, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* noundef %69)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ...) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [1 x %struct.__va_list_tag], align 16
  %20 = alloca [11 x i32], align 16
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_start(i8* %23)
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 2
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 3
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 4
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 5
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 6
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 7
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %18, align 4
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 8
  store i32 %40, i32* %41, align 16
  store i32 9, i32* %21, align 4
  br label %42

42:                                               ; preds = %67, %9
  %43 = load i32, i32* %21, align 4
  %44 = icmp sle i32 %43, 10
  br i1 %44, label %45, label %70

45:                                               ; preds = %42
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ule i32 %48, 40
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 3
  %52 = load i8*, i8** %51, align 16
  %53 = getelementptr i8, i8* %52, i32 %48
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %48, 8
  store i32 %55, i32* %47, align 16
  br label %61

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr i8, i8* %58, i32 8
  store i8* %60, i8** %57, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i32* [ %54, %50 ], [ %59, %56 ]
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 %65
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %21, align 4
  br label %42, !llvm.loop !13

70:                                               ; preds = %42
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %72 = bitcast %struct.__va_list_tag* %71 to i8*
  call void @llvm.va_end(i8* %72)
  %73 = getelementptr inbounds [11 x i32], [11 x i32]* %20, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* noundef %73)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ...) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [1 x %struct.__va_list_tag], align 16
  %22 = alloca [11 x i32], align 16
  %23 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_start(i8* %25)
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %13, align 4
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 2
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %14, align 4
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %15, align 4
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load i32, i32* %16, align 4
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 5
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 6
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 7
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %19, align 4
  %43 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 8
  store i32 %42, i32* %43, align 16
  %44 = load i32, i32* %20, align 4
  %45 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 9
  store i32 %44, i32* %45, align 4
  store i32 10, i32* %23, align 4
  br label %46

46:                                               ; preds = %71, %10
  %47 = load i32, i32* %23, align 4
  %48 = icmp sle i32 %47, 10
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i32*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 16
  br label %65

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32* [ %58, %54 ], [ %63, %60 ]
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %23, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 %69
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %23, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %23, align 4
  br label %46, !llvm.loop !14

74:                                               ; preds = %46
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %76 = bitcast %struct.__va_list_tag* %75 to i8*
  call void @llvm.va_end(i8* %76)
  %77 = getelementptr inbounds [11 x i32], [11 x i32]* %22, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* noundef %77)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @verify(i8* noundef %0, i32* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sle i32 %7, 10
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18, i32 noundef %19, i32 noundef %24, i32 noundef %25)
  %27 = load i32, i32* @errors, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @errors, align 4
  br label %29

29:                                               ; preds = %17, %9
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %6, !llvm.loop !15

33:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

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
