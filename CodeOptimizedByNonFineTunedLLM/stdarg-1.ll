; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-1.c'
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
define dso_local void @foo(i32 noundef %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %25 [
    i32 5, label %6
  ]

6:                                                ; preds = %2
  %7 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 8
  br label %22

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32* [ %15, %11 ], [ %20, %17 ]
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* @foo_arg, align 4
  br label %26

25:                                               ; preds = %2
  call void @abort() #3
  unreachable

26:                                               ; preds = %22
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16390
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  %7 = icmp ule i32 %6, 160
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %10 = getelementptr i8, i8* %9, i32 %6
  %11 = bitcast i8* %10 to double*
  %12 = add i32 %6, 16
  store i32 %12, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  br label %17

13:                                               ; preds = %5
  %14 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %15 = bitcast i8* %14 to double*
  %16 = getelementptr i8, i8* %14, i32 8
  store i8* %16, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi double* [ %11, %8 ], [ %15, %13 ]
  %19 = load double, double* %18, align 8
  %20 = fcmp une double %19, 1.700000e+01
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %23 = icmp ule i32 %22, 40
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %26 = getelementptr i8, i8* %25, i32 %22
  %27 = bitcast i8* %26 to i64*
  %28 = add i32 %22, 8
  store i32 %28, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %33

29:                                               ; preds = %21
  %30 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %31 = bitcast i8* %30 to i64*
  %32 = getelementptr i8, i8* %30, i32 8
  store i8* %32, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i64* [ %27, %24 ], [ %31, %29 ]
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 129
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %17
  call void @abort() #3
  unreachable

38:                                               ; preds = %33
  br label %100

39:                                               ; preds = %1
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 16392
  br i1 %41, label %42, label %99

42:                                               ; preds = %39
  %43 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %43, i64 0, i64 0
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ule i32 %46, 40
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr i8, i8* %50, i32 %46
  %52 = bitcast i8* %51 to i64*
  %53 = add i32 %46, 8
  store i32 %53, i32* %45, align 8
  br label %59

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i64*
  %58 = getelementptr i8, i8* %56, i32 8
  store i8* %58, i8** %55, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i64* [ %52, %48 ], [ %57, %54 ]
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 14
  br i1 %62, label %97, label %63

63:                                               ; preds = %59
  %64 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %64, i64 0, i64 0
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = add i64 %68, 15
  %70 = and i64 %69, -16
  %71 = inttoptr i64 %70 to i8*
  %72 = bitcast i8* %71 to x86_fp80*
  %73 = getelementptr i8, i8* %71, i32 16
  store i8* %73, i8** %66, align 8
  %74 = load x86_fp80, x86_fp80* %72, align 16
  %75 = fcmp une x86_fp80 %74, 0xK40068300000000000000
  br i1 %75, label %97, label %76

76:                                               ; preds = %63
  %77 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** @pap, align 8
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %77, i64 0, i64 0
  %79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ule i32 %80, 40
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr i8, i8* %84, i32 %80
  %86 = bitcast i8* %85 to i32*
  %87 = add i32 %80, 8
  store i32 %87, i32* %79, align 8
  br label %93

88:                                               ; preds = %76
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr i8, i8* %90, i32 8
  store i8* %92, i8** %89, align 8
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i32* [ %86, %82 ], [ %91, %88 ]
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 17
  br i1 %96, label %97, label %98

97:                                               ; preds = %93, %63, %59
  call void @abort() #3
  unreachable

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %39
  br label %100

100:                                              ; preds = %99, %38
  %101 = load i32, i32* %2, align 4
  store i32 %101, i32* @bar_arg, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f0(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
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
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load double, double* @d, align 8
  %7 = fptosi double %6 to i32
  call void @bar(i32 noundef %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ule i32 %10, 40
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = getelementptr i8, i8* %14, i32 %10
  %16 = bitcast i8* %15 to i64*
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 16
  br label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i64*
  %22 = getelementptr i8, i8* %20, i32 8
  store i8* %22, i8** %19, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i64* [ %16, %12 ], [ %21, %18 ]
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* @x, align 8
  %26 = load i64, i64* @x, align 8
  %27 = trunc i64 %26 to i32
  call void @bar(i32 noundef %27)
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = bitcast %struct.__va_list_tag* %28 to i8*
  call void @llvm.va_end(i8* %29)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ule i32 %8, 160
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = getelementptr i8, i8* %12, i32 %8
  %14 = bitcast i8* %13 to double*
  %15 = add i32 %8, 16
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to double*
  %20 = getelementptr i8, i8* %18, i32 8
  store i8* %20, i8** %17, align 8
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi double* [ %14, %10 ], [ %19, %16 ]
  %23 = load double, double* %22, align 8
  store double %23, double* @d, align 8
  %24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %25 = bitcast %struct.__va_list_tag* %24 to i8*
  call void @llvm.va_end(i8* %25)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ule i32 %8, 160
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 3
  %12 = load i8*, i8** %11, align 16
  %13 = getelementptr i8, i8* %12, i32 %8
  %14 = bitcast i8* %13 to double*
  %15 = add i32 %8, 16
  store i32 %15, i32* %7, align 4
  br label %21

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %6, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to double*
  %20 = getelementptr i8, i8* %18, i32 8
  store i8* %20, i8** %17, align 8
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi double* [ %14, %10 ], [ %19, %16 ]
  %23 = load double, double* %22, align 8
  %24 = fptosi double %23 to i64
  store i64 %24, i64* @x, align 8
  %25 = load i32, i32* %2, align 4
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @foo(i32 noundef %25, %struct.__va_list_tag* noundef %26)
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
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
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_copy(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*), i8* %7)
  %8 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load double, double* @d, align 8
  %7 = fptosi double %6 to i32
  call void @bar(i32 noundef %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp ule i32 %10, 40
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 3
  %14 = load i8*, i8** %13, align 16
  %15 = getelementptr i8, i8* %14, i32 %10
  %16 = bitcast i8* %15 to i64*
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 16
  br label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to i64*
  %22 = getelementptr i8, i8* %20, i32 8
  store i8* %22, i8** %19, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i64* [ %16, %12 ], [ %21, %18 ]
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ule i32 %28, 40
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = getelementptr i8, i8* %32, i32 %28
  %34 = bitcast i8* %33 to i64*
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %41

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = getelementptr i8, i8* %38, i32 8
  store i8* %40, i8** %37, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i64* [ %34, %30 ], [ %39, %36 ]
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp ule i32 %46, 40
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 3
  %50 = load i8*, i8** %49, align 16
  %51 = getelementptr i8, i8* %50, i32 %46
  %52 = bitcast i8* %51 to i64*
  %53 = add i32 %46, 8
  store i32 %53, i32* %45, align 16
  br label %59

54:                                               ; preds = %41
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i64*
  %58 = getelementptr i8, i8* %56, i32 8
  store i8* %58, i8** %55, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i64* [ %52, %48 ], [ %57, %54 ]
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* @x, align 8
  %62 = load i64, i64* @x, align 8
  %63 = trunc i64 %62 to i32
  call void @bar(i32 noundef %63)
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %65 = bitcast %struct.__va_list_tag* %64 to i8*
  call void @llvm.va_end(i8* %65)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  store [1 x %struct.__va_list_tag]* %3, [1 x %struct.__va_list_tag]** @pap, align 8
  %6 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = bitcast %struct.__va_list_tag* %7 to i8*
  call void @llvm.va_end(i8* %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  store [1 x %struct.__va_list_tag]* %3, [1 x %struct.__va_list_tag]** @pap, align 8
  %6 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ule i32 %9, 160
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to double*
  %16 = add i32 %9, 16
  store i32 %16, i32* %8, align 4
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to double*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi double* [ %15, %11 ], [ %20, %17 ]
  %24 = load double, double* %23, align 8
  store double %24, double* @d, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %26 = bitcast %struct.__va_list_tag* %25 to i8*
  call void @llvm.va_end(i8* %26)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @f0(i32 noundef 1)
  call void (i32, ...) @f1(i32 noundef 2)
  store double 3.100000e+01, double* @d, align 8
  call void (i32, ...) @f2(i32 noundef 3, i64 noundef 28)
  %2 = load i32, i32* @bar_arg, align 4
  %3 = icmp ne i32 %2, 28
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i64, i64* @x, align 8
  %6 = icmp ne i64 %5, 28
  br i1 %6, label %7, label %8

7:                                                ; preds = %4, %0
  call void @abort() #3
  unreachable

8:                                                ; preds = %4
  call void (i32, ...) @f3(i32 noundef 4, double noundef 1.310000e+02)
  %9 = load double, double* @d, align 8
  %10 = fcmp une double %9, 1.310000e+02
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @abort() #3
  unreachable

12:                                               ; preds = %8
  call void (i32, ...) @f4(i32 noundef 5, double noundef 1.600000e+01, i32 noundef 128)
  %13 = load i64, i64* @x, align 8
  %14 = icmp ne i64 %13, 16
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @foo_arg, align 4
  %17 = icmp ne i32 %16, 128
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  call void @abort() #3
  unreachable

19:                                               ; preds = %15
  call void (i32, ...) @f5(i32 noundef 16390, double noundef 1.700000e+01, i64 noundef 129)
  %20 = load i32, i32* @bar_arg, align 4
  %21 = icmp ne i32 %20, 16390
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @abort() #3
  unreachable

23:                                               ; preds = %19
  call void (i32, ...) @f6(i32 noundef 7, i64 noundef 12, i64 noundef 14, i64 noundef -31)
  %24 = load i32, i32* @bar_arg, align 4
  %25 = icmp ne i32 %24, -31
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @abort() #3
  unreachable

27:                                               ; preds = %23
  call void (i32, ...) @f7(i32 noundef 16392, i64 noundef 14, x86_fp80 noundef 0xK40068300000000000000, i32 noundef 17, double noundef 2.600000e+01)
  %28 = load i32, i32* @bar_arg, align 4
  %29 = icmp ne i32 %28, 16392
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void @abort() #3
  unreachable

31:                                               ; preds = %27
  call void (i32, ...) @f8(i32 noundef 16392, i64 noundef 14, x86_fp80 noundef 0xK40068300000000000000, i32 noundef 17, double noundef 2.700000e+01)
  %32 = load i32, i32* @bar_arg, align 4
  %33 = icmp ne i32 %32, 16392
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load double, double* @d, align 8
  %36 = fcmp une double %35, 2.700000e+01
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  call void @abort() #3
  unreachable

38:                                               ; preds = %34
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
