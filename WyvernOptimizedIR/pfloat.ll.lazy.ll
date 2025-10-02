; ModuleID = './pfloat.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pfloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @dtop(double noundef %0) #0 {
  %2 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 129) #4
  %3 = icmp eq %struct.precisionType* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %31

5:                                                ; preds = %1
  %6 = fcmp olt double %0, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %5
  %8 = fneg double %0
  %9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 3
  store i8 1, i8* %9, align 2
  br label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 3
  store i8 0, i8* %11, align 2
  br label %12

12:                                               ; preds = %10, %7
  %.01 = phi double [ %8, %7 ], [ %0, %10 ]
  %13 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  br label %14

14:                                               ; preds = %20, %12
  %.02 = phi i16* [ %13, %12 ], [ %17, %20 ]
  %.1 = phi double [ %.01, %12 ], [ %19, %20 ]
  %15 = call double @fmod(double noundef %.1, double noundef 6.553600e+04) #4
  %16 = fptoui double %15 to i16
  %17 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %16, i16* %.02, align 2
  %18 = fmul double %.1, 0x3EF0000000000000
  %19 = call double @llvm.floor.f64(double %18)
  br label %20

20:                                               ; preds = %14
  %21 = fcmp une double %19, 0.000000e+00
  br i1 %21, label %14, label %22, !llvm.loop !4

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 4, i64 0
  %24 = ptrtoint i16* %17 to i64
  %25 = ptrtoint i16* %23 to i64
  %26 = sub i64 %24, %25
  %27 = lshr exact i64 %26, 1
  %28 = trunc i64 %27 to i16
  %29 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i64 0, i32 2
  store i16 %28, i16* %29, align 2
  %30 = call %struct.precisionType* @presult(%struct.precisionType* noundef nonnull %2) #4
  br label %31

31:                                               ; preds = %22, %4
  %.0 = phi %struct.precisionType* [ %2, %4 ], [ %30, %22 ]
  ret %struct.precisionType* %.0
}

declare dso_local %struct.precisionType* @palloc(...) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @ptod(%struct.precisionType* noundef %0) #0 {
  %.not = icmp eq %struct.precisionType* %0, null
  br i1 %.not, label %6, label %2

2:                                                ; preds = %1
  %3 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %4 = load i16, i16* %3, align 2
  %5 = add i16 %4, 1
  store i16 %5, i16* %3, align 2
  br label %6

6:                                                ; preds = %2, %1
  %7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 2
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i64
  %10 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 %9
  %11 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 4, i64 0
  br label %12

12:                                               ; preds = %17, %6
  %.01 = phi i16* [ %10, %6 ], [ %13, %17 ]
  %.0 = phi double [ 0.000000e+00, %6 ], [ %16, %17 ]
  %13 = getelementptr inbounds i16, i16* %.01, i64 -1
  %14 = load i16, i16* %13, align 2
  %15 = uitofp i16 %14 to double
  %16 = call double @llvm.fmuladd.f64(double %.0, double 6.553600e+04, double %15)
  br label %17

17:                                               ; preds = %12
  %18 = icmp ugt i16* %13, %11
  br i1 %18, label %12, label %19, !llvm.loop !6

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %0, i64 0, i32 3
  %21 = load i8, i8* %20, align 2
  %.not2 = icmp eq i8 %21, 0
  br i1 %.not2, label %24, label %22

22:                                               ; preds = %19
  %23 = fneg double %16
  br label %24

24:                                               ; preds = %22, %19
  %.1 = phi double [ %23, %22 ], [ %16, %19 ]
  %.not3 = icmp eq %struct.precisionType* %0, null
  br i1 %.not3, label %32, label %25

25:                                               ; preds = %24
  %26 = getelementptr %struct.precisionType, %struct.precisionType* %0, i64 0, i32 0
  %27 = load i16, i16* %26, align 2
  %28 = add i16 %27, -1
  store i16 %28, i16* %26, align 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef nonnull %0) #4
  br label %32

32:                                               ; preds = %30, %25, %24
  ret double %.1
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

declare dso_local i32 @pfree(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
