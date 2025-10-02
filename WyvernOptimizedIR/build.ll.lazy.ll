; ModuleID = './build.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %union.FV, align 16
  %4 = icmp eq i32 %0, 1123
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %5, %2
  %.0 = phi float [ 0x40030E9A20000000, %5 ], [ 0x3FF3BE76C0000000, %2 ]
  %7 = insertelement <4 x float> undef, float %.0, i64 0
  %8 = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %9 = getelementptr inbounds %union.FV, %union.FV* %3, i64 0, i32 0
  store <4 x float> %8, <4 x float>* %9, align 16
  call void @printFV(%union.FV* noundef nonnull %3)
  %10 = fmul <4 x float> %7, %7
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = getelementptr inbounds %union.FV, %union.FV* %3, i64 0, i32 0
  store <4 x float> %11, <4 x float>* %12, align 16
  call void @printFV(%union.FV* noundef nonnull %3)
  %13 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %.0, i64 0
  %14 = insertelement <4 x float> %13, float %.0, i64 1
  %15 = getelementptr inbounds %union.FV, %union.FV* %3, i64 0, i32 0
  store <4 x float> %14, <4 x float>* %15, align 16
  call void @printFV(%union.FV* noundef nonnull %3)
  %16 = fadd <4 x float> %14, %14
  %17 = getelementptr inbounds %union.FV, %union.FV* %3, i64 0, i32 0
  store <4 x float> %16, <4 x float>* %17, align 16
  call void @printFV(%union.FV* noundef nonnull %3)
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
