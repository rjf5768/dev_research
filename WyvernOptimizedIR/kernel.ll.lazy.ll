; ModuleID = './kernel.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }
%struct.Stopwatch_struct = type { i32, double, double }

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureFFT(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = shl nsw i32 %0, 1
  %5 = call double* @RandomVector(i32 noundef %4, %struct.Random_struct* noundef %2) #4
  %6 = call %struct.Stopwatch_struct* @new_Stopwatch() #4
  br label %7

7:                                                ; preds = %18, %3
  %.01 = phi i64 [ 1, %3 ], [ %19, %18 ]
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %6) #4
  br label %8

8:                                                ; preds = %13, %7
  %.0 = phi i32 [ 0, %7 ], [ %14, %13 ]
  %9 = zext i32 %.0 to i64
  %10 = shl nsw i64 %.01, 3
  %11 = icmp ugt i64 %10, %9
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  call void @FFT_transform(i32 noundef %4, double* noundef %5) #4
  call void @FFT_inverse(i32 noundef %4, double* noundef %5) #4
  br label %13

13:                                               ; preds = %12
  %14 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !4

15:                                               ; preds = %8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %6) #4
  %16 = icmp ugt i64 %.01, 4096
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  %19 = shl nsw i64 %.01, 1
  br label %7

20:                                               ; preds = %17
  %21 = call double @FFT_num_flops(i32 noundef %0) #4
  %22 = sitofp i64 %.01 to double
  %23 = fmul double %21, %22
  %24 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %6) #4
  %25 = fdiv double %23, %24
  %26 = fmul double %25, 0x3EB0C6F7A0B5ED8D
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %6) #4
  %27 = bitcast double* %5 to i8*
  call void @free(i8* noundef %27) #4
  ret double %26
}

declare dso_local double* @RandomVector(i32 noundef, %struct.Random_struct* noundef) #1

declare dso_local %struct.Stopwatch_struct* @new_Stopwatch() #1

declare dso_local void @Stopwatch_start(%struct.Stopwatch_struct* noundef) #1

declare dso_local void @FFT_transform(i32 noundef, double* noundef) #1

declare dso_local void @FFT_inverse(i32 noundef, double* noundef) #1

declare dso_local void @Stopwatch_stop(%struct.Stopwatch_struct* noundef) #1

declare dso_local double @FFT_num_flops(i32 noundef) #1

declare dso_local double @Stopwatch_read(%struct.Stopwatch_struct* noundef) #1

declare dso_local void @Stopwatch_delete(%struct.Stopwatch_struct* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSOR(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = call double** @RandomMatrix(i32 noundef %0, i32 noundef %0, %struct.Random_struct* noundef %2) #4
  %5 = call %struct.Stopwatch_struct* @new_Stopwatch() #4
  br label %6

6:                                                ; preds = %10, %3
  %.0 = phi i32 [ 1, %3 ], [ %11, %10 ]
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %5) #4
  %7 = shl nsw i32 %.0, 4
  call void @SOR_execute(i32 noundef %0, i32 noundef %0, double noundef 1.250000e+00, double** noundef %4, i32 noundef %7) #4
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %5) #4
  %8 = icmp ugt i32 %.0, 4096
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  br label %12

10:                                               ; preds = %6
  %11 = shl nsw i32 %.0, 1
  br label %6

12:                                               ; preds = %9
  %13 = call double @SOR_num_flops(i32 noundef %0, i32 noundef %0, i32 noundef %.0) #4
  %14 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %5) #4
  %15 = fdiv double %13, %14
  %16 = fmul double %15, 0x3EB0C6F7A0B5ED8D
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %5) #4
  call void @Array2D_double_delete(i32 noundef %0, i32 noundef %0, double** noundef %4) #4
  ret double %16
}

declare dso_local double** @RandomMatrix(i32 noundef, i32 noundef, %struct.Random_struct* noundef) #1

declare dso_local void @SOR_execute(i32 noundef, i32 noundef, double noundef, double** noundef, i32 noundef) #1

declare dso_local double @SOR_num_flops(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local void @Array2D_double_delete(i32 noundef, i32 noundef, double** noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureMonteCarlo(double noundef %0, %struct.Random_struct* nocapture noundef readnone %1) #0 {
  %3 = call %struct.Stopwatch_struct* @new_Stopwatch() #4
  br label %4

4:                                                ; preds = %9, %2
  %.0 = phi i32 [ 1, %2 ], [ %10, %9 ]
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %3) #4
  %5 = shl nsw i32 %.0, 16
  %6 = call double @MonteCarlo_integrate(i32 noundef %5) #4
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %3) #4
  %7 = icmp ugt i32 %.0, 4096
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  %10 = shl nsw i32 %.0, 1
  br label %4

11:                                               ; preds = %8
  %12 = call double @MonteCarlo_num_flops(i32 noundef %.0) #4
  %13 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %3) #4
  %14 = fdiv double %12, %13
  %15 = fmul double %14, 0x3EB0C6F7A0B5ED8D
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %3) #4
  ret double %15
}

declare dso_local double @MonteCarlo_integrate(i32 noundef) #1

declare dso_local double @MonteCarlo_num_flops(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSparseMatMult(i32 noundef %0, i32 noundef %1, double noundef %2, %struct.Random_struct* noundef %3) #0 {
  %5 = call double* @RandomVector(i32 noundef %0, %struct.Random_struct* noundef %3) #4
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call noalias i8* @malloc(i64 noundef %7) #4
  %9 = bitcast i8* %8 to double*
  %10 = sdiv i32 %1, %0
  %11 = mul nsw i32 %10, %0
  %12 = call double* @RandomVector(i32 noundef %11, %struct.Random_struct* noundef %3) #4
  %13 = sext i32 %1 to i64
  %14 = shl nsw i64 %13, 2
  %15 = call noalias i8* @malloc(i64 noundef %14) #4
  %16 = bitcast i8* %15 to i32*
  %17 = add nsw i32 %0, 1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 2
  %20 = call noalias i8* @malloc(i64 noundef %19) #4
  %21 = bitcast i8* %20 to i32*
  %22 = call %struct.Stopwatch_struct* @new_Stopwatch() #4
  store i32 0, i32* %21, align 4
  br label %23

23:                                               ; preds = %47, %4
  %.03 = phi i32 [ 0, %4 ], [ %48, %47 ]
  %24 = icmp slt i32 %.03, %0
  br i1 %24, label %25, label %49

25:                                               ; preds = %23
  %26 = zext i32 %.03 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %.03, %10
  %30 = add nsw i32 %28, %10
  %31 = add nuw nsw i32 %.03, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %21, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = icmp slt i32 %29, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %25
  %.01 = phi i32 [ 1, %35 ], [ %29, %25 ]
  br label %37

37:                                               ; preds = %44, %36
  %.0 = phi i32 [ 0, %36 ], [ %45, %44 ]
  %38 = icmp slt i32 %.0, %10
  br i1 %38, label %39, label %46

39:                                               ; preds = %37
  %40 = mul nsw i32 %.0, %.01
  %41 = add nsw i32 %28, %.0
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %16, i64 %42
  store i32 %40, i32* %43, align 4
  br label %44

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %.0, 1
  br label %37, !llvm.loop !6

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = add nuw nsw i32 %.03, 1
  br label %23, !llvm.loop !7

49:                                               ; preds = %23
  br label %50

50:                                               ; preds = %54, %49
  %.02 = phi i32 [ 1, %49 ], [ %55, %54 ]
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %22) #4
  %51 = shl nsw i32 %.02, 6
  call void @SparseCompRow_matmult(i32 noundef %0, double* noundef %9, double* noundef %12, i32* noundef nonnull %21, i32* noundef %16, double* noundef %5, i32 noundef %51) #4
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %22) #4
  %52 = icmp ugt i32 %.02, 4096
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %56

54:                                               ; preds = %50
  %55 = shl nsw i32 %.02, 1
  br label %50

56:                                               ; preds = %53
  %57 = call double @SparseCompRow_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %.02) #4
  %58 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %22) #4
  %59 = fdiv double %57, %58
  %60 = fmul double %59, 0x3EB0C6F7A0B5ED8D
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %22) #4
  call void @free(i8* noundef %20) #4
  call void @free(i8* noundef %15) #4
  %61 = bitcast double* %12 to i8*
  call void @free(i8* noundef %61) #4
  call void @free(i8* noundef %8) #4
  %62 = bitcast double* %5 to i8*
  call void @free(i8* noundef %62) #4
  ret double %60
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local void @SparseCompRow_matmult(i32 noundef, double* noundef, double* noundef, i32* noundef, i32* noundef, double* noundef, i32 noundef) #1

declare dso_local double @SparseCompRow_num_flops(i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureLU(i32 noundef %0, double noundef %1, %struct.Random_struct* noundef %2) #0 {
  %4 = call %struct.Stopwatch_struct* @new_Stopwatch() #4
  %5 = call double** @RandomMatrix(i32 noundef %0, i32 noundef %0, %struct.Random_struct* noundef %2) #4
  %6 = icmp eq double** %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  call void @exit(i32 noundef 1) #5
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %3
  %9 = call double** @new_Array2D_double(i32 noundef %0, i32 noundef %0) #4
  %10 = icmp eq double** %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  call void @exit(i32 noundef 1) #5
  br label %UnifiedUnreachableBlock

12:                                               ; preds = %8
  %13 = sext i32 %0 to i64
  %14 = shl nsw i64 %13, 2
  %15 = call noalias i8* @malloc(i64 noundef %14) #4
  %16 = bitcast i8* %15 to i32*
  %17 = icmp eq i8* %15, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @exit(i32 noundef 1) #5
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %30, %19
  %.0 = phi i32 [ 1, %19 ], [ %31, %30 ]
  call void @Stopwatch_start(%struct.Stopwatch_struct* noundef %4) #4
  br label %21

21:                                               ; preds = %25, %20
  %.01 = phi i32 [ 0, %20 ], [ %26, %25 ]
  %22 = icmp ult i32 %.01, %.0
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @Array2D_double_copy(i32 noundef %0, i32 noundef %0, double** noundef nonnull %9, double** noundef nonnull %5) #4
  %24 = call i32 @LU_factor(i32 noundef %0, i32 noundef %0, double** noundef nonnull %9, i32* noundef nonnull %16) #4
  br label %25

25:                                               ; preds = %23
  %26 = add nuw nsw i32 %.01, 1
  br label %21, !llvm.loop !8

27:                                               ; preds = %21
  call void @Stopwatch_stop(%struct.Stopwatch_struct* noundef %4) #4
  %28 = icmp ugt i32 %.0, 4096
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %32

30:                                               ; preds = %27
  %31 = shl nsw i32 %.0, 1
  br label %20

32:                                               ; preds = %29
  %33 = call double @LU_num_flops(i32 noundef %0) #4
  %34 = sitofp i32 %.0 to double
  %35 = fmul double %33, %34
  %36 = call double @Stopwatch_read(%struct.Stopwatch_struct* noundef %4) #4
  %37 = fdiv double %35, %36
  %38 = fmul double %37, 0x3EB0C6F7A0B5ED8D
  call void @Stopwatch_delete(%struct.Stopwatch_struct* noundef %4) #4
  call void @free(i8* noundef %15) #4
  call void @Array2D_double_delete(i32 noundef %0, i32 noundef %0, double** noundef nonnull %9) #4
  call void @Array2D_double_delete(i32 noundef %0, i32 noundef %0, double** noundef nonnull %5) #4
  ret double %38

UnifiedUnreachableBlock:                          ; preds = %18, %11, %7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local double** @new_Array2D_double(i32 noundef, i32 noundef) #1

declare dso_local void @Array2D_double_copy(i32 noundef, i32 noundef, double** noundef, double** noundef) #1

declare dso_local i32 @LU_factor(i32 noundef, i32 noundef, double** noundef, i32* noundef) #1

declare dso_local double @LU_num_flops(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
