; ModuleID = './gsm_option.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/gsm_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local i32 @gsm_option(%struct.gsm_state* nocapture noundef %0, i32 noundef %1, i32* noundef readonly %2) #0 {
  switch i32 %1, label %14 [
    i32 1, label %4
    i32 2, label %13
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 10
  %6 = load i8, i8* %5, align 4
  %7 = sext i8 %6 to i32
  %.not = icmp eq i32* %2, null
  br i1 %.not, label %12, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* %2, align 4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 10
  store i8 %10, i8* %11, align 4
  br label %12

12:                                               ; preds = %8, %4
  br label %15

13:                                               ; preds = %3
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %13, %12
  %.0 = phi i32 [ -1, %14 ], [ -1, %13 ], [ %7, %12 ]
  ret i32 %.0
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
