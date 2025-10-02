; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr72824-2.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/ieee/pr72824-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x <4 x float>], align 16
  %3 = alloca <4 x float>, align 16
  store i32 0, i32* %1, align 4
  %4 = getelementptr inbounds [32 x <4 x float>], [32 x <4 x float>]* %2, i64 0, i64 0
  store <4 x float> <float 0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00>, <4 x float>* %3, align 16
  %5 = load <4 x float>, <4 x float>* %3, align 16
  call void @foo(<4 x float>* noundef %4, <4 x float> noundef %5)
  %6 = getelementptr inbounds [32 x <4 x float>], [32 x <4 x float>]* %2, i64 0, i64 3
  %7 = load <4 x float>, <4 x float>* %6, align 16
  %8 = extractelement <4 x float> %7, i32 1
  %9 = call float @llvm.copysign.f32(float 1.000000e+00, float %8)
  %10 = fcmp une float %9, -1.000000e+00
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  call void @abort() #3
  unreachable

12:                                               ; preds = %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @foo(<4 x float>* noundef %0, <4 x float> noundef %1) #0 {
  %3 = alloca <4 x float>*, align 8
  %4 = alloca <4 x float>, align 16
  %5 = alloca i32, align 4
  store <4 x float>* %0, <4 x float>** %3, align 8
  store <4 x float> %1, <4 x float>* %4, align 16
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 32
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load <4 x float>, <4 x float>* %4, align 16
  %11 = load <4 x float>*, <4 x float>** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds <4 x float>, <4 x float>* %11, i64 %13
  store <4 x float> %10, <4 x float>* %14, align 16
  br label %15

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6, !llvm.loop !4

18:                                               ; preds = %6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
