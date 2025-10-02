; ModuleID = './Random.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/Random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }

@dm1 = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Random_struct* @new_Random_seed(i32 noundef %0) #0 {
  %2 = call noalias dereferenceable_or_null(112) i8* @malloc(i64 noundef 112) #5
  %3 = bitcast i8* %2 to %struct.Random_struct*
  call void @initialize(%struct.Random_struct* noundef %3, i32 noundef %0)
  %4 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %3, i64 0, i32 5
  store double 0.000000e+00, double* %4, align 8
  %5 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %3, i64 0, i32 6
  store double 1.000000e+00, double* %5, align 8
  %6 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %3, i64 0, i32 7
  store double 1.000000e+00, double* %6, align 8
  %7 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %3, i64 0, i32 4
  store i32 0, i32* %7, align 8
  ret %struct.Random_struct* %3
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define internal void @initialize(%struct.Random_struct* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  store double 0x3E00000000200000, double* @dm1, align 8
  %3 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 1
  store i32 %1, i32* %3, align 4
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = sub nsw i32 0, %1
  br label %7

7:                                                ; preds = %5, %2
  %.01 = phi i32 [ %6, %5 ], [ %1, %2 ]
  %.not = icmp eq i32 %.01, 2147483647
  br i1 %.not, label %9, label %8

8:                                                ; preds = %7
  br label %10

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9, %8
  %11 = phi i32 [ %.01, %8 ], [ 2147483647, %9 ]
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = add nsw i32 %11, -1
  br label %16

16:                                               ; preds = %14, %10
  %.02 = phi i32 [ %15, %14 ], [ %11, %10 ]
  %17 = srem i32 %.02, 65536
  %18 = sdiv i32 %.02, 65536
  br label %19

19:                                               ; preds = %32, %16
  %.04 = phi i32 [ %17, %16 ], [ %27, %32 ]
  %.03 = phi i32 [ %18, %16 ], [ %26, %32 ]
  %.0 = phi i32 [ 0, %16 ], [ %33, %32 ]
  %20 = icmp ult i32 %.0, 17
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = mul nsw i32 %.04, 9069
  %23 = sdiv i32 %22, 65536
  %24 = mul nsw i32 %.03, 9069
  %25 = add nsw i32 %23, %24
  %26 = srem i32 %25, 32768
  %27 = srem i32 %22, 65536
  %28 = shl nsw i32 %26, 16
  %29 = add nsw i32 %27, %28
  %30 = zext i32 %.0 to i64
  %31 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 0, i64 %30
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %21
  %33 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !4

34:                                               ; preds = %19
  %35 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 2
  store i32 4, i32* %35, align 8
  %36 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 3
  store i32 16, i32* %36, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.Random_struct* @new_Random(i32 noundef %0, double noundef %1, double noundef %2) #0 {
  %4 = call noalias dereferenceable_or_null(112) i8* @malloc(i64 noundef 112) #5
  %5 = bitcast i8* %4 to %struct.Random_struct*
  call void @initialize(%struct.Random_struct* noundef %5, i32 noundef %0)
  %6 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %5, i64 0, i32 5
  store double %1, double* %6, align 8
  %7 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %5, i64 0, i32 6
  store double %2, double* %7, align 8
  %8 = fsub double %2, %1
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %5, i64 0, i32 7
  store double %8, double* %9, align 8
  %10 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %5, i64 0, i32 4
  store i32 1, i32* %10, align 8
  ret %struct.Random_struct* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Random_delete(%struct.Random_struct* noundef %0) #0 {
  %2 = bitcast %struct.Random_struct* %0 to i8*
  call void @free(i8* noundef %2) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local double @Random_nextDouble(%struct.Random_struct* nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 2
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %3 to i64
  %7 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = add nsw i32 %12, 2147483647
  br label %16

16:                                               ; preds = %14, %1
  %.02 = phi i32 [ %15, %14 ], [ %12, %1 ]
  %17 = sext i32 %5 to i64
  %18 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 0, i64 %17
  store i32 %.02, i32* %18, align 4
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %23

21:                                               ; preds = %16
  %22 = add nsw i32 %3, -1
  br label %23

23:                                               ; preds = %21, %20
  %.03 = phi i32 [ 16, %20 ], [ %22, %21 ]
  %24 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 2
  store i32 %.03, i32* %24, align 8
  %25 = icmp eq i32 %5, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %29

27:                                               ; preds = %23
  %28 = add nsw i32 %5, -1
  br label %29

29:                                               ; preds = %27, %26
  %.01 = phi i32 [ 16, %26 ], [ %28, %27 ]
  %30 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 3
  store i32 %.01, i32* %30, align 4
  %31 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 4
  %32 = load i32, i32* %31, align 8
  %.not = icmp eq i32 %32, 0
  br i1 %.not, label %42, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 5
  %35 = load double, double* %34, align 8
  %36 = load double, double* @dm1, align 8
  %37 = sitofp i32 %.02 to double
  %38 = fmul double %36, %37
  %39 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %0, i64 0, i32 7
  %40 = load double, double* %39, align 8
  %41 = call double @llvm.fmuladd.f64(double %38, double %40, double %35)
  br label %46

42:                                               ; preds = %29
  %43 = load double, double* @dm1, align 8
  %44 = sitofp i32 %.02 to double
  %45 = fmul double %43, %44
  br label %46

46:                                               ; preds = %42, %33
  %.0 = phi double [ %41, %33 ], [ %45, %42 ]
  ret double %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double* @RandomVector(i32 noundef %0, %struct.Random_struct* nocapture noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = call noalias i8* @malloc(i64 noundef %4) #5
  %6 = bitcast i8* %5 to double*
  br label %7

7:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %8 = icmp slt i32 %.0, %0
  br i1 %8, label %9, label %15

9:                                                ; preds = %7
  %10 = call double @Random_nextDouble(%struct.Random_struct* noundef %1)
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds double, double* %6, i64 %11
  store double %10, double* %12, align 8
  br label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !6

15:                                               ; preds = %7
  ret double* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @RandomMatrix(i32 noundef %0, i32 noundef %1, %struct.Random_struct* nocapture noundef %2) #0 {
  %4 = sext i32 %0 to i64
  %5 = shl nsw i64 %4, 3
  %6 = call noalias i8* @malloc(i64 noundef %5) #5
  %7 = bitcast i8* %6 to double**
  %8 = icmp eq i8* %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %41

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %38, %10
  %.02 = phi i32 [ 0, %10 ], [ %39, %38 ]
  %12 = icmp slt i32 %.02, %0
  br i1 %12, label %13, label %40

13:                                               ; preds = %11
  %14 = sext i32 %1 to i64
  %15 = shl nsw i64 %14, 3
  %16 = call noalias i8* @malloc(i64 noundef %15) #5
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds double*, double** %7, i64 %17
  %19 = bitcast double** %18 to i8**
  store i8* %16, i8** %19, align 8
  %20 = zext i32 %.02 to i64
  %21 = getelementptr inbounds double*, double** %7, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = icmp eq double* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  call void @free(i8* noundef %6) #5
  br label %41

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %35, %25
  %.01 = phi i32 [ 0, %25 ], [ %36, %35 ]
  %27 = icmp slt i32 %.01, %1
  br i1 %27, label %28, label %37

28:                                               ; preds = %26
  %29 = call double @Random_nextDouble(%struct.Random_struct* noundef %2)
  %30 = zext i32 %.02 to i64
  %31 = getelementptr inbounds double*, double** %7, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = zext i32 %.01 to i64
  %34 = getelementptr inbounds double, double* %32, i64 %33
  store double %29, double* %34, align 8
  br label %35

35:                                               ; preds = %28
  %36 = add nuw nsw i32 %.01, 1
  br label %26, !llvm.loop !7

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = add nuw nsw i32 %.02, 1
  br label %11, !llvm.loop !8

40:                                               ; preds = %11
  br label %41

41:                                               ; preds = %40, %24, %9
  %.0 = phi double** [ null, %9 ], [ null, %24 ], [ %7, %40 ]
  ret double** %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
