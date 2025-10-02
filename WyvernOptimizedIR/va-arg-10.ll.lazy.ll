; ModuleID = './va-arg-10.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-10.c"
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
define dso_local void @fap(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* noundef %2) #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  %6 = bitcast %struct.__va_list_tag* %2 to i8*
  call void @llvm.va_copy(i8* nonnull %5, i8* %6)
  %7 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %8 = sub nsw i32 16, %0
  %9 = sext i32 %8 to i64
  %.not = icmp eq i64 %7, %9
  br i1 %.not, label %11, label %10

10:                                               ; preds = %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %36, %11
  %.01 = phi i8* [ %1, %11 ], [ %15, %36 ]
  %13 = load i8, i8* %.01, align 1
  %.not2 = icmp eq i8 %13, 0
  br i1 %.not2, label %37, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds i8, i8* %.01, i64 1
  %16 = load i8, i8* %.01, align 1
  %17 = sext i8 %16 to i32
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %19, 41
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %23 = load i8*, i8** %22, align 8
  %24 = sext i32 %19 to i64
  %25 = getelementptr i8, i8* %23, i64 %24
  %26 = add i32 %19, 8
  store i32 %26, i32* %18, align 8
  br label %31

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr i8, i8* %29, i64 8
  store i8* %30, i8** %28, align 8
  br label %31

31:                                               ; preds = %27, %21
  %.in5 = phi i8* [ %25, %21 ], [ %29, %27 ]
  %32 = bitcast i8* %.in5 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @to_hex(i32 noundef %33)
  %.not6 = icmp eq i32 %34, %17
  br i1 %.not6, label %36, label %35

35:                                               ; preds = %31
  call void @abort() #5
  br label %UnifiedUnreachableBlock

36:                                               ; preds = %31
  br label %12, !llvm.loop !4

37:                                               ; preds = %12
  br label %38

38:                                               ; preds = %62, %37
  %.0 = phi i8* [ %1, %37 ], [ %41, %62 ]
  %39 = load i8, i8* %.0, align 1
  %.not3 = icmp eq i8 %39, 0
  br i1 %.not3, label %63, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, i8* %.0, i64 1
  %42 = load i8, i8* %.0, align 1
  %43 = sext i8 %42 to i32
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ult i32 %45, 41
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 3
  %49 = load i8*, i8** %48, align 16
  %50 = sext i32 %45 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 16
  br label %57

53:                                               ; preds = %40
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i64 8
  store i8* %56, i8** %54, align 8
  br label %57

57:                                               ; preds = %53, %47
  %.in = phi i8* [ %51, %47 ], [ %55, %53 ]
  %58 = bitcast i8* %.in to i32*
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @to_hex(i32 noundef %59)
  %.not4 = icmp eq i32 %60, %43
  br i1 %.not4, label %62, label %61

61:                                               ; preds = %57
  call void @abort() #5
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %57
  br label %38, !llvm.loop !6

63:                                               ; preds = %38
  ret void

UnifiedUnreachableBlock:                          ; preds = %61, %35, %10
  unreachable
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #2

declare dso_local i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0(i8* noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @fap(i32 noundef 0, i8* noundef %0, %struct.__va_list_tag* noundef nonnull %4)
  %5 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %5)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, i8* noundef %1, ...) #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @fap(i32 noundef 1, i8* noundef %1, %struct.__va_list_tag* noundef nonnull %5)
  %6 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  %5 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  call void @fap(i32 noundef 2, i8* noundef %2, %struct.__va_list_tag* noundef nonnull %6)
  %7 = bitcast [1 x %struct.__va_list_tag]* %4 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %3, ...) #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_start(i8* nonnull %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @fap(i32 noundef 3, i8* noundef %3, %struct.__va_list_tag* noundef nonnull %7)
  %8 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*
  call void @llvm.va_end(i8* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i8* noundef %4, ...) #0 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  call void @fap(i32 noundef 4, i8* noundef %4, %struct.__va_list_tag* noundef nonnull %8)
  %9 = bitcast [1 x %struct.__va_list_tag]* %6 to i8*
  call void @llvm.va_end(i8* %9)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8* noundef %5, ...) #0 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @fap(i32 noundef 5, i8* noundef %5, %struct.__va_list_tag* noundef nonnull %9)
  %10 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8* noundef %6, ...) #0 {
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_start(i8* nonnull %9)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  call void @fap(i32 noundef 6, i8* noundef %6, %struct.__va_list_tag* noundef nonnull %10)
  %11 = bitcast [1 x %struct.__va_list_tag]* %8 to i8*
  call void @llvm.va_end(i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i8* noundef %7, ...) #0 {
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_start(i8* nonnull %10)
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  call void @fap(i32 noundef 7, i8* noundef %7, %struct.__va_list_tag* noundef nonnull %11)
  %12 = bitcast [1 x %struct.__va_list_tag]* %9 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i8* noundef %8, ...) #0 {
  %10 = alloca [1 x %struct.__va_list_tag], align 16
  %11 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_start(i8* nonnull %11)
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  call void @fap(i32 noundef 8, i8* noundef %8, %struct.__va_list_tag* noundef nonnull %12)
  %13 = bitcast [1 x %struct.__va_list_tag]* %10 to i8*
  call void @llvm.va_end(i8* %13)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f9(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i8* noundef %9, ...) #0 {
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  %12 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_start(i8* nonnull %12)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i64 0, i64 0
  call void @fap(i32 noundef 9, i8* noundef %9, %struct.__va_list_tag* noundef nonnull %13)
  %14 = bitcast [1 x %struct.__va_list_tag]* %11 to i8*
  call void @llvm.va_end(i8* %14)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i8* noundef %10, ...) #0 {
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  %13 = bitcast [1 x %struct.__va_list_tag]* %12 to i8*
  call void @llvm.va_start(i8* nonnull %13)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i64 0, i64 0
  call void @fap(i32 noundef 10, i8* noundef %10, %struct.__va_list_tag* noundef nonnull %14)
  %15 = bitcast [1 x %struct.__va_list_tag]* %12 to i8*
  call void @llvm.va_end(i8* %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i8* noundef %11, ...) #0 {
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  %14 = bitcast [1 x %struct.__va_list_tag]* %13 to i8*
  call void @llvm.va_start(i8* nonnull %14)
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  call void @fap(i32 noundef 11, i8* noundef %11, %struct.__va_list_tag* noundef nonnull %15)
  %16 = bitcast [1 x %struct.__va_list_tag]* %13 to i8*
  call void @llvm.va_end(i8* %16)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i8* noundef %12, ...) #0 {
  %14 = alloca [1 x %struct.__va_list_tag], align 16
  %15 = bitcast [1 x %struct.__va_list_tag]* %14 to i8*
  call void @llvm.va_start(i8* nonnull %15)
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %14, i64 0, i64 0
  call void @fap(i32 noundef 12, i8* noundef %12, %struct.__va_list_tag* noundef nonnull %16)
  %17 = bitcast [1 x %struct.__va_list_tag]* %14 to i8*
  call void @llvm.va_end(i8* %17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f13(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i8* noundef %13, ...) #0 {
  %15 = alloca [1 x %struct.__va_list_tag], align 16
  %16 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_start(i8* nonnull %16)
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %15, i64 0, i64 0
  call void @fap(i32 noundef 13, i8* noundef %13, %struct.__va_list_tag* noundef nonnull %17)
  %18 = bitcast [1 x %struct.__va_list_tag]* %15 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f14(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i8* noundef %14, ...) #0 {
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  %17 = bitcast [1 x %struct.__va_list_tag]* %16 to i8*
  call void @llvm.va_start(i8* nonnull %17)
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i64 0, i64 0
  call void @fap(i32 noundef 14, i8* noundef %14, %struct.__va_list_tag* noundef nonnull %18)
  %19 = bitcast [1 x %struct.__va_list_tag]* %16 to i8*
  call void @llvm.va_end(i8* %19)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f15(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i8* noundef %15, ...) #0 {
  %17 = alloca [1 x %struct.__va_list_tag], align 16
  %18 = bitcast [1 x %struct.__va_list_tag]* %17 to i8*
  call void @llvm.va_start(i8* nonnull %18)
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %17, i64 0, i64 0
  call void @fap(i32 noundef 15, i8* noundef %15, %struct.__va_list_tag* noundef nonnull %19)
  %20 = bitcast [1 x %struct.__va_list_tag]* %17 to i8*
  call void @llvm.va_end(i8* %20)
  ret void
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
