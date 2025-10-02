; ModuleID = './em3d.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/em3d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }

@nonlocals = dso_local global i32 0, align 4

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @compute_nodes(%struct.node_t* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %67, %1
  %.0 = phi %struct.node_t* [ %0, %1 ], [ %71, %67 ]
  %.not = icmp eq %struct.node_t* %.0, null
  br i1 %.not, label %72, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 0
  %5 = load double*, double** %4, align 8
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, -1
  br label %10

10:                                               ; preds = %44, %3
  %.03 = phi double [ %6, %3 ], [ %46, %44 ]
  %.01 = phi i32 [ 0, %3 ], [ %47, %44 ]
  %11 = icmp slt i32 %.01, %9
  br i1 %11, label %12, label %48

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 3
  %14 = load double**, double*** %13, align 8
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds double*, double** %14, i64 %15
  %17 = load double*, double** %16, align 8
  %18 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 4
  %19 = load double*, double** %18, align 8
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds double, double* %19, i64 %20
  %22 = load double, double* %21, align 8
  %.not6 = icmp eq double* %17, null
  br i1 %.not6, label %25, label %23

23:                                               ; preds = %12
  %24 = load double, double* %17, align 8
  br label %26

25:                                               ; preds = %12
  br label %26

26:                                               ; preds = %25, %23
  %.02 = phi double [ %24, %23 ], [ 0.000000e+00, %25 ]
  %27 = fneg double %22
  %28 = call double @llvm.fmuladd.f64(double %27, double %.02, double %.03)
  %29 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 3
  %30 = load double**, double*** %29, align 8
  %31 = or i32 %.01, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 4
  %36 = load double*, double** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds double, double* %36, i64 %37
  %39 = load double, double* %38, align 8
  %.not7 = icmp eq double* %34, null
  br i1 %.not7, label %42, label %40

40:                                               ; preds = %26
  %41 = load double, double* %34, align 8
  br label %43

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42, %40
  %.1 = phi double [ %41, %40 ], [ 0.000000e+00, %42 ]
  br label %44

44:                                               ; preds = %43
  %45 = fneg double %39
  %46 = call double @llvm.fmuladd.f64(double %45, double %.1, double %28)
  %47 = add nuw nsw i32 %.01, 2
  br label %10, !llvm.loop !4

48:                                               ; preds = %10
  %49 = icmp eq i32 %.01, %9
  br i1 %49, label %50, label %67

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 3
  %52 = load double**, double*** %51, align 8
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds double*, double** %52, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 4
  %57 = load double*, double** %56, align 8
  %58 = zext i32 %.01 to i64
  %59 = getelementptr inbounds double, double* %57, i64 %58
  %60 = load double, double* %59, align 8
  %.not5 = icmp eq double* %55, null
  br i1 %.not5, label %63, label %61

61:                                               ; preds = %50
  %62 = load double, double* %55, align 8
  br label %64

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %61
  %.2 = phi double [ %62, %61 ], [ 0.000000e+00, %63 ]
  %65 = fneg double %60
  %66 = call double @llvm.fmuladd.f64(double %65, double %.2, double %.03)
  br label %67

67:                                               ; preds = %64, %48
  %.14 = phi double [ %66, %64 ], [ %.03, %48 ]
  %68 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 0
  %69 = load double*, double** %68, align 8
  store double %.14, double* %69, align 8
  %70 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 1
  %71 = load %struct.node_t*, %struct.node_t** %70, align 8
  br label %2, !llvm.loop !6

72:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
