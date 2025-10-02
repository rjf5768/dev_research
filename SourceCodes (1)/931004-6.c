; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-6.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i16, i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tiny, align 2
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %50, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %32, i8* align 2 %33, i64 4, i1 false)
  %34 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 0
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i32
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 10
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @abort() #4
  unreachable

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 1
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 20
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  call void @abort() #4
  unreachable

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %10, !llvm.loop !4

53:                                               ; preds = %10
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 16
  %57 = icmp ule i32 %56, 40
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 3
  %60 = load i8*, i8** %59, align 16
  %61 = getelementptr i8, i8* %60, i32 %56
  %62 = bitcast i8* %61 to i64*
  %63 = add i32 %56, 8
  store i32 %63, i32* %55, align 16
  br label %69

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %54, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i64*
  %68 = getelementptr i8, i8* %66, i32 8
  store i8* %68, i8** %65, align 8
  br label %69

69:                                               ; preds = %64, %58
  %70 = phi i64* [ %62, %58 ], [ %67, %64 ]
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %7, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 123
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  call void @abort() #4
  unreachable

75:                                               ; preds = %69
  %76 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %77 = bitcast %struct.__va_list_tag* %76 to i8*
  call void @llvm.va_end(i8* %77)
  %78 = load i32, i32* %2, align 4
  ret i32 %78
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
  %2 = alloca [3 x %struct.tiny], align 2
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tiny, %struct.tiny* %3, i32 0, i32 0
  store i16 10, i16* %4, align 2
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %6 = getelementptr inbounds %struct.tiny, %struct.tiny* %5, i32 0, i32 0
  store i16 11, i16* %6, align 2
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i16 12, i16* %8, align 2
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %10 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 1
  store i16 20, i16* %10, align 2
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 1
  store i16 21, i16* %12, align 2
  %13 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %13, i32 0, i32 1
  store i16 22, i16* %14, align 2
  %15 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %16 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %17 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %18 = bitcast %struct.tiny* %15 to i32*
  %19 = load i32, i32* %18, align 2
  %20 = bitcast %struct.tiny* %16 to i32*
  %21 = load i32, i32* %20, align 2
  %22 = bitcast %struct.tiny* %17 to i32*
  %23 = load i32, i32* %22, align 2
  %24 = call i32 (i32, ...) @f(i32 noundef 3, i32 %19, i32 %21, i32 %23, i64 noundef 123)
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
