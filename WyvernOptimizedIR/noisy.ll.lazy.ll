; ModuleID = './noisy.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Examples/Noisy/noisy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.big_array = internal global [4096 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local double @get_time() #0 {
  %1 = call i64 @clock() #5
  %2 = sitofp i64 %1 to double
  %3 = fdiv double %2, 1.000000e+06
  ret double %3
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @cmp(i8* nocapture noundef readnone %0, i8* nocapture noundef readnone %1) #2 {
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = call i64 @clock() #5
  call void @srand48(i64 noundef %1) #5
  %2 = call double @drand48() #5
  %3 = call double @llvm.fmuladd.f64(double %2, double 1.000000e-01, double 2.000000e-01)
  %4 = call double @get_time()
  br label %5

5:                                                ; preds = %9, %0
  %6 = call double @get_time()
  %7 = fadd double %4, %3
  %8 = fcmp olt double %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @qsort(i8* noundef bitcast ([4096 x i32]* @main.big_array to i8*), i64 noundef 4096, i64 noundef 4, i32 (i8*, i8*)* noundef nonnull @cmp) #5
  br label %5, !llvm.loop !4

10:                                               ; preds = %5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand48(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local double @drand48() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
