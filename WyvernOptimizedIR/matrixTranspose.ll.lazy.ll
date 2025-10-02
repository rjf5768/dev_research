; ModuleID = './matrixTranspose.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/matrixTranspose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A = dso_local global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"Checksum before = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Checksum  after = %lf\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @complex_transpose(float* nocapture noundef %0, float* nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  br label %6

6:                                                ; preds = %59, %5
  %.01 = phi i32 [ 1, %5 ], [ %60, %59 ]
  %7 = icmp slt i32 %.01, %2
  br i1 %7, label %8, label %61

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %56, %8
  %.0 = phi i32 [ 0, %8 ], [ %57, %56 ]
  %10 = icmp ult i32 %.0, %.01
  br i1 %10, label %11, label %58

11:                                               ; preds = %9
  %12 = mul nsw i32 %.01, %3
  %13 = mul nsw i32 %.0, %4
  %14 = add nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, float* %0, i64 %15
  %17 = load float, float* %16, align 4
  %18 = mul nsw i32 %.01, %3
  %19 = mul nsw i32 %.0, %4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %1, i64 %21
  %23 = load float, float* %22, align 4
  %24 = mul nsw i32 %.0, %3
  %25 = mul nsw i32 %.01, %4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %0, i64 %27
  %29 = load float, float* %28, align 4
  %30 = mul nsw i32 %.0, %3
  %31 = mul nsw i32 %.01, %4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %1, i64 %33
  %35 = load float, float* %34, align 4
  %36 = mul nsw i32 %.0, %3
  %37 = mul nsw i32 %.01, %4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %0, i64 %39
  store float %17, float* %40, align 4
  %41 = mul nsw i32 %.0, %3
  %42 = mul nsw i32 %.01, %4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %1, i64 %44
  store float %23, float* %45, align 4
  %46 = mul nsw i32 %.01, %3
  %47 = mul nsw i32 %.0, %4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %0, i64 %49
  store float %29, float* %50, align 4
  %51 = mul nsw i32 %.01, %3
  %52 = mul nsw i32 %.0, %4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %1, i64 %54
  store float %35, float* %55, align 4
  br label %56

56:                                               ; preds = %11
  %57 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

58:                                               ; preds = %9
  br label %59

59:                                               ; preds = %58
  %60 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !6

61:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  br label %3

3:                                                ; preds = %9, %2
  %.01 = phi i32 [ 0, %2 ], [ %14, %9 ]
  %.0 = phi float [ 0.000000e+00, %2 ], [ %13, %9 ]
  %4 = icmp ult i32 %.01, 2048
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = sitofp i32 %.01 to float
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %7
  store float %6, float* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %10
  %12 = load float, float* %11, align 4
  %13 = fadd float %.0, %12
  %14 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !7

15:                                               ; preds = %3
  %16 = fpext float %.0 to double
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), double noundef %16) #3
  br label %18

18:                                               ; preds = %21, %15
  %.12 = phi i32 [ 0, %15 ], [ %22, %21 ]
  %19 = icmp ult i32 %.12, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  call void @complex_transpose(float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @A, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @A, i64 0, i64 1), i32 noundef 32, i32 noundef 2, i32 noundef 64)
  br label %21

21:                                               ; preds = %20
  %22 = add nuw nsw i32 %.12, 1
  br label %18, !llvm.loop !8

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %27, %23
  %.2 = phi i32 [ 0, %23 ], [ %32, %27 ]
  %.1 = phi float [ 0.000000e+00, %23 ], [ %31, %27 ]
  %25 = icmp ult i32 %.2, 2048
  br i1 %25, label %26, label %33

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  %28 = zext i32 %.2 to i64
  %29 = getelementptr inbounds [2048 x float], [2048 x float]* @A, i64 0, i64 %28
  %30 = load float, float* %29, align 4
  %31 = fadd float %.1, %30
  %32 = add nuw nsw i32 %.2, 1
  br label %24, !llvm.loop !9

33:                                               ; preds = %24
  %34 = fpext float %.1 to double
  %35 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), double noundef %34) #3
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!9 = distinct !{!9, !5}
