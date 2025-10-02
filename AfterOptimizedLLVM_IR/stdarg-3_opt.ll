; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-3.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1 = type { i32, double, i32, double }
%struct.S2 = type { double, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@bar_arg = dso_local global i32 0, align 4
@x = dso_local global i64 0, align 8
@d = dso_local global double 0.000000e+00, align 8
@s1 = dso_local global %struct.S1 zeroinitializer, align 8
@s2 = dso_local global %struct.S2 zeroinitializer, align 8
@y = dso_local global i32 0, align 4
@foo_arg = dso_local global i32 0, align 4
@gap = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @bar_arg, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %2, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 16
  %14 = icmp ule i32 %13, 40
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 3
  %17 = load i8*, i8** %16, align 16
  %18 = getelementptr i8, i8* %17, i32 %13
  %19 = bitcast i8* %18 to i64*
  %20 = add i32 %13, 8
  store i32 %20, i32* %12, align 16
  br label %26

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i64*
  %25 = getelementptr i8, i8* %23, i32 8
  store i8* %25, i8** %22, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi i64* [ %19, %15 ], [ %24, %21 ]
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @x, align 8
  br label %6, !llvm.loop !4

29:                                               ; preds = %6
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %2, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ule i32 %13, 160
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 3
  %17 = load i8*, i8** %16, align 16
  %18 = getelementptr i8, i8* %17, i32 %13
  %19 = bitcast i8* %18 to double*
  %20 = add i32 %13, 16
  store i32 %20, i32* %12, align 4
  br label %26

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to double*
  %25 = getelementptr i8, i8* %23, i32 8
  store i8* %25, i8** %22, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = phi double* [ %19, %15 ], [ %24, %21 ]
  %28 = load double, double* %27, align 8
  store double %28, double* @d, align 8
  br label %6, !llvm.loop !6

29:                                               ; preds = %6
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 16
  %16 = icmp ule i32 %15, 40
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = getelementptr i8, i8* %19, i32 %15
  %21 = bitcast i8* %20 to i64*
  %22 = add i32 %15, 8
  store i32 %22, i32* %14, align 16
  br label %28

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to i64*
  %27 = getelementptr i8, i8* %25, i32 8
  store i8* %27, i8** %24, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi i64* [ %21, %17 ], [ %26, %23 ]
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* @x, align 8
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %32 = bitcast %struct.__va_list_tag* %31 to i8*
  call void @llvm.va_end(i8* %32)
  %33 = load i64, i64* @x, align 8
  %34 = trunc i64 %33 to i32
  call void @bar(i32 noundef %34)
  br label %6, !llvm.loop !7

35:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %28, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ule i32 %15, 160
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 3
  %19 = load i8*, i8** %18, align 16
  %20 = getelementptr i8, i8* %19, i32 %15
  %21 = bitcast i8* %20 to double*
  %22 = add i32 %15, 16
  store i32 %22, i32* %14, align 4
  br label %28

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to double*
  %27 = getelementptr i8, i8* %25, i32 8
  store i8* %27, i8** %24, align 8
  br label %28

28:                                               ; preds = %23, %17
  %29 = phi double* [ %21, %17 ], [ %26, %23 ]
  %30 = load double, double* %29, align 8
  store double %30, double* @d, align 8
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %32 = bitcast %struct.__va_list_tag* %31 to i8*
  call void @llvm.va_end(i8* %32)
  %33 = load double, double* @d, align 8
  %34 = fadd double %33, 4.000000e+00
  %35 = fptosi double %34 to i32
  call void @bar(i32 noundef %35)
  br label %6, !llvm.loop !8

36:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i32, i32* %2, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %2, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.S1*
  %15 = getelementptr i8, i8* %13, i32 32
  store i8* %15, i8** %12, align 8
  %16 = bitcast %struct.S1* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.S1* @s1 to i8*), i8* align 8 %16, i64 32, i1 false)
  br label %6, !llvm.loop !9

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %19 = bitcast %struct.__va_list_tag* %18 to i8*
  call void @llvm.va_end(i8* %19)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.S2, align 8
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  br label %7

7:                                                ; preds = %40, %1
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %2, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 16
  %15 = icmp ule i32 %14, 40
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ule i32 %17, 160
  %19 = and i1 %15, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = bitcast %struct.S2* %4 to { double, i64 }*
  %24 = getelementptr i8, i8* %22, i32 %14
  %25 = getelementptr i8, i8* %22, i32 %17
  %26 = bitcast i8* %25 to double*
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, i64 }, { double, i64 }* %23, i32 0, i32 0
  store double %27, double* %28, align 8
  %29 = bitcast i8* %24 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds { double, i64 }, { double, i64 }* %23, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = bitcast { double, i64 }* %23 to %struct.S2*
  %33 = add i32 %14, 8
  store i32 %33, i32* %13, align 16
  %34 = add i32 %17, 16
  store i32 %34, i32* %16, align 4
  br label %40

35:                                               ; preds = %11
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %12, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.S2*
  %39 = getelementptr i8, i8* %37, i32 16
  store i8* %39, i8** %36, align 8
  br label %40

40:                                               ; preds = %35, %20
  %41 = phi %struct.S2* [ %32, %20 ], [ %38, %35 ]
  %42 = bitcast %struct.S2* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.S2* @s2 to i8*), i8* align 8 %42, i64 16, i1 false)
  br label %7, !llvm.loop !10

43:                                               ; preds = %7
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %45 = bitcast %struct.__va_list_tag* %44 to i8*
  call void @llvm.va_end(i8* %45)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %4, align 4
  br label %6

6:                                                ; preds = %10, %1
  %7 = load i32, i32* %4, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %4, align 4
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = bitcast i8* %15 to %struct.S1*
  %17 = getelementptr i8, i8* %15, i32 32
  store i8* %17, i8** %14, align 8
  %18 = bitcast %struct.S1* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.S1* @s1 to i8*), i8* align 8 %18, i64 32, i1 false)
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %20 = bitcast %struct.__va_list_tag* %19 to i8*
  call void @llvm.va_end(i8* %20)
  %21 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 0), align 8
  call void @bar(i32 noundef %21)
  br label %6, !llvm.loop !11

22:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.S2, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %60, %1
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, -1
  store i32 %9, i32* %4, align 4
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %13 = bitcast %struct.__va_list_tag* %12 to i8*
  call void @llvm.va_start(i8* %13)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 16
  %17 = icmp ule i32 %16, 40
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ule i32 %19, 160
  %21 = and i1 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 3
  %24 = load i8*, i8** %23, align 16
  %25 = bitcast %struct.S2* %5 to { double, i64 }*
  %26 = getelementptr i8, i8* %24, i32 %16
  %27 = getelementptr i8, i8* %24, i32 %19
  %28 = bitcast i8* %27 to double*
  %29 = load double, double* %28, align 8
  %30 = getelementptr inbounds { double, i64 }, { double, i64 }* %25, i32 0, i32 0
  store double %29, double* %30, align 8
  %31 = bitcast i8* %26 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { double, i64 }, { double, i64 }* %25, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = bitcast { double, i64 }* %25 to %struct.S2*
  %35 = add i32 %16, 8
  store i32 %35, i32* %15, align 16
  %36 = add i32 %19, 16
  store i32 %36, i32* %18, align 4
  br label %42

37:                                               ; preds = %11
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %14, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to %struct.S2*
  %41 = getelementptr i8, i8* %39, i32 16
  store i8* %41, i8** %38, align 8
  br label %42

42:                                               ; preds = %37, %22
  %43 = phi %struct.S2* [ %34, %22 ], [ %40, %37 ]
  %44 = bitcast %struct.S2* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.S2* @s2 to i8*), i8* align 8 %44, i64 16, i1 false)
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 16
  %48 = icmp ule i32 %47, 40
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 3
  %51 = load i8*, i8** %50, align 16
  %52 = getelementptr i8, i8* %51, i32 %47
  %53 = bitcast i8* %52 to i32*
  %54 = add i32 %47, 8
  store i32 %54, i32* %46, align 16
  br label %60

55:                                               ; preds = %42
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = getelementptr i8, i8* %57, i32 8
  store i8* %59, i8** %56, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i32* [ %53, %49 ], [ %58, %55 ]
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @y, align 4
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %64 = bitcast %struct.__va_list_tag* %63 to i8*
  call void @llvm.va_end(i8* %64)
  %65 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 1), align 8
  %66 = trunc i64 %65 to i32
  call void @bar(i32 noundef %66)
  br label %7, !llvm.loop !12

67:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.S1, align 8
  %3 = alloca %struct.S1, align 8
  %4 = alloca %struct.S2, align 8
  %5 = alloca %struct.S2, align 8
  store i32 0, i32* %1, align 4
  call void (i32, ...) @f1(i32 noundef 7, i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 5, i64 noundef 7, i64 noundef 9, i64 noundef 11, i64 noundef 13)
  %6 = load i64, i64* @x, align 8
  %7 = icmp ne i64 %6, 11
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void @abort() #4
  unreachable

9:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 6, double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 4.000000e+00, double noundef 8.000000e+00, double noundef 1.600000e+01, double noundef 3.200000e+01, double noundef 6.400000e+01)
  %10 = load double, double* @d, align 8
  %11 = fcmp une double %10, 3.200000e+01
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #4
  unreachable

13:                                               ; preds = %9
  call void (i32, ...) @f3(i32 noundef 2, i64 noundef 1, i64 noundef 3)
  %14 = load i32, i32* @bar_arg, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 1
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* @x, align 8
  %19 = icmp ne i64 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13
  call void @abort() #4
  unreachable

21:                                               ; preds = %17
  call void (i32, ...) @f4(i32 noundef 2, double noundef 1.700000e+01, double noundef 1.900000e+01)
  %22 = load i32, i32* @bar_arg, align 4
  %23 = icmp ne i32 %22, 21
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load double, double* @d, align 8
  %26 = fcmp une double %25, 1.700000e+01
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %21
  call void @abort() #4
  unreachable

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 0
  store i32 131, i32* %29, align 8
  %30 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 2
  store i32 251, i32* %30, align 8
  %31 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 1
  store double 1.500000e+01, double* %31, align 8
  %32 = getelementptr inbounds %struct.S1, %struct.S1* %2, i32 0, i32 3
  store double 1.910000e+02, double* %32, align 8
  %33 = bitcast %struct.S1* %3 to i8*
  %34 = bitcast %struct.S1* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 32, i1 false)
  %35 = getelementptr inbounds %struct.S1, %struct.S1* %3, i32 0, i32 2
  store i32 254, i32* %35, align 8
  %36 = getelementptr inbounds %struct.S1, %struct.S1* %3, i32 0, i32 3
  store double 1.780000e+02, double* %36, align 8
  call void (i32, ...) @f5(i32 noundef 2, %struct.S1* noundef byval(%struct.S1) align 8 %2, %struct.S1* noundef byval(%struct.S1) align 8 %3, %struct.S1* noundef byval(%struct.S1) align 8 %2)
  %37 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 0), align 8
  %38 = icmp ne i32 %37, 131
  br i1 %38, label %48, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 2), align 8
  %41 = icmp ne i32 %40, 254
  br i1 %41, label %48, label %42

42:                                               ; preds = %39
  %43 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 1), align 8
  %44 = fcmp une double %43, 1.500000e+01
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 3), align 8
  %47 = fcmp une double %46, 1.780000e+02
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %42, %39, %28
  call void @abort() #4
  unreachable

49:                                               ; preds = %45
  call void (i32, ...) @f5(i32 noundef 3, %struct.S1* noundef byval(%struct.S1) align 8 %2, %struct.S1* noundef byval(%struct.S1) align 8 %3, %struct.S1* noundef byval(%struct.S1) align 8 %2)
  %50 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 0), align 8
  %51 = icmp ne i32 %50, 131
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 2), align 8
  %54 = icmp ne i32 %53, 251
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 1), align 8
  %57 = fcmp une double %56, 1.500000e+01
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 3), align 8
  %60 = fcmp une double %59, 1.910000e+02
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55, %52, %49
  call void @abort() #4
  unreachable

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.S2, %struct.S2* %4, i32 0, i32 1
  store i64 138, i64* %63, align 8
  %64 = getelementptr inbounds %struct.S2, %struct.S2* %4, i32 0, i32 0
  store double 1.600000e+01, double* %64, align 8
  %65 = getelementptr inbounds %struct.S2, %struct.S2* %5, i32 0, i32 1
  store i64 257, i64* %65, align 8
  %66 = getelementptr inbounds %struct.S2, %struct.S2* %5, i32 0, i32 0
  store double 1.760000e+02, double* %66, align 8
  %67 = bitcast %struct.S2* %4 to { double, i64 }*
  %68 = getelementptr inbounds { double, i64 }, { double, i64 }* %67, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = getelementptr inbounds { double, i64 }, { double, i64 }* %67, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = bitcast %struct.S2* %5 to { double, i64 }*
  %73 = getelementptr inbounds { double, i64 }, { double, i64 }* %72, i32 0, i32 0
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds { double, i64 }, { double, i64 }* %72, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = bitcast %struct.S2* %4 to { double, i64 }*
  %78 = getelementptr inbounds { double, i64 }, { double, i64 }* %77, i32 0, i32 0
  %79 = load double, double* %78, align 8
  %80 = getelementptr inbounds { double, i64 }, { double, i64 }* %77, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  call void (i32, ...) @f6(i32 noundef 2, double %69, i64 %71, double %74, i64 %76, double %79, i64 %81)
  %82 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 1), align 8
  %83 = icmp ne i64 %82, 257
  br i1 %83, label %87, label %84

84:                                               ; preds = %62
  %85 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 0), align 8
  %86 = fcmp une double %85, 1.760000e+02
  br i1 %86, label %87, label %88

87:                                               ; preds = %84, %62
  call void @abort() #4
  unreachable

88:                                               ; preds = %84
  %89 = bitcast %struct.S2* %4 to { double, i64 }*
  %90 = getelementptr inbounds { double, i64 }, { double, i64 }* %89, i32 0, i32 0
  %91 = load double, double* %90, align 8
  %92 = getelementptr inbounds { double, i64 }, { double, i64 }* %89, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = bitcast %struct.S2* %5 to { double, i64 }*
  %95 = getelementptr inbounds { double, i64 }, { double, i64 }* %94, i32 0, i32 0
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds { double, i64 }, { double, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = bitcast %struct.S2* %4 to { double, i64 }*
  %100 = getelementptr inbounds { double, i64 }, { double, i64 }* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds { double, i64 }, { double, i64 }* %99, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  call void (i32, ...) @f6(i32 noundef 3, double %91, i64 %93, double %96, i64 %98, double %101, i64 %103)
  %104 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 1), align 8
  %105 = icmp ne i64 %104, 138
  br i1 %105, label %109, label %106

106:                                              ; preds = %88
  %107 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 0), align 8
  %108 = fcmp une double %107, 1.600000e+01
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %88
  call void @abort() #4
  unreachable

110:                                              ; preds = %106
  call void (i32, ...) @f7(i32 noundef 2, %struct.S1* noundef byval(%struct.S1) align 8 %3, %struct.S1* noundef byval(%struct.S1) align 8 %2, %struct.S1* noundef byval(%struct.S1) align 8 %2)
  %111 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 0), align 8
  %112 = icmp ne i32 %111, 131
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 2), align 8
  %115 = icmp ne i32 %114, 254
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 1), align 8
  %118 = fcmp une double %117, 1.500000e+01
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i32 0, i32 3), align 8
  %121 = fcmp une double %120, 1.780000e+02
  br i1 %121, label %122, label %123

122:                                              ; preds = %119, %116, %113, %110
  call void @abort() #4
  unreachable

123:                                              ; preds = %119
  %124 = load i32, i32* @bar_arg, align 4
  %125 = icmp ne i32 %124, 131
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  call void @abort() #4
  unreachable

127:                                              ; preds = %123
  %128 = bitcast %struct.S2* %5 to { double, i64 }*
  %129 = getelementptr inbounds { double, i64 }, { double, i64 }* %128, i32 0, i32 0
  %130 = load double, double* %129, align 8
  %131 = getelementptr inbounds { double, i64 }, { double, i64 }* %128, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = bitcast %struct.S2* %4 to { double, i64 }*
  %134 = getelementptr inbounds { double, i64 }, { double, i64 }* %133, i32 0, i32 0
  %135 = load double, double* %134, align 8
  %136 = getelementptr inbounds { double, i64 }, { double, i64 }* %133, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = bitcast %struct.S2* %4 to { double, i64 }*
  %139 = getelementptr inbounds { double, i64 }, { double, i64 }* %138, i32 0, i32 0
  %140 = load double, double* %139, align 8
  %141 = getelementptr inbounds { double, i64 }, { double, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  call void (i32, ...) @f8(i32 noundef 3, double %130, i64 %132, double %135, i64 %137, double %140, i64 %142)
  %143 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 1), align 8
  %144 = icmp ne i64 %143, 257
  br i1 %144, label %148, label %145

145:                                              ; preds = %127
  %146 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i32 0, i32 0), align 8
  %147 = fcmp une double %146, 1.760000e+02
  br i1 %147, label %148, label %149

148:                                              ; preds = %145, %127
  call void @abort() #4
  unreachable

149:                                              ; preds = %145
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
