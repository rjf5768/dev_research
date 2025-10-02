; ModuleID = './stdarg-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@foo_arg = dso_local global i32 0, align 4
@gap = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@pap = dso_local global [1 x %struct.__va_list_tag]* null, align 8
@bar_arg = dso_local global i32 0, align 4
@d = dso_local global double 0.000000e+00, align 8
@x = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, %struct.__va_list_tag* nocapture noundef %1) #0 {
  switch i32 %0, label %20 [
    i32 5, label %3
  ]

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = sext i32 %5 to i64
  %11 = getelementptr i8, i8* %9, i64 %10
  %12 = add i32 %5, 8
  store i32 %12, i32* %4, align 8
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %.in = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @foo_arg, align 4
  br label %21

20:                                               ; preds = %2
  call void @abort() #5
  unreachable

21:                                               ; preds = %17
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 16390
  br i1 %2, label %3, label %34

3:                                                ; preds = %1
  %4 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  %5 = icmp ult i32 %4, 161
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %8 = sext i32 %4 to i64
  %9 = getelementptr i8, i8* %7, i64 %8
  %10 = add i32 %4, 16
  store i32 %10, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  br label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %13 = getelementptr i8, i8* %12, i64 8
  store i8* %13, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %14

14:                                               ; preds = %11, %6
  %.in3 = phi i8* [ %9, %6 ], [ %12, %11 ]
  %15 = bitcast i8* %.in3 to double*
  %16 = load double, double* %15, align 8
  %17 = fcmp une double %16, 1.700000e+01
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %20 = icmp ult i32 %19, 41
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %23 = sext i32 %19 to i64
  %24 = getelementptr i8, i8* %22, i64 %23
  %25 = add i32 %19, 8
  store i32 %25, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %29

26:                                               ; preds = %18
  %27 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %28 = getelementptr i8, i8* %27, i64 8
  store i8* %28, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %29

29:                                               ; preds = %26, %21
  %.in4 = phi i8* [ %24, %21 ], [ %27, %26 ]
  %30 = bitcast i8* %.in4 to i64*
  %31 = load i64, i64* %30, align 8
  %.not5 = icmp eq i64 %31, 129
  br i1 %.not5, label %33, label %32

32:                                               ; preds = %29, %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %29
  br label %87

34:                                               ; preds = %1
  %35 = icmp eq i32 %0, 16392
  br i1 %35, label %36, label %86

36:                                               ; preds = %34
  %37 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %37, i64 0, i64 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %39, 41
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %37, i64 0, i64 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = sext i32 %39 to i64
  %45 = getelementptr i8, i8* %43, i64 %44
  %46 = add i32 %39, 8
  store i32 %46, i32* %38, align 8
  br label %51

47:                                               ; preds = %36
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %37, i64 0, i64 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr i8, i8* %49, i64 8
  store i8* %50, i8** %48, align 8
  br label %51

51:                                               ; preds = %47, %41
  %.in = phi i8* [ %45, %41 ], [ %49, %47 ]
  %52 = bitcast i8* %.in to i64*
  %53 = load i64, i64* %52, align 8
  %.not = icmp eq i64 %53, 14
  br i1 %.not, label %54, label %84

54:                                               ; preds = %51
  %55 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %55, i64 0, i64 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = add i64 %58, 15
  %60 = and i64 %59, -16
  %61 = inttoptr i64 %60 to i8*
  %62 = inttoptr i64 %60 to x86_fp80*
  %63 = getelementptr i8, i8* %61, i64 16
  store i8* %63, i8** %56, align 8
  %64 = load x86_fp80, x86_fp80* %62, align 16
  %65 = fcmp une x86_fp80 %64, 0xK40068300000000000000
  br i1 %65, label %84, label %66

66:                                               ; preds = %54
  %67 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %67, i64 0, i64 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %69, 41
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %67, i64 0, i64 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = sext i32 %69 to i64
  %75 = getelementptr i8, i8* %73, i64 %74
  %76 = add i32 %69, 8
  store i32 %76, i32* %68, align 8
  br label %81

77:                                               ; preds = %66
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %67, i64 0, i64 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i64 8
  store i8* %80, i8** %78, align 8
  br label %81

81:                                               ; preds = %77, %71
  %.in1 = phi i8* [ %75, %71 ], [ %79, %77 ]
  %82 = bitcast i8* %.in1 to i32*
  %83 = load i32, i32* %82, align 4
  %.not2 = icmp eq i32 %83, 17
  br i1 %.not2, label %85, label %84

84:                                               ; preds = %81, %54, %51
  call void @abort() #5
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %85, %34
  br label %87

87:                                               ; preds = %86, %33
  store i32 %0, i32* @bar_arg, align 4
  ret void

UnifiedUnreachableBlock:                          ; preds = %84, %32
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local void @f0(i32 noundef %0, ...) #2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f1(i32 noundef %0, ...) #3 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %4)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load double, double* @d, align 8
  %5 = fptosi double %4 to i32
  call void @bar(i32 noundef %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %11 = load i8*, i8** %10, align 16
  %12 = sext i32 %7 to i64
  %13 = getelementptr i8, i8* %11, i64 %12
  %14 = add i32 %7, 8
  store i32 %14, i32* %6, align 16
  br label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr i8, i8* %17, i64 8
  store i8* %18, i8** %16, align 8
  br label %19

19:                                               ; preds = %15, %9
  %.in = phi i8* [ %13, %9 ], [ %17, %15 ]
  %20 = bitcast i8* %.in to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* @x, align 8
  %22 = trunc i64 %21 to i32
  call void @bar(i32 noundef %22)
  %23 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %23)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f3(i32 noundef %0, ...) #3 {
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
  store double %19, double* @d, align 8
  %20 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
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
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0
  call void @foo(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %21)
  %22 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_copy(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*), i8* nonnull %4)
  call void @bar(i32 noundef %0)
  %5 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %5)
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  %4 = load double, double* @d, align 8
  %5 = fptosi double %4 to i32
  call void @bar(i32 noundef %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %7 = load i32, i32* %6, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = add i32 %7, 8
  store i32 %10, i32* %6, align 16
  br label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i64 8
  store i8* %14, i8** %12, align 8
  br label %15

15:                                               ; preds = %11, %9
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = add i32 %17, 8
  store i32 %20, i32* %16, align 16
  br label %25

21:                                               ; preds = %15
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr i8, i8* %23, i64 8
  store i8* %24, i8** %22, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 0
  %27 = load i32, i32* %26, align 16
  %28 = icmp ult i32 %27, 41
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 3
  %31 = load i8*, i8** %30, align 16
  %32 = sext i32 %27 to i64
  %33 = getelementptr i8, i8* %31, i64 %32
  %34 = add i32 %27, 8
  store i32 %34, i32* %26, align 16
  br label %39

35:                                               ; preds = %25
  %36 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr i8, i8* %37, i64 8
  store i8* %38, i8** %36, align 8
  br label %39

39:                                               ; preds = %35, %29
  %.in = phi i8* [ %33, %29 ], [ %37, %35 ]
  %40 = bitcast i8* %.in to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* @x, align 8
  %42 = trunc i64 %41 to i32
  call void @bar(i32 noundef %42)
  %43 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %43)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** @pap, align 8
  call void @bar(i32 noundef %0)
  %4 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_start(i8* nonnull %3)
  store [1 x %struct.__va_list_tag]* %2, [1 x %struct.__va_list_tag]** @pap, align 8
  call void @bar(i32 noundef %0)
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
  store double %19, double* @d, align 8
  %20 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*
  call void @llvm.va_end(i8* %20)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @f1(i32 noundef 2)
  store double 3.100000e+01, double* @d, align 8
  call void (i32, ...) @f2(i32 noundef 3, i64 noundef 28)
  %1 = load i32, i32* @bar_arg, align 4
  %.not = icmp eq i32 %1, 28
  br i1 %.not, label %2, label %4

2:                                                ; preds = %0
  %3 = load i64, i64* @x, align 8
  %.not1 = icmp eq i64 %3, 28
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %2, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %2
  call void (i32, ...) @f3(i32 noundef 4, double noundef 1.310000e+02)
  %6 = load double, double* @d, align 8
  %7 = fcmp une double %6, 1.310000e+02
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #5
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %5
  call void (i32, ...) @f4(i32 noundef 5, double noundef 1.600000e+01, i32 noundef 128)
  %10 = load i64, i64* @x, align 8
  %.not2 = icmp eq i64 %10, 16
  br i1 %.not2, label %11, label %13

11:                                               ; preds = %9
  %12 = load i32, i32* @foo_arg, align 4
  %.not3 = icmp eq i32 %12, 128
  br i1 %.not3, label %14, label %13

13:                                               ; preds = %11, %9
  call void @abort() #5
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  call void (i32, ...) @f5(i32 noundef 16390, double noundef 1.700000e+01, i64 noundef 129)
  %15 = load i32, i32* @bar_arg, align 4
  %.not4 = icmp eq i32 %15, 16390
  br i1 %.not4, label %17, label %16

16:                                               ; preds = %14
  call void @abort() #5
  br label %UnifiedUnreachableBlock

17:                                               ; preds = %14
  call void (i32, ...) @f6(i32 noundef 7, i64 noundef 12, i64 noundef 14, i64 noundef -31)
  %18 = load i32, i32* @bar_arg, align 4
  %.not5 = icmp eq i32 %18, -31
  br i1 %.not5, label %20, label %19

19:                                               ; preds = %17
  call void @abort() #5
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %17
  call void (i32, ...) @f7(i32 noundef 16392, i64 noundef 14, x86_fp80 noundef 0xK40068300000000000000, i32 noundef 17, double noundef 2.600000e+01)
  %21 = load i32, i32* @bar_arg, align 4
  %.not6 = icmp eq i32 %21, 16392
  br i1 %.not6, label %23, label %22

22:                                               ; preds = %20
  call void @abort() #5
  br label %UnifiedUnreachableBlock

23:                                               ; preds = %20
  call void (i32, ...) @f8(i32 noundef 16392, i64 noundef 14, x86_fp80 noundef 0xK40068300000000000000, i32 noundef 17, double noundef 2.700000e+01)
  %24 = load i32, i32* @bar_arg, align 4
  %.not7 = icmp eq i32 %24, 16392
  br i1 %.not7, label %25, label %28

25:                                               ; preds = %23
  %26 = load double, double* @d, align 8
  %27 = fcmp une double %26, 2.700000e+01
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %23
  call void @abort() #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %25
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %28, %22, %19, %16, %13, %8, %4
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
