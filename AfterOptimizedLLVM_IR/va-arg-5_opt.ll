; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-5.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va_double(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
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
  %25 = fcmp une double %24, 0x400921FAFC8B007A
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #3
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ule i32 %30, 160
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to double*
  %37 = add i32 %30, 16
  store i32 %37, i32* %29, align 4
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to double*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi double* [ %36, %32 ], [ %41, %38 ]
  %45 = load double, double* %44, align 8
  %46 = fcmp une double %45, 2.718270e+00
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #3
  unreachable

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ule i32 %51, 160
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3
  %55 = load i8*, i8** %54, align 16
  %56 = getelementptr i8, i8* %55, i32 %51
  %57 = bitcast i8* %56 to double*
  %58 = add i32 %51, 16
  store i32 %58, i32* %50, align 4
  br label %64

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to double*
  %63 = getelementptr i8, i8* %61, i32 8
  store i8* %63, i8** %60, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi double* [ %57, %53 ], [ %62, %59 ]
  %66 = load double, double* %65, align 8
  %67 = fcmp une double %66, 0x4001E3779131154C
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #3
  unreachable

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ule i32 %72, 160
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 3
  %76 = load i8*, i8** %75, align 16
  %77 = getelementptr i8, i8* %76, i32 %72
  %78 = bitcast i8* %77 to double*
  %79 = add i32 %72, 16
  store i32 %79, i32* %71, align 4
  br label %85

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to double*
  %84 = getelementptr i8, i8* %82, i32 8
  store i8* %84, i8** %81, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = phi double* [ %78, %74 ], [ %83, %80 ]
  %87 = load double, double* %86, align 8
  %88 = fcmp une double %87, 0x40012E0BE1B5921E
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @abort() #3
  unreachable

90:                                               ; preds = %85
  %91 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %92 = bitcast %struct.__va_list_tag* %91 to i8*
  call void @llvm.va_end(i8* %92)
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @va_long_double(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = add i64 %10, 15
  %12 = and i64 %11, -16
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to x86_fp80*
  %15 = getelementptr i8, i8* %13, i32 16
  store i8* %15, i8** %8, align 8
  %16 = load x86_fp80, x86_fp80* %14, align 16
  %17 = fcmp une x86_fp80 %16, 0xK4000C90FD7E45803CD14
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  call void @abort() #3
  unreachable

19:                                               ; preds = %1
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %22 to i64
  %24 = add i64 %23, 15
  %25 = and i64 %24, -16
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to x86_fp80*
  %28 = getelementptr i8, i8* %26, i32 16
  store i8* %28, i8** %21, align 8
  %29 = load x86_fp80, x86_fp80* %27, align 16
  %30 = fcmp une x86_fp80 %29, 0xK4000ADF822BBECAAB8A6
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  call void @abort() #3
  unreachable

32:                                               ; preds = %19
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = add i64 %36, 15
  %38 = and i64 %37, -16
  %39 = inttoptr i64 %38 to i8*
  %40 = bitcast i8* %39 to x86_fp80*
  %41 = getelementptr i8, i8* %39, i32 16
  store i8* %41, i8** %34, align 8
  %42 = load x86_fp80, x86_fp80* %40, align 16
  %43 = fcmp une x86_fp80 %42, 0xK40008F1BBC8988AA5E0D
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  call void @abort() #3
  unreachable

45:                                               ; preds = %32
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = add i64 %49, 15
  %51 = and i64 %50, -16
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to x86_fp80*
  %54 = getelementptr i8, i8* %52, i32 16
  store i8* %54, i8** %47, align 8
  %55 = load x86_fp80, x86_fp80* %53, align 16
  %56 = fcmp une x86_fp80 %55, 0xK400089705F0DAC90ED23
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  call void @abort() #3
  unreachable

58:                                               ; preds = %45
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %4, i64 0, i64 0
  %60 = bitcast %struct.__va_list_tag* %59 to i8*
  call void @llvm.va_end(i8* %60)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i32, ...) @va_double(i32 noundef 4, double noundef 0x400921FAFC8B007A, double noundef 2.718270e+00, double noundef 0x4001E3779131154C, double noundef 0x40012E0BE1B5921E)
  %3 = call i32 (i32, ...) @va_long_double(i32 noundef 4, x86_fp80 noundef 0xK4000C90FD7E45803CD14, x86_fp80 noundef 0xK4000ADF822BBECAAB8A6, x86_fp80 noundef 0xK40008F1BBC8988AA5E0D, x86_fp80 noundef 0xK400089705F0DAC90ED23)
  call void @exit(i32 noundef 0) #3
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #2

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
