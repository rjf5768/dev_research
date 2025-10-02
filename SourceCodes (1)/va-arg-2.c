; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@to_hex.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @to_hex(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ugt i32 %3, 15
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #4
  unreachable

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [17 x i8], [17 x i8]* @to_hex.hex, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  ret i32 %11
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strlen(i8* noundef %6)
  %8 = icmp ne i64 %7, 16
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @abort() #4
  unreachable

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %41, %10
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %2, align 8
  %18 = load i8, i8* %16, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp ule i32 %22, 40
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = getelementptr i8, i8* %26, i32 %22
  %28 = bitcast i8* %27 to i32*
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 16
  br label %35

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = getelementptr i8, i8* %32, i32 8
  store i8* %34, i8** %31, align 8
  br label %35

35:                                               ; preds = %30, %24
  %36 = phi i32* [ %28, %24 ], [ %33, %30 ]
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_hex(i32 noundef %37)
  %39 = icmp ne i32 %19, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @abort() #4
  unreachable

41:                                               ; preds = %35
  br label %11, !llvm.loop !4

42:                                               ; preds = %11
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %44 = bitcast %struct.__va_list_tag* %43 to i8*
  call void @llvm.va_end(i8* %44)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* noundef %8)
  %10 = icmp ne i64 %9, 15
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @abort() #4
  unreachable

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %43, %12
  %14 = load i8*, i8** %4, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  %20 = load i8, i8* %18, align 1
  %21 = sext i8 %20 to i32
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ule i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr i8, i8* %28, i32 %24
  %30 = bitcast i8* %29 to i32*
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %37

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr i8, i8* %34, i32 8
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32* [ %30, %26 ], [ %35, %32 ]
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @to_hex(i32 noundef %39)
  %41 = icmp ne i32 %21, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  call void @abort() #4
  unreachable

43:                                               ; preds = %37
  br label %13, !llvm.loop !6

44:                                               ; preds = %13
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %46 = bitcast %struct.__va_list_tag* %45 to i8*
  call void @llvm.va_end(i8* %46)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strlen(i8* noundef %10)
  %12 = icmp ne i64 %11, 14
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @abort() #4
  unreachable

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %45, %14
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8, i8* %20, align 1
  %23 = sext i8 %22 to i32
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ule i32 %26, 40
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = getelementptr i8, i8* %30, i32 %26
  %32 = bitcast i8* %31 to i32*
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %39

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %24, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr i8, i8* %36, i32 8
  store i8* %38, i8** %35, align 8
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i32* [ %32, %28 ], [ %37, %34 ]
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @to_hex(i32 noundef %41)
  %43 = icmp ne i32 %23, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @abort() #4
  unreachable

45:                                               ; preds = %39
  br label %15, !llvm.loop !7

46:                                               ; preds = %15
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %48 = bitcast %struct.__va_list_tag* %47 to i8*
  call void @llvm.va_end(i8* %48)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, ...) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load i8*, i8** %8, align 8
  %13 = call i64 @strlen(i8* noundef %12)
  %14 = icmp ne i64 %13, 13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  call void @abort() #4
  unreachable

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %47, %16
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %22, align 1
  %25 = sext i8 %24 to i32
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ule i32 %28, 40
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = getelementptr i8, i8* %32, i32 %28
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %41

36:                                               ; preds = %21
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr i8, i8* %38, i32 8
  store i8* %40, i8** %37, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32* [ %34, %30 ], [ %39, %36 ]
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @to_hex(i32 noundef %43)
  %45 = icmp ne i32 %25, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call void @abort() #4
  unreachable

47:                                               ; preds = %41
  br label %17, !llvm.loop !8

48:                                               ; preds = %17
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %50 = bitcast %struct.__va_list_tag* %49 to i8*
  call void @llvm.va_end(i8* %50)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, ...) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = load i8*, i8** %10, align 8
  %15 = call i64 @strlen(i8* noundef %14)
  %16 = icmp ne i64 %15, 12
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  call void @abort() #4
  unreachable

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %49, %18
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %19
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  %26 = load i8, i8* %24, align 1
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i32*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32* [ %36, %32 ], [ %41, %38 ]
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @to_hex(i32 noundef %45)
  %47 = icmp ne i32 %27, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void @abort() #4
  unreachable

49:                                               ; preds = %43
  br label %19, !llvm.loop !9

50:                                               ; preds = %19
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  %52 = bitcast %struct.__va_list_tag* %51 to i8*
  call void @llvm.va_end(i8* %52)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, ...) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_start(i8* %15)
  %16 = load i8*, i8** %12, align 8
  %17 = call i64 @strlen(i8* noundef %16)
  %18 = icmp ne i64 %17, 11
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  call void @abort() #4
  unreachable

20:                                               ; preds = %6
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %12, align 8
  %28 = load i8, i8* %26, align 1
  %29 = sext i8 %28 to i32
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 16
  %33 = icmp ule i32 %32, 40
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 3
  %36 = load i8*, i8** %35, align 16
  %37 = getelementptr i8, i8* %36, i32 %32
  %38 = bitcast i8* %37 to i32*
  %39 = add i32 %32, 8
  store i32 %39, i32* %31, align 16
  br label %45

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %30, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = getelementptr i8, i8* %42, i32 8
  store i8* %44, i8** %41, align 8
  br label %45

45:                                               ; preds = %40, %34
  %46 = phi i32* [ %38, %34 ], [ %43, %40 ]
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @to_hex(i32 noundef %47)
  %49 = icmp ne i32 %29, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  call void @abort() #4
  unreachable

51:                                               ; preds = %45
  br label %21, !llvm.loop !10

52:                                               ; preds = %21
  %53 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %54 = bitcast %struct.__va_list_tag* %53 to i8*
  call void @llvm.va_end(i8* %54)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, ...) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  %18 = load i8*, i8** %14, align 8
  %19 = call i64 @strlen(i8* noundef %18)
  %20 = icmp ne i64 %19, 10
  br i1 %20, label %21, label %22

21:                                               ; preds = %7
  call void @abort() #4
  unreachable

22:                                               ; preds = %7
  br label %23

23:                                               ; preds = %53, %22
  %24 = load i8*, i8** %14, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %14, align 8
  %30 = load i8, i8* %28, align 1
  %31 = sext i8 %30 to i32
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ule i32 %34, 40
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 3
  %38 = load i8*, i8** %37, align 16
  %39 = getelementptr i8, i8* %38, i32 %34
  %40 = bitcast i8* %39 to i32*
  %41 = add i32 %34, 8
  store i32 %41, i32* %33, align 16
  br label %47

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = getelementptr i8, i8* %44, i32 8
  store i8* %46, i8** %43, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = phi i32* [ %40, %36 ], [ %45, %42 ]
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @to_hex(i32 noundef %49)
  %51 = icmp ne i32 %31, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void @abort() #4
  unreachable

53:                                               ; preds = %47
  br label %23, !llvm.loop !11

54:                                               ; preds = %23
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8* noundef %7, ...) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_start(i8* %19)
  %20 = load i8*, i8** %16, align 8
  %21 = call i64 @strlen(i8* noundef %20)
  %22 = icmp ne i64 %21, 9
  br i1 %22, label %23, label %24

23:                                               ; preds = %8
  call void @abort() #4
  unreachable

24:                                               ; preds = %8
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i8*, i8** %16, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load i8*, i8** %16, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %16, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 16
  %37 = icmp ule i32 %36, 40
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 3
  %40 = load i8*, i8** %39, align 16
  %41 = getelementptr i8, i8* %40, i32 %36
  %42 = bitcast i8* %41 to i32*
  %43 = add i32 %36, 8
  store i32 %43, i32* %35, align 16
  br label %49

44:                                               ; preds = %29
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %34, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr i8, i8* %46, i32 8
  store i8* %48, i8** %45, align 8
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i32* [ %42, %38 ], [ %47, %44 ]
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @to_hex(i32 noundef %51)
  %53 = icmp ne i32 %33, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  call void @abort() #4
  unreachable

55:                                               ; preds = %49
  br label %25, !llvm.loop !12

56:                                               ; preds = %25
  %57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  %58 = bitcast %struct.__va_list_tag* %57 to i8*
  call void @llvm.va_end(i8* %58)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i8* noundef %8, ...) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = load i8*, i8** %18, align 8
  %23 = call i64 @strlen(i8* noundef %22)
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  call void @abort() #4
  unreachable

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %57, %26
  %28 = load i8*, i8** %18, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load i8*, i8** %18, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %18, align 8
  %34 = load i8, i8* %32, align 1
  %35 = sext i8 %34 to i32
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 16
  %39 = icmp ule i32 %38, 40
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %36, i32 0, i32 3
  %42 = load i8*, i8** %41, align 16
  %43 = getelementptr i8, i8* %42, i32 %38
  %44 = bitcast i8* %43 to i32*
  %45 = add i32 %38, 8
  store i32 %45, i32* %37, align 16
  br label %51

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %36, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = getelementptr i8, i8* %48, i32 8
  store i8* %50, i8** %47, align 8
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi i32* [ %44, %40 ], [ %49, %46 ]
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @to_hex(i32 noundef %53)
  %55 = icmp ne i32 %35, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  call void @abort() #4
  unreachable

57:                                               ; preds = %51
  br label %27, !llvm.loop !13

58:                                               ; preds = %27
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %60 = bitcast %struct.__va_list_tag* %59 to i8*
  call void @llvm.va_end(i8* %60)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9, ...) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i8* %9, i8** %20, align 8
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %23 = bitcast %struct.__va_list_tag* %22 to i8*
  call void @llvm.va_start(i8* %23)
  %24 = load i8*, i8** %20, align 8
  %25 = call i64 @strlen(i8* noundef %24)
  %26 = icmp ne i64 %25, 7
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  call void @abort() #4
  unreachable

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i8*, i8** %20, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %29
  %34 = load i8*, i8** %20, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %20, align 8
  %36 = load i8, i8* %34, align 1
  %37 = sext i8 %36 to i32
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp ule i32 %40, 40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = getelementptr i8, i8* %44, i32 %40
  %46 = bitcast i8* %45 to i32*
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 16
  br label %53

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = getelementptr i8, i8* %50, i32 8
  store i8* %52, i8** %49, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i32* [ %46, %42 ], [ %51, %48 ]
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @to_hex(i32 noundef %55)
  %57 = icmp ne i32 %37, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  call void @abort() #4
  unreachable

59:                                               ; preds = %53
  br label %29, !llvm.loop !14

60:                                               ; preds = %29
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %21, i64 0, i64 0
  %62 = bitcast %struct.__va_list_tag* %61 to i8*
  call void @llvm.va_end(i8* %62)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i8* noundef %10, ...) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8* %10, i8** %22, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %23, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_start(i8* %25)
  %26 = load i8*, i8** %22, align 8
  %27 = call i64 @strlen(i8* noundef %26)
  %28 = icmp ne i64 %27, 6
  br i1 %28, label %29, label %30

29:                                               ; preds = %11
  call void @abort() #4
  unreachable

30:                                               ; preds = %11
  br label %31

31:                                               ; preds = %61, %30
  %32 = load i8*, i8** %22, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = load i8*, i8** %22, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %22, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %23, i64 0, i64 0
  %41 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 16
  %43 = icmp ule i32 %42, 40
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 3
  %46 = load i8*, i8** %45, align 16
  %47 = getelementptr i8, i8* %46, i32 %42
  %48 = bitcast i8* %47 to i32*
  %49 = add i32 %42, 8
  store i32 %49, i32* %41, align 16
  br label %55

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %40, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = getelementptr i8, i8* %52, i32 8
  store i8* %54, i8** %51, align 8
  br label %55

55:                                               ; preds = %50, %44
  %56 = phi i32* [ %48, %44 ], [ %53, %50 ]
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @to_hex(i32 noundef %57)
  %59 = icmp ne i32 %39, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  call void @abort() #4
  unreachable

61:                                               ; preds = %55
  br label %31, !llvm.loop !15

62:                                               ; preds = %31
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %23, i64 0, i64 0
  %64 = bitcast %struct.__va_list_tag* %63 to i8*
  call void @llvm.va_end(i8* %64)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i8* noundef %11, ...) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i8* %11, i8** %24, align 8
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i64 0, i64 0
  %27 = bitcast %struct.__va_list_tag* %26 to i8*
  call void @llvm.va_start(i8* %27)
  %28 = load i8*, i8** %24, align 8
  %29 = call i64 @strlen(i8* noundef %28)
  %30 = icmp ne i64 %29, 5
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  call void @abort() #4
  unreachable

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i8*, i8** %24, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load i8*, i8** %24, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %24, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i64 0, i64 0
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 16
  %45 = icmp ule i32 %44, 40
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 3
  %48 = load i8*, i8** %47, align 16
  %49 = getelementptr i8, i8* %48, i32 %44
  %50 = bitcast i8* %49 to i32*
  %51 = add i32 %44, 8
  store i32 %51, i32* %43, align 16
  br label %57

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %42, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = getelementptr i8, i8* %54, i32 8
  store i8* %56, i8** %53, align 8
  br label %57

57:                                               ; preds = %52, %46
  %58 = phi i32* [ %50, %46 ], [ %55, %52 ]
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @to_hex(i32 noundef %59)
  %61 = icmp ne i32 %41, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  call void @abort() #4
  unreachable

63:                                               ; preds = %57
  br label %33, !llvm.loop !16

64:                                               ; preds = %33
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %25, i64 0, i64 0
  %66 = bitcast %struct.__va_list_tag* %65 to i8*
  call void @llvm.va_end(i8* %66)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8* noundef %12, ...) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %14, align 4
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i8* %12, i8** %26, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %27, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_start(i8* %29)
  %30 = load i8*, i8** %26, align 8
  %31 = call i64 @strlen(i8* noundef %30)
  %32 = icmp ne i64 %31, 4
  br i1 %32, label %33, label %34

33:                                               ; preds = %13
  call void @abort() #4
  unreachable

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i8*, i8** %26, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i8*, i8** %26, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %26, align 8
  %42 = load i8, i8* %40, align 1
  %43 = sext i8 %42 to i32
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %27, i64 0, i64 0
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp ule i32 %46, 40
  br i1 %47, label %48, label %54

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 3
  %50 = load i8*, i8** %49, align 16
  %51 = getelementptr i8, i8* %50, i32 %46
  %52 = bitcast i8* %51 to i32*
  %53 = add i32 %46, 8
  store i32 %53, i32* %45, align 16
  br label %59

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr i8, i8* %56, i32 8
  store i8* %58, i8** %55, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i32* [ %52, %48 ], [ %57, %54 ]
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @to_hex(i32 noundef %61)
  %63 = icmp ne i32 %43, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  call void @abort() #4
  unreachable

65:                                               ; preds = %59
  br label %35, !llvm.loop !17

66:                                               ; preds = %35
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %27, i64 0, i64 0
  %68 = bitcast %struct.__va_list_tag* %67 to i8*
  call void @llvm.va_end(i8* %68)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8* noundef %13, ...) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i8* %13, i8** %28, align 8
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %29, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_start(i8* %31)
  %32 = load i8*, i8** %28, align 8
  %33 = call i64 @strlen(i8* noundef %32)
  %34 = icmp ne i64 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  call void @abort() #4
  unreachable

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %67, %36
  %38 = load i8*, i8** %28, align 8
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = load i8*, i8** %28, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %28, align 8
  %44 = load i8, i8* %42, align 1
  %45 = sext i8 %44 to i32
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %29, i64 0, i64 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ule i32 %48, 40
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 3
  %52 = load i8*, i8** %51, align 16
  %53 = getelementptr i8, i8* %52, i32 %48
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %48, 8
  store i32 %55, i32* %47, align 16
  br label %61

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr i8, i8* %58, i32 8
  store i8* %60, i8** %57, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i32* [ %54, %50 ], [ %59, %56 ]
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @to_hex(i32 noundef %63)
  %65 = icmp ne i32 %45, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  call void @abort() #4
  unreachable

67:                                               ; preds = %61
  br label %37, !llvm.loop !18

68:                                               ; preds = %37
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %29, i64 0, i64 0
  %70 = bitcast %struct.__va_list_tag* %69 to i8*
  call void @llvm.va_end(i8* %70)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i8* noundef %14, ...) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %16, align 4
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i8* %14, i8** %30, align 8
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %31, i64 0, i64 0
  %33 = bitcast %struct.__va_list_tag* %32 to i8*
  call void @llvm.va_start(i8* %33)
  %34 = load i8*, i8** %30, align 8
  %35 = call i64 @strlen(i8* noundef %34)
  %36 = icmp ne i64 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %15
  call void @abort() #4
  unreachable

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i8*, i8** %30, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i8*, i8** %30, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %30, align 8
  %46 = load i8, i8* %44, align 1
  %47 = sext i8 %46 to i32
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %31, i64 0, i64 0
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 16
  %51 = icmp ule i32 %50, 40
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3
  %54 = load i8*, i8** %53, align 16
  %55 = getelementptr i8, i8* %54, i32 %50
  %56 = bitcast i8* %55 to i32*
  %57 = add i32 %50, 8
  store i32 %57, i32* %49, align 16
  br label %63

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = getelementptr i8, i8* %60, i32 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi i32* [ %56, %52 ], [ %61, %58 ]
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @to_hex(i32 noundef %65)
  %67 = icmp ne i32 %47, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  call void @abort() #4
  unreachable

69:                                               ; preds = %63
  br label %39, !llvm.loop !19

70:                                               ; preds = %39
  %71 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %31, i64 0, i64 0
  %72 = bitcast %struct.__va_list_tag* %71 to i8*
  call void @llvm.va_end(i8* %72)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f15(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i8* noundef %15, ...) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  store i8* %15, i8** %32, align 8
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %33, i64 0, i64 0
  %35 = bitcast %struct.__va_list_tag* %34 to i8*
  call void @llvm.va_start(i8* %35)
  %36 = load i8*, i8** %32, align 8
  %37 = call i64 @strlen(i8* noundef %36)
  %38 = icmp ne i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  call void @abort() #4
  unreachable

40:                                               ; preds = %16
  br label %41

41:                                               ; preds = %71, %40
  %42 = load i8*, i8** %32, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load i8*, i8** %32, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %32, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %33, i64 0, i64 0
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i32*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 16
  br label %65

60:                                               ; preds = %45
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32* [ %58, %54 ], [ %63, %60 ]
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @to_hex(i32 noundef %67)
  %69 = icmp ne i32 %49, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  call void @abort() #4
  unreachable

71:                                               ; preds = %65
  br label %41, !llvm.loop !20

72:                                               ; preds = %41
  %73 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %33, i64 0, i64 0
  %74 = bitcast %struct.__va_list_tag* %73 to i8*
  call void @llvm.va_end(i8* %74)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  call void (i8*, ...) @f0(i8* noundef %4, i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 1
  call void (i32, i8*, ...) @f1(i32 noundef 0, i8* noundef %6, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 2
  call void (i32, i32, i8*, ...) @f2(i32 noundef 0, i32 noundef 1, i8* noundef %8, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 3
  call void (i32, i32, i32, i8*, ...) @f3(i32 noundef 0, i32 noundef 1, i32 noundef 2, i8* noundef %10, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 4
  call void (i32, i32, i32, i32, i8*, ...) @f4(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i8* noundef %12, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 5
  call void (i32, i32, i32, i32, i32, i8*, ...) @f5(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i8* noundef %14, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 6
  call void (i32, i32, i32, i32, i32, i32, i8*, ...) @f6(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i8* noundef %16, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 7
  call void (i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f7(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i8* noundef %18, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 8
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f8(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i8* noundef %20, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %21 = load i8*, i8** %2, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 9
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f9(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i8* noundef %22, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 10
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f10(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef %24, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 11
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f11(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i8* noundef %26, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 12
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f12(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i8* noundef %28, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %29 = load i8*, i8** %2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 13
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f13(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i8* noundef %30, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  %31 = load i8*, i8** %2, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 14
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f14(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i8* noundef %32, i32 noundef 14, i32 noundef 15)
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 15
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f15(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i8* noundef %34, i32 noundef 15)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
