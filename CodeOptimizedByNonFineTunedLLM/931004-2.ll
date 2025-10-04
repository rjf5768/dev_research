; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/931004-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @f(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tiny, align 4
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %41, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 10
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  call void @abort() #4
  unreachable

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %10, !llvm.loop !4

44:                                               ; preds = %10
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %46 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 16
  %48 = icmp ule i32 %47, 40
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 3
  %51 = load i8*, i8** %50, align 16
  %52 = getelementptr i8, i8* %51, i32 %47
  %53 = bitcast i8* %52 to i64*
  %54 = add i32 %47, 8
  store i32 %54, i32* %46, align 16
  br label %60

55:                                               ; preds = %44
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %45, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to i64*
  %59 = getelementptr i8, i8* %57, i32 8
  store i8* %59, i8** %56, align 8
  br label %60

60:                                               ; preds = %55, %49
  %61 = phi i64* [ %53, %49 ], [ %58, %55 ]
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 123
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  call void @abort() #4
  unreachable

66:                                               ; preds = %60
  %67 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %68 = bitcast %struct.__va_list_tag* %67 to i8*
  call void @llvm.va_end(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
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
  %2 = alloca [3 x %struct.tiny], align 4
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %4 = getelementptr inbounds %struct.tiny, %struct.tiny* %3, i32 0, i32 0
  store i32 10, i32* %4, align 4
  %5 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %6 = getelementptr inbounds %struct.tiny, %struct.tiny* %5, i32 0, i32 0
  store i32 11, i32* %6, align 4
  %7 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %8 = getelementptr inbounds %struct.tiny, %struct.tiny* %7, i32 0, i32 0
  store i32 12, i32* %8, align 4
  %9 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %10 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %11 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %12 = getelementptr inbounds %struct.tiny, %struct.tiny* %9, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.tiny, %struct.tiny* %10, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tiny, %struct.tiny* %11, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, ...) @f(i32 noundef 3, i32 %13, i32 %15, i32 %17, i64 noundef 123)
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
