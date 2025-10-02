; ModuleID = './FFT.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/FFT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @FFT_num_flops(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  %3 = call i32 @int_log2(i32 noundef %0)
  %4 = sitofp i32 %3 to double
  %5 = call double @llvm.fmuladd.f64(double %2, double 5.000000e+00, double -2.000000e+00)
  %6 = fadd double %2, 1.000000e+00
  %7 = fmul double %6, 2.000000e+00
  %8 = call double @llvm.fmuladd.f64(double %5, double %4, double %7)
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_log2(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.01 = phi i32 [ 1, %1 ], [ %6, %5 ]
  %.0 = phi i32 [ 0, %1 ], [ %7, %5 ]
  %3 = icmp slt i32 %.01, %0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  %6 = shl nsw i32 %.01, 1
  %7 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !4

8:                                                ; preds = %2
  %9 = shl i32 1, %.0
  %.not = icmp eq i32 %9, %0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %8
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #6
  call void @exit(i32 noundef 1) #7
  unreachable

12:                                               ; preds = %8
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @FFT_bitreverse(i32 noundef %0, double* nocapture noundef %1) #2 {
  %3 = sdiv i32 %0, 2
  %4 = add nsw i32 %3, -1
  br label %5

5:                                                ; preds = %41, %2
  %.02 = phi i32 [ 0, %2 ], [ %43, %41 ]
  %.01 = phi i32 [ 0, %2 ], [ %42, %41 ]
  %6 = icmp slt i32 %.02, %4
  br i1 %6, label %7, label %44

7:                                                ; preds = %5
  %8 = shl nuw i32 %.02, 1
  %9 = shl i32 %.01, 1
  %10 = icmp slt i32 %.02, %.01
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds double, double* %1, i64 %12
  %14 = load double, double* %13, align 8
  %15 = or i32 %8, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %1, i64 %16
  %18 = load double, double* %17, align 8
  %19 = sext i32 %9 to i64
  %20 = getelementptr inbounds double, double* %1, i64 %19
  %21 = load double, double* %20, align 8
  %22 = sext i32 %8 to i64
  %23 = getelementptr inbounds double, double* %1, i64 %22
  store double %21, double* %23, align 8
  %24 = or i32 %9, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %1, i64 %25
  %27 = load double, double* %26, align 8
  %28 = or i32 %8, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, double* %1, i64 %29
  store double %27, double* %30, align 8
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds double, double* %1, i64 %31
  store double %14, double* %32, align 8
  %33 = or i32 %9, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %1, i64 %34
  store double %18, double* %35, align 8
  br label %36

36:                                               ; preds = %11, %7
  br label %37

37:                                               ; preds = %38, %36
  %.1 = phi i32 [ %.01, %36 ], [ %39, %38 ]
  %.0.in = phi i32 [ %3, %36 ], [ %.0, %38 ]
  %.0 = ashr i32 %.0.in, 1
  %.not = icmp slt i32 %.1, %.0
  br i1 %.not, label %40, label %38

38:                                               ; preds = %37
  %39 = sub nsw i32 %.1, %.0
  br label %37, !llvm.loop !6

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40
  %42 = add nsw i32 %.1, %.0
  %43 = add nuw nsw i32 %.02, 1
  br label %5, !llvm.loop !7

44:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_transform(i32 noundef %0, double* nocapture noundef %1) #0 {
  call void @FFT_transform_internal(i32 noundef %0, double* noundef %1, i32 noundef -1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FFT_transform_internal(i32 noundef %0, double* nocapture noundef %1, i32 noundef %2) #0 {
  %4 = sdiv i32 %0, 2
  %5 = and i32 %0, -2
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  br label %130

8:                                                ; preds = %3
  %9 = call i32 @int_log2(i32 noundef %4)
  %10 = icmp eq i32 %0, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %130

12:                                               ; preds = %8
  call void @FFT_bitreverse(i32 noundef %0, double* noundef %1)
  br label %13

13:                                               ; preds = %127, %12
  %.05 = phi i32 [ 1, %12 ], [ %129, %127 ]
  %.04 = phi i32 [ 0, %12 ], [ %128, %127 ]
  %14 = icmp slt i32 %.04, %9
  br i1 %14, label %15, label %.loopexit

15:                                               ; preds = %13
  %16 = sitofp i32 %2 to double
  %17 = fmul double %16, 2.000000e+00
  %18 = fmul double %17, 0x400921FB54442D18
  %19 = sitofp i32 %.05 to double
  %20 = fmul double %19, 2.000000e+00
  %21 = fdiv double %18, %20
  %22 = call double @sin(double noundef %21) #6
  %23 = fmul double %21, 5.000000e-01
  %24 = call double @sin(double noundef %23) #6
  %25 = fmul double %24, 2.000000e+00
  %26 = fmul double %25, %24
  br label %27

27:                                               ; preds = %63, %15
  %.0 = phi i32 [ 0, %15 ], [ %65, %63 ]
  %28 = icmp slt i32 %.0, %4
  br i1 %28, label %29, label %66

29:                                               ; preds = %27
  %30 = shl nsw i32 %.0, 1
  %31 = add nsw i32 %.0, %.05
  %32 = shl nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %1, i64 %33
  %35 = load double, double* %34, align 8
  %36 = or i32 %32, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %1, i64 %37
  %39 = load double, double* %38, align 8
  %40 = sext i32 %30 to i64
  %41 = getelementptr inbounds double, double* %1, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fsub double %42, %35
  %44 = sext i32 %32 to i64
  %45 = getelementptr inbounds double, double* %1, i64 %44
  store double %43, double* %45, align 8
  %46 = or i32 %30, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %1, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fsub double %49, %39
  %51 = or i32 %32, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %1, i64 %52
  store double %50, double* %53, align 8
  %54 = sext i32 %30 to i64
  %55 = getelementptr inbounds double, double* %1, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fadd double %56, %35
  store double %57, double* %55, align 8
  %58 = or i32 %30, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %1, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fadd double %61, %39
  store double %62, double* %60, align 8
  br label %63

63:                                               ; preds = %29
  %64 = shl nsw i32 %.05, 1
  %65 = add nsw i32 %.0, %64
  br label %27, !llvm.loop !8

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %124, %66
  %.03 = phi double [ 1.000000e+00, %66 ], [ %73, %124 ]
  %.02 = phi double [ 0.000000e+00, %66 ], [ %76, %124 ]
  %.01 = phi i32 [ 1, %66 ], [ %125, %124 ]
  %68 = icmp ult i32 %.01, %.05
  br i1 %68, label %69, label %126

69:                                               ; preds = %67
  %70 = fneg double %22
  %71 = call double @llvm.fmuladd.f64(double %70, double %.02, double %.03)
  %72 = fneg double %26
  %73 = call double @llvm.fmuladd.f64(double %72, double %.03, double %71)
  %74 = call double @llvm.fmuladd.f64(double %22, double %.03, double %.02)
  %75 = fneg double %26
  %76 = call double @llvm.fmuladd.f64(double %75, double %.02, double %74)
  br label %77

77:                                               ; preds = %120, %69
  %.1 = phi i32 [ 0, %69 ], [ %122, %120 ]
  %78 = icmp slt i32 %.1, %4
  br i1 %78, label %79, label %123

79:                                               ; preds = %77
  %80 = add nsw i32 %.1, %.01
  %81 = shl nsw i32 %80, 1
  %82 = add nsw i32 %.1, %.01
  %83 = add nsw i32 %82, %.05
  %84 = shl nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %1, i64 %85
  %87 = load double, double* %86, align 8
  %88 = or i32 %84, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %1, i64 %89
  %91 = load double, double* %90, align 8
  %92 = fneg double %76
  %93 = fmul double %91, %92
  %94 = call double @llvm.fmuladd.f64(double %73, double %87, double %93)
  %95 = fmul double %76, %87
  %96 = call double @llvm.fmuladd.f64(double %73, double %91, double %95)
  %97 = sext i32 %81 to i64
  %98 = getelementptr inbounds double, double* %1, i64 %97
  %99 = load double, double* %98, align 8
  %100 = fsub double %99, %94
  %101 = sext i32 %84 to i64
  %102 = getelementptr inbounds double, double* %1, i64 %101
  store double %100, double* %102, align 8
  %103 = or i32 %81, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds double, double* %1, i64 %104
  %106 = load double, double* %105, align 8
  %107 = fsub double %106, %96
  %108 = or i32 %84, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %1, i64 %109
  store double %107, double* %110, align 8
  %111 = sext i32 %81 to i64
  %112 = getelementptr inbounds double, double* %1, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fadd double %113, %94
  store double %114, double* %112, align 8
  %115 = or i32 %81, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %1, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %96
  store double %119, double* %117, align 8
  br label %120

120:                                              ; preds = %79
  %121 = shl nsw i32 %.05, 1
  %122 = add nsw i32 %.1, %121
  br label %77, !llvm.loop !9

123:                                              ; preds = %77
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %.01, 1
  br label %67, !llvm.loop !10

126:                                              ; preds = %67
  br label %127

127:                                              ; preds = %126
  %128 = add nuw nsw i32 %.04, 1
  %129 = shl nsw i32 %.05, 1
  br label %13, !llvm.loop !11

.loopexit:                                        ; preds = %13
  br label %130

130:                                              ; preds = %.loopexit, %11, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_inverse(i32 noundef %0, double* nocapture noundef %1) #0 {
  %3 = sdiv i32 %0, 2
  call void @FFT_transform_internal(i32 noundef %0, double* noundef %1, i32 noundef 1)
  %4 = sitofp i32 %3 to double
  %5 = fdiv double 1.000000e+00, %4
  br label %6

6:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %7 = icmp slt i32 %.0, %0
  br i1 %7, label %8, label %15

8:                                                ; preds = %6
  %9 = zext i32 %.0 to i64
  %10 = getelementptr inbounds double, double* %1, i64 %9
  %11 = load double, double* %10, align 8
  %12 = fmul double %11, %5
  store double %12, double* %10, align 8
  br label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !12

15:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
