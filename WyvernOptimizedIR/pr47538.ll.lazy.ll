; ModuleID = './pr47538.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr47538.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S = type { double, double, double*, i64 }

@__const.main.c = private unnamed_addr constant [4 x double] [double 1.000000e+01, double 2.000000e+01, double 3.000000e+01, double 4.000000e+01], align 16
@__const.main.e = private unnamed_addr constant [4 x double] [double 1.180000e+02, double 1.180000e+02, double 1.180000e+02, double 1.180000e+02], align 16

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @foo(%struct.S* nocapture noundef %0, %struct.S* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 3
  %4 = load i64, i64* %3, align 8
  %5 = add i64 %4, 1
  %6 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  %7 = load double, double* %6, align 8
  %8 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 0
  %9 = load double, double* %8, align 8
  %10 = fsub double %7, %9
  %11 = fmul double %10, 2.500000e-01
  %12 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 0
  store double %9, double* %12, align 8
  %13 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 1
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 1
  store double %14, double* %15, align 8
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %19 = load double*, double** %18, align 8
  store double 0.000000e+00, double* %19, align 8
  br label %82

20:                                               ; preds = %2
  %21 = icmp eq i64 %5, 2
  br i1 %21, label %22, label %35

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  %24 = load double*, double** %23, align 8
  %25 = load double, double* %24, align 8
  %26 = fmul double %11, %25
  %27 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %28 = load double*, double** %27, align 8
  %29 = getelementptr inbounds double, double* %28, i64 1
  store double %26, double* %29, align 8
  %30 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %31 = load double*, double** %30, align 8
  %32 = getelementptr inbounds double, double* %31, i64 1
  %33 = load double, double* %32, align 8
  %34 = fmul double %33, 2.000000e+00
  store double %34, double* %31, align 8
  br label %81

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %54, %35
  %.02 = phi double [ 0.000000e+00, %35 ], [ %60, %54 ]
  %.01 = phi double [ 1.000000e+00, %35 ], [ %55, %54 ]
  %.0 = phi i64 [ 1, %35 ], [ %61, %54 ]
  %37 = add i64 %4, -1
  %.not = icmp ugt i64 %.0, %37
  br i1 %.not, label %62, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  %40 = load double*, double** %39, align 8
  %41 = add i64 %.0, -1
  %42 = getelementptr inbounds double, double* %40, i64 %41
  %43 = load double, double* %42, align 8
  %44 = add i64 %.0, 1
  %45 = getelementptr inbounds double, double* %40, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fsub double %43, %46
  %48 = fmul double %11, %47
  %49 = uitofp i64 %.0 to double
  %50 = fdiv double %48, %49
  %51 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %52 = load double*, double** %51, align 8
  %53 = getelementptr inbounds double, double* %52, i64 %.0
  store double %50, double* %53, align 8
  br label %54

54:                                               ; preds = %38
  %55 = fneg double %.01
  %56 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %57 = load double*, double** %56, align 8
  %58 = getelementptr inbounds double, double* %57, i64 %.0
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fmuladd.f64(double %.01, double %59, double %.02)
  %61 = add i64 %.0, 1
  br label %36, !llvm.loop !4

62:                                               ; preds = %36
  %63 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  %64 = load double*, double** %63, align 8
  %65 = add i64 %4, -1
  %66 = getelementptr inbounds double, double* %64, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %11, %67
  %69 = uitofp i64 %5 to double
  %70 = fadd double %69, -1.000000e+00
  %71 = fdiv double %68, %70
  %72 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %73 = load double*, double** %72, align 8
  %74 = getelementptr inbounds double, double* %73, i64 %4
  store double %71, double* %74, align 8
  %75 = getelementptr inbounds %struct.S, %struct.S* %0, i64 0, i32 2
  %76 = load double*, double** %75, align 8
  %77 = getelementptr inbounds double, double* %76, i64 %4
  %78 = load double, double* %77, align 8
  %79 = call double @llvm.fmuladd.f64(double %.01, double %78, double %.02)
  %80 = fmul double %79, 2.000000e+00
  store double %80, double* %76, align 8
  br label %81

81:                                               ; preds = %62, %22
  br label %82

82:                                               ; preds = %81, %17
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #2 {
  %1 = alloca %struct.S, align 8
  %2 = alloca %struct.S, align 8
  %3 = alloca [4 x double], align 16
  %4 = alloca [4 x double], align 16
  %5 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %5, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x double]* @__const.main.c to i8*), i64 32, i1 false)
  %6 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 0
  store double 1.000000e+01, double* %6, align 8
  %7 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 1
  store double 6.000000e+00, double* %7, align 8
  %8 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 0
  %9 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 2
  store double* %8, double** %9, align 8
  %10 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.S, %struct.S* %1, i64 0, i32 2
  store double* %10, double** %11, align 8
  %12 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i64 3, i64* %12, align 8
  %13 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %13, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x double]* @__const.main.e to i8*), i64 32, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %14 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %15 = load double, double* %14, align 16
  %16 = fcmp une double %15, 0.000000e+00
  br i1 %16, label %29, label %17

17:                                               ; preds = %0
  %18 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %19 = load double, double* %18, align 8
  %20 = fcmp une double %19, 2.000000e+01
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %23 = load double, double* %22, align 16
  %24 = fcmp une double %23, 1.000000e+01
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %27 = load double, double* %26, align 8
  %28 = fcmp une double %27, -1.000000e+01
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21, %17, %0
  call void @abort() #5
  br label %UnifiedUnreachableBlock

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i64 2, i64* %31, align 8
  %32 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %32, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x double]* @__const.main.e to i8*), i64 32, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %33 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %34 = load double, double* %33, align 16
  %35 = fcmp une double %34, 6.000000e+01
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %38 = load double, double* %37, align 8
  %39 = fcmp une double %38, 2.000000e+01
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %42 = load double, double* %41, align 16
  %43 = fcmp une double %42, -1.000000e+01
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %46 = load double, double* %45, align 8
  %47 = fcmp une double %46, 1.180000e+02
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40, %36, %30
  call void @abort() #5
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i64 1, i64* %50, align 8
  %51 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %51, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x double]* @__const.main.e to i8*), i64 32, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %52 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %53 = load double, double* %52, align 16
  %54 = fcmp une double %53, -2.000000e+01
  br i1 %54, label %67, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %57 = load double, double* %56, align 8
  %58 = fcmp une double %57, -1.000000e+01
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %61 = load double, double* %60, align 16
  %62 = fcmp une double %61, 1.180000e+02
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %65 = load double, double* %64, align 8
  %66 = fcmp une double %65, 1.180000e+02
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %59, %55, %49
  call void @abort() #5
  br label %UnifiedUnreachableBlock

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.S, %struct.S* %2, i64 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = bitcast [4 x double]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(32) %70, i8* noundef nonnull align 16 dereferenceable(32) bitcast ([4 x double]* @__const.main.e to i8*), i64 32, i1 false)
  call void @foo(%struct.S* noundef nonnull %1, %struct.S* noundef nonnull %2)
  %71 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 0
  %72 = load double, double* %71, align 16
  %73 = fcmp une double %72, 0.000000e+00
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 1
  %76 = load double, double* %75, align 8
  %77 = fcmp une double %76, 1.180000e+02
  br i1 %77, label %86, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 2
  %80 = load double, double* %79, align 16
  %81 = fcmp une double %80, 1.180000e+02
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds [4 x double], [4 x double]* %4, i64 0, i64 3
  %84 = load double, double* %83, align 8
  %85 = fcmp une double %84, 1.180000e+02
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78, %74, %68
  call void @abort() #5
  br label %UnifiedUnreachableBlock

87:                                               ; preds = %82
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %86, %67, %48, %29
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #4

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
