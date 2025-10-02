; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071213-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20071213-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local void @h(i32 noundef %0, %struct.__va_list_tag* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__va_list_tag*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %4, align 8
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %90 [
    i32 1, label %6
    i32 5, label %48
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
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %46, label %26

26:                                               ; preds = %22
  %27 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ule i32 %29, 40
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr i8, i8* %33, i32 %29
  %35 = bitcast i8* %34 to i32*
  %36 = add i32 %29, 8
  store i32 %36, i32* %28, align 8
  br label %42

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %27, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr i8, i8* %39, i32 8
  store i8* %41, i8** %38, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i32* [ %35, %31 ], [ %40, %37 ]
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 4
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %22
  call void @abort() #3
  unreachable

47:                                               ; preds = %42
  br label %91

48:                                               ; preds = %2
  %49 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ule i32 %51, 40
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %49, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr i8, i8* %55, i32 %51
  %57 = bitcast i8* %56 to i32*
  %58 = add i32 %51, 8
  store i32 %58, i32* %50, align 8
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
  %67 = icmp ne i32 %66, 9
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = load %struct.__va_list_tag*, %struct.__va_list_tag** %4, align 8
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ule i32 %71, 40
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr i8, i8* %75, i32 %71
  %77 = bitcast i8* %76 to i32*
  %78 = add i32 %71, 8
  store i32 %78, i32* %70, align 8
  br label %84

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %69, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = getelementptr i8, i8* %81, i32 8
  store i8* %83, i8** %80, align 8
  br label %84

84:                                               ; preds = %79, %73
  %85 = phi i32* [ %77, %73 ], [ %82, %79 ]
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %89

88:                                               ; preds = %84, %64
  call void @abort() #3
  unreachable

89:                                               ; preds = %84
  br label %91

90:                                               ; preds = %2
  call void @abort() #3
  unreachable

91:                                               ; preds = %89, %47
  ret void
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @f1(i32 noundef %0, i64 noundef %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @h(i32 noundef %8, %struct.__va_list_tag* noundef %9)
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  call void @abort() #3
  unreachable

16:                                               ; preds = %12
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %18 = bitcast %struct.__va_list_tag* %17 to i8*
  call void @llvm.va_end(i8* %18)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @f2(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, ...) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  call void @h(i32 noundef %12, %struct.__va_list_tag* noundef %13)
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %25, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 6
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 7
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 8
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %19, %16, %4
  call void @abort() #3
  unreachable

26:                                               ; preds = %22
  %27 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0
  %28 = bitcast %struct.__va_list_tag* %27 to i8*
  call void @llvm.va_end(i8* %28)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void (i32, i64, ...) @f1(i32 noundef 1, i64 noundef 2, i32 noundef 3, i32 noundef 4)
  call void (i32, i32, i32, i64, ...) @f2(i32 noundef 5, i32 noundef 6, i32 noundef 7, i64 noundef 8, i32 noundef 9, i32 noundef 10)
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
