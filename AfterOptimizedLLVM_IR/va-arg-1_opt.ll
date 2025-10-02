; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/va-arg-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, ...) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca [1 x %struct.__va_list_tag], align 16
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  %21 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0
  %22 = bitcast %struct.__va_list_tag* %21 to i8*
  call void @llvm.va_start(i8* %22)
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ule i32 %25, 40
  br i1 %26, label %27, label %33

27:                                               ; preds = %9
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = getelementptr i8, i8* %29, i32 %25
  %31 = bitcast i8* %30 to i64*
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %38

33:                                               ; preds = %9
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i64*
  %37 = getelementptr i8, i8* %35, i32 8
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i64* [ %31, %27 ], [ %36, %33 ]
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  call void @abort() #3
  unreachable

43:                                               ; preds = %38
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0
  %45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 16
  %47 = icmp ule i32 %46, 40
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 3
  %50 = load i8*, i8** %49, align 16
  %51 = getelementptr i8, i8* %50, i32 %46
  %52 = bitcast i8* %51 to i64*
  %53 = add i32 %46, 8
  store i32 %53, i32* %45, align 16
  br label %59

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %44, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = bitcast i8* %56 to i64*
  %58 = getelementptr i8, i8* %56, i32 8
  store i8* %58, i8** %55, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = phi i64* [ %52, %48 ], [ %57, %54 ]
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 11
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call void @abort() #3
  unreachable

64:                                               ; preds = %59
  %65 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 16
  %68 = icmp ule i32 %67, 40
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 3
  %71 = load i8*, i8** %70, align 16
  %72 = getelementptr i8, i8* %71, i32 %67
  %73 = bitcast i8* %72 to i64*
  %74 = add i32 %67, 8
  store i32 %74, i32* %66, align 16
  br label %80

75:                                               ; preds = %64
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %65, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to i64*
  %79 = getelementptr i8, i8* %77, i32 8
  store i8* %79, i8** %76, align 8
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi i64* [ %73, %69 ], [ %78, %75 ]
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  call void @abort() #3
  unreachable

85:                                               ; preds = %80
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %20, i64 0, i64 0
  %87 = bitcast %struct.__va_list_tag* %86 to i8*
  call void @llvm.va_end(i8* %87)
  %88 = load i32, i32* %10, align 4
  ret i32 %88
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
  %2 = call i32 (i64, i64, i64, i64, i64, i64, i64, i64, i64, ...) @f(i64 noundef 1, i64 noundef 2, i64 noundef 3, i64 noundef 4, i64 noundef 5, i64 noundef 6, i64 noundef 7, i64 noundef 8, i64 noundef 9, i64 noundef 10, i64 noundef 11, i64 noundef 0)
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
