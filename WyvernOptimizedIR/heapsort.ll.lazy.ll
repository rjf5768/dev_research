; ModuleID = './heapsort.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/heapsort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen_random.last = internal global i64 42, align 8
@.str = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local double @gen_random(double noundef %0) #0 {
  %2 = load i64, i64* @gen_random.last, align 8
  %3 = mul nsw i64 %2, 3877
  %4 = add nsw i64 %3, 29573
  %5 = srem i64 %4, 139968
  store i64 %5, i64* @gen_random.last, align 8
  %6 = sitofp i64 %5 to double
  %7 = fmul double %6, %0
  %8 = fdiv double %7, 1.399680e+05
  ret double %8
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @benchmark_heapsort(i32 noundef %0, double* nocapture noundef %1) #1 {
  %3 = ashr i32 %0, 1
  %4 = add nsw i32 %3, 1
  br label %5

5:                                                ; preds = %56, %2
  %.06 = phi i32 [ %0, %2 ], [ %.17, %56 ]
  %.01 = phi i32 [ %4, %2 ], [ %.1, %56 ]
  %6 = icmp sgt i32 %.01, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = add nsw i32 %.01, -1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %1, i64 %9
  %11 = load double, double* %10, align 8
  br label %25

12:                                               ; preds = %5
  %13 = sext i32 %.06 to i64
  %14 = getelementptr inbounds double, double* %1, i64 %13
  %15 = load double, double* %14, align 8
  %16 = getelementptr inbounds double, double* %1, i64 1
  %17 = load double, double* %16, align 8
  %18 = sext i32 %.06 to i64
  %19 = getelementptr inbounds double, double* %1, i64 %18
  store double %17, double* %19, align 8
  %20 = add nsw i32 %.06, -1
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = getelementptr inbounds double, double* %1, i64 1
  store double %15, double* %23, align 8
  ret void

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %24, %7
  %.17 = phi i32 [ %.06, %7 ], [ %20, %24 ]
  %.1 = phi i32 [ %8, %7 ], [ %.01, %24 ]
  %.0 = phi double [ %11, %7 ], [ %15, %24 ]
  %26 = shl i32 %.1, 1
  br label %27

27:                                               ; preds = %55, %25
  %.04 = phi i32 [ %26, %25 ], [ %.2, %55 ]
  %.02 = phi i32 [ %.1, %25 ], [ %.13, %55 ]
  %.not = icmp sgt i32 %.04, %.17
  br i1 %.not, label %56, label %28

28:                                               ; preds = %27
  %29 = icmp slt i32 %.04, %.17
  br i1 %29, label %30, label %41

30:                                               ; preds = %28
  %31 = sext i32 %.04 to i64
  %32 = getelementptr inbounds double, double* %1, i64 %31
  %33 = load double, double* %32, align 8
  %34 = add nsw i32 %.04, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %1, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fcmp olt double %33, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = add nsw i32 %.04, 1
  br label %41

41:                                               ; preds = %39, %30, %28
  %.15 = phi i32 [ %40, %39 ], [ %.04, %30 ], [ %.04, %28 ]
  %42 = sext i32 %.15 to i64
  %43 = getelementptr inbounds double, double* %1, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fcmp olt double %.0, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = sext i32 %.15 to i64
  %48 = getelementptr inbounds double, double* %1, i64 %47
  %49 = load double, double* %48, align 8
  %50 = sext i32 %.02 to i64
  %51 = getelementptr inbounds double, double* %1, i64 %50
  store double %49, double* %51, align 8
  %52 = shl nsw i32 %.15, 1
  br label %55

53:                                               ; preds = %41
  %54 = add nsw i32 %.17, 1
  br label %55

55:                                               ; preds = %53, %46
  %.2 = phi i32 [ %52, %46 ], [ %54, %53 ]
  %.13 = phi i32 [ %.15, %46 ], [ %.02, %53 ]
  br label %27, !llvm.loop !4

56:                                               ; preds = %27
  %57 = sext i32 %.02 to i64
  %58 = getelementptr inbounds double, double* %1, i64 %57
  store double %.0, double* %58, align 8
  br label %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #2 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #6
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 8000000, %8 ]
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = call noalias i8* @malloc(i64 noundef %13) #7
  %15 = bitcast i8* %14 to double*
  br label %16

16:                                               ; preds = %21, %9
  %.0 = phi i32 [ 1, %9 ], [ %22, %21 ]
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %23, label %17

17:                                               ; preds = %16
  %18 = call double @gen_random(double noundef 1.000000e+00)
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds double, double* %15, i64 %19
  store double %18, double* %20, align 8
  br label %21

21:                                               ; preds = %17
  %22 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !6

23:                                               ; preds = %16
  call void @benchmark_heapsort(i32 noundef %10, double* noundef %15)
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds double, double* %15, i64 %24
  %26 = load double, double* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double noundef %26) #7
  call void @free(i8* noundef %14) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
