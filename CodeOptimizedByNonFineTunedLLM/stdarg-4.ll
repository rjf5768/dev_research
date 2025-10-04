; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-4.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@y = dso_local global i64 0, align 8
@x = dso_local global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  store %struct.__va_list_tag* %7, %struct.__va_list_tag** %2, align 8
  %8 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ule i32 %10, 160
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr i8, i8* %14, i32 %10
  %16 = bitcast i8* %15 to double*
  %17 = add i32 %10, 16
  store i32 %17, i32* %9, align 4
  br label %23

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = bitcast i8* %20 to double*
  %22 = getelementptr i8, i8* %20, i32 8
  store i8* %22, i8** %19, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi double* [ %16, %12 ], [ %21, %18 ]
  %25 = load double, double* %24, align 8
  %26 = fptosi double %25 to i64
  store i64 %26, i64* @x, align 8
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ule i32 %29, 40
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i32 %29
  %35 = bitcast i8* %34 to i64*
  %36 = add i32 %29, 8
  store i32 %36, i32* %28, align 8
  br label %42

37:                                               ; preds = %23
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i64*
  %41 = getelementptr i8, i8* %39, i32 8
  store i8* %41, i8** %38, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i64* [ %35, %31 ], [ %40, %37 ]
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @x, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @x, align 8
  %47 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ule i32 %49, 160
  br i1 %50, label %51, label %57

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i32 %49
  %55 = bitcast i8* %54 to double*
  %56 = add i32 %49, 16
  store i32 %56, i32* %48, align 4
  br label %62

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to double*
  %61 = getelementptr i8, i8* %59, i32 8
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %51, %57
  %63 = phi double* [ %55, %51 ], [ %60, %57 ]
  %64 = load double, double* %63, align 8
  %65 = load i64, i64* @x, align 8
  %66 = sitofp i64 %65 to double
  %67 = fadd double %66, %64
  %68 = fptosi double %67 to i64
  store i64 %68, i64* @x, align 8
  %69 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %70 = bitcast %struct.__va_list_tag* %69 to i8*
  call void @llvm.va_end(i8* %70)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  %3 = alloca %struct.__va_list_tag*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %4, align 4
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  store %struct.__va_list_tag* %8, %struct.__va_list_tag** %3, align 8
  %9 = load %struct.__va_list_tag*, %struct.__va_list_tag** %3, align 8
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ule i32 %11, 40
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr i8, i8* %15, i32 %11
  %17 = bitcast i8* %16 to i32*
  %18 = add i32 %11, 8
  store i32 %18, i32* %10, align 8
  br label %24

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = getelementptr i8, i8* %21, i32 8
  store i8* %23, i8** %20, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i32* [ %17, %13 ], [ %22, %19 ]
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* @y, align 8
  %28 = load %struct.__va_list_tag*, %struct.__va_list_tag** %3, align 8
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i64*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 8
  br label %43

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i64* [ %36, %32 ], [ %41, %38 ]
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @y, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* @y, align 8
  %48 = load %struct.__va_list_tag*, %struct.__va_list_tag** %3, align 8
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ule i32 %50, 160
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr i8, i8* %54, i32 %50
  %56 = bitcast i8* %55 to double*
  %57 = add i32 %50, 16
  store i32 %57, i32* %49, align 4
  br label %63

58:                                               ; preds = %43
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to double*
  %62 = getelementptr i8, i8* %60, i32 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi double* [ %56, %52 ], [ %61, %58 ]
  %65 = load double, double* %64, align 8
  %66 = load i64, i64* @y, align 8
  %67 = sitofp i64 %66 to double
  %68 = fadd double %67, %65
  %69 = fptosi double %68 to i64
  store i64 %69, i64* @y, align 8
  %70 = load %struct.__va_list_tag*, %struct.__va_list_tag** %3, align 8
  store %struct.__va_list_tag* %70, %struct.__va_list_tag** %2, align 8
  %71 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ule i32 %73, 160
  br i1 %74, label %75, label %81

75:                                               ; preds = %63
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %71, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr i8, i8* %77, i32 %73
  %79 = bitcast i8* %78 to double*
  %80 = add i32 %73, 16
  store i32 %80, i32* %72, align 4
  br label %86

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %71, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to double*
  %85 = getelementptr i8, i8* %83, i32 8
  store i8* %85, i8** %82, align 8
  br label %86

86:                                               ; preds = %81, %75
  %87 = phi double* [ %79, %75 ], [ %84, %81 ]
  %88 = load double, double* %87, align 8
  %89 = fptosi double %88 to i64
  store i64 %89, i64* @x, align 8
  %90 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ule i32 %92, 40
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr i8, i8* %96, i32 %92
  %98 = bitcast i8* %97 to i64*
  %99 = add i32 %92, 8
  store i32 %99, i32* %91, align 8
  br label %105

100:                                              ; preds = %86
  %101 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %90, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = bitcast i8* %102 to i64*
  %104 = getelementptr i8, i8* %102, i32 8
  store i8* %104, i8** %101, align 8
  br label %105

105:                                              ; preds = %100, %94
  %106 = phi i64* [ %98, %94 ], [ %103, %100 ]
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @x, align 8
  %109 = add nsw i64 %108, %107
  store i64 %109, i64* @x, align 8
  %110 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %111 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ule i32 %112, 160
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %110, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr i8, i8* %116, i32 %112
  %118 = bitcast i8* %117 to double*
  %119 = add i32 %112, 16
  store i32 %119, i32* %111, align 4
  br label %125

120:                                              ; preds = %105
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %110, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = bitcast i8* %122 to double*
  %124 = getelementptr i8, i8* %122, i32 8
  store i8* %124, i8** %121, align 8
  br label %125

125:                                              ; preds = %114, %120
  %126 = phi double* [ %118, %114 ], [ %123, %120 ]
  %127 = load double, double* %126, align 8
  %128 = load i64, i64* @x, align 8
  %129 = sitofp i64 %128 to double
  %130 = fadd double %129, %127
  %131 = fptosi double %130 to i64
  store i64 %131, i64* @x, align 8
  %132 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %133 = bitcast %struct.__va_list_tag* %132 to i8*
  call void @llvm.va_end(i8* %133)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3h(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* %8, align 8
  %16 = add nsw i64 %14, %15
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %18, %19
  ret i64 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @f3(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %2, align 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_start(i8* %10)
  %11 = load i32, i32* %2, align 4
  switch i32 %11, label %217 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %37
    i32 3, label %78
    i32 4, label %138
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @f3h(i32 noundef %13, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  store i64 %14, i64* %3, align 8
  br label %218

15:                                               ; preds = %1
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 16
  %19 = icmp ule i32 %18, 40
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 3
  %22 = load i8*, i8** %21, align 16
  %23 = getelementptr i8, i8* %22, i32 %18
  %24 = bitcast i8* %23 to i64*
  %25 = add i32 %18, 8
  store i32 %25, i32* %17, align 16
  br label %31

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %16, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i64*
  %30 = getelementptr i8, i8* %28, i32 8
  store i8* %30, i8** %27, align 8
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i64* [ %24, %20 ], [ %29, %26 ]
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @f3h(i32 noundef %34, i64 noundef %35, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  store i64 %36, i64* %3, align 8
  br label %218

37:                                               ; preds = %1
  %38 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 16
  %41 = icmp ule i32 %40, 40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 3
  %44 = load i8*, i8** %43, align 16
  %45 = getelementptr i8, i8* %44, i32 %40
  %46 = bitcast i8* %45 to i64*
  %47 = add i32 %40, 8
  store i32 %47, i32* %39, align 16
  br label %53

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %38, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = getelementptr i8, i8* %50, i32 8
  store i8* %52, i8** %49, align 8
  br label %53

53:                                               ; preds = %48, %42
  %54 = phi i64* [ %46, %42 ], [ %51, %48 ]
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %4, align 8
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 16
  %59 = icmp ule i32 %58, 40
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 3
  %62 = load i8*, i8** %61, align 16
  %63 = getelementptr i8, i8* %62, i32 %58
  %64 = bitcast i8* %63 to i64*
  %65 = add i32 %58, 8
  store i32 %65, i32* %57, align 16
  br label %71

66:                                               ; preds = %53
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %56, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i64*
  %70 = getelementptr i8, i8* %68, i32 8
  store i8* %70, i8** %67, align 8
  br label %71

71:                                               ; preds = %66, %60
  %72 = phi i64* [ %64, %60 ], [ %69, %66 ]
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %5, align 8
  %74 = load i32, i32* %2, align 4
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @f3h(i32 noundef %74, i64 noundef %75, i64 noundef %76, i64 noundef 0, i64 noundef 0)
  store i64 %77, i64* %3, align 8
  br label %218

78:                                               ; preds = %1
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  %82 = icmp ule i32 %81, 40
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 3
  %85 = load i8*, i8** %84, align 16
  %86 = getelementptr i8, i8* %85, i32 %81
  %87 = bitcast i8* %86 to i64*
  %88 = add i32 %81, 8
  store i32 %88, i32* %80, align 16
  br label %94

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %79, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = bitcast i8* %91 to i64*
  %93 = getelementptr i8, i8* %91, i32 8
  store i8* %93, i8** %90, align 8
  br label %94

94:                                               ; preds = %89, %83
  %95 = phi i64* [ %87, %83 ], [ %92, %89 ]
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %4, align 8
  %97 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %98 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 16
  %100 = icmp ule i32 %99, 40
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 3
  %103 = load i8*, i8** %102, align 16
  %104 = getelementptr i8, i8* %103, i32 %99
  %105 = bitcast i8* %104 to i64*
  %106 = add i32 %99, 8
  store i32 %106, i32* %98, align 16
  br label %112

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %97, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = bitcast i8* %109 to i64*
  %111 = getelementptr i8, i8* %109, i32 8
  store i8* %111, i8** %108, align 8
  br label %112

112:                                              ; preds = %107, %101
  %113 = phi i64* [ %105, %101 ], [ %110, %107 ]
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  %115 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %116 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 16
  %118 = icmp ule i32 %117, 40
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 3
  %121 = load i8*, i8** %120, align 16
  %122 = getelementptr i8, i8* %121, i32 %117
  %123 = bitcast i8* %122 to i64*
  %124 = add i32 %117, 8
  store i32 %124, i32* %116, align 16
  br label %130

125:                                              ; preds = %112
  %126 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %115, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = bitcast i8* %127 to i64*
  %129 = getelementptr i8, i8* %127, i32 8
  store i8* %129, i8** %126, align 8
  br label %130

130:                                              ; preds = %125, %119
  %131 = phi i64* [ %123, %119 ], [ %128, %125 ]
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %6, align 8
  %133 = load i32, i32* %2, align 4
  %134 = load i64, i64* %4, align 8
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i64 @f3h(i32 noundef %133, i64 noundef %134, i64 noundef %135, i64 noundef %136, i64 noundef 0)
  store i64 %137, i64* %3, align 8
  br label %218

138:                                              ; preds = %1
  %139 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %140 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 16
  %142 = icmp ule i32 %141, 40
  br i1 %142, label %143, label %149

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %139, i32 0, i32 3
  %145 = load i8*, i8** %144, align 16
  %146 = getelementptr i8, i8* %145, i32 %141
  %147 = bitcast i8* %146 to i64*
  %148 = add i32 %141, 8
  store i32 %148, i32* %140, align 16
  br label %154

149:                                              ; preds = %138
  %150 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %139, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = bitcast i8* %151 to i64*
  %153 = getelementptr i8, i8* %151, i32 8
  store i8* %153, i8** %150, align 8
  br label %154

154:                                              ; preds = %149, %143
  %155 = phi i64* [ %147, %143 ], [ %152, %149 ]
  %156 = load i64, i64* %155, align 8
  store i64 %156, i64* %4, align 8
  %157 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %158 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 16
  %160 = icmp ule i32 %159, 40
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %157, i32 0, i32 3
  %163 = load i8*, i8** %162, align 16
  %164 = getelementptr i8, i8* %163, i32 %159
  %165 = bitcast i8* %164 to i64*
  %166 = add i32 %159, 8
  store i32 %166, i32* %158, align 16
  br label %172

167:                                              ; preds = %154
  %168 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %157, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = bitcast i8* %169 to i64*
  %171 = getelementptr i8, i8* %169, i32 8
  store i8* %171, i8** %168, align 8
  br label %172

172:                                              ; preds = %167, %161
  %173 = phi i64* [ %165, %161 ], [ %170, %167 ]
  %174 = load i64, i64* %173, align 8
  store i64 %174, i64* %5, align 8
  %175 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %176 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 16
  %178 = icmp ule i32 %177, 40
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %175, i32 0, i32 3
  %181 = load i8*, i8** %180, align 16
  %182 = getelementptr i8, i8* %181, i32 %177
  %183 = bitcast i8* %182 to i64*
  %184 = add i32 %177, 8
  store i32 %184, i32* %176, align 16
  br label %190

185:                                              ; preds = %172
  %186 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %175, i32 0, i32 2
  %187 = load i8*, i8** %186, align 8
  %188 = bitcast i8* %187 to i64*
  %189 = getelementptr i8, i8* %187, i32 8
  store i8* %189, i8** %186, align 8
  br label %190

190:                                              ; preds = %185, %179
  %191 = phi i64* [ %183, %179 ], [ %188, %185 ]
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %6, align 8
  %193 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 16
  %196 = icmp ule i32 %195, 40
  br i1 %196, label %197, label %203

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %193, i32 0, i32 3
  %199 = load i8*, i8** %198, align 16
  %200 = getelementptr i8, i8* %199, i32 %195
  %201 = bitcast i8* %200 to i64*
  %202 = add i32 %195, 8
  store i32 %202, i32* %194, align 16
  br label %208

203:                                              ; preds = %190
  %204 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %193, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = bitcast i8* %205 to i64*
  %207 = getelementptr i8, i8* %205, i32 8
  store i8* %207, i8** %204, align 8
  br label %208

208:                                              ; preds = %203, %197
  %209 = phi i64* [ %201, %197 ], [ %206, %203 ]
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %7, align 8
  %211 = load i32, i32* %2, align 4
  %212 = load i64, i64* %4, align 8
  %213 = load i64, i64* %5, align 8
  %214 = load i64, i64* %6, align 8
  %215 = load i64, i64* %7, align 8
  %216 = call i64 @f3h(i32 noundef %211, i64 noundef %212, i64 noundef %213, i64 noundef %214, i64 noundef %215)
  store i64 %216, i64* %3, align 8
  br label %218

217:                                              ; preds = %1
  call void @abort() #3
  unreachable

218:                                              ; preds = %208, %130, %71, %31, %12
  %219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %220 = bitcast %struct.__va_list_tag* %219 to i8*
  call void @llvm.va_end(i8* %220)
  %221 = load i64, i64* %3, align 8
  ret i64 %221
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.__va_list_tag*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %70 [
    i32 4, label %8
    i32 5, label %28
  ]

8:                                                ; preds = %1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ule i32 %11, 160
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 3
  %15 = load i8*, i8** %14, align 16
  %16 = getelementptr i8, i8* %15, i32 %11
  %17 = bitcast i8* %16 to double*
  %18 = add i32 %11, 16
  store i32 %18, i32* %10, align 4
  br label %24

19:                                               ; preds = %8
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %9, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to double*
  %23 = getelementptr i8, i8* %21, i32 8
  store i8* %23, i8** %20, align 8
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi double* [ %17, %13 ], [ %22, %19 ]
  %26 = load double, double* %25, align 8
  %27 = fptosi double %26 to i64
  store i64 %27, i64* @y, align 8
  br label %71

28:                                               ; preds = %1
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ule i32 %31, 160
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 3
  %35 = load i8*, i8** %34, align 16
  %36 = getelementptr i8, i8* %35, i32 %31
  %37 = bitcast i8* %36 to double*
  %38 = add i32 %31, 16
  store i32 %38, i32* %30, align 4
  br label %44

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %29, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = bitcast i8* %41 to double*
  %43 = getelementptr i8, i8* %41, i32 8
  store i8* %43, i8** %40, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi double* [ %37, %33 ], [ %42, %39 ]
  %46 = load double, double* %45, align 8
  %47 = fptosi double %46 to i64
  store i64 %47, i64* @y, align 8
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ule i32 %50, 160
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 3
  %54 = load i8*, i8** %53, align 16
  %55 = getelementptr i8, i8* %54, i32 %50
  %56 = bitcast i8* %55 to double*
  %57 = add i32 %50, 16
  store i32 %57, i32* %49, align 4
  br label %63

58:                                               ; preds = %44
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %48, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = bitcast i8* %60 to double*
  %62 = getelementptr i8, i8* %60, i32 8
  store i8* %62, i8** %59, align 8
  br label %63

63:                                               ; preds = %58, %52
  %64 = phi double* [ %56, %52 ], [ %61, %58 ]
  %65 = load double, double* %64, align 8
  %66 = load i64, i64* @y, align 8
  %67 = sitofp i64 %66 to double
  %68 = fadd double %67, %65
  %69 = fptosi double %68 to i64
  store i64 %69, i64* @y, align 8
  br label %71

70:                                               ; preds = %1
  call void @abort() #3
  unreachable

71:                                               ; preds = %63, %24
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  store %struct.__va_list_tag* %72, %struct.__va_list_tag** %2, align 8
  %73 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ule i32 %75, 160
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %73, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr i8, i8* %79, i32 %75
  %81 = bitcast i8* %80 to double*
  %82 = add i32 %75, 16
  store i32 %82, i32* %74, align 4
  br label %88

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %73, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = bitcast i8* %85 to double*
  %87 = getelementptr i8, i8* %85, i32 8
  store i8* %87, i8** %84, align 8
  br label %88

88:                                               ; preds = %83, %77
  %89 = phi double* [ %81, %77 ], [ %86, %83 ]
  %90 = load double, double* %89, align 8
  %91 = fptosi double %90 to i64
  store i64 %91, i64* @x, align 8
  %92 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ule i32 %94, 40
  br i1 %95, label %96, label %102

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 3
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr i8, i8* %98, i32 %94
  %100 = bitcast i8* %99 to i64*
  %101 = add i32 %94, 8
  store i32 %101, i32* %93, align 8
  br label %107

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %92, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i64*
  %106 = getelementptr i8, i8* %104, i32 8
  store i8* %106, i8** %103, align 8
  br label %107

107:                                              ; preds = %102, %96
  %108 = phi i64* [ %100, %96 ], [ %105, %102 ]
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @x, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* @x, align 8
  %112 = load %struct.__va_list_tag*, %struct.__va_list_tag** %2, align 8
  %113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ule i32 %114, 160
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr i8, i8* %118, i32 %114
  %120 = bitcast i8* %119 to double*
  %121 = add i32 %114, 16
  store i32 %121, i32* %113, align 4
  br label %127

122:                                              ; preds = %107
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to double*
  %126 = getelementptr i8, i8* %124, i32 8
  store i8* %126, i8** %123, align 8
  br label %127

127:                                              ; preds = %116, %122
  %128 = phi double* [ %120, %116 ], [ %125, %122 ]
  %129 = load double, double* %128, align 8
  %130 = load i64, i64* @x, align 8
  %131 = sitofp i64 %130 to double
  %132 = fadd double %131, %129
  %133 = fptosi double %132 to i64
  store i64 %133, i64* @x, align 8
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %135 = bitcast %struct.__va_list_tag* %134 to i8*
  call void @llvm.va_end(i8* %135)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @f1(i32 noundef 3, double noundef 1.600000e+01, i64 noundef 128, double noundef 3.200000e+01)
  %2 = load i64, i64* @x, align 8
  %3 = icmp ne i64 %2, 176
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 6, i32 noundef 5, i64 noundef 7, double noundef 1.800000e+01, double noundef 1.900000e+01, i64 noundef 17, double noundef 6.400000e+01)
  %6 = load i64, i64* @x, align 8
  %7 = icmp ne i64 %6, 100
  br i1 %7, label %11, label %8

8:                                                ; preds = %5
  %9 = load i64, i64* @y, align 8
  %10 = icmp ne i64 %9, 30
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %5
  call void @abort() #3
  unreachable

12:                                               ; preds = %8
  %13 = call i64 (i32, ...) @f3(i32 noundef 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  call void @abort() #3
  unreachable

16:                                               ; preds = %12
  %17 = call i64 (i32, ...) @f3(i32 noundef 1, i64 noundef 18)
  %18 = icmp ne i64 %17, 19
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @abort() #3
  unreachable

20:                                               ; preds = %16
  %21 = call i64 (i32, ...) @f3(i32 noundef 2, i64 noundef 18, i64 noundef 100)
  %22 = icmp ne i64 %21, 120
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @abort() #3
  unreachable

24:                                               ; preds = %20
  %25 = call i64 (i32, ...) @f3(i32 noundef 3, i64 noundef 18, i64 noundef 100, i64 noundef 300)
  %26 = icmp ne i64 %25, 421
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  call void @abort() #3
  unreachable

28:                                               ; preds = %24
  %29 = call i64 (i32, ...) @f3(i32 noundef 4, i64 noundef 18, i64 noundef 71, i64 noundef 64, i64 noundef 86)
  %30 = icmp ne i64 %29, 243
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @abort() #3
  unreachable

32:                                               ; preds = %28
  call void (i32, ...) @f4(i32 noundef 4, double noundef 6.000000e+00, double noundef 9.000000e+00, i64 noundef 16, double noundef 1.800000e+01)
  %33 = load i64, i64* @x, align 8
  %34 = icmp ne i64 %33, 43
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @y, align 8
  %37 = icmp ne i64 %36, 6
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  call void @abort() #3
  unreachable

39:                                               ; preds = %35
  call void (i32, ...) @f4(i32 noundef 5, double noundef 7.000000e+00, double noundef 2.100000e+01, double noundef 1.000000e+00, i64 noundef 17, double noundef 1.260000e+02)
  %40 = load i64, i64* @x, align 8
  %41 = icmp ne i64 %40, 144
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* @y, align 8
  %44 = icmp ne i64 %43, 28
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39
  call void @abort() #3
  unreachable

46:                                               ; preds = %42
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
