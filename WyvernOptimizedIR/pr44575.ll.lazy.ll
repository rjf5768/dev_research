; ModuleID = './pr44575.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr44575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { [3 x float] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@fails = dso_local global i32 0, align 4
@a = dso_local global [5 x %struct.S] zeroinitializer, align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @check(i32 noundef %0, ...) #0 {
  %2 = alloca %struct.S, align 4
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca %struct.S, align 8
  %5 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_start(i8* nonnull %5)
  br label %6

6:                                                ; preds = %54, %1
  %.0 = phi i32 [ 2, %1 ], [ %55, %54 ]
  %7 = icmp ult i32 %.0, 4
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = shl i32 %0, 4
  %10 = or i32 %9, %.0
  switch i32 %10, label %37 [
    i32 18, label %11
    i32 19, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %13, 145
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 3
  %17 = load i8*, i8** %16, align 16
  %18 = sext i32 %13 to i64
  %19 = getelementptr i8, i8* %17, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 16
  %21 = bitcast i8* %19 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 16
  %23 = bitcast %struct.S* %4 to <2 x float>*
  store <2 x float> %22, <2 x float>* %23, align 8
  %24 = bitcast i8* %20 to float*
  %25 = load float, float* %24, align 16
  %26 = getelementptr inbounds %struct.S, %struct.S* %4, i64 0, i32 0, i64 2
  store float %25, float* %26, align 8
  %27 = add i32 %13, 32
  store i32 %27, i32* %12, align 4
  br label %33

28:                                               ; preds = %11
  %29 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.S*
  %32 = getelementptr i8, i8* %30, i64 16
  store i8* %32, i8** %29, align 8
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi %struct.S* [ %4, %15 ], [ %31, %28 ]
  %35 = bitcast %struct.S* %2 to i8*
  %36 = bitcast %struct.S* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %35, i8* noundef nonnull align 4 dereferenceable(12) %36, i64 12, i1 false)
  br label %40

37:                                               ; preds = %8
  %38 = load i32, i32* @fails, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @fails, align 4
  br label %40

40:                                               ; preds = %37, %33
  %.not = phi i1 [ true, %37 ], [ false, %33 ]
  %.01 = phi %struct.S* [ null, %37 ], [ getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2), %33 ]
  br i1 %.not, label %50, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.S, %struct.S* %.01, i64 0, i32 0, i64 2
  %43 = load float, float* %42, align 4
  %44 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0, i64 2
  %45 = load float, float* %44, align 4
  %46 = fcmp une float %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @fails, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @fails, align 4
  br label %50

50:                                               ; preds = %47, %41, %40
  %51 = load i32, i32* @fails, align 4
  %.not4 = icmp eq i32 %51, 0
  br i1 %.not4, label %53, label %52

52:                                               ; preds = %50
  br label %56

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

.loopexit:                                        ; preds = %6
  br label %56

56:                                               ; preds = %.loopexit, %52
  %57 = bitcast [1 x %struct.__va_list_tag]* %3 to i8*
  call void @llvm.va_end(i8* %57)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #3 {
  %1 = alloca { <2 x float>, float }, align 8
  %2 = alloca { <2 x float>, float }, align 8
  store float -4.902600e+04, float* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2, i32 0, i64 2), align 16
  %3 = bitcast { <2 x float>, float }* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %3, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2) to i8*), i64 12, i1 false)
  %4 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i64 0, i32 0
  %5 = load <2 x float>, <2 x float>* %4, align 8
  %6 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %1, i64 0, i32 1
  %7 = load float, float* %6, align 8
  %8 = bitcast { <2 x float>, float }* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(12) %8, i8* noundef nonnull align 8 dereferenceable(12) bitcast (%struct.S* getelementptr inbounds ([5 x %struct.S], [5 x %struct.S]* @a, i64 0, i64 2) to i8*), i64 12, i1 false)
  %9 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i64 0, i32 0
  %10 = load <2 x float>, <2 x float>* %9, align 8
  %11 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %2, i64 0, i32 1
  %12 = load float, float* %11, align 8
  call void (i32, ...) @check(i32 noundef 1, <2 x float> %5, float %7, <2 x float> %10, float %12)
  %13 = load i32, i32* @fails, align 4
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %0
  call void @abort() #5
  unreachable

15:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #4

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
