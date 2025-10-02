; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041113-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20041113-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@a = dso_local global double 4.000000e+01, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 16
  %10 = icmp ule i32 %9, 40
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 3
  %13 = load i8*, i8** %12, align 16
  %14 = getelementptr i8, i8* %13, i32 %9
  %15 = bitcast i8* %14 to i32*
  %16 = add i32 %9, 8
  store i32 %16, i32* %8, align 16
  br label %22

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %7, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = getelementptr i8, i8* %19, i32 8
  store i8* %21, i8** %18, align 8
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i32* [ %15, %11 ], [ %20, %17 ]
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  call void @abort() #3
  unreachable

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i32*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32* [ %36, %32 ], [ %41, %38 ]
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  call void @abort() #3
  unreachable

48:                                               ; preds = %43
  %49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 16
  %52 = icmp ule i32 %51, 40
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3
  %55 = load i8*, i8** %54, align 16
  %56 = getelementptr i8, i8* %55, i32 %51
  %57 = bitcast i8* %56 to i32*
  %58 = add i32 %51, 8
  store i32 %58, i32* %50, align 16
  br label %64

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = getelementptr i8, i8* %61, i32 8
  store i8* %63, i8** %60, align 8
  br label %64

64:                                               ; preds = %59, %53
  %65 = phi i32* [ %57, %53 ], [ %62, %59 ]
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  call void @abort() #3
  unreachable

69:                                               ; preds = %64
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = icmp ule i32 %72, 40
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 3
  %76 = load i8*, i8** %75, align 16
  %77 = getelementptr i8, i8* %76, i32 %72
  %78 = bitcast i8* %77 to i32*
  %79 = add i32 %72, 8
  store i32 %79, i32* %71, align 16
  br label %85

80:                                               ; preds = %69
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = getelementptr i8, i8* %82, i32 8
  store i8* %84, i8** %81, align 8
  br label %85

85:                                               ; preds = %80, %74
  %86 = phi i32* [ %78, %74 ], [ %83, %80 ]
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 4
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  call void @abort() #3
  unreachable

90:                                               ; preds = %85
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load double, double* @a, align 8
  %7 = fdiv double %6, 1.000000e+01
  %8 = fptosi double %7 to i32
  call void (i32, ...) @test(i32 noundef 0, i32 noundef 1, i32 noundef 2, i32 noundef 3, i32 noundef %8)
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
