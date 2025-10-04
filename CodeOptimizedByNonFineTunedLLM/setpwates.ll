; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/setpwates.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/setpwates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@pinsPerLen = external dso_local global double, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @setpwates() #0 {
  %1 = alloca %struct.tilebox*, align 8
  %2 = alloca i32, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %85, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @numcells, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %88

7:                                                ; preds = %3
  %8 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %8, i64 %10
  %12 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %13 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %12, i32 0, i32 21
  %14 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %13, i64 0, i64 0
  %15 = load %struct.tilebox*, %struct.tilebox** %14, align 8
  store %struct.tilebox* %15, %struct.tilebox** %1, align 8
  br label %16

16:                                               ; preds = %80, %7
  %17 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %18 = icmp ne %struct.tilebox* %17, null
  br i1 %18, label %19, label %84

19:                                               ; preds = %16
  %20 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %21 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %20, i32 0, i32 1
  %22 = load double, double* %21, align 8
  %23 = load double, double* @pinsPerLen, align 8
  %24 = fcmp ogt double %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load double, double* @pinsPerLen, align 8
  %27 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %28 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %27, i32 0, i32 1
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, %26
  store double %30, double* %28, align 8
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %33 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %32, i32 0, i32 1
  store double 1.000000e+00, double* %33, align 8
  br label %34

34:                                               ; preds = %31, %25
  %35 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %36 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %35, i32 0, i32 2
  %37 = load double, double* %36, align 8
  %38 = load double, double* @pinsPerLen, align 8
  %39 = fcmp ogt double %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load double, double* @pinsPerLen, align 8
  %42 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %43 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %42, i32 0, i32 2
  %44 = load double, double* %43, align 8
  %45 = fdiv double %44, %41
  store double %45, double* %43, align 8
  br label %49

46:                                               ; preds = %34
  %47 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %48 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %47, i32 0, i32 2
  store double 1.000000e+00, double* %48, align 8
  br label %49

49:                                               ; preds = %46, %40
  %50 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %51 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %50, i32 0, i32 3
  %52 = load double, double* %51, align 8
  %53 = load double, double* @pinsPerLen, align 8
  %54 = fcmp ogt double %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load double, double* @pinsPerLen, align 8
  %57 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %58 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %57, i32 0, i32 3
  %59 = load double, double* %58, align 8
  %60 = fdiv double %59, %56
  store double %60, double* %58, align 8
  br label %64

61:                                               ; preds = %49
  %62 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 3
  store double 1.000000e+00, double* %63, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 4
  %67 = load double, double* %66, align 8
  %68 = load double, double* @pinsPerLen, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load double, double* @pinsPerLen, align 8
  %72 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %73 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %72, i32 0, i32 4
  %74 = load double, double* %73, align 8
  %75 = fdiv double %74, %71
  store double %75, double* %73, align 8
  br label %79

76:                                               ; preds = %64
  %77 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %77, i32 0, i32 4
  store double 1.000000e+00, double* %78, align 8
  br label %79

79:                                               ; preds = %76, %70
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.tilebox*, %struct.tilebox** %1, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 0
  %83 = load %struct.tilebox*, %struct.tilebox** %82, align 8
  store %struct.tilebox* %83, %struct.tilebox** %1, align 8
  br label %16, !llvm.loop !4

84:                                               ; preds = %16
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %3, !llvm.loop !6

88:                                               ; preds = %3
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
