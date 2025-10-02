; ModuleID = './va-arg-24.ll'
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

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
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
  %1 = load i32, i32* @errors, align 4
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

UnifiedUnreachableBlock:                          ; preds = %3, %2
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs0(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca [11 x i32], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [11 x i32], [11 x i32]* %3, i64 0, i64 0
  store i32 %0, i32* %5, align 16
  br label %6

6:                                                ; preds = %27, %1
  %.0 = phi i32 [ 1, %1 ], [ %28, %27 ]
  %7 = icmp ult i32 %.0, 11
  br i1 %7, label %8, label %29

8:                                                ; preds = %6
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = sext i32 %10 to i64
  %16 = getelementptr i8, i8* %14, i64 %15
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 16
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr i8, i8* %20, i64 8
  store i8* %21, i8** %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %.in = phi i8* [ %16, %12 ], [ %20, %18 ]
  %23 = bitcast i8* %.in to i32*
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %.0 to i64
  %26 = getelementptr inbounds [11 x i32], [11 x i32]* %3, i64 0, i64 %25
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %22
  %28 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

29:                                               ; preds = %6
  %30 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %30)
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* %3, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* noundef nonnull %31)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs1(i32 noundef %0, i32 noundef %1, ...) #1 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [11 x i32], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  store i32 %0, i32* %6, align 16
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 1
  store i32 %1, i32* %7, align 4
  br label %8

8:                                                ; preds = %29, %2
  %.0 = phi i32 [ 2, %2 ], [ %30, %29 ]
  %9 = icmp ult i32 %.0, 11
  br i1 %9, label %10, label %31

10:                                               ; preds = %8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp ult i32 %12, 41
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = sext i32 %12 to i64
  %18 = getelementptr i8, i8* %16, i64 %17
  %19 = add i32 %12, 8
  store i32 %19, i32* %11, align 16
  br label %24

20:                                               ; preds = %10
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr i8, i8* %22, i64 8
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %20, %14
  %.in = phi i8* [ %18, %14 ], [ %22, %20 ]
  %25 = bitcast i8* %.in to i32*
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %.0 to i64
  %28 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 %27
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !6

31:                                               ; preds = %8
  %32 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %32)
  %33 = getelementptr inbounds [11 x i32], [11 x i32]* %4, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* noundef nonnull %33)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs2(i32 noundef %0, i32 noundef %1, i32 noundef %2, ...) #1 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = alloca [11 x i32], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 0
  store i32 %0, i32* %7, align 16
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 1
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 2
  store i32 %2, i32* %9, align 8
  br label %10

10:                                               ; preds = %31, %3
  %.0 = phi i32 [ 3, %3 ], [ %32, %31 ]
  %11 = icmp ult i32 %.0, 11
  br i1 %11, label %12, label %33

12:                                               ; preds = %10
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ult i32 %14, 41
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = sext i32 %14 to i64
  %20 = getelementptr i8, i8* %18, i64 %19
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %26

22:                                               ; preds = %12
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr i8, i8* %24, i64 8
  store i8* %25, i8** %23, align 8
  br label %26

26:                                               ; preds = %22, %16
  %.in = phi i8* [ %20, %16 ], [ %24, %22 ]
  %27 = bitcast i8* %.in to i32*
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 %29
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %26
  %32 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !7

33:                                               ; preds = %10
  %34 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %34)
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* %5, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* noundef nonnull %35)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ...) #1 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca [11 x i32], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  store i32 %0, i32* %8, align 16
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 1
  store i32 %1, i32* %9, align 4
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 2
  store i32 %2, i32* %10, align 8
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 3
  store i32 %3, i32* %11, align 4
  br label %12

12:                                               ; preds = %33, %4
  %.0 = phi i32 [ 4, %4 ], [ %34, %33 ]
  %13 = icmp ult i32 %.0, 11
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = sext i32 %16 to i64
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %28

24:                                               ; preds = %14
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %.in = phi i8* [ %22, %18 ], [ %26, %24 ]
  %29 = bitcast i8* %.in to i32*
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 %31
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28
  %34 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !8

35:                                               ; preds = %12
  %36 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %36)
  %37 = getelementptr inbounds [11 x i32], [11 x i32]* %6, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %37)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ...) #1 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca [11 x i32], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %0, i32* %9, align 16
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %1, i32* %10, align 4
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %2, i32* %11, align 8
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %3, i32* %12, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 %4, i32* %13, align 16
  br label %14

14:                                               ; preds = %35, %5
  %.0 = phi i32 [ 5, %5 ], [ %36, %35 ]
  %15 = icmp ult i32 %.0, 11
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = icmp ult i32 %18, 41
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = sext i32 %18 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = add i32 %18, 8
  store i32 %25, i32* %17, align 16
  br label %30

26:                                               ; preds = %16
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i64 8
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %20
  %.in = phi i8* [ %24, %20 ], [ %28, %26 ]
  %31 = bitcast i8* %.in to i32*
  %32 = load i32, i32* %31, align 4
  %33 = zext i32 %.0 to i64
  %34 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %33
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = add nuw nsw i32 %.0, 1
  br label %14, !llvm.loop !9

37:                                               ; preds = %14
  %38 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_end(i8* %38)
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %39)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ...) #1 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca [11 x i32], align 16
  %9 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_start(i8* nonnull %9)
  %10 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %0, i32* %10, align 16
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %1, i32* %11, align 4
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %2, i32* %12, align 8
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %3, i32* %13, align 4
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 4
  store i32 %4, i32* %14, align 16
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 5
  store i32 %5, i32* %15, align 4
  br label %16

16:                                               ; preds = %37, %6
  %.0 = phi i32 [ 6, %6 ], [ %38, %37 ]
  %17 = icmp ult i32 %.0, 11
  br i1 %17, label %18, label %39

18:                                               ; preds = %16
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp ult i32 %20, 41
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = sext i32 %20 to i64
  %26 = getelementptr i8, i8* %24, i64 %25
  %27 = add i32 %20, 8
  store i32 %27, i32* %19, align 16
  br label %32

28:                                               ; preds = %18
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 8
  store i8* %31, i8** %29, align 8
  br label %32

32:                                               ; preds = %28, %22
  %.in = phi i8* [ %26, %22 ], [ %30, %28 ]
  %33 = bitcast i8* %.in to i32*
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %.0 to i64
  %36 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %35
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !10

39:                                               ; preds = %16
  %40 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_end(i8* %40)
  %41 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* noundef nonnull %41)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ...) #1 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca [11 x i32], align 16
  %10 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  store i32 %0, i32* %11, align 16
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 1
  store i32 %1, i32* %12, align 4
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 2
  store i32 %2, i32* %13, align 8
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 3
  store i32 %3, i32* %14, align 4
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 4
  store i32 %4, i32* %15, align 16
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 5
  store i32 %5, i32* %16, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 6
  store i32 %6, i32* %17, align 8
  br label %18

18:                                               ; preds = %39, %7
  %.0 = phi i32 [ 7, %7 ], [ %40, %39 ]
  %19 = icmp ult i32 %.0, 11
  br i1 %19, label %20, label %41

20:                                               ; preds = %18
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = sext i32 %22 to i64
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 16
  br label %34

30:                                               ; preds = %20
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %24
  %.in = phi i8* [ %28, %24 ], [ %32, %30 ]
  %35 = bitcast i8* %.in to i32*
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %.0 to i64
  %38 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 %37
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %.0, 1
  br label %18, !llvm.loop !11

41:                                               ; preds = %18
  %42 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_end(i8* %42)
  %43 = getelementptr inbounds [11 x i32], [11 x i32]* %9, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* noundef nonnull %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ...) #1 {
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca [11 x i32], align 16
  %11 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_start(i8* nonnull %11)
  %12 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  store i32 %0, i32* %12, align 16
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 1
  store i32 %1, i32* %13, align 4
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 2
  store i32 %2, i32* %14, align 8
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 3
  store i32 %3, i32* %15, align 4
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 4
  store i32 %4, i32* %16, align 16
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 5
  store i32 %5, i32* %17, align 4
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 6
  store i32 %6, i32* %18, align 8
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 7
  store i32 %7, i32* %19, align 4
  br label %20

20:                                               ; preds = %41, %8
  %.0 = phi i32 [ 8, %8 ], [ %42, %41 ]
  %21 = icmp ult i32 %.0, 11
  br i1 %21, label %22, label %43

22:                                               ; preds = %20
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ult i32 %24, 41
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = sext i32 %24 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %36

32:                                               ; preds = %22
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %26
  %.in = phi i8* [ %30, %26 ], [ %34, %32 ]
  %37 = bitcast i8* %.in to i32*
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %.0 to i64
  %40 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 %39
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i32 %.0, 1
  br label %20, !llvm.loop !12

43:                                               ; preds = %20
  %44 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_end(i8* %44)
  %45 = getelementptr inbounds [11 x i32], [11 x i32]* %10, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* noundef nonnull %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ...) #1 {
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = alloca [11 x i32], align 16
  %12 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_start(i8* nonnull %12)
  %13 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  store i32 %0, i32* %13, align 16
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 1
  store i32 %1, i32* %14, align 4
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 2
  store i32 %2, i32* %15, align 8
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 3
  store i32 %3, i32* %16, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 4
  store i32 %4, i32* %17, align 16
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 5
  store i32 %5, i32* %18, align 4
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 6
  store i32 %6, i32* %19, align 8
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 7
  store i32 %7, i32* %20, align 4
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 8
  store i32 %8, i32* %21, align 16
  br label %22

22:                                               ; preds = %43, %9
  %.0 = phi i32 [ 9, %9 ], [ %44, %43 ]
  %23 = icmp ult i32 %.0, 11
  br i1 %23, label %24, label %45

24:                                               ; preds = %22
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ult i32 %26, 41
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = sext i32 %26 to i64
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 8
  store i8* %37, i8** %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  %.in = phi i8* [ %32, %28 ], [ %36, %34 ]
  %39 = bitcast i8* %.in to i32*
  %40 = load i32, i32* %39, align 4
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 %41
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = add nuw nsw i32 %.0, 1
  br label %22, !llvm.loop !13

45:                                               ; preds = %22
  %46 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_end(i8* %46)
  %47 = getelementptr inbounds [11 x i32], [11 x i32]* %11, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* noundef nonnull %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @varargs9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ...) #1 {
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  %12 = alloca [11 x i32], align 16
  %13 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_start(i8* nonnull %13)
  %14 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 0
  store i32 %0, i32* %14, align 16
  %15 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 1
  store i32 %1, i32* %15, align 4
  %16 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 2
  store i32 %2, i32* %16, align 8
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 3
  store i32 %3, i32* %17, align 4
  %18 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 4
  store i32 %4, i32* %18, align 16
  %19 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 5
  store i32 %5, i32* %19, align 4
  %20 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 6
  store i32 %6, i32* %20, align 8
  %21 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 7
  store i32 %7, i32* %21, align 4
  %22 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 8
  store i32 %8, i32* %22, align 16
  %23 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 9
  store i32 %9, i32* %23, align 4
  br label %24

24:                                               ; preds = %45, %10
  %.0 = phi i32 [ 10, %10 ], [ %46, %45 ]
  %25 = icmp ult i32 %.0, 11
  br i1 %25, label %26, label %47

26:                                               ; preds = %24
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ult i32 %28, 41
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = sext i32 %28 to i64
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %40

36:                                               ; preds = %26
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr i8, i8* %38, i64 8
  store i8* %39, i8** %37, align 8
  br label %40

40:                                               ; preds = %36, %30
  %.in = phi i8* [ %34, %30 ], [ %38, %36 ]
  %41 = bitcast i8* %.in to i32*
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %.0 to i64
  %44 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 %43
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %40
  %46 = add nuw nsw i32 %.0, 1
  br label %24, !llvm.loop !14

47:                                               ; preds = %24
  %48 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_end(i8* %48)
  %49 = getelementptr inbounds [11 x i32], [11 x i32]* %12, i64 0, i64 0
  call void @verify(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* noundef nonnull %49)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @verify(i8* noundef %0, i32* nocapture noundef readonly %1) #1 {
  br label %3

3:                                                ; preds = %17, %2
  %.0 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = icmp ult i32 %.0, 11
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %1, i64 %6
  %8 = load i32, i32* %7, align 4
  %.not = icmp eq i32 %8, %.0
  br i1 %.not, label %16, label %9

9:                                                ; preds = %5
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* noundef %0, i32 noundef %.0, i32 noundef %12, i32 noundef %.0) #6
  %14 = load i32, i32* @errors, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @errors, align 4
  br label %16

16:                                               ; preds = %9, %5
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !15

19:                                               ; preds = %3
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
