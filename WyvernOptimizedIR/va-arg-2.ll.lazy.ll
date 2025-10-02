; ModuleID = './va-arg-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@to_hex.hex = internal global [17 x i8] c"0123456789abcdef\00", align 16
@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @to_hex(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 15
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  call void @abort() #5
  unreachable

4:                                                ; preds = %1
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [17 x i8], [17 x i8]* @to_hex.hex, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  ret i32 %8
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #6
  %.not = icmp eq i64 %4, 16
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  call void @abort() #5
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %31, %6
  %.0 = phi i8* [ %0, %6 ], [ %10, %31 ]
  %8 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %8, 0
  br i1 %.not1, label %32, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds i8, i8* %.0, i64 1
  %11 = load i8, i8* %.0, align 1
  %12 = sext i8 %11 to i32
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ult i32 %14, 41
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = sext i32 %14 to i64
  %20 = getelementptr i8, i8* %18, i64 %19
  %21 = add i32 %14, 8
  store i32 %21, i32* %13, align 16
  br label %26

22:                                               ; preds = %9
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr i8, i8* %24, i64 8
  store i8* %25, i8** %23, align 8
  br label %26

26:                                               ; preds = %22, %16
  %.in = phi i8* [ %20, %16 ], [ %24, %22 ]
  %27 = bitcast i8* %.in to i32*
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @to_hex(i32 noundef %28)
  %.not2 = icmp eq i32 %29, %12
  br i1 %.not2, label %31, label %30

30:                                               ; preds = %26
  call void @abort() #5
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %26
  br label %7, !llvm.loop !4

32:                                               ; preds = %7
  %33 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %33)
  ret void

UnifiedUnreachableBlock:                          ; preds = %30, %5
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %.not = icmp eq i64 %5, 15
  br i1 %.not, label %7, label %6

6:                                                ; preds = %2
  call void @abort() #5
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %32, %7
  %.0 = phi i8* [ %1, %7 ], [ %11, %32 ]
  %9 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %9, 0
  br i1 %.not1, label %33, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, i8* %.0, i64 1
  %12 = load i8, i8* %.0, align 1
  %13 = sext i8 %12 to i32
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ult i32 %15, 41
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = sext i32 %15 to i64
  %21 = getelementptr i8, i8* %19, i64 %20
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 16
  br label %27

23:                                               ; preds = %10
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr i8, i8* %25, i64 8
  store i8* %26, i8** %24, align 8
  br label %27

27:                                               ; preds = %23, %17
  %.in = phi i8* [ %21, %17 ], [ %25, %23 ]
  %28 = bitcast i8* %.in to i32*
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @to_hex(i32 noundef %29)
  %.not2 = icmp eq i32 %30, %13
  br i1 %.not2, label %32, label %31

31:                                               ; preds = %27
  call void @abort() #5
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %27
  br label %8, !llvm.loop !6

33:                                               ; preds = %8
  %34 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %34)
  ret void

UnifiedUnreachableBlock:                          ; preds = %31, %6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #6
  %.not = icmp eq i64 %6, 14
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %33, %8
  %.0 = phi i8* [ %2, %8 ], [ %12, %33 ]
  %10 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %10, 0
  br i1 %.not1, label %34, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.0, i64 1
  %13 = load i8, i8* %.0, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %20 = load i8*, i8** %19, align 16
  %21 = sext i32 %16 to i64
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 16
  br label %28

24:                                               ; preds = %11
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** %25, align 8
  br label %28

28:                                               ; preds = %24, %18
  %.in = phi i8* [ %22, %18 ], [ %26, %24 ]
  %29 = bitcast i8* %.in to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @to_hex(i32 noundef %30)
  %.not2 = icmp eq i32 %31, %14
  br i1 %.not2, label %33, label %32

32:                                               ; preds = %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %28
  br label %9, !llvm.loop !7

34:                                               ; preds = %9
  %35 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %35)
  ret void

UnifiedUnreachableBlock:                          ; preds = %32, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, ...) #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #6
  %.not = icmp eq i64 %7, 13
  br i1 %.not, label %9, label %8

8:                                                ; preds = %4
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %4
  br label %10

10:                                               ; preds = %34, %9
  %.0 = phi i8* [ %3, %9 ], [ %13, %34 ]
  %11 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %11, 0
  br i1 %.not1, label %35, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, i8* %.0, i64 1
  %14 = load i8, i8* %.0, align 1
  %15 = sext i8 %14 to i32
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = sext i32 %17 to i64
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 16
  br label %29

25:                                               ; preds = %12
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr i8, i8* %27, i64 8
  store i8* %28, i8** %26, align 8
  br label %29

29:                                               ; preds = %25, %19
  %.in = phi i8* [ %23, %19 ], [ %27, %25 ]
  %30 = bitcast i8* %.in to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @to_hex(i32 noundef %31)
  %.not2 = icmp eq i32 %32, %15
  br i1 %.not2, label %34, label %33

33:                                               ; preds = %29
  call void @abort() #5
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %29
  br label %10, !llvm.loop !8

35:                                               ; preds = %10
  %36 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %36)
  ret void

UnifiedUnreachableBlock:                          ; preds = %33, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, ...) #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %4) #6
  %.not = icmp eq i64 %8, 12
  br i1 %.not, label %10, label %9

9:                                                ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %35, %10
  %.0 = phi i8* [ %4, %10 ], [ %14, %35 ]
  %12 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %12, 0
  br i1 %.not1, label %36, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds i8, i8* %.0, i64 1
  %15 = load i8, i8* %.0, align 1
  %16 = sext i8 %15 to i32
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = icmp ult i32 %18, 41
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = sext i32 %18 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = add i32 %18, 8
  store i32 %25, i32* %17, align 16
  br label %30

26:                                               ; preds = %13
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr i8, i8* %28, i64 8
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %20
  %.in = phi i8* [ %24, %20 ], [ %28, %26 ]
  %31 = bitcast i8* %.in to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @to_hex(i32 noundef %32)
  %.not2 = icmp eq i32 %33, %16
  br i1 %.not2, label %35, label %34

34:                                               ; preds = %30
  call void @abort() #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %30
  br label %11, !llvm.loop !9

36:                                               ; preds = %11
  %37 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_end(i8* %37)
  ret void

UnifiedUnreachableBlock:                          ; preds = %34, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, ...) #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %5) #6
  %.not = icmp eq i64 %9, 11
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %36, %11
  %.0 = phi i8* [ %5, %11 ], [ %15, %36 ]
  %13 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %13, 0
  br i1 %.not1, label %37, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, i8* %.0, i64 1
  %16 = load i8, i8* %.0, align 1
  %17 = sext i8 %16 to i32
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 0
  %19 = load i32, i32* %18, align 16
  %20 = icmp ult i32 %19, 41
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 3
  %23 = load i8*, i8** %22, align 16
  %24 = sext i32 %19 to i64
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = add i32 %19, 8
  store i32 %26, i32* %18, align 16
  br label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr i8, i8* %29, i64 8
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %27, %21
  %.in = phi i8* [ %25, %21 ], [ %29, %27 ]
  %32 = bitcast i8* %.in to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @to_hex(i32 noundef %33)
  %.not2 = icmp eq i32 %34, %17
  br i1 %.not2, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  br label %12, !llvm.loop !10

37:                                               ; preds = %12
  %38 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_end(i8* %38)
  ret void

UnifiedUnreachableBlock:                          ; preds = %35, %10
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, ...) #0 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_start(i8* nonnull %9)
  %10 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %6) #6
  %.not = icmp eq i64 %10, 10
  br i1 %.not, label %12, label %11

11:                                               ; preds = %7
  call void @abort() #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %37, %12
  %.0 = phi i8* [ %6, %12 ], [ %16, %37 ]
  %14 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %14, 0
  br i1 %.not1, label %38, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %.0, i64 1
  %17 = load i8, i8* %.0, align 1
  %18 = sext i8 %17 to i32
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 0
  %20 = load i32, i32* %19, align 16
  %21 = icmp ult i32 %20, 41
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = sext i32 %20 to i64
  %26 = getelementptr i8, i8* %24, i64 %25
  %27 = add i32 %20, 8
  store i32 %27, i32* %19, align 16
  br label %32

28:                                               ; preds = %15
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr i8, i8* %30, i64 8
  store i8* %31, i8** %29, align 8
  br label %32

32:                                               ; preds = %28, %22
  %.in = phi i8* [ %26, %22 ], [ %30, %28 ]
  %33 = bitcast i8* %.in to i32*
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @to_hex(i32 noundef %34)
  %.not2 = icmp eq i32 %35, %18
  br i1 %.not2, label %37, label %36

36:                                               ; preds = %32
  call void @abort() #5
  br label %UnifiedUnreachableBlock

37:                                               ; preds = %32
  br label %13, !llvm.loop !11

38:                                               ; preds = %13
  %39 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_end(i8* %39)
  ret void

UnifiedUnreachableBlock:                          ; preds = %36, %11
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8* noundef %7, ...) #0 {
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %7) #6
  %.not = icmp eq i64 %11, 9
  br i1 %.not, label %13, label %12

12:                                               ; preds = %8
  call void @abort() #5
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %38, %13
  %.0 = phi i8* [ %7, %13 ], [ %17, %38 ]
  %15 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %15, 0
  br i1 %.not1, label %39, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i8, i8* %.0, i64 1
  %18 = load i8, i8* %.0, align 1
  %19 = sext i8 %18 to i32
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 0
  %21 = load i32, i32* %20, align 16
  %22 = icmp ult i32 %21, 41
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 3
  %25 = load i8*, i8** %24, align 16
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 8
  store i32 %28, i32* %20, align 16
  br label %33

29:                                               ; preds = %16
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in to i32*
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @to_hex(i32 noundef %35)
  %.not2 = icmp eq i32 %36, %19
  br i1 %.not2, label %38, label %37

37:                                               ; preds = %33
  call void @abort() #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %33
  br label %14, !llvm.loop !12

39:                                               ; preds = %14
  %40 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_end(i8* %40)
  ret void

UnifiedUnreachableBlock:                          ; preds = %37, %12
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i8* noundef %8, ...) #0 {
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_start(i8* nonnull %11)
  %12 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %8) #6
  %.not = icmp eq i64 %12, 8
  br i1 %.not, label %14, label %13

13:                                               ; preds = %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %39, %14
  %.0 = phi i8* [ %8, %14 ], [ %18, %39 ]
  %16 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %16, 0
  br i1 %.not1, label %40, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds i8, i8* %.0, i64 1
  %19 = load i8, i8* %.0, align 1
  %20 = sext i8 %19 to i32
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = sext i32 %22 to i64
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 16
  br label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %24
  %.in = phi i8* [ %28, %24 ], [ %32, %30 ]
  %35 = bitcast i8* %.in to i32*
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @to_hex(i32 noundef %36)
  %.not2 = icmp eq i32 %37, %20
  br i1 %.not2, label %39, label %38

38:                                               ; preds = %34
  call void @abort() #5
  br label %UnifiedUnreachableBlock

39:                                               ; preds = %34
  br label %15, !llvm.loop !13

40:                                               ; preds = %15
  %41 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_end(i8* %41)
  ret void

UnifiedUnreachableBlock:                          ; preds = %38, %13
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9, ...) #0 {
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  %12 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_start(i8* nonnull %12)
  %13 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %9) #6
  %.not = icmp eq i64 %13, 7
  br i1 %.not, label %15, label %14

14:                                               ; preds = %10
  call void @abort() #5
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %40, %15
  %.0 = phi i8* [ %9, %15 ], [ %19, %40 ]
  %17 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %17, 0
  br i1 %.not1, label %41, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, i8* %.0, i64 1
  %20 = load i8, i8* %.0, align 1
  %21 = sext i8 %20 to i32
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ult i32 %23, 41
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = sext i32 %23 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %35

31:                                               ; preds = %18
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %.in = phi i8* [ %29, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %.in to i32*
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @to_hex(i32 noundef %37)
  %.not2 = icmp eq i32 %38, %21
  br i1 %.not2, label %40, label %39

39:                                               ; preds = %35
  call void @abort() #5
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %35
  br label %16, !llvm.loop !14

41:                                               ; preds = %16
  %42 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_end(i8* %42)
  ret void

UnifiedUnreachableBlock:                          ; preds = %39, %14
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i8* noundef %10, ...) #0 {
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  %13 = bitcast [1 x %struct.__va_list_tag]* %12 to i8*
  call void @llvm.va_start(i8* nonnull %13)
  %14 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %10) #6
  %.not = icmp eq i64 %14, 6
  br i1 %.not, label %16, label %15

15:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %41, %16
  %.0 = phi i8* [ %10, %16 ], [ %20, %41 ]
  %18 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %18, 0
  br i1 %.not1, label %42, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds i8, i8* %.0, i64 1
  %21 = load i8, i8* %.0, align 1
  %22 = sext i8 %21 to i32
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ult i32 %24, 41
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = sext i32 %24 to i64
  %30 = getelementptr i8, i8* %28, i64 %29
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %36

32:                                               ; preds = %19
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i64 8
  store i8* %35, i8** %33, align 8
  br label %36

36:                                               ; preds = %32, %26
  %.in = phi i8* [ %30, %26 ], [ %34, %32 ]
  %37 = bitcast i8* %.in to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_hex(i32 noundef %38)
  %.not2 = icmp eq i32 %39, %22
  br i1 %.not2, label %41, label %40

40:                                               ; preds = %36
  call void @abort() #5
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %36
  br label %17, !llvm.loop !15

42:                                               ; preds = %17
  %43 = bitcast [1 x %struct.__va_list_tag]* %12 to i8*
  call void @llvm.va_end(i8* %43)
  ret void

UnifiedUnreachableBlock:                          ; preds = %40, %15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i8* noundef %11, ...) #0 {
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  %14 = bitcast [1 x %struct.__va_list_tag]* %13 to i8*
  call void @llvm.va_start(i8* nonnull %14)
  %15 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %11) #6
  %.not = icmp eq i64 %15, 5
  br i1 %.not, label %17, label %16

16:                                               ; preds = %12
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %42, %17
  %.0 = phi i8* [ %11, %17 ], [ %21, %42 ]
  %19 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %19, 0
  br i1 %.not1, label %43, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, i8* %.0, i64 1
  %22 = load i8, i8* %.0, align 1
  %23 = sext i8 %22 to i32
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ult i32 %25, 41
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = sext i32 %25 to i64
  %31 = getelementptr i8, i8* %29, i64 %30
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %37

33:                                               ; preds = %20
  %34 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr i8, i8* %35, i64 8
  store i8* %36, i8** %34, align 8
  br label %37

37:                                               ; preds = %33, %27
  %.in = phi i8* [ %31, %27 ], [ %35, %33 ]
  %38 = bitcast i8* %.in to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @to_hex(i32 noundef %39)
  %.not2 = icmp eq i32 %40, %23
  br i1 %.not2, label %42, label %41

41:                                               ; preds = %37
  call void @abort() #5
  br label %UnifiedUnreachableBlock

42:                                               ; preds = %37
  br label %18, !llvm.loop !16

43:                                               ; preds = %18
  %44 = bitcast [1 x %struct.__va_list_tag]* %13 to i8*
  call void @llvm.va_end(i8* %44)
  ret void

UnifiedUnreachableBlock:                          ; preds = %41, %16
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8* noundef %12, ...) #0 {
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = bitcast [1 x %struct.__va_list_tag]* %14 to i8*
  call void @llvm.va_start(i8* nonnull %15)
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %12) #6
  %.not = icmp eq i64 %16, 4
  br i1 %.not, label %18, label %17

17:                                               ; preds = %13
  call void @abort() #5
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %43, %18
  %.0 = phi i8* [ %12, %18 ], [ %22, %43 ]
  %20 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %20, 0
  br i1 %.not1, label %44, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, i8* %.0, i64 1
  %23 = load i8, i8* %.0, align 1
  %24 = sext i8 %23 to i32
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ult i32 %26, 41
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = sext i32 %26 to i64
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %38

34:                                               ; preds = %21
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 8
  store i8* %37, i8** %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  %.in = phi i8* [ %32, %28 ], [ %36, %34 ]
  %39 = bitcast i8* %.in to i32*
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @to_hex(i32 noundef %40)
  %.not2 = icmp eq i32 %41, %24
  br i1 %.not2, label %43, label %42

42:                                               ; preds = %38
  call void @abort() #5
  br label %UnifiedUnreachableBlock

43:                                               ; preds = %38
  br label %19, !llvm.loop !17

44:                                               ; preds = %19
  %45 = bitcast [1 x %struct.__va_list_tag]* %14 to i8*
  call void @llvm.va_end(i8* %45)
  ret void

UnifiedUnreachableBlock:                          ; preds = %42, %17
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8* noundef %13, ...) #0 {
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_start(i8* nonnull %16)
  %17 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %13) #6
  %.not = icmp eq i64 %17, 3
  br i1 %.not, label %19, label %18

18:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %44, %19
  %.0 = phi i8* [ %13, %19 ], [ %23, %44 ]
  %21 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %21, 0
  br i1 %.not1, label %45, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds i8, i8* %.0, i64 1
  %24 = load i8, i8* %.0, align 1
  %25 = sext i8 %24 to i32
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 0
  %27 = load i32, i32* %26, align 16
  %28 = icmp ult i32 %27, 41
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 3
  %31 = load i8*, i8** %30, align 16
  %32 = sext i32 %27 to i64
  %33 = getelementptr i8, i8* %31, i64 %32
  %34 = add i32 %27, 8
  store i32 %34, i32* %26, align 16
  br label %39

35:                                               ; preds = %22
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr i8, i8* %37, i64 8
  store i8* %38, i8** %36, align 8
  br label %39

39:                                               ; preds = %35, %29
  %.in = phi i8* [ %33, %29 ], [ %37, %35 ]
  %40 = bitcast i8* %.in to i32*
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @to_hex(i32 noundef %41)
  %.not2 = icmp eq i32 %42, %25
  br i1 %.not2, label %44, label %43

43:                                               ; preds = %39
  call void @abort() #5
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %39
  br label %20, !llvm.loop !18

45:                                               ; preds = %20
  %46 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_end(i8* %46)
  ret void

UnifiedUnreachableBlock:                          ; preds = %43, %18
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i8* noundef %14, ...) #0 {
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  %17 = bitcast [1 x %struct.__va_list_tag]* %16 to i8*
  call void @llvm.va_start(i8* nonnull %17)
  %18 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %14) #6
  %.not = icmp eq i64 %18, 2
  br i1 %.not, label %20, label %19

19:                                               ; preds = %15
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %45, %20
  %.0 = phi i8* [ %14, %20 ], [ %24, %45 ]
  %22 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %22, 0
  br i1 %.not1, label %46, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, i8* %.0, i64 1
  %25 = load i8, i8* %.0, align 1
  %26 = sext i8 %25 to i32
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i64 0, i64 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ult i32 %28, 41
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i64 0, i64 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = sext i32 %28 to i64
  %34 = getelementptr i8, i8* %32, i64 %33
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %40

36:                                               ; preds = %23
  %37 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i64 0, i64 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr i8, i8* %38, i64 8
  store i8* %39, i8** %37, align 8
  br label %40

40:                                               ; preds = %36, %30
  %.in = phi i8* [ %34, %30 ], [ %38, %36 ]
  %41 = bitcast i8* %.in to i32*
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @to_hex(i32 noundef %42)
  %.not2 = icmp eq i32 %43, %26
  br i1 %.not2, label %45, label %44

44:                                               ; preds = %40
  call void @abort() #5
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %40
  br label %21, !llvm.loop !19

46:                                               ; preds = %21
  %47 = bitcast [1 x %struct.__va_list_tag]* %16 to i8*
  call void @llvm.va_end(i8* %47)
  ret void

UnifiedUnreachableBlock:                          ; preds = %44, %19
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f15(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i8* noundef %15, ...) #0 {
  %17 = alloca [1 x %struct.__va_list_tag], align 16
  %18 = bitcast [1 x %struct.__va_list_tag]* %17 to i8*
  call void @llvm.va_start(i8* nonnull %18)
  %19 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #6
  %.not = icmp eq i64 %19, 1
  br i1 %.not, label %21, label %20

20:                                               ; preds = %16
  call void @abort() #5
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %46, %21
  %.0 = phi i8* [ %15, %21 ], [ %25, %46 ]
  %23 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %23, 0
  br i1 %.not1, label %47, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds i8, i8* %.0, i64 1
  %26 = load i8, i8* %.0, align 1
  %27 = sext i8 %26 to i32
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = icmp ult i32 %29, 41
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0, i32 3
  %33 = load i8*, i8** %32, align 16
  %34 = sext i32 %29 to i64
  %35 = getelementptr i8, i8* %33, i64 %34
  %36 = add i32 %29, 8
  store i32 %36, i32* %28, align 16
  br label %41

37:                                               ; preds = %24
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr i8, i8* %39, i64 8
  store i8* %40, i8** %38, align 8
  br label %41

41:                                               ; preds = %37, %31
  %.in = phi i8* [ %35, %31 ], [ %39, %37 ]
  %42 = bitcast i8* %.in to i32*
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @to_hex(i32 noundef %43)
  %.not2 = icmp eq i32 %44, %27
  br i1 %.not2, label %46, label %45

45:                                               ; preds = %41
  call void @abort() #5
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %41
  br label %22, !llvm.loop !20

47:                                               ; preds = %22
  %48 = bitcast [1 x %struct.__va_list_tag]* %17 to i8*
  call void @llvm.va_end(i8* %48)
  ret void

UnifiedUnreachableBlock:                          ; preds = %45, %20
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #4 {
  call void (i8*, ...) @f0(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i8*, ...) @f1(i32 noundef 0, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 1), i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i8*, ...) @f2(i32 noundef 0, i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 2), i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i8*, ...) @f3(i32 noundef 0, i32 noundef 1, i32 noundef 2, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 3), i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i8*, ...) @f4(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 4), i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i8*, ...) @f5(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 5), i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i8*, ...) @f6(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 6), i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f7(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 7), i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f8(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 8), i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f9(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 9), i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f10(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 10), i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f11(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 11), i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f12(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 12), i32 noundef 12, i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f13(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 13), i32 noundef 13, i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f14(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 14), i32 noundef 14, i32 noundef 15)
  call void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, ...) @f15(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef 4, i32 noundef 5, i32 noundef 6, i32 noundef 7, i32 noundef 8, i32 noundef 9, i32 noundef 10, i32 noundef 11, i32 noundef 12, i32 noundef 13, i32 noundef 14, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 15), i32 noundef 15)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
