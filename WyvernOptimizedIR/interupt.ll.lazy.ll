; ModuleID = './interupt.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/simulator/interupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external dso_local global [10 x i32], align 16
@RETURN_STATUS = external dso_local global i32, align 4
@TYPE_OUT_MODE = dso_local global [6 x i8] zeroinitializer, align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @SIGNAL_INTERUPT(i32 noundef %0, i32 noundef %1) #0 {
  switch i32 %0, label %8 [
    i32 2, label %3
  ]

3:                                                ; preds = %2
  %4 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  %5 = sdiv i32 %4, 256
  %6 = shl nsw i32 %5, 8
  %7 = add nsw i32 %6, %1
  store i32 %7, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i64 0, i64 9), align 4
  store i32 2, i32* @RETURN_STATUS, align 4
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %3
  ret void
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
