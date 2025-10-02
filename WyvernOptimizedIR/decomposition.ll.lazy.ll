; ModuleID = './decomposition.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/decomposition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@.str = private unnamed_addr constant [37 x i8] c"xproc * yproc * zproc == getNRanks()\00", align 1
@.str.1 = private unnamed_addr constant [90 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/decomposition.c\00", align 1
@__PRETTY_FUNCTION__.initDecomposition = private unnamed_addr constant [60 x i8] c"struct DomainSt *initDecomposition(int, int, int, real_t *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DomainSt* @initDecomposition(i32 noundef %0, i32 noundef %1, i32 noundef %2, double* nocapture noundef readonly %3) #0 {
  %5 = mul nsw i32 %0, %1
  %6 = mul nsw i32 %5, %2
  %7 = call i32 @getNRanks() #6
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %11

10:                                               ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 noundef 20, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.initDecomposition, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = call i8* @comdMalloc(i64 noundef 168)
  %13 = bitcast i8* %12 to i32*
  store i32 %0, i32* %13, align 8
  %14 = getelementptr inbounds i8, i8* %12, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %1, i32* %15, align 4
  %16 = getelementptr inbounds i8, i8* %12, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %2, i32* %17, align 8
  %18 = call i32 @getMyRank() #6
  %19 = bitcast i8* %12 to i32*
  %20 = load i32, i32* %19, align 8
  %21 = srem i32 %18, %20
  %22 = getelementptr inbounds i8, i8* %12, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 4
  %24 = sdiv i32 %18, %20
  %25 = getelementptr inbounds i8, i8* %12, i64 4
  %26 = bitcast i8* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = srem i32 %24, %27
  %29 = getelementptr inbounds i8, i8* %12, i64 16
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds i8, i8* %12, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %24, %33
  %35 = getelementptr inbounds i8, i8* %12, i64 20
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %66, %11
  %.01 = phi i32 [ 0, %11 ], [ %67, %66 ]
  %38 = icmp ult i32 %.01, 3
  br i1 %38, label %39, label %68

39:                                               ; preds = %37
  %40 = getelementptr inbounds i8, i8* %12, i64 24
  %41 = bitcast i8* %40 to [3 x double]*
  %42 = zext i32 %.01 to i64
  %43 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 %42
  store double 0.000000e+00, double* %43, align 8
  %44 = zext i32 %.01 to i64
  %45 = getelementptr inbounds double, double* %3, i64 %44
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds i8, i8* %12, i64 48
  %48 = bitcast i8* %47 to [3 x double]*
  %49 = zext i32 %.01 to i64
  %50 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 0, i64 %49
  store double %46, double* %50, align 8
  %51 = getelementptr inbounds i8, i8* %12, i64 48
  %52 = bitcast i8* %51 to [3 x double]*
  %53 = zext i32 %.01 to i64
  %54 = getelementptr inbounds [3 x double], [3 x double]* %52, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = getelementptr inbounds i8, i8* %12, i64 24
  %57 = bitcast i8* %56 to [3 x double]*
  %58 = zext i32 %.01 to i64
  %59 = getelementptr inbounds [3 x double], [3 x double]* %57, i64 0, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fsub double %55, %60
  %62 = getelementptr inbounds i8, i8* %12, i64 72
  %63 = bitcast i8* %62 to [3 x double]*
  %64 = zext i32 %.01 to i64
  %65 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0, i64 %64
  store double %61, double* %65, align 8
  br label %66

66:                                               ; preds = %39
  %67 = add nuw nsw i32 %.01, 1
  br label %37, !llvm.loop !4

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %130, %68
  %.0 = phi i32 [ 0, %68 ], [ %131, %130 ]
  %70 = icmp ult i32 %.0, 3
  br i1 %70, label %71, label %132

71:                                               ; preds = %69
  %72 = getelementptr inbounds i8, i8* %12, i64 72
  %73 = bitcast i8* %72 to [3 x double]*
  %74 = zext i32 %.0 to i64
  %75 = getelementptr inbounds [3 x double], [3 x double]* %73, i64 0, i64 %74
  %76 = load double, double* %75, align 8
  %77 = bitcast i8* %12 to [3 x i32]*
  %78 = zext i32 %.0 to i64
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %77, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %76, %81
  %83 = getelementptr inbounds i8, i8* %12, i64 144
  %84 = bitcast i8* %83 to [3 x double]*
  %85 = zext i32 %.0 to i64
  %86 = getelementptr inbounds [3 x double], [3 x double]* %84, i64 0, i64 %85
  store double %82, double* %86, align 8
  %87 = getelementptr inbounds i8, i8* %12, i64 24
  %88 = bitcast i8* %87 to [3 x double]*
  %89 = zext i32 %.0 to i64
  %90 = getelementptr inbounds [3 x double], [3 x double]* %88, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = getelementptr inbounds i8, i8* %12, i64 12
  %93 = bitcast i8* %92 to [3 x i32]*
  %94 = zext i32 %.0 to i64
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %93, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sitofp i32 %96 to double
  %98 = getelementptr inbounds i8, i8* %12, i64 144
  %99 = bitcast i8* %98 to [3 x double]*
  %100 = zext i32 %.0 to i64
  %101 = getelementptr inbounds [3 x double], [3 x double]* %99, i64 0, i64 %100
  %102 = load double, double* %101, align 8
  %103 = call double @llvm.fmuladd.f64(double %97, double %102, double %91)
  %104 = getelementptr inbounds i8, i8* %12, i64 96
  %105 = bitcast i8* %104 to [3 x double]*
  %106 = zext i32 %.0 to i64
  %107 = getelementptr inbounds [3 x double], [3 x double]* %105, i64 0, i64 %106
  store double %103, double* %107, align 8
  %108 = getelementptr inbounds i8, i8* %12, i64 24
  %109 = bitcast i8* %108 to [3 x double]*
  %110 = zext i32 %.0 to i64
  %111 = getelementptr inbounds [3 x double], [3 x double]* %109, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds i8, i8* %12, i64 12
  %114 = bitcast i8* %113 to [3 x i32]*
  %115 = zext i32 %.0 to i64
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %114, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = sitofp i32 %118 to double
  %120 = getelementptr inbounds i8, i8* %12, i64 144
  %121 = bitcast i8* %120 to [3 x double]*
  %122 = zext i32 %.0 to i64
  %123 = getelementptr inbounds [3 x double], [3 x double]* %121, i64 0, i64 %122
  %124 = load double, double* %123, align 8
  %125 = call double @llvm.fmuladd.f64(double %119, double %124, double %112)
  %126 = getelementptr inbounds i8, i8* %12, i64 120
  %127 = bitcast i8* %126 to [3 x double]*
  %128 = zext i32 %.0 to i64
  %129 = getelementptr inbounds [3 x double], [3 x double]* %127, i64 0, i64 %128
  store double %125, double* %129, align 8
  br label %130

130:                                              ; preds = %71
  %131 = add nuw nsw i32 %.0, 1
  br label %69, !llvm.loop !6

132:                                              ; preds = %69
  %133 = bitcast i8* %12 to %struct.DomainSt*
  ret %struct.DomainSt* %133
}

declare dso_local i32 @getNRanks() #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal noalias i8* @comdMalloc(i64 noundef %0) #0 {
  %2 = call noalias i8* @malloc(i64 noundef %0) #6
  ret i8* %2
}

declare dso_local i32 @getMyRank() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @processorNum(%struct.DomainSt* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 1, i64 0
  %6 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 0, i64 0
  %7 = load i32, i32* %5, align 4
  %8 = add nsw i32 %7, %1
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %8, %9
  %11 = srem i32 %10, %9
  %12 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 1, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, %2
  %15 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %14, %16
  %18 = srem i32 %17, %16
  %19 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 1, i64 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %3
  %22 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 0, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %21, %23
  %25 = srem i32 %24, %23
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds %struct.DomainSt, %struct.DomainSt* %0, i64 0, i32 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, %25
  %30 = add nsw i32 %18, %29
  %31 = mul nsw i32 %26, %30
  %32 = add nsw i32 %11, %31
  ret i32 %32
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
