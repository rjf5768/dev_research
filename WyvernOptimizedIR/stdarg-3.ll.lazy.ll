; ModuleID = './stdarg-3.ll'
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @bar(i32 noundef %0) #0 {
  store i32 %0, i32* @bar_arg, align 4
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f1(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %21, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %21 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp sgt i32 %.0, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @x, align 8
  br label %4, !llvm.loop !4

24:                                               ; preds = %4
  %25 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %25)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %21, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %21 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp sgt i32 %.0, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %9, 161
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 16
  store i32 %16, i32* %8, align 4
  br label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in to double*
  %23 = load double, double* %22, align 8
  store double %23, double* @d, align 8
  br label %4, !llvm.loop !6

24:                                               ; preds = %4
  %25 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %25)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f3(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  br label %3

3:                                                ; preds = %21, %1
  %.0 = phi i32 [ %0, %1 ], [ %4, %21 ]
  %4 = add nsw i32 %.0, -1
  %5 = icmp sgt i32 %.0, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ult i32 %9, 41
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in to i64*
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* @x, align 8
  %24 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %24)
  %25 = load i64, i64* @x, align 8
  %26 = trunc i64 %25 to i32
  call void @bar(i32 noundef %26)
  br label %3, !llvm.loop !7

27:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  br label %3

3:                                                ; preds = %21, %1
  %.0 = phi i32 [ %0, %1 ], [ %4, %21 ]
  %4 = add nsw i32 %.0, -1
  %5 = icmp sgt i32 %.0, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %3
  %7 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %9, 161
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = sext i32 %9 to i64
  %15 = getelementptr i8, i8* %13, i64 %14
  %16 = add i32 %9, 16
  store i32 %16, i32* %8, align 4
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr i8, i8* %19, i64 8
  store i8* %20, i8** %18, align 8
  br label %21

21:                                               ; preds = %17, %11
  %.in = phi i8* [ %15, %11 ], [ %19, %17 ]
  %22 = bitcast i8* %.in to double*
  %23 = load double, double* %22, align 8
  store double %23, double* @d, align 8
  %24 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %24)
  %25 = load double, double* @d, align 8
  %26 = fadd double %25, 4.000000e+00
  %27 = fptosi double %26 to i32
  call void @bar(i32 noundef %27)
  br label %3, !llvm.loop !8

28:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f5(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  br label %4

4:                                                ; preds = %6, %1
  %.0 = phi i32 [ %0, %1 ], [ %7, %6 ]
  %5 = icmp sgt i32 %.0, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  %7 = add nsw i32 %.0, -1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr i8, i8* %9, i64 32
  store i8* %10, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.S1* @s1 to i8*), i8* noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  br label %4, !llvm.loop !9

11:                                               ; preds = %4
  %12 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f6(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca { double, i64 }, align 8
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  br label %5

5:                                                ; preds = %37, %1
  %.0 = phi i32 [ %0, %1 ], [ %6, %37 ]
  %6 = add nsw i32 %.0, -1
  %7 = icmp sgt i32 %.0, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %5
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ult i32 %10, 41
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %13, 161
  %15 = and i1 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %8
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = sext i32 %10 to i64
  %20 = getelementptr i8, i8* %18, i64 %19
  %21 = sext i32 %13 to i64
  %22 = getelementptr i8, i8* %18, i64 %21
  %23 = bitcast i8* %22 to double*
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, i64 }, { double, i64 }* %3, i64 0, i32 0
  store double %24, double* %25, align 8
  %26 = bitcast i8* %20 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { double, i64 }, { double, i64 }* %3, i64 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = bitcast { double, i64 }* %3 to %struct.S2*
  %30 = add i32 %10, 8
  store i32 %30, i32* %9, align 16
  %31 = add i32 %13, 16
  store i32 %31, i32* %12, align 4
  br label %37

32:                                               ; preds = %8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.S2*
  %36 = getelementptr i8, i8* %34, i64 16
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %16
  %38 = phi %struct.S2* [ %29, %16 ], [ %35, %32 ]
  %39 = bitcast %struct.S2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.S2* @s2 to i8*), i8* noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false)
  br label %5, !llvm.loop !10

40:                                               ; preds = %5
  %41 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %41)
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  br label %3

3:                                                ; preds = %5, %1
  %.0 = phi i32 [ %0, %1 ], [ %6, %5 ]
  %4 = icmp sgt i32 %.0, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = add nsw i32 %.0, -1
  %7 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr i8, i8* %9, i64 32
  store i8* %10, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) bitcast (%struct.S1* @s1 to i8*), i8* noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  %11 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 0), align 8
  call void @bar(i32 noundef %12)
  br label %3, !llvm.loop !11

13:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #1 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca { double, i64 }, align 8
  br label %4

4:                                                ; preds = %53, %1
  %.0 = phi i32 [ %0, %1 ], [ %5, %53 ]
  %5 = add nsw i32 %.0, -1
  %6 = icmp sgt i32 %.0, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %4
  %8 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ult i32 %10, 41
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %13, 161
  %15 = and i1 %11, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %7
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %18 = load i8*, i8** %17, align 16
  %19 = sext i32 %10 to i64
  %20 = getelementptr i8, i8* %18, i64 %19
  %21 = sext i32 %13 to i64
  %22 = getelementptr i8, i8* %18, i64 %21
  %23 = bitcast i8* %22 to double*
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds { double, i64 }, { double, i64 }* %3, i64 0, i32 0
  store double %24, double* %25, align 8
  %26 = bitcast i8* %20 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds { double, i64 }, { double, i64 }* %3, i64 0, i32 1
  store i64 %27, i64* %28, align 8
  %29 = bitcast { double, i64 }* %3 to %struct.S2*
  %30 = add i32 %10, 8
  store i32 %30, i32* %9, align 16
  %31 = add i32 %13, 16
  store i32 %31, i32* %12, align 4
  br label %37

32:                                               ; preds = %7
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.S2*
  %36 = getelementptr i8, i8* %34, i64 16
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %16
  %38 = phi %struct.S2* [ %29, %16 ], [ %35, %32 ]
  %39 = bitcast %struct.S2* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.S2* @s2 to i8*), i8* noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false)
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %45 = load i8*, i8** %44, align 16
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 16
  br label %53

49:                                               ; preds = %37
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in to i32*
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* @y, align 4
  %56 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %56)
  %57 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 1), align 8
  %58 = trunc i64 %57 to i32
  call void @bar(i32 noundef %58)
  br label %4, !llvm.loop !12

59:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #4 {
  %1 = alloca %struct.S1, align 8
  %2 = alloca %struct.S1, align 8
  %3 = alloca %struct.S2, align 8
  %4 = alloca %struct.S2, align 8
  call void (i32, ...) @f1(i32 noundef 7, i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 5, i64 noundef 7, i64 noundef 9, i64 noundef 11, i64 noundef 13)
  %5 = load i64, i64* @x, align 8
  %.not = icmp eq i64 %5, 11
  br i1 %.not, label %7, label %6

6:                                                ; preds = %0
  call void @abort() #6
  br label %UnifiedUnreachableBlock

7:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 6, double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 4.000000e+00, double noundef 8.000000e+00, double noundef 1.600000e+01, double noundef 3.200000e+01, double noundef 6.400000e+01)
  %8 = load double, double* @d, align 8
  %9 = fcmp une double %8, 3.200000e+01
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void @abort() #6
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %7
  call void (i32, ...) @f3(i32 noundef 2, i64 noundef 1, i64 noundef 3)
  %12 = load i32, i32* @bar_arg, align 4
  %.not1 = icmp eq i32 %12, 1
  br i1 %.not1, label %13, label %15

13:                                               ; preds = %11
  %14 = load i64, i64* @x, align 8
  %.not2 = icmp eq i64 %14, 1
  br i1 %.not2, label %16, label %15

15:                                               ; preds = %13, %11
  call void @abort() #6
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %13
  call void (i32, ...) @f4(i32 noundef 2, double noundef 1.700000e+01, double noundef 1.900000e+01)
  %17 = load i32, i32* @bar_arg, align 4
  %.not3 = icmp eq i32 %17, 21
  br i1 %.not3, label %18, label %21

18:                                               ; preds = %16
  %19 = load double, double* @d, align 8
  %20 = fcmp une double %19, 1.700000e+01
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %16
  call void @abort() #6
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.S1, %struct.S1* %1, i64 0, i32 0
  store i32 131, i32* %23, align 8
  %24 = getelementptr inbounds %struct.S1, %struct.S1* %1, i64 0, i32 2
  store i32 251, i32* %24, align 8
  %25 = getelementptr inbounds %struct.S1, %struct.S1* %1, i64 0, i32 1
  store double 1.500000e+01, double* %25, align 8
  %26 = getelementptr inbounds %struct.S1, %struct.S1* %1, i64 0, i32 3
  store double 1.910000e+02, double* %26, align 8
  %27 = bitcast %struct.S1* %2 to i8*
  %28 = bitcast %struct.S1* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %27, i8* noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  %29 = getelementptr inbounds %struct.S1, %struct.S1* %2, i64 0, i32 2
  store i32 254, i32* %29, align 8
  %30 = getelementptr inbounds %struct.S1, %struct.S1* %2, i64 0, i32 3
  store double 1.780000e+02, double* %30, align 8
  call void (i32, ...) @f5(i32 noundef 2, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %2, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1)
  %31 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 0), align 8
  %.not4 = icmp eq i32 %31, 131
  br i1 %.not4, label %32, label %40

32:                                               ; preds = %22
  %33 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 2), align 8
  %.not5 = icmp eq i32 %33, 254
  br i1 %.not5, label %34, label %40

34:                                               ; preds = %32
  %35 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 1), align 8
  %36 = fcmp une double %35, 1.500000e+01
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 3), align 8
  %39 = fcmp une double %38, 1.780000e+02
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34, %32, %22
  call void @abort() #6
  br label %UnifiedUnreachableBlock

41:                                               ; preds = %37
  call void (i32, ...) @f5(i32 noundef 3, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %2, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1)
  %42 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 0), align 8
  %.not6 = icmp eq i32 %42, 131
  br i1 %.not6, label %43, label %51

43:                                               ; preds = %41
  %44 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 2), align 8
  %.not7 = icmp eq i32 %44, 251
  br i1 %.not7, label %45, label %51

45:                                               ; preds = %43
  %46 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 1), align 8
  %47 = fcmp une double %46, 1.500000e+01
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 3), align 8
  %50 = fcmp une double %49, 1.910000e+02
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45, %43, %41
  call void @abort() #6
  br label %UnifiedUnreachableBlock

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 1
  store i64 138, i64* %53, align 8
  %54 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 0
  store double 1.600000e+01, double* %54, align 8
  %55 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 1
  store i64 257, i64* %55, align 8
  %56 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 0
  store double 1.760000e+02, double* %56, align 8
  %57 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 0
  %60 = load double, double* %59, align 8
  call void (i32, ...) @f6(i32 noundef 2, double 1.600000e+01, i64 %58, double 1.760000e+02, i64 257, double %60, i64 %58)
  %61 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 1), align 8
  %.not8 = icmp eq i64 %61, 257
  br i1 %.not8, label %62, label %65

62:                                               ; preds = %52
  %63 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 0), align 8
  %64 = fcmp une double %63, 1.760000e+02
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %52
  call void @abort() #6
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 1
  %78 = load i64, i64* %77, align 8
  call void (i32, ...) @f6(i32 noundef 3, double %68, i64 %70, double %72, i64 %74, double %76, i64 %78)
  %79 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 1), align 8
  %.not9 = icmp eq i64 %79, 138
  br i1 %.not9, label %80, label %83

80:                                               ; preds = %66
  %81 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 0), align 8
  %82 = fcmp une double %81, 1.600000e+01
  br i1 %82, label %83, label %84

83:                                               ; preds = %80, %66
  call void @abort() #6
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %80
  call void (i32, ...) @f7(i32 noundef 2, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %2, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1, %struct.S1* noundef nonnull byval(%struct.S1) align 8 %1)
  %85 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 0), align 8
  %.not10 = icmp eq i32 %85, 131
  br i1 %.not10, label %86, label %94

86:                                               ; preds = %84
  %87 = load i32, i32* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 2), align 8
  %.not11 = icmp eq i32 %87, 254
  br i1 %.not11, label %88, label %94

88:                                               ; preds = %86
  %89 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 1), align 8
  %90 = fcmp une double %89, 1.500000e+01
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load double, double* getelementptr inbounds (%struct.S1, %struct.S1* @s1, i64 0, i32 3), align 8
  %93 = fcmp une double %92, 1.780000e+02
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %88, %86, %84
  call void @abort() #6
  br label %UnifiedUnreachableBlock

95:                                               ; preds = %91
  %96 = load i32, i32* @bar_arg, align 4
  %.not12 = icmp eq i32 %96, 131
  br i1 %.not12, label %98, label %97

97:                                               ; preds = %95
  call void @abort() #6
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds %struct.S2, %struct.S2* %4, i64 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 0
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.S2, %struct.S2* %3, i64 0, i32 1
  %106 = load i64, i64* %105, align 8
  call void (i32, ...) @f8(i32 noundef 3, double %100, i64 %102, double %104, i64 %106, double %104, i64 %106)
  %107 = load i64, i64* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 1), align 8
  %.not13 = icmp eq i64 %107, 257
  br i1 %.not13, label %108, label %111

108:                                              ; preds = %98
  %109 = load double, double* getelementptr inbounds (%struct.S2, %struct.S2* @s2, i64 0, i32 0), align 8
  %110 = fcmp une double %109, 1.760000e+02
  br i1 %110, label %111, label %112

111:                                              ; preds = %108, %98
  call void @abort() #6
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %108
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %111, %97, %94, %83, %65, %51, %40, %21, %15, %10, %6
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind }

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
