; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-stdarg-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/strct-stdarg-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiny = type { i8, i8, i8, i8, i8 }
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

10:                                               ; preds = %74, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %77

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 5, i1 false)
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
  %66 = getelementptr inbounds %struct.tiny, %struct.tiny* %4, i32 0, i32 4
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 50
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  call void @abort() #4
  unreachable

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %10, !llvm.loop !4

77:                                               ; preds = %10
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %79 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp ule i32 %80, 40
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 3
  %84 = load i8*, i8** %83, align 16
  %85 = getelementptr i8, i8* %84, i32 %80
  %86 = bitcast i8* %85 to i64*
  %87 = add i32 %80, 8
  store i32 %87, i32* %79, align 16
  br label %93

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %78, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = bitcast i8* %90 to i64*
  %92 = getelementptr i8, i8* %90, i32 8
  store i8* %92, i8** %89, align 8
  br label %93

93:                                               ; preds = %88, %82
  %94 = phi i64* [ %86, %82 ], [ %91, %88 ]
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ne i64 %96, 123
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  call void @abort() #4
  unreachable

99:                                               ; preds = %93
  %100 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i64 0, i64 0
  %101 = bitcast %struct.__va_list_tag* %100 to i8*
  call void @llvm.va_end(i8* %101)
  %102 = load i32, i32* %2, align 4
  ret i32 %102
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
  %3 = alloca i40, align 8
  %4 = alloca i40, align 8
  %5 = alloca i40, align 8
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
  %25 = getelementptr inbounds %struct.tiny, %struct.tiny* %24, i32 0, i32 3
  store i8 40, i8* %25, align 1
  %26 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %27 = getelementptr inbounds %struct.tiny, %struct.tiny* %26, i32 0, i32 3
  store i8 41, i8* %27, align 1
  %28 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %29 = getelementptr inbounds %struct.tiny, %struct.tiny* %28, i32 0, i32 3
  store i8 42, i8* %29, align 1
  %30 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %31 = getelementptr inbounds %struct.tiny, %struct.tiny* %30, i32 0, i32 4
  store i8 50, i8* %31, align 1
  %32 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %33 = getelementptr inbounds %struct.tiny, %struct.tiny* %32, i32 0, i32 4
  store i8 51, i8* %33, align 1
  %34 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %35 = getelementptr inbounds %struct.tiny, %struct.tiny* %34, i32 0, i32 4
  store i8 52, i8* %35, align 1
  %36 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 0
  %37 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 1
  %38 = getelementptr inbounds [3 x %struct.tiny], [3 x %struct.tiny]* %2, i64 0, i64 2
  %39 = bitcast i40* %3 to i8*
  %40 = bitcast %struct.tiny* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 1 %40, i64 5, i1 false)
  %41 = load i40, i40* %3, align 8
  %42 = bitcast i40* %4 to i8*
  %43 = bitcast %struct.tiny* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 1 %43, i64 5, i1 false)
  %44 = load i40, i40* %4, align 8
  %45 = bitcast i40* %5 to i8*
  %46 = bitcast %struct.tiny* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 1 %46, i64 5, i1 false)
  %47 = load i40, i40* %5, align 8
  %48 = call i32 (i32, ...) @f(i32 noundef 3, i40 %41, i40 %44, i40 %47, i64 noundef 123)
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
