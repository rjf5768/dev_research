; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wireest.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/wireest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@blockmx = external dso_local global i32, align 4
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockmy = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@slopeX = external dso_local global double, align 8
@basefactor = external dso_local global double, align 8
@slopeY = external dso_local global double, align 8
@aveChanWid = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @wireestx(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @blockmx, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @blockl, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @blockr, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @blockmy, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @blockmy, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @blockt, align 4
  %42 = load i32, i32* @blockb, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %10, align 4
  br label %94

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @blockmy, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @blockmy, align 4
  %53 = sub nsw i32 %51, %52
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @blockmy, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @blockmy, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @blockmy, align 4
  %68 = sub nsw i32 %66, %67
  br label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @blockmy, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %68, %65 ], [ %73, %69 ]
  %76 = icmp sle i32 %60, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @blockt, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %77
  br label %93

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @blockb, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %40
  %95 = load double, double* @slopeX, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sitofp i32 %96 to double
  %98 = load double, double* @basefactor, align 8
  %99 = call double @llvm.fmuladd.f64(double %95, double %97, double %98)
  store double %99, double* %11, align 8
  %100 = load double, double* @slopeY, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sitofp i32 %101 to double
  %103 = load double, double* @basefactor, align 8
  %104 = call double @llvm.fmuladd.f64(double %100, double %102, double %103)
  store double %104, double* %12, align 8
  %105 = load double, double* %11, align 8
  %106 = load double, double* %12, align 8
  %107 = fmul double %105, %106
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = load i32, i32* @aveChanWid, align 4
  %111 = sitofp i32 %110 to double
  %112 = fmul double %109, %111
  %113 = fmul double 5.000000e-01, %112
  %114 = fptosi double %113 to i32
  ret i32 %114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @wireesty(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double %3, double* %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @blockmy, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @blockb, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %16
  br label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @blockt, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @blockmx, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @blockmx, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i32, i32* @blockr, align 4
  %42 = load i32, i32* @blockl, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  store i32 %44, i32* %9, align 4
  br label %94

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @blockmx, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @blockmx, align 4
  %53 = sub nsw i32 %51, %52
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @blockmx, align 4
  %57 = sub nsw i32 %55, %56
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi i32 [ %53, %50 ], [ %58, %54 ]
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @blockmx, align 4
  %63 = sub nsw i32 %61, %62
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @blockmx, align 4
  %68 = sub nsw i32 %66, %67
  br label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @blockmx, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %69, %65
  %75 = phi i32 [ %68, %65 ], [ %73, %69 ]
  %76 = icmp sle i32 %60, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @blockr, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %77
  br label %93

85:                                               ; preds = %74
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @blockl, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %91, %85
  br label %93

93:                                               ; preds = %92, %84
  br label %94

94:                                               ; preds = %93, %40
  %95 = load double, double* @slopeX, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sitofp i32 %96 to double
  %98 = load double, double* @basefactor, align 8
  %99 = call double @llvm.fmuladd.f64(double %95, double %97, double %98)
  store double %99, double* %11, align 8
  %100 = load double, double* @slopeY, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sitofp i32 %101 to double
  %103 = load double, double* @basefactor, align 8
  %104 = call double @llvm.fmuladd.f64(double %100, double %102, double %103)
  store double %104, double* %12, align 8
  %105 = load double, double* %11, align 8
  %106 = load double, double* %12, align 8
  %107 = fmul double %105, %106
  %108 = load double, double* %8, align 8
  %109 = fmul double %107, %108
  %110 = load i32, i32* @aveChanWid, align 4
  %111 = sitofp i32 %110 to double
  %112 = fmul double %109, %111
  %113 = fmul double 5.000000e-01, %112
  %114 = fptosi double %113 to i32
  ret i32 %114
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
