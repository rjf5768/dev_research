; ModuleID = './2005-07-17-INT-To-FP.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/2005-07-17-INT-To-FP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tests = dso_local global [11 x i32] [i32 -2147483648, i32 -123456792, i32 -10, i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 10, i32 123456792, i32 2147483520], align 16
@.str = private unnamed_addr constant [19 x i8] c"%d %f, %f, %f, %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %24, %0
  %.0 = phi i32 [ 0, %0 ], [ %25, %24 ]
  %2 = icmp ult i32 %.0, 64
  br i1 %2, label %3, label %26

3:                                                ; preds = %1
  %.0.tr = trunc i32 %.0 to i8
  %4 = shl i8 %.0.tr, 2
  %5 = sitofp i8 %4 to double
  %.0.tr1 = trunc i32 %.0 to i16
  %6 = shl i16 %.0.tr1, 10
  %7 = sitofp i16 %6 to double
  %8 = shl i32 %.0, 26
  %9 = sitofp i32 %8 to double
  %10 = zext i32 %.0 to i64
  %11 = shl i64 %10, 58
  %12 = sitofp i64 %11 to double
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, double noundef %5, double noundef %7, double noundef %9, double noundef %12) #2
  %.0.tr2 = trunc i32 %.0 to i8
  %14 = shl i8 %.0.tr2, 2
  %15 = uitofp i8 %14 to double
  %.0.tr3 = trunc i32 %.0 to i16
  %16 = shl i16 %.0.tr3, 10
  %17 = uitofp i16 %16 to double
  %18 = shl i32 %.0, 26
  %19 = uitofp i32 %18 to double
  %20 = zext i32 %.0 to i64
  %21 = shl i64 %20, 58
  %22 = uitofp i64 %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.0, double noundef %15, double noundef %17, double noundef %19, double noundef %22) #2
  br label %24

24:                                               ; preds = %3
  %25 = add i32 %.0, 1
  br label %1, !llvm.loop !4

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %49, %26
  %.1 = phi i32 [ 0, %26 ], [ %50, %49 ]
  %28 = icmp ult i32 %.1, 11
  br i1 %28, label %29, label %51

29:                                               ; preds = %27
  %30 = zext i32 %.1 to i64
  %31 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = uitofp i32 %32 to double
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = sitofp i32 %36 to double
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sitofp i32 %40 to float
  %42 = fpext float %41 to double
  %43 = zext i32 %.1 to i64
  %44 = getelementptr inbounds [11 x i32], [11 x i32]* @tests, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sitofp i32 %45 to float
  %47 = fpext float %46 to double
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 noundef %.1, double noundef %33, double noundef %37, double noundef %42, double noundef %47) #2
  br label %49

49:                                               ; preds = %29
  %50 = add i32 %.1, 1
  br label %27, !llvm.loop !6

51:                                               ; preds = %27
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
