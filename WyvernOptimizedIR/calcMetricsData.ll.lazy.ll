; ModuleID = './calcMetricsData.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/calcMetricsData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/VersaBench/dbms/calcMetricsData.c\00", align 1
@__PRETTY_FUNCTION__.calcMetricsData = private unnamed_addr constant [32 x i8] c"void calcMetricsData(Metrics *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcMetricsData(%struct.Metrics* noundef %0) #0 {
  %.not = icmp eq %struct.Metrics* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.calcMetricsData, i64 0, i64 0)) #4
  unreachable

4:                                                ; preds = %2
  %5 = call i64 @getTime() #5
  %6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sub nsw i64 %5, %7
  %9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %43

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 2
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sitofp i64 %17 to double
  %19 = fdiv double %15, %18
  %20 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 6
  store double %19, double* %20, align 8
  %21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 3
  %22 = load double, double* %21, align 8
  %23 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 2
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, %24
  %26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %25, %28
  %30 = fsub double %22, %29
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %35

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %33, align 8
  %34 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %34, align 8
  br label %42

35:                                               ; preds = %13
  %36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %30, %38
  %40 = call double @sqrt(double noundef %39) #5
  %41 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 7
  store double %40, double* %41, align 8
  br label %42

42:                                               ; preds = %35, %32
  br label %46

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %44, align 8
  %45 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 3, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %45, align 8
  br label %46

46:                                               ; preds = %43, %42
  %47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 2
  %52 = load double, double* %51, align 8
  %53 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sitofp i64 %54 to double
  %56 = fdiv double %52, %55
  %57 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 6
  store double %56, double* %57, align 8
  %58 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 3
  %59 = load double, double* %58, align 8
  %60 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 2
  %61 = load double, double* %60, align 8
  %62 = fmul double %61, %61
  %63 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to double
  %66 = fdiv double %62, %65
  %67 = fsub double %59, %66
  %68 = fcmp olt double %67, 0.000000e+00
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %70, align 8
  %71 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %71, align 8
  br label %79

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sitofp i64 %74 to double
  %76 = fdiv double %67, %75
  %77 = call double @sqrt(double noundef %76) #5
  %78 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 7
  store double %77, double* %78, align 8
  br label %79

79:                                               ; preds = %72, %69
  br label %83

80:                                               ; preds = %46
  %81 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %81, align 8
  %82 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 4, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %82, align 8
  br label %83

83:                                               ; preds = %80, %79
  %84 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 2
  %89 = load double, double* %88, align 8
  %90 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %89, %92
  %94 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 6
  store double %93, double* %94, align 8
  %95 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 3
  %96 = load double, double* %95, align 8
  %97 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 2
  %98 = load double, double* %97, align 8
  %99 = fmul double %98, %98
  %100 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = sitofp i64 %101 to double
  %103 = fdiv double %99, %102
  %104 = fsub double %96, %103
  %105 = fcmp olt double %104, 0.000000e+00
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %107, align 8
  %108 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %108, align 8
  br label %116

109:                                              ; preds = %87
  %110 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sitofp i64 %111 to double
  %113 = fdiv double %104, %112
  %114 = call double @sqrt(double noundef %113) #5
  %115 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 7
  store double %114, double* %115, align 8
  br label %116

116:                                              ; preds = %109, %106
  br label %120

117:                                              ; preds = %83
  %118 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %118, align 8
  %119 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i64 0, i32 5, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %119, align 8
  br label %120

120:                                              ; preds = %117, %116
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

declare dso_local i64 @getTime() #2

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
