; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050604-1.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050604-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <4 x i16> }
%union.anon.0 = type { <4 x float> }

@u = dso_local global %union.anon zeroinitializer, align 8
@v = dso_local global %union.anon.0 zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo() #0 {
  %1 = alloca i32, align 4
  %2 = alloca <4 x i16>, align 8
  %3 = alloca <4 x float>, align 16
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  store <4 x i16> <i16 12, i16 -32768, i16 0, i16 0>, <4 x i16>* %2, align 8
  %8 = load <4 x i16>, <4 x i16>* %2, align 8
  %9 = load <4 x i16>, <4 x i16>* getelementptr inbounds (%union.anon, %union.anon* @u, i32 0, i32 0), align 8
  %10 = add <4 x i16> %9, %8
  store <4 x i16> %10, <4 x i16>* getelementptr inbounds (%union.anon, %union.anon* @u, i32 0, i32 0), align 8
  br label %11

11:                                               ; preds = %7
  %12 = load i32, i32* %1, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %4, !llvm.loop !4

14:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %22, %14
  %16 = load i32, i32* %1, align 4
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  store <4 x float> <float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 0.000000e+00>, <4 x float>* %3, align 16
  %19 = load <4 x float>, <4 x float>* %3, align 16
  %20 = load <4 x float>, <4 x float>* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i32 0, i32 0), align 16
  %21 = fadd <4 x float> %20, %19
  store <4 x float> %21, <4 x float>* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i32 0, i32 0), align 16
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %15, !llvm.loop !6

25:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @foo()
  %2 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* bitcast (%union.anon* @u to [4 x i16]*), i64 0, i64 0), align 8
  %3 = sext i16 %2 to i32
  %4 = icmp ne i32 %3, 24
  br i1 %4, label %17, label %5

5:                                                ; preds = %0
  %6 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* bitcast (%union.anon* @u to [4 x i16]*), i64 0, i64 1), align 2
  %7 = sext i16 %6 to i32
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* bitcast (%union.anon* @u to [4 x i16]*), i64 0, i64 2), align 4
  %11 = sext i16 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i16, i16* getelementptr inbounds ([4 x i16], [4 x i16]* bitcast (%union.anon* @u to [4 x i16]*), i64 0, i64 3), align 2
  %15 = sext i16 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9, %5, %0
  call void @abort() #2
  unreachable

18:                                               ; preds = %13
  %19 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* bitcast (%union.anon.0* @v to [4 x float]*), i64 0, i64 0), align 16
  %20 = fpext float %19 to double
  %21 = fcmp une double %20, 3.600000e+01
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* bitcast (%union.anon.0* @v to [4 x float]*), i64 0, i64 1), align 4
  %24 = fpext float %23 to double
  %25 = fcmp une double %24, 4.000000e+01
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* bitcast (%union.anon.0* @v to [4 x float]*), i64 0, i64 2), align 8
  %28 = fpext float %27 to double
  %29 = fcmp une double %28, 4.400000e+01
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load float, float* getelementptr inbounds ([4 x float], [4 x float]* bitcast (%union.anon.0* @v to [4 x float]*), i64 0, i64 3), align 4
  %32 = fpext float %31 to double
  %33 = fcmp une double %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22, %18
  call void @abort() #2
  unreachable

35:                                               ; preds = %30
  ret i32 0
}

; Function Attrs: noreturn
declare dso_local void @abort() #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
