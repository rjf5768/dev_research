; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-14.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tiny, align 1
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %66, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %10
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %16 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 16
  %18 = icmp ule i32 %17, 40
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 3
  %21 = load i8*, i8** %20, align 16
  %22 = getelementptr i8, i8* %21, i32 %17
  %23 = bitcast i8* %22 to %struct.tiny*
  %24 = add i32 %17, 8
  store i32 %24, i32* %16, align 16
  br label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %15, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to %struct.tiny*
  %29 = getelementptr i8, i8* %27, i32 8
  store i8* %29, i8** %26, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = phi %struct.tiny* [ %23, %19 ], [ %28, %25 ]
  %32 = bitcast %struct.tiny* %4 to i8*
  %33 = bitcast %struct.tiny* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 4, i1 false)
  %34 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 10
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @abort() #4
  unreachable

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 20
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @abort() #4
  unreachable

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 30
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  call void @abort() #4
  unreachable

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 3
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 40
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  call void @abort() #4
  unreachable

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %10, !llvm.loop !4

69:                                               ; preds = %10
  %70 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 16
  %73 = icmp ule i32 %72, 40
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %70, i32 0, i32 3
  %76 = load i8*, i8** %75, align 16
  %77 = getelementptr i8, i8* %76, i32 %72
  %78 = bitcast i8* %77 to i64*
  %79 = add i32 %72, 8
  store i32 %79, i32* %71, align 16
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
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 123
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  call void @abort() #4
  unreachable

91:                                               ; preds = %85
  %92 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %93 = bitcast %struct.__va_list_tag* %92 to i8*
  call void @llvm.va_end(i8* %93)
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local void @abort() #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x %struct.tiny], align 1
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tiny, %struct.tiny* %3, i32 0, i32 0
  store i8 10, i8* %4, align 1
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %6 = getelementptr inbounds %struct.tiny, %struct.tiny* %5, i32 0, i32 0
  store i8 11, i8* %6, align 1
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i8 12, i8* %8, align 1
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %10 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  store i8 20, i8* %10, align 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 1
  store i8 21, i8* %12, align 1
  %13 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %13, i32 0, i32 1
  store i8 22, i8* %14, align 1
  %15 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %15, i32 0, i32 2
  store i8 30, i8* %16, align 1
  %17 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %18 = getelementptr inbounds %struct.tiny, %struct.tiny* %17, i32 0, i32 2
  store i8 31, i8* %18, align 1
  %19 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %20 = getelementptr inbounds %struct.tiny, %struct.tiny* %19, i32 0, i32 2
  store i8 32, i8* %20, align 1
  %21 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %22 = getelementptr inbounds %struct.tiny, %struct.tiny* %21, i32 0, i32 3
  store i8 40, i8* %22, align 1
  %23 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %24 = getelementptr inbounds %struct.tiny, %struct.tiny* %23, i32 0, i32 3
  store i8 41, i8* %24, align 1
  %25 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %26 = getelementptr inbounds %struct.tiny, %struct.tiny* %25, i32 0, i32 3
  store i8 42, i8* %26, align 1
  %27 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %28 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %29 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %30 = bitcast %struct.tiny* %27 to i32*
  %31 = load i32, i32* %30, align 1
  %32 = bitcast %struct.tiny* %28 to i32*
  %33 = load i32, i32* %32, align 1
  %34 = bitcast %struct.tiny* %29 to i32*
  %35 = load i32, i32* %34, align 1
  %36 = call i32 (i32, ...) @f(i32 noundef 3, i32 %31, i32 %33, i32 %35, i64 noundef 123)
  call void @exit(i32 noundef 0) #4
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
