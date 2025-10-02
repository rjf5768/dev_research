; ModuleID = './stdarg-2.ll'
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
define dso_local void @foo(i32 noundef %0, %struct.__va_list_tag* nocapture noundef %1) #0 {
  switch i32 %0, label %127 [
    i32 5, label %3
    i32 8, label %59
    i32 11, label %97
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
  %.in3 = phi i8* [ %11, %7 ], [ %15, %13 ]
  %18 = bitcast i8* %.in3 to i32*
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* @foo_arg, align 4
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %21, 161
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %25 = load i8*, i8** %24, align 8
  %26 = sext i32 %21 to i64
  %27 = getelementptr i8, i8* %25, i64 %26
  %28 = add i32 %21, 16
  store i32 %28, i32* %20, align 4
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr i8, i8* %31, i64 8
  store i8* %32, i8** %30, align 8
  br label %33

33:                                               ; preds = %29, %23
  %.in4 = phi i8* [ %27, %23 ], [ %31, %29 ]
  %34 = bitcast i8* %.in4 to double*
  %35 = load double, double* %34, align 8
  %36 = load i32, i32* @foo_arg, align 4
  %37 = sitofp i32 %36 to double
  %38 = fadd double %35, %37
  %39 = fptosi double %38 to i32
  store i32 %39, i32* @foo_arg, align 4
  %40 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = sext i32 %41 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  %48 = add i32 %41, 8
  store i32 %48, i32* %40, align 8
  br label %53

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %.in5 = phi i8* [ %47, %43 ], [ %51, %49 ]
  %54 = bitcast i8* %.in5 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @foo_arg, align 4
  %57 = trunc i64 %55 to i32
  %58 = add i32 %56, %57
  store i32 %58, i32* @foo_arg, align 4
  br label %128

59:                                               ; preds = %2
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %61, 41
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = sext i32 %61 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  %68 = add i32 %61, 8
  store i32 %68, i32* %60, align 8
  br label %73

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr i8, i8* %71, i64 8
  store i8* %72, i8** %70, align 8
  br label %73

73:                                               ; preds = %69, %63
  %.in1 = phi i8* [ %67, %63 ], [ %71, %69 ]
  %74 = bitcast i8* %.in1 to i64*
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* @foo_arg, align 4
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ult i32 %78, 161
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %82 = load i8*, i8** %81, align 8
  %83 = sext i32 %78 to i64
  %84 = getelementptr i8, i8* %82, i64 %83
  %85 = add i32 %78, 16
  store i32 %85, i32* %77, align 4
  br label %90

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr i8, i8* %88, i64 8
  store i8* %89, i8** %87, align 8
  br label %90

90:                                               ; preds = %86, %80
  %.in2 = phi i8* [ %84, %80 ], [ %88, %86 ]
  %91 = bitcast i8* %.in2 to double*
  %92 = load double, double* %91, align 8
  %93 = load i32, i32* @foo_arg, align 4
  %94 = sitofp i32 %93 to double
  %95 = fadd double %92, %94
  %96 = fptosi double %95 to i32
  store i32 %96, i32* @foo_arg, align 4
  br label %128

97:                                               ; preds = %2
  %98 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ult i32 %99, 41
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 3
  %103 = load i8*, i8** %102, align 8
  %104 = sext i32 %99 to i64
  %105 = getelementptr i8, i8* %103, i64 %104
  %106 = add i32 %99, 8
  store i32 %106, i32* %98, align 8
  br label %111

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr i8, i8* %109, i64 8
  store i8* %110, i8** %108, align 8
  br label %111

111:                                              ; preds = %107, %101
  %.in = phi i8* [ %105, %101 ], [ %109, %107 ]
  %112 = bitcast i8* %.in to i32*
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* @foo_arg, align 4
  %114 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %1, i64 0, i32 2
  %115 = load i8*, i8** %114, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = add i64 %116, 15
  %118 = and i64 %117, -16
  %119 = inttoptr i64 %118 to i8*
  %120 = inttoptr i64 %118 to x86_fp80*
  %121 = getelementptr i8, i8* %119, i64 16
  store i8* %121, i8** %114, align 8
  %122 = load x86_fp80, x86_fp80* %120, align 16
  %123 = load i32, i32* @foo_arg, align 4
  %124 = sitofp i32 %123 to x86_fp80
  %125 = fadd x86_fp80 %122, %124
  %126 = fptosi x86_fp80 %125 to i32
  store i32 %126, i32* @foo_arg, align 4
  br label %128

127:                                              ; preds = %2
  call void @abort() #4
  unreachable

128:                                              ; preds = %111, %90, %53
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @bar(i32 noundef %0) #0 {
  %2 = icmp eq i32 %0, 16386
  br i1 %2, label %3, label %34

3:                                                ; preds = %1
  %4 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %5 = icmp ult i32 %4, 41
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %8 = sext i32 %4 to i64
  %9 = getelementptr i8, i8* %7, i64 %8
  %10 = add i32 %4, 8
  store i32 %10, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %14

11:                                               ; preds = %3
  %12 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %13 = getelementptr i8, i8* %12, i64 8
  store i8* %13, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %14

14:                                               ; preds = %11, %6
  %.in = phi i8* [ %9, %6 ], [ %12, %11 ]
  %15 = bitcast i8* %.in to i32*
  %16 = load i32, i32* %15, align 4
  %.not = icmp eq i32 %16, 13
  br i1 %.not, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  %19 = icmp ult i32 %18, 161
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %22 = sext i32 %18 to i64
  %23 = getelementptr i8, i8* %21, i64 %22
  %24 = add i32 %18, 16
  store i32 %24, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 1), align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %27 = getelementptr i8, i8* %26, i64 8
  store i8* %27, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %28

28:                                               ; preds = %25, %20
  %.in1 = phi i8* [ %23, %20 ], [ %26, %25 ]
  %29 = bitcast i8* %.in1 to double*
  %30 = load double, double* %29, align 8
  %31 = fcmp une double %30, -1.400000e+01
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %14
  call void @abort() #4
  unreachable

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %1
  store i32 %0, i32* @bar_arg, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f1(i32 noundef %0, ...) #2 {
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  %2 = load i32, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  %3 = icmp ult i32 %2, 41
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 3), align 16
  %6 = sext i32 %2 to i64
  %7 = getelementptr i8, i8* %5, i64 %6
  %8 = add i32 %2, 8
  store i32 %8, i32* getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 0), align 16
  br label %12

9:                                                ; preds = %1
  %10 = load i8*, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  %11 = getelementptr i8, i8* %10, i64 8
  store i8* %11, i8** getelementptr inbounds ([1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* @gap, i64 0, i64 0, i32 2), align 8
  br label %12

12:                                               ; preds = %9, %4
  %.in = phi i8* [ %7, %4 ], [ %10, %9 ]
  %13 = bitcast i8* %.in to i64*
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @x, align 8
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, ...) #0 {
  call void @llvm.va_start(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  call void @bar(i32 noundef %0)
  call void @llvm.va_end(i8* bitcast ([1 x %struct.__va_list_tag]* @gap to i8*))
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f3(i32 noundef %0, ...) #2 {
  %2 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  %3 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0, i32 0
  %6 = load i32, i32* %5, align 16
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0, i32 3
  %10 = load i8*, i8** %9, align 16
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 16
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @x, align 8
  %21 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_end(i8* %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f4(i32 noundef %0, ...) #0 {
  %2 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  %3 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  call void @bar(i32 noundef %0)
  %5 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_end(i8* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f5(i32 noundef %0, ...) #0 {
  %2 = alloca [10 x [1 x %struct.__va_list_tag]], align 16
  %3 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  call void @foo(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %5)
  %6 = getelementptr inbounds [10 x [1 x %struct.__va_list_tag]], [10 x [1 x %struct.__va_list_tag]]* %2, i64 0, i64 4, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f6(i32 noundef %0, ...) #2 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 8
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @x, align 8
  %21 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_end(i8* %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f7(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  call void @bar(i32 noundef %0)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_end(i8* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f8(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  call void @foo(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %5)
  %6 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 1, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @f10(i32 noundef %0, ...) #2 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ult i32 %6, 41
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = sext i32 %6 to i64
  %12 = getelementptr i8, i8* %10, i64 %11
  %13 = add i32 %6, 8
  store i32 %13, i32* %5, align 8
  br label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr i8, i8* %16, i64 8
  store i8* %17, i8** %15, align 8
  br label %18

18:                                               ; preds = %14, %8
  %.in = phi i8* [ %12, %8 ], [ %16, %14 ]
  %19 = bitcast i8* %.in to i64*
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* @x, align 8
  %21 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_end(i8* %22)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f11(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  call void @bar(i32 noundef %0)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_end(i8* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @f12(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.A, align 8
  %3 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %4 = bitcast %struct.__va_list_tag* %3 to i8*
  call void @llvm.va_start(i8* nonnull %4)
  %5 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  call void @foo(i32 noundef %0, %struct.__va_list_tag* noundef nonnull %5)
  %6 = getelementptr inbounds %struct.A, %struct.A* %2, i64 0, i32 2, i64 1, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_end(i8* %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void (i32, ...) @f1(i32 noundef 1, i64 noundef 79)
  %1 = load i64, i64* @x, align 8
  %.not = icmp eq i64 %1, 79
  br i1 %.not, label %3, label %2

2:                                                ; preds = %0
  call void @abort() #4
  br label %UnifiedUnreachableBlock

3:                                                ; preds = %0
  call void (i32, ...) @f2(i32 noundef 16386, i32 noundef 13, double noundef -1.400000e+01)
  %4 = load i32, i32* @bar_arg, align 4
  %.not1 = icmp eq i32 %4, 16386
  br i1 %.not1, label %6, label %5

5:                                                ; preds = %3
  call void @abort() #4
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %3
  call void (i32, ...) @f3(i32 noundef 3, i64 noundef 2031)
  %7 = load i64, i64* @x, align 8
  %.not2 = icmp eq i64 %7, 2031
  br i1 %.not2, label %9, label %8

8:                                                ; preds = %6
  call void @abort() #4
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  call void (i32, ...) @f4(i32 noundef 4, i32 noundef 18)
  %10 = load i32, i32* @bar_arg, align 4
  %.not3 = icmp eq i32 %10, 4
  br i1 %.not3, label %12, label %11

11:                                               ; preds = %9
  call void @abort() #4
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %9
  call void (i32, ...) @f5(i32 noundef 5, i32 noundef 1, double noundef 1.900000e+01, i64 noundef 18)
  %13 = load i32, i32* @foo_arg, align 4
  %.not4 = icmp eq i32 %13, 38
  br i1 %.not4, label %15, label %14

14:                                               ; preds = %12
  call void @abort() #4
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %12
  call void (i32, ...) @f6(i32 noundef 6, i64 noundef 18)
  %16 = load i64, i64* @x, align 8
  %.not5 = icmp eq i64 %16, 18
  br i1 %.not5, label %18, label %17

17:                                               ; preds = %15
  call void @abort() #4
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %15
  call void (i32, ...) @f7(i32 noundef 7)
  %19 = load i32, i32* @bar_arg, align 4
  %.not6 = icmp eq i32 %19, 7
  br i1 %.not6, label %21, label %20

20:                                               ; preds = %18
  call void @abort() #4
  br label %UnifiedUnreachableBlock

21:                                               ; preds = %18
  call void (i32, ...) @f8(i32 noundef 8, i64 noundef 2031, double noundef 1.300000e+01)
  %22 = load i32, i32* @foo_arg, align 4
  %.not7 = icmp eq i32 %22, 2044
  br i1 %.not7, label %24, label %23

23:                                               ; preds = %21
  call void @abort() #4
  br label %UnifiedUnreachableBlock

24:                                               ; preds = %21
  call void (i32, ...) @f10(i32 noundef 9, i64 noundef 180)
  %25 = load i64, i64* @x, align 8
  %.not8 = icmp eq i64 %25, 180
  br i1 %.not8, label %27, label %26

26:                                               ; preds = %24
  call void @abort() #4
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %24
  call void (i32, ...) @f11(i32 noundef 10)
  %28 = load i32, i32* @bar_arg, align 4
  %.not9 = icmp eq i32 %28, 10
  br i1 %.not9, label %30, label %29

29:                                               ; preds = %27
  call void @abort() #4
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %27
  call void (i32, ...) @f12(i32 noundef 11, i32 noundef 2030, x86_fp80 noundef 0xK4002C000000000000000)
  %31 = load i32, i32* @foo_arg, align 4
  %.not10 = icmp eq i32 %31, 2042
  br i1 %.not10, label %33, label %32

32:                                               ; preds = %30
  call void @abort() #4
  br label %UnifiedUnreachableBlock

33:                                               ; preds = %30
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %32, %29, %26, %23, %20, %17, %14, %11, %8, %5, %2
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
