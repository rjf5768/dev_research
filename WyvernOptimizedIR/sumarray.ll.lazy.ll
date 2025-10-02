; ModuleID = './sumarray.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <4 x float>] }
%union.FV = type { <4 x float> }

@TheArray = dso_local global %union.Array zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca %union.FV, align 16
  br label %2

2:                                                ; preds = %9, %0
  %.01 = phi i32 [ 0, %0 ], [ %10, %9 ]
  %3 = icmp ult i32 %.01, 400
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sitofp i32 %.01 to float
  %6 = fmul float %5, 0x4028B0A3E0000000
  %7 = zext i32 %.01 to i64
  %8 = getelementptr inbounds [400 x float], [400 x float]* bitcast (%union.Array* @TheArray to [400 x float]*), i64 0, i64 %7
  store float %6, float* %8, align 4
  br label %9

9:                                                ; preds = %4
  %10 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !4

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %15, %11
  %.1 = phi i32 [ 0, %11 ], [ %20, %15 ]
  %.0 = phi <4 x float> [ zeroinitializer, %11 ], [ %19, %15 ]
  %13 = icmp ult i32 %.1, 100
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  %16 = zext i32 %.1 to i64
  %17 = getelementptr inbounds %union.Array, %union.Array* @TheArray, i64 0, i32 0, i64 %16
  %18 = load <4 x float>, <4 x float>* %17, align 16
  %19 = fadd <4 x float> %.0, %18
  %20 = add nuw nsw i32 %.1, 1
  br label %12, !llvm.loop !6

21:                                               ; preds = %12
  %22 = getelementptr inbounds %union.FV, %union.FV* %1, i64 0, i32 0
  store <4 x float> %.0, <4 x float>* %22, align 16
  call void @printFV(%union.FV* noundef nonnull %1)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %union.FV, %union.FV* %0, i64 0, i32 0, i64 0
  %3 = load float, float* %2, align 16
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 1
  %6 = load float, float* %5, align 4
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 2
  %9 = load float, float* %8, align 8
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %union.FV, %union.FV* %0, i64 0, i32 0, i64 3
  %12 = load float, float* %11, align 4
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %4, double noundef %7, double noundef %10, double noundef %13) #2
  ret void
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
