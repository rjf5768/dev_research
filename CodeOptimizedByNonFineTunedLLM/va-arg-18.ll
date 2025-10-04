; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-18.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-18.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @f(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, ...) #0 {
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca [1 x %struct.__va_list_tag], align 16
  store double %0, double* %10, align 8
  store double %1, double* %11, align 8
  store double %2, double* %12, align 8
  store double %3, double* %13, align 8
  store double %4, double* %14, align 8
  store double %5, double* %15, align 8
  store double %6, double* %16, align 8
  store double %7, double* %17, align 8
  store double %8, double* %18, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %21 = bitcast %struct.__va_list_tag* %20 to i8*
  call void @llvm.va_start(i8* %21)
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ule i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr i8, i8* %28, i32 %24
  %30 = bitcast i8* %29 to i32*
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %37

32:                                               ; preds = %9
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr i8, i8* %34, i32 8
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32* [ %30, %26 ], [ %35, %32 ]
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @abort() #3
  unreachable

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 16
  %46 = icmp ule i32 %45, 40
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 3
  %49 = load i8*, i8** %48, align 16
  %50 = getelementptr i8, i8* %49, i32 %45
  %51 = bitcast i8* %50 to i32*
  %52 = add i32 %45, 8
  store i32 %52, i32* %44, align 16
  br label %58

53:                                               ; preds = %42
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %43, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = getelementptr i8, i8* %55, i32 8
  store i8* %57, i8** %54, align 8
  br label %58

58:                                               ; preds = %53, %47
  %59 = phi i32* [ %51, %47 ], [ %56, %53 ]
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 11
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  call void @abort() #3
  unreachable

63:                                               ; preds = %58
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp ule i32 %66, 40
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 3
  %70 = load i8*, i8** %69, align 16
  %71 = getelementptr i8, i8* %70, i32 %66
  %72 = bitcast i8* %71 to i32*
  %73 = add i32 %66, 8
  store i32 %73, i32* %65, align 16
  br label %79

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = getelementptr i8, i8* %76, i32 8
  store i8* %78, i8** %75, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi i32* [ %72, %68 ], [ %77, %74 ]
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 12
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  call void @abort() #3
  unreachable

84:                                               ; preds = %79
  %85 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %19, i64 0, i64 0
  %86 = bitcast %struct.__va_list_tag* %85 to i8*
  call void @llvm.va_end(i8* %86)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (double, double, double, double, double, double, double, double, double, ...) @f(double noundef 1.000000e+00, double noundef 2.000000e+00, double noundef 3.000000e+00, double noundef 4.000000e+00, double noundef 5.000000e+00, double noundef 6.000000e+00, double noundef 7.000000e+00, double noundef 8.000000e+00, double noundef 9.000000e+00, i32 noundef 10, i32 noundef 11, i32 noundef 12)
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
