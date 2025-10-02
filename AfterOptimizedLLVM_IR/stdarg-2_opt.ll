; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/stdarg-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.A = type { i32, [1 x %struct.__va_list_tag], [2 x [1 x %struct.__va_list_tag]] }

@foo_arg = dso_local global i32 0, align 4
@gap = dso_local global [1 x %struct.__va_list_tag] zeroinitializer, align 16
@bar_arg = dso_local global i32 0, align 4
@x = dso_local global i64 0, align 8
@d = dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(i32 noundef %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %144 [
    i32 5, label %6
    i32 8, label %69
    i32 11, label %111
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
  %25 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ule i32 %27, 160
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 3
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i32 %27
  %33 = bitcast i8* %32 to double*
  %34 = add i32 %27, 16
  store i32 %34, i32* %26, align 4
  br label %40

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to double*
  %39 = getelementptr i8, i8* %37, i32 8
  store i8* %39, i8** %36, align 8
  br label %40

40:                                               ; preds = %35, %29
  %41 = phi double* [ %33, %29 ], [ %38, %35 ]
  %42 = load double, double* %41, align 8
  %43 = load i32, i32* @foo_arg, align 4
  %44 = sitofp i32 %43 to double
  %45 = fadd double %44, %42
  %46 = fptosi double %45 to i32
  store i32 %46, i32* @foo_arg, align 4
  %47 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ule i32 %49, 40
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 3
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i32 %49
  %55 = bitcast i8* %54 to i64*
  %56 = add i32 %49, 8
  store i32 %56, i32* %48, align 8
  br label %62

57:                                               ; preds = %40
  %58 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %47, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to i64*
  %61 = getelementptr i8, i8* %59, i32 8
  store i8* %61, i8** %58, align 8
  br label %62

62:                                               ; preds = %57, %51
  %63 = phi i64* [ %55, %51 ], [ %60, %57 ]
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @foo_arg, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* @foo_arg, align 4
  br label %145

69:                                               ; preds = %2
  %70 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ule i32 %72, 40
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr i8, i8* %76, i32 %72
  %78 = bitcast i8* %77 to i64*
  %79 = add i32 %72, 8
  store i32 %79, i32* %71, align 8
  br label %85

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i64*
  %84 = getelementptr i8, i8* %82, i32 8
  store i8* %84, i8** %81, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = phi i64* [ %78, %74 ], [ %83, %80 ]
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* @foo_arg, align 4
  %89 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %90 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ule i32 %91, 160
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr i8, i8* %95, i32 %91
  %97 = bitcast i8* %96 to double*
  %98 = add i32 %91, 16
  store i32 %98, i32* %90, align 4
  br label %104

99:                                               ; preds = %85
  %100 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %89, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = bitcast i8* %101 to double*
  %103 = getelementptr i8, i8* %101, i32 8
  store i8* %103, i8** %100, align 8
  br label %104

104:                                              ; preds = %99, %93
  %105 = phi double* [ %97, %93 ], [ %102, %99 ]
  %106 = load double, double* %105, align 8
  %107 = load i32, i32* @foo_arg, align 4
  %108 = sitofp i32 %107 to double
  %109 = fadd double %108, %106
  %110 = fptosi double %109 to i32
  store i32 %110, i32* @foo_arg, align 4
  br label %145

111:                                              ; preds = %2
  %112 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %113 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ule i32 %114, 40
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr i8, i8* %118, i32 %114
  %120 = bitcast i8* %119 to i32*
  %121 = add i32 %114, 8
  store i32 %121, i32* %113, align 8
  br label %127

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %112, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = getelementptr i8, i8* %124, i32 8
  store i8* %126, i8** %123, align 8
  br label %127

127:                                              ; preds = %122, %116
  %128 = phi i32* [ %120, %116 ], [ %125, %122 ]
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* @foo_arg, align 4
  %130 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = add i64 %133, 15
  %135 = and i64 %134, -16
  %136 = inttoptr i64 %135 to i8*
  %137 = bitcast i8* %136 to x86_fp80*
  %138 = getelementptr i8, i8* %136, i32 16
  store i8* %138, i8** %131, align 8
  %139 = load x86_fp80, x86_fp80* %137, align 16
  %140 = load i32, i32* @foo_arg, align 4
  %141 = sitofp i32 %140 to x86_fp80
  %142 = fadd x86_fp80 %141, %139
  %143 = fptosi x86_fp80 %142 to i32
  store i32 %143, i32* @foo_arg, align 4
  br label %145

144:                                              ; preds = %2
  call void @abort() #3
  unreachable

145:                                              ; preds = %127, %104, %62
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 16386
  br i1 %4, label %5, label %39

5:                                                ; preds = %1
  %6 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %7 = icmp ule i32 %6, 40
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %10 = getelementptr i8, i8* %9, i32 %6
  %11 = bitcast i8* %10 to i32*
  %12 = add i32 %6, 8
  store i32 %12, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %17

13:                                               ; preds = %5
  %14 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %15 = bitcast i8* %14 to i32*
  %16 = getelementptr i8, i8* %14, i32 8
  store i8* %16, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i32* [ %11, %8 ], [ %15, %13 ]
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 13
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  %23 = icmp ule i32 %22, 160
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %26 = getelementptr i8, i8* %25, i32 %22
  %27 = bitcast i8* %26 to double*
  %28 = add i32 %22, 16
  store i32 %28, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %31 = bitcast i8* %30 to double*
  %32 = getelementptr i8, i8* %30, i32 8
  store i8* %32, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi double* [ %27, %24 ], [ %31, %29 ]
  %35 = load double, double* %34, align 8
  %36 = fcmp une double %35, -1.400000e+01
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %17
  call void @abort() #3
  unreachable

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %1
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* @bar_arg, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  %3 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %4 = icmp ule i32 %3, 40
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %7 = getelementptr i8, i8* %6, i32 %3
  %8 = bitcast i8* %7 to i64*
  %9 = add i32 %3, 8
  store i32 %9, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %14

10:                                               ; preds = %1
  %11 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %12 = bitcast i8* %11 to i64*
  %13 = getelementptr i8, i8* %11, i32 8
  store i8* %13, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %14

14:                                               ; preds = %10, %5
  %15 = phi i64* [ %8, %5 ], [ %12, %10 ]
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* @x, align 8
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  %3 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %3)
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f3(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
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
  %26 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %26, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %7)
  %8 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  call void @foo(i32 noundef %7, %struct.__va_list_tag* noundef %9)
  %10 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %3, i64 0, i64 4
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f6(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ule i32 %10, 40
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %8, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr i8, i8* %14, i32 %10
  %16 = bitcast i8* %15 to i64*
  %17 = add i32 %10, 8
  store i32 %17, i32* %9, align 8
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
  %26 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %26, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %7)
  %8 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  call void @foo(i32 noundef %7, %struct.__va_list_tag* noundef %9)
  %10 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f10(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %5 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %4, i64 0, i64 1
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %9 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %8, i64 0, i64 1
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ule i32 %12, 40
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 3
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i32 %12
  %18 = bitcast i8* %17 to i64*
  %19 = add i32 %12, 8
  store i32 %19, i32* %11, align 8
  br label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i64*
  %24 = getelementptr i8, i8* %22, i32 8
  store i8* %24, i8** %21, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i64* [ %18, %14 ], [ %23, %20 ]
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* @x, align 8
  %28 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %29 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %28, i64 0, i64 1
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %29, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %5 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %4, i64 0, i64 1
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %2, align 4
  call void @bar(i32 noundef %8)
  %9 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %10 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %9, i64 0, i64 1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.A, align 8
  store i32 %0, i32* %2, align 4
  %4 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %5 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %4, i64 0, i64 1
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %2, align 4
  %9 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %10 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %9, i64 0, i64 1
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %10, i64 0, i64 0
  call void @foo(i32 noundef %8, %struct.__va_list_tag* noundef %11)
  %12 = getelementptr inbounds %struct.A, %struct.A* %3, i32 0, i32 2
  %13 = getelementptr inbounds [2 x [1 x %struct.__va_list_tag]], [2 x [1 x %struct.__va_list_tag]]* %12, i64 0, i64 1
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, ...) @f1(i32 noundef 1, i64 noundef 79)
  %2 = load i64, i64* @x, align 8
  %3 = icmp ne i64 %2, 79
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #3
  unreachable

5:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 16386, i32 noundef 13, double noundef -1.400000e+01)
  %6 = load i32, i32* @bar_arg, align 4
  %7 = icmp ne i32 %6, 16386
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  call void @abort() #3
  unreachable

9:                                                ; preds = %5
  call void (i32, ...) @f3(i32 noundef 3, i64 noundef 2031)
  %10 = load i64, i64* @x, align 8
  %11 = icmp ne i64 %10, 2031
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  call void @abort() #3
  unreachable

13:                                               ; preds = %9
  call void (i32, ...) @f4(i32 noundef 4, i32 noundef 18)
  %14 = load i32, i32* @bar_arg, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @abort() #3
  unreachable

17:                                               ; preds = %13
  call void (i32, ...) @f5(i32 noundef 5, i32 noundef 1, double noundef 1.900000e+01, i64 noundef 18)
  %18 = load i32, i32* @foo_arg, align 4
  %19 = icmp ne i32 %18, 38
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @abort() #3
  unreachable

21:                                               ; preds = %17
  call void (i32, ...) @f6(i32 noundef 6, i64 noundef 18)
  %22 = load i64, i64* @x, align 8
  %23 = icmp ne i64 %22, 18
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @abort() #3
  unreachable

25:                                               ; preds = %21
  call void (i32, ...) @f7(i32 noundef 7)
  %26 = load i32, i32* @bar_arg, align 4
  %27 = icmp ne i32 %26, 7
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @abort() #3
  unreachable

29:                                               ; preds = %25
  call void (i32, ...) @f8(i32 noundef 8, i64 noundef 2031, double noundef 1.300000e+01)
  %30 = load i32, i32* @foo_arg, align 4
  %31 = icmp ne i32 %30, 2044
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void @abort() #3
  unreachable

33:                                               ; preds = %29
  call void (i32, ...) @f10(i32 noundef 9, i64 noundef 180)
  %34 = load i64, i64* @x, align 8
  %35 = icmp ne i64 %34, 180
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @abort() #3
  unreachable

37:                                               ; preds = %33
  call void (i32, ...) @f11(i32 noundef 10)
  %38 = load i32, i32* @bar_arg, align 4
  %39 = icmp ne i32 %38, 10
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @abort() #3
  unreachable

41:                                               ; preds = %37
  call void (i32, ...) @f12(i32 noundef 11, i32 noundef 2030, x86_fp80 noundef 0xK4002C000000000000000)
  %42 = load i32, i32* @foo_arg, align 4
  %43 = icmp ne i32 %42, 2042
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @abort() #3
  unreachable

45:                                               ; preds = %41
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
