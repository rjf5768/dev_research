; ModuleID = './990413-2.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/990413-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call double @minus_zero()
  %2 = call double @asin(double noundef %1)
  %3 = fcmp une double %2, 0.000000e+00
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @abort() #4
  unreachable

5:                                                ; preds = %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define internal double @minus_zero() #1 {
  %1 = alloca %union.anon, align 8
  %2 = bitcast %union.anon* %1 to i32*
  store i32 0, i32* %2, align 8
  %3 = bitcast %union.anon* %1 to [2 x i32]*
  %4 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 -2147483648, i32* %4, align 4
  %5 = getelementptr inbounds %union.anon, %union.anon* %1, i64 0, i32 0
  %6 = load double, double* %5, align 8
  ret double %6
}

; Function Attrs: noinline nounwind uwtable
define internal double @asin(double noundef %0) #0 {
  %2 = fpext double %0 to x86_fp80
  %3 = fneg double %0
  %4 = call double @llvm.fmuladd.f64(double %3, double %0, double 1.000000e+00)
  %5 = fpext double %4 to x86_fp80
  %6 = call x86_fp80 @__sqrtl(x86_fp80 noundef %5)
  %7 = call x86_fp80 @__atan2l(x86_fp80 noundef %2, x86_fp80 noundef %6)
  %8 = fptrunc x86_fp80 %7 to double
  ret double %8
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__atan2l(x86_fp80 noundef %0, x86_fp80 noundef %1) #0 {
  %3 = call x86_fp80 asm sideeffect "fpatan\0A\09", "={st},0,{st(1)},~{st(1)},~{dirflag},~{fpsr},~{flags}"(x86_fp80 %1, x86_fp80 %0) #5, !srcloc !4
  ret x86_fp80 %3
}

; Function Attrs: noinline nounwind uwtable
define internal x86_fp80 @__sqrtl(x86_fp80 noundef %0) #0 {
  %2 = call x86_fp80 asm sideeffect "fsqrt", "={st},0,~{dirflag},~{fpsr},~{flags}"(x86_fp80 %0) #5, !srcloc !5
  ret x86_fp80 %2
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = !{i64 443, i64 452}
!5 = !{i64 664}
