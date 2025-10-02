; ModuleID = './stdarg-4.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@y = dso_local global i64 0, align 8
@x = dso_local global i64 0, align 8

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f1(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 161
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 16
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to double*
  %19 = load double, double* %18, align 8
  %20 = fptosi double %19 to i64
  store i64 %20, i64* @x, align 8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = sext i32 %22 to i64
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 16
  br label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %24
  %.in1 = phi i8* [ %28, %24 ], [ %32, %30 ]
  %35 = bitcast i8* %.in1 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @x, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* @x, align 8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %40, 161
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = sext i32 %40 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = add i32 %40, 16
  store i32 %47, i32* %39, align 4
  br label %52

48:                                               ; preds = %34
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %.in2 = phi i8* [ %46, %42 ], [ %50, %48 ]
  %53 = bitcast i8* %.in2 to double*
  %54 = load double, double* %53, align 8
  %55 = load i64, i64* @x, align 8
  %56 = sitofp i64 %55 to double
  %57 = fadd double %54, %56
  %58 = fptosi double %57 to i64
  store i64 %58, i64* @x, align 8
  %59 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %59)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %5 = load i32, i32* %4, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %9 = load i8*, i8** %8, align 16
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 16
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  store i64 %20, i64* @y, align 8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %22 = load i32, i32* %21, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %26 = load i8*, i8** %25, align 16
  %27 = sext i32 %22 to i64
  %28 = getelementptr i8, i8* %26, i64 %27
  %29 = add i32 %22, 8
  store i32 %29, i32* %21, align 16
  br label %34

30:                                               ; preds = %17
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 8
  store i8* %33, i8** %31, align 8
  br label %34

34:                                               ; preds = %30, %24
  %.in1 = phi i8* [ %28, %24 ], [ %32, %30 ]
  %35 = bitcast i8* %.in1 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @y, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* @y, align 8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %40, 161
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = sext i32 %40 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = add i32 %40, 16
  store i32 %47, i32* %39, align 4
  br label %52

48:                                               ; preds = %34
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %.in2 = phi i8* [ %46, %42 ], [ %50, %48 ]
  %53 = bitcast i8* %.in2 to double*
  %54 = load double, double* %53, align 8
  %55 = load i64, i64* @y, align 8
  %56 = sitofp i64 %55 to double
  %57 = fadd double %54, %56
  %58 = fptosi double %57 to i64
  store i64 %58, i64* @y, align 8
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ult i32 %60, 161
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %64 = load i8*, i8** %63, align 16
  %65 = sext i32 %60 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  %67 = add i32 %60, 16
  store i32 %67, i32* %59, align 4
  br label %72

68:                                               ; preds = %52
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr i8, i8* %70, i64 8
  store i8* %71, i8** %69, align 8
  br label %72

72:                                               ; preds = %68, %62
  %.in3 = phi i8* [ %66, %62 ], [ %70, %68 ]
  %73 = bitcast i8* %.in3 to double*
  %74 = load double, double* %73, align 8
  %75 = fptosi double %74 to i64
  store i64 %75, i64* @x, align 8
  %76 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %77 = load i32, i32* %76, align 16
  %78 = icmp ult i32 %77, 41
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %81 = load i8*, i8** %80, align 16
  %82 = sext i32 %77 to i64
  %83 = getelementptr i8, i8* %81, i64 %82
  %84 = add i32 %77, 8
  store i32 %84, i32* %76, align 16
  br label %89

85:                                               ; preds = %72
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr i8, i8* %87, i64 8
  store i8* %88, i8** %86, align 8
  br label %89

89:                                               ; preds = %85, %79
  %.in4 = phi i8* [ %83, %79 ], [ %87, %85 ]
  %90 = bitcast i8* %.in4 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @x, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* @x, align 8
  %94 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ult i32 %95, 161
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %99 = load i8*, i8** %98, align 16
  %100 = sext i32 %95 to i64
  %101 = getelementptr i8, i8* %99, i64 %100
  %102 = add i32 %95, 16
  store i32 %102, i32* %94, align 4
  br label %107

103:                                              ; preds = %89
  %104 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr i8, i8* %105, i64 8
  store i8* %106, i8** %104, align 8
  br label %107

107:                                              ; preds = %103, %97
  %.in5 = phi i8* [ %101, %97 ], [ %105, %103 ]
  %108 = bitcast i8* %.in5 to double*
  %109 = load double, double* %108, align 8
  %110 = load i64, i64* @x, align 8
  %111 = sitofp i64 %110 to double
  %112 = fadd double %109, %111
  %113 = fptosi double %112 to i64
  store i64 %113, i64* @x, align 8
  %114 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %114)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i64 @f3h(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #2 {
  %6 = sext i32 %0 to i64
  %7 = add nsw i64 %6, %1
  %8 = add nsw i64 %7, %2
  %9 = add nsw i64 %8, %3
  %10 = add nsw i64 %9, %4
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i32 noundef %0, ...) #3 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  switch i32 %0, label %174 [
    i32 0, label %4
    i32 1, label %6
    i32 2, label %24
    i32 3, label %58
    i32 4, label %108
  ]

4:                                                ; preds = %1
  %5 = call i64 @f3h(i32 noundef %0, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  br label %175

6:                                                ; preds = %1
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %8 = load i32, i32* %7, align 16
  %9 = icmp ult i32 %8, 41
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = sext i32 %8 to i64
  %14 = getelementptr i8, i8* %12, i64 %13
  %15 = add i32 %8, 8
  store i32 %15, i32* %7, align 16
  br label %20

16:                                               ; preds = %6
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr i8, i8* %18, i64 8
  store i8* %19, i8** %17, align 8
  br label %20

20:                                               ; preds = %16, %10
  %.in9 = phi i8* [ %14, %10 ], [ %18, %16 ]
  %21 = bitcast i8* %.in9 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @f3h(i32 noundef %0, i64 noundef %22, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  br label %175

24:                                               ; preds = %1
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %26 = load i32, i32* %25, align 16
  %27 = icmp ult i32 %26, 41
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %30 = load i8*, i8** %29, align 16
  %31 = sext i32 %26 to i64
  %32 = getelementptr i8, i8* %30, i64 %31
  %33 = add i32 %26, 8
  store i32 %33, i32* %25, align 16
  br label %38

34:                                               ; preds = %24
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr i8, i8* %36, i64 8
  store i8* %37, i8** %35, align 8
  br label %38

38:                                               ; preds = %34, %28
  %.in7 = phi i8* [ %32, %28 ], [ %36, %34 ]
  %39 = bitcast i8* %.in7 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %42 = load i32, i32* %41, align 16
  %43 = icmp ult i32 %42, 41
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %46 = load i8*, i8** %45, align 16
  %47 = sext i32 %42 to i64
  %48 = getelementptr i8, i8* %46, i64 %47
  %49 = add i32 %42, 8
  store i32 %49, i32* %41, align 16
  br label %54

50:                                               ; preds = %38
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr i8, i8* %52, i64 8
  store i8* %53, i8** %51, align 8
  br label %54

54:                                               ; preds = %50, %44
  %.in8 = phi i8* [ %48, %44 ], [ %52, %50 ]
  %55 = bitcast i8* %.in8 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @f3h(i32 noundef %0, i64 noundef %40, i64 noundef %56, i64 noundef 0, i64 noundef 0)
  br label %175

58:                                               ; preds = %1
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %60 = load i32, i32* %59, align 16
  %61 = icmp ult i32 %60, 41
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %64 = load i8*, i8** %63, align 16
  %65 = sext i32 %60 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  %67 = add i32 %60, 8
  store i32 %67, i32* %59, align 16
  br label %72

68:                                               ; preds = %58
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr i8, i8* %70, i64 8
  store i8* %71, i8** %69, align 8
  br label %72

72:                                               ; preds = %68, %62
  %.in4 = phi i8* [ %66, %62 ], [ %70, %68 ]
  %73 = bitcast i8* %.in4 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %76 = load i32, i32* %75, align 16
  %77 = icmp ult i32 %76, 41
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %80 = load i8*, i8** %79, align 16
  %81 = sext i32 %76 to i64
  %82 = getelementptr i8, i8* %80, i64 %81
  %83 = add i32 %76, 8
  store i32 %83, i32* %75, align 16
  br label %88

84:                                               ; preds = %72
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr i8, i8* %86, i64 8
  store i8* %87, i8** %85, align 8
  br label %88

88:                                               ; preds = %84, %78
  %.in5 = phi i8* [ %82, %78 ], [ %86, %84 ]
  %89 = bitcast i8* %.in5 to i64*
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %92 = load i32, i32* %91, align 16
  %93 = icmp ult i32 %92, 41
  br i1 %93, label %94, label %100

94:                                               ; preds = %88
  %95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %96 = load i8*, i8** %95, align 16
  %97 = sext i32 %92 to i64
  %98 = getelementptr i8, i8* %96, i64 %97
  %99 = add i32 %92, 8
  store i32 %99, i32* %91, align 16
  br label %104

100:                                              ; preds = %88
  %101 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr i8, i8* %102, i64 8
  store i8* %103, i8** %101, align 8
  br label %104

104:                                              ; preds = %100, %94
  %.in6 = phi i8* [ %98, %94 ], [ %102, %100 ]
  %105 = bitcast i8* %.in6 to i64*
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @f3h(i32 noundef %0, i64 noundef %74, i64 noundef %90, i64 noundef %106, i64 noundef 0)
  br label %175

108:                                              ; preds = %1
  %109 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %110 = load i32, i32* %109, align 16
  %111 = icmp ult i32 %110, 41
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %114 = load i8*, i8** %113, align 16
  %115 = sext i32 %110 to i64
  %116 = getelementptr i8, i8* %114, i64 %115
  %117 = add i32 %110, 8
  store i32 %117, i32* %109, align 16
  br label %122

118:                                              ; preds = %108
  %119 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr i8, i8* %120, i64 8
  store i8* %121, i8** %119, align 8
  br label %122

122:                                              ; preds = %118, %112
  %.in = phi i8* [ %116, %112 ], [ %120, %118 ]
  %123 = bitcast i8* %.in to i64*
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %126 = load i32, i32* %125, align 16
  %127 = icmp ult i32 %126, 41
  br i1 %127, label %128, label %134

128:                                              ; preds = %122
  %129 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %130 = load i8*, i8** %129, align 16
  %131 = sext i32 %126 to i64
  %132 = getelementptr i8, i8* %130, i64 %131
  %133 = add i32 %126, 8
  store i32 %133, i32* %125, align 16
  br label %138

134:                                              ; preds = %122
  %135 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %136 = load i8*, i8** %135, align 8
  %137 = getelementptr i8, i8* %136, i64 8
  store i8* %137, i8** %135, align 8
  br label %138

138:                                              ; preds = %134, %128
  %.in1 = phi i8* [ %132, %128 ], [ %136, %134 ]
  %139 = bitcast i8* %.in1 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %142 = load i32, i32* %141, align 16
  %143 = icmp ult i32 %142, 41
  br i1 %143, label %144, label %150

144:                                              ; preds = %138
  %145 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %146 = load i8*, i8** %145, align 16
  %147 = sext i32 %142 to i64
  %148 = getelementptr i8, i8* %146, i64 %147
  %149 = add i32 %142, 8
  store i32 %149, i32* %141, align 16
  br label %154

150:                                              ; preds = %138
  %151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr i8, i8* %152, i64 8
  store i8* %153, i8** %151, align 8
  br label %154

154:                                              ; preds = %150, %144
  %.in2 = phi i8* [ %148, %144 ], [ %152, %150 ]
  %155 = bitcast i8* %.in2 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %158 = load i32, i32* %157, align 16
  %159 = icmp ult i32 %158, 41
  br i1 %159, label %160, label %166

160:                                              ; preds = %154
  %161 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %162 = load i8*, i8** %161, align 16
  %163 = sext i32 %158 to i64
  %164 = getelementptr i8, i8* %162, i64 %163
  %165 = add i32 %158, 8
  store i32 %165, i32* %157, align 16
  br label %170

166:                                              ; preds = %154
  %167 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr i8, i8* %168, i64 8
  store i8* %169, i8** %167, align 8
  br label %170

170:                                              ; preds = %166, %160
  %.in3 = phi i8* [ %164, %160 ], [ %168, %166 ]
  %171 = bitcast i8* %.in3 to i64*
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @f3h(i32 noundef %0, i64 noundef %124, i64 noundef %140, i64 noundef %156, i64 noundef %172)
  br label %175

174:                                              ; preds = %1
  call void @abort() #5
  unreachable

175:                                              ; preds = %170, %104, %54, %20, %4
  %.0 = phi i64 [ %173, %170 ], [ %107, %104 ], [ %57, %54 ], [ %23, %20 ], [ %5, %4 ]
  %176 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %176)
  ret i64 %.0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #3 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  switch i32 %0, label %58 [
    i32 4, label %4
    i32 5, label %21
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 161
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %10 = load i8*, i8** %9, align 16
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 16
  store i32 %13, i32* %5, align 4
  br label %18

14:                                               ; preds = %4
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in5 = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in5 to double*
  %20 = load double, double* %19, align 8
  br label %59

21:                                               ; preds = %1
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %23, 161
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = sext i32 %23 to i64
  %29 = getelementptr i8, i8* %27, i64 %28
  %30 = add i32 %23, 16
  store i32 %30, i32* %22, align 4
  br label %35

31:                                               ; preds = %21
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i64 8
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %31, %25
  %.in = phi i8* [ %29, %25 ], [ %33, %31 ]
  %36 = bitcast i8* %.in to double*
  %37 = load double, double* %36, align 8
  %38 = fptosi double %37 to i64
  store i64 %38, i64* @y, align 8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %40, 161
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = sext i32 %40 to i64
  %46 = getelementptr i8, i8* %44, i64 %45
  %47 = add i32 %40, 16
  store i32 %47, i32* %39, align 4
  br label %52

48:                                               ; preds = %35
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i64 8
  store i8* %51, i8** %49, align 8
  br label %52

52:                                               ; preds = %48, %42
  %.in1 = phi i8* [ %46, %42 ], [ %50, %48 ]
  %53 = bitcast i8* %.in1 to double*
  %54 = load double, double* %53, align 8
  %55 = load i64, i64* @y, align 8
  %56 = sitofp i64 %55 to double
  %57 = fadd double %54, %56
  br label %59

58:                                               ; preds = %1
  call void @abort() #5
  unreachable

59:                                               ; preds = %52, %18
  %storemerge.in = phi double [ %57, %52 ], [ %20, %18 ]
  %storemerge = fptosi double %storemerge.in to i64
  store i64 %storemerge, i64* @y, align 8
  %60 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ult i32 %61, 161
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %65 = load i8*, i8** %64, align 16
  %66 = sext i32 %61 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = add i32 %61, 16
  store i32 %68, i32* %60, align 4
  br label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %70, align 8
  br label %73

73:                                               ; preds = %69, %63
  %.in2 = phi i8* [ %67, %63 ], [ %71, %69 ]
  %74 = bitcast i8* %.in2 to double*
  %75 = load double, double* %74, align 8
  %76 = fptosi double %75 to i64
  store i64 %76, i64* @x, align 8
  %77 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %78 = load i32, i32* %77, align 16
  %79 = icmp ult i32 %78, 41
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %82 = load i8*, i8** %81, align 16
  %83 = sext i32 %78 to i64
  %84 = getelementptr i8, i8* %82, i64 %83
  %85 = add i32 %78, 8
  store i32 %85, i32* %77, align 16
  br label %90

86:                                               ; preds = %73
  %87 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr i8, i8* %88, i64 8
  store i8* %89, i8** %87, align 8
  br label %90

90:                                               ; preds = %86, %80
  %.in3 = phi i8* [ %84, %80 ], [ %88, %86 ]
  %91 = bitcast i8* %.in3 to i64*
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @x, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* @x, align 8
  %95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ult i32 %96, 161
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %100 = load i8*, i8** %99, align 16
  %101 = sext i32 %96 to i64
  %102 = getelementptr i8, i8* %100, i64 %101
  %103 = add i32 %96, 16
  store i32 %103, i32* %95, align 4
  br label %108

104:                                              ; preds = %90
  %105 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = getelementptr i8, i8* %106, i64 8
  store i8* %107, i8** %105, align 8
  br label %108

108:                                              ; preds = %104, %98
  %.in4 = phi i8* [ %102, %98 ], [ %106, %104 ]
  %109 = bitcast i8* %.in4 to double*
  %110 = load double, double* %109, align 8
  %111 = load i64, i64* @x, align 8
  %112 = sitofp i64 %111 to double
  %113 = fadd double %110, %112
  %114 = fptosi double %113 to i64
  store i64 %114, i64* @x, align 8
  %115 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %115)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  call void (i32, ...) @f1(i32 noundef 3, double noundef 1.600000e+01, i64 noundef 128, double noundef 3.200000e+01)
  %1 = load i64, i64* @x, align 8
  %.not = icmp eq i64 %1, 176
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 6, i32 noundef 5, i64 noundef 7, double noundef 1.800000e+01, double noundef 1.900000e+01, i64 noundef 17, double noundef 6.400000e+01)
  %4 = load i64, i64* @x, align 8
  %.not1 = icmp eq i64 %4, 100
  br i1 %.not1, label %5, label %7

5:                                                ; preds = %3
  %6 = load i64, i64* @y, align 8
  %.not2 = icmp eq i64 %6, 30
  br i1 %.not2, label %8, label %7

7:                                                ; preds = %5, %3
  call void @abort() #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %5
  %9 = call i64 (i32, ...) @f3(i32 noundef 0)
  %.not3 = icmp eq i64 %9, 0
  br i1 %.not3, label %11, label %10

10:                                               ; preds = %8
  call void @abort() #5
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %8
  %12 = call i64 (i32, ...) @f3(i32 noundef 1, i64 noundef 18)
  %.not4 = icmp eq i64 %12, 19
  br i1 %.not4, label %14, label %13

13:                                               ; preds = %11
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  %15 = call i64 (i32, ...) @f3(i32 noundef 2, i64 noundef 18, i64 noundef 100)
  %.not5 = icmp eq i64 %15, 120
  br i1 %.not5, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  %18 = call i64 (i32, ...) @f3(i32 noundef 3, i64 noundef 18, i64 noundef 100, i64 noundef 300)
  %.not6 = icmp eq i64 %18, 421
  br i1 %.not6, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  %21 = call i64 (i32, ...) @f3(i32 noundef 4, i64 noundef 18, i64 noundef 71, i64 noundef 64, i64 noundef 86)
  %.not7 = icmp eq i64 %21, 243
  br i1 %.not7, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  call void (i32, ...) @f4(i32 noundef 4, double noundef 6.000000e+00, double noundef 9.000000e+00, i64 noundef 16, double noundef 1.800000e+01)
  %24 = load i64, i64* @x, align 8
  %.not8 = icmp eq i64 %24, 43
  br i1 %.not8, label %25, label %27

25:                                               ; preds = %23
  %26 = load i64, i64* @y, align 8
  %.not9 = icmp eq i64 %26, 6
  br i1 %.not9, label %28, label %27

27:                                               ; preds = %25, %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %25
  call void (i32, ...) @f4(i32 noundef 5, double noundef 7.000000e+00, double noundef 2.100000e+01, double noundef 1.000000e+00, i64 noundef 17, double noundef 1.260000e+02)
  %29 = load i64, i64* @x, align 8
  %.not10 = icmp eq i64 %29, 144
  br i1 %.not10, label %30, label %32

30:                                               ; preds = %28
  %31 = load i64, i64* @y, align 8
  %.not11 = icmp eq i64 %31, 28
  br i1 %.not11, label %33, label %32

32:                                               ; preds = %30, %28
  call void @abort() #5
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %32, %27, %22, %19, %16, %13, %10, %7, %2
  unreachable
}

attributes #0 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
