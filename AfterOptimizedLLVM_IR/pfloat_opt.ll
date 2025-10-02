; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pfloat.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @dtop(double noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca double, align 8
  %4 = alloca i16*, align 8
  %5 = alloca %struct.precisionType*, align 8
  store double %0, double* %3, align 8
  %6 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 129)
  store %struct.precisionType* %6, %struct.precisionType** %5, align 8
  %7 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %8 = icmp eq %struct.precisionType* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  store %struct.precisionType* %10, %struct.precisionType** %2, align 8
  br label %52

11:                                               ; preds = %1
  %12 = load double, double* %3, align 8
  %13 = fcmp olt double %12, 0.000000e+00
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load double, double* %3, align 8
  %16 = fneg double %15
  store double %16, double* %3, align 8
  %17 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %18 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 3
  store i8 1, i8* %18, align 2
  br label %22

19:                                               ; preds = %11
  %20 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %21 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %20, i32 0, i32 3
  store i8 0, i8* %21, align 2
  br label %22

22:                                               ; preds = %19, %14
  %23 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 4
  %25 = getelementptr inbounds [1 x i16], [1 x i16]* %24, i64 0, i64 0
  store i16* %25, i16** %4, align 8
  br label %26

26:                                               ; preds = %35, %22
  %27 = load double, double* %3, align 8
  %28 = call double @fmod(double noundef %27, double noundef 6.553600e+04) #4
  %29 = fptoui double %28 to i16
  %30 = load i16*, i16** %4, align 8
  %31 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %31, i16** %4, align 8
  store i16 %29, i16* %30, align 2
  %32 = load double, double* %3, align 8
  %33 = fdiv double %32, 6.553600e+04
  %34 = call double @llvm.floor.f64(double %33)
  store double %34, double* %3, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load double, double* %3, align 8
  %37 = fcmp une double %36, 0.000000e+00
  br i1 %37, label %26, label %38, !llvm.loop !4

38:                                               ; preds = %35
  %39 = load i16*, i16** %4, align 8
  %40 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %41 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i32 0, i32 4
  %42 = getelementptr inbounds [1 x i16], [1 x i16]* %41, i64 0, i64 0
  %43 = ptrtoint i16* %39 to i64
  %44 = ptrtoint i16* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 2
  %47 = trunc i64 %46 to i16
  %48 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 2
  store i16 %47, i16* %49, align 2
  %50 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %51 = call %struct.precisionType* @presult(%struct.precisionType* noundef %50)
  store %struct.precisionType* %51, %struct.precisionType** %2, align 8
  br label %52

52:                                               ; preds = %38, %9
  %53 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  ret %struct.precisionType* %53
}

declare dso_local %struct.precisionType* @palloc(...) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ptod(%struct.precisionType* noundef %0) #0 {
  %2 = alloca %struct.precisionType*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca double, align 8
  store %struct.precisionType* %0, %struct.precisionType** %2, align 8
  %5 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %6 = icmp ne %struct.precisionType* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %9 = bitcast %struct.precisionType* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = add i16 %10, 1
  store i16 %11, i16* %9, align 2
  %12 = zext i16 %10 to i32
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi i1 [ false, %1 ], [ %13, %7 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %18 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 4
  %20 = getelementptr inbounds [1 x i16], [1 x i16]* %19, i64 0, i64 0
  %21 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 2
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %20, i64 %25
  store i16* %26, i16** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %27

27:                                               ; preds = %34, %14
  %28 = load double, double* %4, align 8
  %29 = load i16*, i16** %3, align 8
  %30 = getelementptr inbounds i16, i16* %29, i32 -1
  store i16* %30, i16** %3, align 8
  %31 = load i16, i16* %30, align 2
  %32 = uitofp i16 %31 to double
  %33 = call double @llvm.fmuladd.f64(double %28, double 6.553600e+04, double %32)
  store double %33, double* %4, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i16*, i16** %3, align 8
  %36 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %37 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %36, i32 0, i32 4
  %38 = getelementptr inbounds [1 x i16], [1 x i16]* %37, i64 0, i64 0
  %39 = icmp ugt i16* %35, %38
  br i1 %39, label %27, label %40, !llvm.loop !6

40:                                               ; preds = %34
  %41 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %42 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %41, i32 0, i32 3
  %43 = load i8, i8* %42, align 2
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load double, double* %4, align 8
  %47 = fneg double %46
  store double %47, double* %4, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %50 = icmp ne %struct.precisionType* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %53 = bitcast %struct.precisionType* %52 to i16*
  %54 = load i16, i16* %53, align 2
  %55 = add i16 %54, -1
  store i16 %55, i16* %53, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.precisionType*, %struct.precisionType** %2, align 8
  %60 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %58, %51, %48
  %63 = phi i1 [ false, %51 ], [ false, %48 ], [ %61, %58 ]
  %64 = zext i1 %63 to i32
  %65 = load double, double* %4, align 8
  ret double %65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
