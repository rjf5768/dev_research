; ModuleID = './mzero3.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/mzero3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nzerod = dso_local global double -0.000000e+00, align 8
@nzerof = dso_local global float -0.000000e+00, align 4
@zerod = dso_local global double 0.000000e+00, align 8
@zerof = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = load double, double* @zerod, align 8
  %2 = call double @negd(double noundef %1)
  %3 = load double, double* @nzerod, align 8
  call void @expectd(double noundef %2, double noundef %3)
  %4 = load float, float* @zerof, align 4
  %5 = call float @negf(float noundef %4)
  %6 = load float, float* @nzerof, align 4
  call void @expectf(float noundef %5, float noundef %6)
  %7 = load double, double* @nzerod, align 8
  %8 = call double @negd(double noundef %7)
  %9 = load double, double* @zerod, align 8
  call void @expectd(double noundef %8, double noundef %9)
  %10 = load float, float* @nzerof, align 4
  %11 = call float @negf(float noundef %10)
  %12 = load float, float* @zerof, align 4
  call void @expectf(float noundef %11, float noundef %12)
  call void @exit(i32 noundef 0) #5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectd(double noundef %0, double noundef %1) #1 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %5 = fcmp une double %0, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = bitcast double* %3 to i64*
  %lhsv = load i64, i64* %7, align 8
  %8 = bitcast double* %4 to i64*
  %rhsv = load i64, i64* %8, align 8
  %.not = icmp eq i64 %lhsv, %rhsv
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6, %2
  call void @abort() #5
  unreachable

10:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local double @negd(double noundef %0) #2 {
  %2 = fneg double %0
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @expectf(float noundef %0, float noundef %1) #1 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = fcmp une float %0, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = bitcast float* %3 to i32*
  %lhsv = load i32, i32* %7, align 4
  %8 = bitcast float* %4 to i32*
  %rhsv = load i32, i32* %8, align 4
  %.not = icmp eq i32 %lhsv, %rhsv
  br i1 %.not, label %10, label %9

9:                                                ; preds = %6, %2
  call void @abort() #5
  unreachable

10:                                               ; preds = %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @negf(float noundef %0) #2 {
  %2 = fneg float %0
  ret float %2
}

; Function Attrs: noreturn
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @memcmp(i8* noundef, i8* noundef, i64 noundef) #4

; Function Attrs: noreturn
declare dso_local void @abort() #3

attributes #0 = { noinline noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
