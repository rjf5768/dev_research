; ModuleID = './va-arg-9.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-9.c"
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
define dso_local void @fap(i32 noundef %0, i8* noundef %1, %struct.__va_list_tag* nocapture noundef %2) #0 {
  %4 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #6
  %5 = sub nsw i32 16, %0
  %6 = sext i32 %5 to i64
  %.not = icmp eq i64 %4, %6
  br i1 %.not, label %8, label %7

7:                                                ; preds = %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %33, %8
  %.0 = phi i8* [ %1, %8 ], [ %12, %33 ]
  %10 = load i8, i8* %.0, align 1
  %.not1 = icmp eq i8 %10, 0
  br i1 %.not1, label %34, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds i8, i8* %.0, i64 1
  %13 = load i8, i8* %.0, align 1
  %14 = sext i8 %13 to i32
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = sext i32 %16 to i64
  %22 = getelementptr i8, i8* %20, i64 %21
  %23 = add i32 %16, 8
  store i32 %23, i32* %15, align 8
  br label %28

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %2, i64 0, i32 2
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
  br label %9, !llvm.loop !4

34:                                               ; preds = %9
  ret void

UnifiedUnreachableBlock:                          ; preds = %32, %7
  unreachable
}

declare dso_local i64 @strlen(i8* noundef) #2

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
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

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
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
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
