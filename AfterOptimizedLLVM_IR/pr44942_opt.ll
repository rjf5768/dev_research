; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44942.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44942.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @test1(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, x86_fp80 noundef %7, ...) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca x86_fp80, align 16
  %17 = alloca i32, align 4
  %18 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store x86_fp80 %7, x86_fp80* %16, align 16
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %20 = bitcast %struct.__va_list_tag* %19 to i8*
  call void @llvm.va_start(i8* %20)
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ule i32 %23, 40
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = getelementptr i8, i8* %27, i32 %23
  %29 = bitcast i8* %28 to i32*
  %30 = add i32 %23, 8
  store i32 %30, i32* %22, align 16
  br label %36

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr i8, i8* %33, i32 8
  store i8* %35, i8** %32, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi i32* [ %29, %25 ], [ %34, %31 ]
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp ne i32 %39, 1234
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #3
  unreachable

42:                                               ; preds = %36
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %44 = bitcast %struct.__va_list_tag* %43 to i8*
  call void @llvm.va_end(i8* %44)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, x86_fp80 noundef %7, i32 noundef %8, x86_fp80 noundef %9, i32 noundef %10, x86_fp80 noundef %11, i32 noundef %12, x86_fp80 noundef %13, ...) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca x86_fp80, align 16
  %23 = alloca i32, align 4
  %24 = alloca x86_fp80, align 16
  %25 = alloca i32, align 4
  %26 = alloca x86_fp80, align 16
  %27 = alloca i32, align 4
  %28 = alloca x86_fp80, align 16
  %29 = alloca i32, align 4
  %30 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %15, align 4
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store x86_fp80 %7, x86_fp80* %22, align 16
  store i32 %8, i32* %23, align 4
  store x86_fp80 %9, x86_fp80* %24, align 16
  store i32 %10, i32* %25, align 4
  store x86_fp80 %11, x86_fp80* %26, align 16
  store i32 %12, i32* %27, align 4
  store x86_fp80 %13, x86_fp80* %28, align 16
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %32 = bitcast %struct.__va_list_tag* %31 to i8*
  call void @llvm.va_start(i8* %32)
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 16
  %36 = icmp ule i32 %35, 40
  br i1 %36, label %37, label %43

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 3
  %39 = load i8*, i8** %38, align 16
  %40 = getelementptr i8, i8* %39, i32 %35
  %41 = bitcast i8* %40 to i32*
  %42 = add i32 %35, 8
  store i32 %42, i32* %34, align 16
  br label %48

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr i8, i8* %45, i32 8
  store i8* %47, i8** %44, align 8
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi i32* [ %41, %37 ], [ %46, %43 ]
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %29, align 4
  %51 = load i32, i32* %29, align 4
  %52 = icmp ne i32 %51, 1234
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #3
  unreachable

54:                                               ; preds = %48
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test3(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, x86_fp80 noundef %7, ...) #0 {
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca x86_fp80, align 16
  %17 = alloca double, align 8
  %18 = alloca [1 x %struct.__va_list_tag], align 16
  store double %0, double* %9, align 8
  store double %1, double* %10, align 8
  store double %2, double* %11, align 8
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store double %5, double* %14, align 8
  store double %6, double* %15, align 8
  store x86_fp80 %7, x86_fp80* %16, align 16
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %20 = bitcast %struct.__va_list_tag* %19 to i8*
  call void @llvm.va_start(i8* %20)
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ule i32 %23, 160
  br i1 %24, label %25, label %31

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 3
  %27 = load i8*, i8** %26, align 16
  %28 = getelementptr i8, i8* %27, i32 %23
  %29 = bitcast i8* %28 to double*
  %30 = add i32 %23, 16
  store i32 %30, i32* %22, align 4
  br label %36

31:                                               ; preds = %8
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %21, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to double*
  %35 = getelementptr i8, i8* %33, i32 8
  store i8* %35, i8** %32, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = phi double* [ %29, %25 ], [ %34, %31 ]
  %38 = load double, double* %37, align 8
  store double %38, double* %17, align 8
  %39 = load double, double* %17, align 8
  %40 = fcmp une double %39, 1.234000e+03
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  call void @abort() #3
  unreachable

42:                                               ; preds = %36
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i64 0, i64 0
  %44 = bitcast %struct.__va_list_tag* %43 to i8*
  call void @llvm.va_end(i8* %44)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test4(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, x86_fp80 noundef %7, double noundef %8, x86_fp80 noundef %9, double noundef %10, x86_fp80 noundef %11, double noundef %12, x86_fp80 noundef %13, ...) #0 {
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca x86_fp80, align 16
  %23 = alloca double, align 8
  %24 = alloca x86_fp80, align 16
  %25 = alloca double, align 8
  %26 = alloca x86_fp80, align 16
  %27 = alloca double, align 8
  %28 = alloca x86_fp80, align 16
  %29 = alloca double, align 8
  %30 = alloca [1 x %struct.__va_list_tag], align 16
  store double %0, double* %15, align 8
  store double %1, double* %16, align 8
  store double %2, double* %17, align 8
  store double %3, double* %18, align 8
  store double %4, double* %19, align 8
  store double %5, double* %20, align 8
  store double %6, double* %21, align 8
  store x86_fp80 %7, x86_fp80* %22, align 16
  store double %8, double* %23, align 8
  store x86_fp80 %9, x86_fp80* %24, align 16
  store double %10, double* %25, align 8
  store x86_fp80 %11, x86_fp80* %26, align 16
  store double %12, double* %27, align 8
  store x86_fp80 %13, x86_fp80* %28, align 16
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %32 = bitcast %struct.__va_list_tag* %31 to i8*
  call void @llvm.va_start(i8* %32)
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ule i32 %35, 160
  br i1 %36, label %37, label %43

37:                                               ; preds = %14
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 3
  %39 = load i8*, i8** %38, align 16
  %40 = getelementptr i8, i8* %39, i32 %35
  %41 = bitcast i8* %40 to double*
  %42 = add i32 %35, 16
  store i32 %42, i32* %34, align 4
  br label %48

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %33, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to double*
  %47 = getelementptr i8, i8* %45, i32 8
  store i8* %47, i8** %44, align 8
  br label %48

48:                                               ; preds = %43, %37
  %49 = phi double* [ %41, %37 ], [ %46, %43 ]
  %50 = load double, double* %49, align 8
  store double %50, double* %29, align 8
  %51 = load double, double* %29, align 8
  %52 = fcmp une double %51, 1.234000e+03
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call void @abort() #3
  unreachable

54:                                               ; preds = %48
  %55 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %30, i64 0, i64 0
  %56 = bitcast %struct.__va_list_tag* %55 to i8*
  call void @llvm.va_end(i8* %56)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, i32, i32, i32, i32, i32, i32, x86_fp80, ...) @test1(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 1234)
  call void (i32, i32, i32, i32, i32, i32, i32, x86_fp80, i32, x86_fp80, i32, x86_fp80, i32, x86_fp80, ...) @test2(i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 0, x86_fp80 noundef 0xK00000000000000000000, i32 noundef 1234)
  call void (double, double, double, double, double, double, double, x86_fp80, ...) @test3(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 1.234000e+03)
  call void (double, double, double, double, double, double, double, x86_fp80, double, x86_fp80, double, x86_fp80, double, x86_fp80, ...) @test4(double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 0.000000e+00, x86_fp80 noundef 0xK00000000000000000000, double noundef 1.234000e+03)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
