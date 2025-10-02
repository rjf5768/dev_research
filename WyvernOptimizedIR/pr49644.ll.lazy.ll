; ModuleID = './pr49644.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr49644.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.b = private unnamed_addr constant [12 x double] [double 1.000000e+00, double 2.000000e+00, double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01, double 1.100000e+01, double 1.200000e+01], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [12 x { double, double }], align 16
  %2 = alloca { double, double }, align 8
  %3 = alloca [12 x double], align 16
  %4 = getelementptr inbounds [12 x { double, double }], [12 x { double, double }]* %1, i64 0, i64 0
  %5 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %6 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  store double 3.000000e+00, double* %5, align 8
  store double 1.000000e+00, double* %6, align 8
  %7 = bitcast [12 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(96) %7, i8* noundef nonnull align 16 dereferenceable(96) bitcast ([12 x double]* @__const.main.b to i8*), i64 96, i1 false)
  %8 = getelementptr inbounds [12 x double], [12 x double]* %3, i64 0, i64 0
  br label %9

9:                                                ; preds = %21, %0
  %.02 = phi double* [ %8, %0 ], [ %23, %21 ]
  %.01 = phi { double, double }* [ %4, %0 ], [ %22, %21 ]
  %.0 = phi i32 [ 0, %0 ], [ %24, %21 ]
  %10 = icmp ult i32 %.0, 6
  br i1 %10, label %11, label %25

11:                                               ; preds = %9
  %12 = load double, double* %.02, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = getelementptr inbounds { double, double }, { double, double }* %2, i64 0, i32 1
  %16 = load double, double* %15, align 8
  %17 = fmul double %12, %14
  %18 = fmul double %12, %16
  %19 = getelementptr inbounds { double, double }, { double, double }* %.01, i64 0, i32 0
  %20 = getelementptr inbounds { double, double }, { double, double }* %.01, i64 0, i32 1
  store double %17, double* %19, align 8
  store double %18, double* %20, align 8
  br label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds { double, double }, { double, double }* %.01, i64 1
  %23 = getelementptr inbounds double, double* %.02, i64 1
  %24 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !4

25:                                               ; preds = %9
  %26 = getelementptr inbounds [12 x { double, double }], [12 x { double, double }]* %1, i64 0, i64 6
  %.not = icmp eq { double, double }* %.01, %26
  br i1 %.not, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds [12 x double], [12 x double]* %3, i64 0, i64 6
  %.not3 = icmp eq double* %.02, %28
  br i1 %.not3, label %30, label %29

29:                                               ; preds = %27, %25
  call void @abort() #3
  unreachable

30:                                               ; preds = %27
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
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
