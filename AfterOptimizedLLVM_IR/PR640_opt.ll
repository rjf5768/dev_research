; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/PR640.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/PR640.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"ERROR\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"All done.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @test_stdarg(i32 noundef 1)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32, i32* %3, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stdarg(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8 1, i8* %4, align 1
  store i8 2, i8* %5, align 1
  %6 = bitcast i32* %3 to i8*
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i32
  %9 = load i8, i8* %5, align 1
  %10 = sext i8 %9 to i32
  %11 = call i32 (i8*, ...) @test_stdarg_va(i8* noundef %6, i32 noundef %8, i64 noundef 1981891429, i32 noundef %10, i32* noundef %3)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = bitcast i32* %3 to i8*
  %16 = load i8, i8* %4, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* %5, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 (i8*, ...) @test_stdarg_builtin_va(i8* noundef %15, i32 noundef %17, i64 noundef 1981891433, i32 noundef %19, i32* noundef %3)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %14
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stdarg_va(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp ule i32 %12, 40
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = getelementptr i8, i8* %16, i32 %12
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %12, 8
  store i32 %19, i32* %11, align 16
  br label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr i8, i8* %22, i32 8
  store i8* %24, i8** %21, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i32* [ %18, %14 ], [ %23, %20 ]
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i64*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i64* [ %36, %32 ], [ %41, %38 ]
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ule i32 %48, 40
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 3
  %52 = load i8*, i8** %51, align 16
  %53 = getelementptr i8, i8* %52, i32 %48
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %48, 8
  store i32 %55, i32* %47, align 16
  br label %61

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr i8, i8* %58, i32 8
  store i8* %60, i8** %57, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i32* [ %54, %50 ], [ %59, %56 ]
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp ule i32 %66, 40
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 3
  %70 = load i8*, i8** %69, align 16
  %71 = getelementptr i8, i8* %70, i32 %66
  %72 = bitcast i8* %71 to i8**
  %73 = add i32 %66, 8
  store i32 %73, i32* %65, align 16
  br label %79

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = bitcast i8* %76 to i8**
  %78 = getelementptr i8, i8* %76, i32 8
  store i8* %78, i8** %75, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi i8** [ %72, %68 ], [ %77, %74 ]
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %83 = bitcast %struct.__va_list_tag* %82 to i8*
  call void @llvm.va_end(i8* %83)
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8
  %92 = icmp eq i64 %91, 1981891429
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 2
  br label %96

96:                                               ; preds = %93, %90, %87, %79
  %97 = phi i1 [ false, %90 ], [ false, %87 ], [ false, %79 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @test_stdarg_builtin_va(i8* noundef %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 16
  %13 = icmp ule i32 %12, 40
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 3
  %16 = load i8*, i8** %15, align 16
  %17 = getelementptr i8, i8* %16, i32 %12
  %18 = bitcast i8* %17 to i32*
  %19 = add i32 %12, 8
  store i32 %19, i32* %11, align 16
  br label %25

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %10, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr i8, i8* %22, i32 8
  store i8* %24, i8** %21, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i32* [ %18, %14 ], [ %23, %20 ]
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i64*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i64* [ %36, %32 ], [ %41, %38 ]
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  %46 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 16
  %49 = icmp ule i32 %48, 40
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 3
  %52 = load i8*, i8** %51, align 16
  %53 = getelementptr i8, i8* %52, i32 %48
  %54 = bitcast i8* %53 to i32*
  %55 = add i32 %48, 8
  store i32 %55, i32* %47, align 16
  br label %61

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %46, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = getelementptr i8, i8* %58, i32 8
  store i8* %60, i8** %57, align 8
  br label %61

61:                                               ; preds = %56, %50
  %62 = phi i32* [ %54, %50 ], [ %59, %56 ]
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %6, align 4
  %64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 16
  %67 = icmp ule i32 %66, 40
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 3
  %70 = load i8*, i8** %69, align 16
  %71 = getelementptr i8, i8* %70, i32 %66
  %72 = bitcast i8* %71 to i8**
  %73 = add i32 %66, 8
  store i32 %73, i32* %65, align 16
  br label %79

74:                                               ; preds = %61
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %64, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = bitcast i8* %76 to i8**
  %78 = getelementptr i8, i8* %76, i32 8
  store i8* %78, i8** %75, align 8
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi i8** [ %72, %68 ], [ %77, %74 ]
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %7, align 8
  %82 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %83 = bitcast %struct.__va_list_tag* %82 to i8*
  call void @llvm.va_end(i8* %83)
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %4, align 8
  %92 = icmp eq i64 %91, 1981891433
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 2
  br label %96

96:                                               ; preds = %93, %90, %87, %79
  %97 = phi i1 [ false, %90 ], [ false, %87 ], [ false, %79 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  ret i32 %98
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
