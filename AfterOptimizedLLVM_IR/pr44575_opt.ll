; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44575.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [3 x float] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@fails = dso_local global i32 0, align 4
@a = dso_local global [5 x %struct.S] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @check(i32 noundef %0, ...) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.S, align 4
  %4 = alloca %struct.S*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.S, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_start(i8* %11)
  store i32 2, i32* %8, align 4
  br label %12

12:                                               ; preds = %75, %1
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  store %struct.S* null, %struct.S** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 2
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %2, align 4
  %21 = shl i32 %20, 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %21, %22
  switch i32 %23, label %52 [
    i32 18, label %24
    i32 19, label %24
  ]

24:                                               ; preds = %15, %15
  store %struct.S* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2), %struct.S** %4, align 8
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %26 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ule i32 %27, 144
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 3
  %31 = load i8*, i8** %30, align 16
  %32 = getelementptr i8, i8* %31, i32 %27
  %33 = getelementptr inbounds i8, i8* %32, i64 16
  %34 = bitcast %struct.S* %9 to { <2 x float>, float }*
  %35 = bitcast i8* %32 to <2 x float>*
  %36 = load <2 x float>, <2 x float>* %35, align 16
  %37 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %34, i32 0, i32 0
  store <2 x float> %36, <2 x float>* %37, align 4
  %38 = bitcast i8* %33 to float*
  %39 = load float, float* %38, align 16
  %40 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %34, i32 0, i32 1
  store float %39, float* %40, align 4
  %41 = bitcast { <2 x float>, float }* %34 to %struct.S*
  %42 = add i32 %27, 32
  store i32 %42, i32* %26, align 4
  br label %48

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %25, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to %struct.S*
  %47 = getelementptr i8, i8* %45, i32 16
  store i8* %47, i8** %44, align 8
  br label %48

48:                                               ; preds = %43, %29
  %49 = phi %struct.S* [ %41, %29 ], [ %46, %43 ]
  %50 = bitcast %struct.S* %3 to i8*
  %51 = bitcast %struct.S* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 12, i1 false)
  br label %55

52:                                               ; preds = %15
  %53 = load i32, i32* @fails, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @fails, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.S*, %struct.S** %4, align 8
  %57 = icmp ne %struct.S* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.S*, %struct.S** %4, align 8
  %60 = getelementptr inbounds %struct.S, %struct.S* %59, i32 0, i32 0
  %61 = getelementptr inbounds [3 x float], [3 x float]* %60, i64 0, i64 2
  %62 = load float, float* %61, align 4
  %63 = getelementptr inbounds %struct.S, %struct.S* %3, i32 0, i32 0
  %64 = getelementptr inbounds [3 x float], [3 x float]* %63, i64 0, i64 2
  %65 = load float, float* %64, align 4
  %66 = fcmp une float %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @fails, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* @fails, align 4
  br label %70

70:                                               ; preds = %67, %58, %55
  %71 = load i32, i32* @fails, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %78

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %12, !llvm.loop !4

78:                                               ; preds = %73, %12
  %79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %80 = bitcast %struct.__va_list_tag* %79 to i8*
  call void @llvm.va_end(i8* %80)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca i32, align 4
  %2 = alloca { <2 x float>, float }, align 8
  %3 = alloca { <2 x float>, float }, align 8
  store i32 0, i32* %1, align 4
  store float -4.902600e+04, float* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2, i32 0, i64 2), align 8
  %4 = bitcast { <2 x float>, float }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.S* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2) to i8*), i64 12, i1 false)
  %5 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 0
  %6 = load <2 x float>, <2 x float>* %5, align 8
  %7 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i32 0, i32 1
  %8 = load float, float* %7, align 8
  %9 = bitcast { <2 x float>, float }* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.S* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2) to i8*), i64 12, i1 false)
  %10 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %3, i32 0, i32 0
  %11 = load <2 x float>, <2 x float>* %10, align 8
  %12 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %3, i32 0, i32 1
  %13 = load float, float* %12, align 8
  call void (i32, ...) @check(i32 noundef 1, <2 x float> %6, float %8, <2 x float> %11, float %13)
  %14 = load i32, i32* @fails, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  call void @abort() #5
  unreachable

17:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
