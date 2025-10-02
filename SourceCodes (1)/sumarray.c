; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/sumarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.Array = type { [100 x <4 x float>] }
%union.FV = type { <4 x float> }

@TheArray = dso_local global %union.Array zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca <4 x float>, align 16
  %4 = alloca %union.FV, align 16
  store i32 0, i32* %1, align 4
  store <4 x float> zeroinitializer, <4 x float>* %3, align 16
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 400
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sitofp i32 %9 to float
  %11 = fmul float %10, 0x4028B0A3E0000000
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [400 x float], [400 x float]* bitcast (%union.Array* @TheArray to [400 x float]*), i64 0, i64 %13
  store float %11, float* %14, align 4
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %2, align 4
  br label %5, !llvm.loop !4

18:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %29, %18
  %20 = load i32, i32* %2, align 4
  %21 = icmp slt i32 %20, 100
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [100 x <4 x float>], [100 x <4 x float>]* getelementptr inbounds (%union.Array, %union.Array* @TheArray, i32 0, i32 0), i64 0, i64 %24
  %26 = load <4 x float>, <4 x float>* %25, align 16
  %27 = load <4 x float>, <4 x float>* %3, align 16
  %28 = fadd <4 x float> %27, %26
  store <4 x float> %28, <4 x float>* %3, align 16
  br label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %19, !llvm.loop !6

32:                                               ; preds = %19
  %33 = load <4 x float>, <4 x float>* %3, align 16
  %34 = bitcast %union.FV* %4 to <4 x float>*
  store <4 x float> %33, <4 x float>* %34, align 16
  call void @printFV(%union.FV* noundef %4)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @printFV(%union.FV* noundef %0) #0 {
  %2 = alloca %union.FV*, align 8
  store %union.FV* %0, %union.FV** %2, align 8
  %3 = load %union.FV*, %union.FV** %2, align 8
  %4 = bitcast %union.FV* %3 to [4 x float]*
  %5 = getelementptr inbounds [4 x float], [4 x float]* %4, i64 0, i64 0
  %6 = load float, float* %5, align 16
  %7 = fpext float %6 to double
  %8 = load %union.FV*, %union.FV** %2, align 8
  %9 = bitcast %union.FV* %8 to [4 x float]*
  %10 = getelementptr inbounds [4 x float], [4 x float]* %9, i64 0, i64 1
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = load %union.FV*, %union.FV** %2, align 8
  %14 = bitcast %union.FV* %13 to [4 x float]*
  %15 = getelementptr inbounds [4 x float], [4 x float]* %14, i64 0, i64 2
  %16 = load float, float* %15, align 8
  %17 = fpext float %16 to double
  %18 = load %union.FV*, %union.FV** %2, align 8
  %19 = bitcast %union.FV* %18 to [4 x float]*
  %20 = getelementptr inbounds [4 x float], [4 x float]* %19, i64 0, i64 3
  %21 = load float, float* %20, align 4
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), double noundef %7, double noundef %12, double noundef %17, double noundef %22)
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
