; ModuleID = './bigstack.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/bigstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mixed_struct = type { i32, [10 x double], [10 x [10 x double]], [10 x %struct.Flat_struct] }
%struct.Flat_struct = type { i8, float }

@.str = private unnamed_addr constant [16 x i8] c"Sum(M)  = %.2f\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Sum(MA[%d]) = %.2f\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local double @AddMixed(%struct.Mixed_struct* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.02 = phi i32 [ 0, %1 ], [ %10, %5 ]
  %.01 = phi double [ 0.000000e+00, %1 ], [ %9, %5 ]
  %3 = icmp ult i32 %.02, 10
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = zext i32 %.02 to i64
  %7 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 1, i64 %6
  %8 = load double, double* %7, align 8
  %9 = fadd double %.01, %8
  %10 = add nuw nsw i32 %.02, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %26, %11
  %.13 = phi i32 [ 0, %11 ], [ %27, %26 ]
  %.1 = phi double [ %.01, %11 ], [ %.2, %26 ]
  %13 = icmp ult i32 %.13, 10
  br i1 %13, label %14, label %28

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %18, %14
  %.2 = phi double [ %.1, %14 ], [ %23, %18 ]
  %.0 = phi i32 [ 0, %14 ], [ %24, %18 ]
  %16 = icmp ult i32 %.0, 10
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  br label %18

18:                                               ; preds = %17
  %19 = zext i32 %.13 to i64
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 2, i64 %19, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fadd double %.2, %22
  %24 = add nuw nsw i32 %.0, 1
  br label %15, !llvm.loop !6

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.13, 1
  br label %12, !llvm.loop !7

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %32, %28
  %.24 = phi i32 [ 0, %28 ], [ %43, %32 ]
  %.3 = phi double [ %.1, %28 ], [ %42, %32 ]
  %30 = icmp ult i32 %.24, 10
  br i1 %30, label %31, label %44

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = zext i32 %.24 to i64
  %34 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 3, i64 %33, i32 0
  %35 = load i8, i8* %34, align 8
  %36 = sitofp i8 %35 to double
  %37 = fadd double %.3, %36
  %38 = zext i32 %.24 to i64
  %39 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 3, i64 %38, i32 1
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = fadd double %37, %41
  %43 = add nuw nsw i32 %.24, 1
  br label %29, !llvm.loop !8

44:                                               ; preds = %29
  ret double %.3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @InitializeMixed(%struct.Mixed_struct* nocapture noundef writeonly %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %10, %2
  %.01 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %4 = icmp ult i32 %.01, 10
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = add nsw i32 %.01, %1
  %7 = sitofp i32 %6 to double
  %8 = zext i32 %.01 to i64
  %9 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 1, i64 %8
  store double %7, double* %9, align 8
  br label %10

10:                                               ; preds = %5
  %11 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %29, %12
  %.1 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %14 = icmp ult i32 %.1, 10
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  br label %16

16:                                               ; preds = %26, %15
  %.0 = phi i32 [ 0, %15 ], [ %27, %26 ]
  %17 = icmp ult i32 %.0, 10
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = mul nsw i32 %.1, 10
  %20 = add nuw nsw i32 %19, %.0
  %21 = add nsw i32 %20, %1
  %22 = sitofp i32 %21 to double
  %23 = zext i32 %.1 to i64
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 2, i64 %23, i64 %24
  store double %22, double* %25, align 8
  br label %26

26:                                               ; preds = %18
  %27 = add nuw nsw i32 %.0, 1
  br label %16, !llvm.loop !10

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.1, 1
  br label %13, !llvm.loop !11

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %42, %31
  %.2 = phi i32 [ 0, %31 ], [ %43, %42 ]
  %33 = icmp ult i32 %.2, 10
  br i1 %33, label %34, label %44

34:                                               ; preds = %32
  %35 = zext i32 %.2 to i64
  %36 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 3, i64 %35, i32 0
  store i8 81, i8* %36, align 8
  %37 = udiv i32 %.2, 10
  %38 = add nsw i32 %37, %1
  %39 = sitofp i32 %38 to float
  %40 = zext i32 %.2 to i64
  %41 = getelementptr inbounds %struct.Mixed_struct, %struct.Mixed_struct* %0, i64 0, i32 3, i64 %40, i32 1
  store float %39, float* %41, align 4
  br label %42

42:                                               ; preds = %34
  %43 = add nuw nsw i32 %.2, 1
  br label %32, !llvm.loop !12

44:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #2 {
  %3 = alloca %struct.Mixed_struct, align 8
  %4 = alloca [4 x %struct.Mixed_struct], align 16
  call void @InitializeMixed(%struct.Mixed_struct* noundef nonnull %3, i32 noundef 100)
  %5 = call double @AddMixed(%struct.Mixed_struct* noundef nonnull %3)
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), double noundef %5) #4
  br label %7

7:                                                ; preds = %18, %2
  %.0 = phi i32 [ 0, %2 ], [ %19, %18 ]
  %8 = icmp ult i32 %.0, 4
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %4, i64 0, i64 %10
  %12 = mul i32 %.0, 100
  %13 = add i32 %12, 200
  call void @InitializeMixed(%struct.Mixed_struct* noundef nonnull %11, i32 noundef %13)
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds [4 x %struct.Mixed_struct], [4 x %struct.Mixed_struct]* %4, i64 0, i64 %14
  %16 = call double @AddMixed(%struct.Mixed_struct* noundef nonnull %15)
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.0, double noundef %16) #4
  br label %18

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %.0, 1
  br label %7, !llvm.loop !13

20:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
