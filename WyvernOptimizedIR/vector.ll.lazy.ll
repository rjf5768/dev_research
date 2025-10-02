; ModuleID = './vector.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/voronoi/vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VEC2 = type { double, double, double }

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local double @V2_cprod(%struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %0, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 1
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 0
  %10 = load double, double* %9, align 8
  %11 = fneg double %8
  %12 = fmul double %10, %11
  %13 = call double @llvm.fmuladd.f64(double %4, double %6, double %12)
  ret double %13
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind readonly uwtable willreturn
define dso_local double @V2_dot(%struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %0, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = fmul double %8, %10
  %12 = call double @llvm.fmuladd.f64(double %4, double %6, double %11)
  ret double %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @V2_times(%struct.VEC2* noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, double noundef %1, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #2 {
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = fmul double %5, %1
  %7 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  store double %6, double* %7, align 8
  %8 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 1
  %9 = load double, double* %8, align 8
  %10 = fmul double %9, %1
  %11 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @V2_sum(%struct.VEC2* noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %1, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #2 {
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fadd double %5, %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fadd double %11, %13
  %15 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  store double %14, double* %15, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @V2_sub(%struct.VEC2* noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %1, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %2) #2 {
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fsub double %5, %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %2, i64 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fsub double %11, %13
  %15 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  store double %14, double* %15, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @V2_magn(%struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %0) #3 {
  %2 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  %3 = load double, double* %2, align 8
  %4 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  %5 = load double, double* %4, align 8
  %6 = fmul double %5, %5
  %7 = call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = call double @sqrt(double noundef %7) #5
  ret double %8
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @V2_cross(%struct.VEC2* noalias nocapture writeonly sret(%struct.VEC2) align 8 %0, %struct.VEC2* nocapture noundef readonly byval(%struct.VEC2) align 8 %1) #2 {
  %3 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 1
  %4 = load double, double* %3, align 8
  %5 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 0
  store double %4, double* %5, align 8
  %6 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %1, i64 0, i32 0
  %7 = load double, double* %6, align 8
  %8 = fneg double %7
  %9 = getelementptr inbounds %struct.VEC2, %struct.VEC2* %0, i64 0, i32 1
  store double %8, double* %9, align 8
  ret void
}

attributes #0 = { mustprogress nofree noinline nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
