; ModuleID = './20050604-1.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/20050604-1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { <4 x i16> }
%union.anon.0 = type { <4 x float> }

@u = dso_local global %union.anon zeroinitializer, align 8
@v = dso_local global %union.anon.0 zeroinitializer, align 16

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @foo() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 2
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load <4 x i16>, <4 x i16>* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0), align 8
  %5 = add <4 x i16> %4, <i16 12, i16 -32768, i16 0, i16 0>
  store <4 x i16> %5, <4 x i16>* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0), align 8
  br label %6

6:                                                ; preds = %3
  %7 = add i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %.1 = phi i32 [ 0, %8 ], [ %15, %14 ]
  %10 = icmp ult i32 %.1, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %9
  %12 = load <4 x float>, <4 x float>* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0), align 16
  %13 = fadd <4 x float> %12, <float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 0.000000e+00>
  store <4 x float> %13, <4 x float>* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0), align 16
  br label %14

14:                                               ; preds = %11
  %15 = add i32 %.1, 1
  br label %9, !llvm.loop !6

16:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #1 {
  call void @foo()
  %1 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i64 0), align 8
  %.not = icmp eq i16 %1, 24
  br i1 %.not, label %2, label %8

2:                                                ; preds = %0
  %3 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i64 1), align 2
  %.not1 = icmp eq i16 %3, 0
  br i1 %.not1, label %4, label %8

4:                                                ; preds = %2
  %5 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i64 2), align 4
  %.not2 = icmp eq i16 %5, 0
  br i1 %.not2, label %6, label %8

6:                                                ; preds = %4
  %7 = load i16, i16* getelementptr inbounds (%union.anon, %union.anon* @u, i64 0, i32 0, i64 3), align 2
  %.not3 = icmp eq i16 %7, 0
  br i1 %.not3, label %9, label %8

8:                                                ; preds = %6, %4, %2, %0
  call void @abort() #3
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %6
  %10 = load float, float* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0, i64 0), align 16
  %11 = fcmp une float %10, 3.600000e+01
  br i1 %11, label %21, label %12

12:                                               ; preds = %9
  %13 = load float, float* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0, i64 1), align 4
  %14 = fcmp une float %13, 4.000000e+01
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load float, float* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0, i64 2), align 8
  %17 = fcmp une float %16, 4.400000e+01
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load float, float* getelementptr inbounds (%union.anon.0, %union.anon.0* @v, i64 0, i32 0, i64 3), align 4
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %15, %12, %9
  call void @abort() #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %18
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %21, %8
  unreachable
}

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
