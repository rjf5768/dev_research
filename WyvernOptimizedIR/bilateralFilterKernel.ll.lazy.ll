; ModuleID = './bilateralFilterKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/BilateralFiltering/bilateralFilterKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bilateralFilterKernel(i32 noundef %0, i32 noundef %1, [128 x i32]* nocapture noundef readonly %2, i32* nocapture noundef writeonly %3, i32 noundef %4) #0 {
  %6 = zext i32 %1 to i64
  %7 = sdiv i32 %4, 2
  br label %8

8:                                                ; preds = %88, %5
  %.05 = phi i32 [ %7, %5 ], [ %89, %88 ]
  %9 = sub nsw i32 %0, %7
  %10 = icmp slt i32 %.05, %9
  br i1 %10, label %11, label %90

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %85, %11
  %.06 = phi i32 [ %7, %11 ], [ %86, %85 ]
  %13 = sub nsw i32 %1, %7
  %14 = icmp slt i32 %.06, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %75, %15
  %.03 = phi double [ 0.000000e+00, %15 ], [ %.14, %75 ]
  %.02 = phi double [ 0.000000e+00, %15 ], [ %.1, %75 ]
  %.01 = phi i32 [ 0, %15 ], [ %76, %75 ]
  %17 = icmp slt i32 %.01, %4
  br i1 %17, label %18, label %77

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %65, %18
  %.14 = phi double [ %.03, %18 ], [ %72, %65 ]
  %.1 = phi double [ %.02, %18 ], [ %66, %65 ]
  %.0 = phi i32 [ 0, %18 ], [ %73, %65 ]
  %20 = icmp slt i32 %.0, %4
  br i1 %20, label %21, label %74

21:                                               ; preds = %19
  %.neg = sub i32 %.01, %7
  %22 = add i32 %.neg, %.05
  %.neg7 = sub i32 %.0, %7
  %23 = add i32 %.neg7, %.06
  %24 = sext i32 %22 to i64
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %.05 to i64
  %29 = sext i32 %.06 to i64
  %30 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %22 to i64
  %33 = sext i32 %23 to i64
  %34 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %31, %35
  %37 = sext i32 %.05 to i64
  %38 = sext i32 %.06 to i64
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add i32 %36, %40
  %.neg8 = sub i32 %41, %27
  %42 = sitofp i32 %.neg8 to double
  %43 = fdiv double %42, 2.880000e+02
  %44 = call double @exp(double noundef %43) #3
  %45 = fdiv double %44, 0x408C463ABECCB2BB
  %46 = mul i32 %.neg, %.neg
  %47 = mul i32 %.neg7, %.neg7
  %48 = add nsw i32 %46, %47
  %49 = sitofp i32 %48 to double
  %50 = call double @sqrt(double noundef %49) #3
  %51 = fptrunc double %50 to float
  %52 = mul i32 %.neg, %.neg
  %53 = mul i32 %.neg7, %.neg7
  %54 = add nsw i32 %52, %53
  %55 = sitofp i32 %54 to double
  %56 = call double @sqrt(double noundef %55) #3
  %57 = fptrunc double %56 to float
  %58 = fneg float %51
  %59 = fmul float %58, %57
  %60 = fpext float %59 to double
  %61 = fmul double %60, 0x3F60000000000000
  %62 = call double @exp(double noundef %61) #3
  %63 = fdiv double %62, 0x409921FB54442D18
  %64 = fmul double %45, %63
  br label %65

65:                                               ; preds = %21
  %66 = fadd double %.1, %64
  %67 = sext i32 %22 to i64
  %68 = sext i32 %23 to i64
  %69 = getelementptr inbounds [128 x i32], [128 x i32]* %2, i64 %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sitofp i32 %70 to double
  %72 = call double @llvm.fmuladd.f64(double %71, double %64, double %.14)
  %73 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !4

74:                                               ; preds = %19
  br label %75

75:                                               ; preds = %74
  %76 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !6

77:                                               ; preds = %16
  %78 = fdiv double %.03, %.02
  %79 = fptosi double %78 to i32
  %80 = sext i32 %.05 to i64
  %81 = mul nsw i64 %80, %6
  %82 = getelementptr inbounds i32, i32* %3, i64 %81
  %83 = sext i32 %.06 to i64
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %77
  %86 = add nsw i32 %.06, 1
  br label %12, !llvm.loop !7

87:                                               ; preds = %12
  br label %88

88:                                               ; preds = %87
  %89 = add nsw i32 %.05, 1
  br label %8, !llvm.loop !8

90:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
