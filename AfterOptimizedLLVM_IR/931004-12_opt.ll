; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-12.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8 }
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

10:                                               ; preds = %58, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %61

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 3, i1 false)
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
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %10, !llvm.loop !4

61:                                               ; preds = %10
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 16
  %65 = icmp ule i32 %64, 40
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 3
  %68 = load i8*, i8** %67, align 16
  %69 = getelementptr i8, i8* %68, i32 %64
  %70 = bitcast i8* %69 to i64*
  %71 = add i32 %64, 8
  store i32 %71, i32* %63, align 16
  br label %77

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i64*
  %76 = getelementptr i8, i8* %74, i32 8
  store i8* %76, i8** %73, align 8
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i64* [ %70, %66 ], [ %75, %72 ]
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %7, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 123
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  call void @abort() #4
  unreachable

83:                                               ; preds = %77
  %84 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %85 = bitcast %struct.__va_list_tag* %84 to i8*
  call void @llvm.va_end(i8* %85)
  %86 = load i32, i32* %2, align 4
  ret i32 %86
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
  %3 = alloca i24, align 4
  %4 = alloca i24, align 4
  %5 = alloca i24, align 4
  store i32 0, i32* %1, align 4
  %6 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %7 = getelementptr inbounds %struct.tiny, %struct.tiny* %6, i32 0, i32 0
  store i8 10, i8* %7, align 1
  %8 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %9 = getelementptr inbounds %struct.tiny, %struct.tiny* %8, i32 0, i32 0
  store i8 11, i8* %9, align 1
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %11 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i32 0, i32 0
  store i8 12, i8* %11, align 1
  %12 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %13 = getelementptr inbounds %struct.tiny, %struct.tiny* %12, i32 0, i32 1
  store i8 20, i8* %13, align 1
  %14 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %15 = getelementptr inbounds %struct.tiny, %struct.tiny* %14, i32 0, i32 1
  store i8 21, i8* %15, align 1
  %16 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %17 = getelementptr inbounds %struct.tiny, %struct.tiny* %16, i32 0, i32 1
  store i8 22, i8* %17, align 1
  %18 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %19 = getelementptr inbounds %struct.tiny, %struct.tiny* %18, i32 0, i32 2
  store i8 30, i8* %19, align 1
  %20 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %21 = getelementptr inbounds %struct.tiny, %struct.tiny* %20, i32 0, i32 2
  store i8 31, i8* %21, align 1
  %22 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %23 = getelementptr inbounds %struct.tiny, %struct.tiny* %22, i32 0, i32 2
  store i8 32, i8* %23, align 1
  %24 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %25 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %26 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %27 = bitcast i24* %3 to i8*
  %28 = bitcast %struct.tiny* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 1 %28, i64 3, i1 false)
  %29 = load i24, i24* %3, align 4
  %30 = bitcast i24* %4 to i8*
  %31 = bitcast %struct.tiny* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 1 %31, i64 3, i1 false)
  %32 = load i24, i24* %4, align 4
  %33 = bitcast i24* %5 to i8*
  %34 = bitcast %struct.tiny* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 1 %34, i64 3, i1 false)
  %35 = load i24, i24* %5, align 4
  %36 = call i32 (i32, ...) @f(i32 noundef 3, i24 %29, i24 %32, i24 %35, i64 noundef 123)
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
