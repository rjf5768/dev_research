; ModuleID = './poisson.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/health/poisson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local float @my_rand(i64 noundef %0) #0 {
  %2 = xor i64 %0, 123459876
  %3 = sdiv i64 %2, 127773
  %.neg = mul i64 %3, -127773
  %4 = add i64 %.neg, %2
  %5 = mul nsw i64 %4, 16807
  %.neg1 = mul nsw i64 %3, -2836
  %6 = add i64 %.neg1, %5
  %7 = xor i64 %6, 123459876
  %8 = icmp slt i64 %6, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = add nsw i64 %7, 2147483647
  br label %11

11:                                               ; preds = %9, %1
  %.0 = phi i64 [ %10, %9 ], [ %7, %1 ]
  %12 = sitofp i64 %.0 to double
  %13 = fmul double %12, 0x3E00000000200000
  %14 = fptrunc double %13 to float
  ret float %14
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
