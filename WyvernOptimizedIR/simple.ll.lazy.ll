; ModuleID = './simple.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.FV = type { <4 x float> }
%union.DV = type { <2 x double> }

@.str = private unnamed_addr constant [13 x i8] c"%f %f %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%g %g\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #0 {
  %3 = alloca %union.FV, align 16
  %4 = alloca %union.FV, align 16
  %5 = alloca %union.FV, align 16
  %6 = alloca %union.FV, align 16
  %7 = alloca %union.DV, align 16
  %8 = alloca %union.DV, align 16
  %9 = icmp eq i32 %0, 1123
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %.04 = phi float [ 0x40030E9A20000000, %10 ], [ 0x3FF3BE76C0000000, %2 ]
  %12 = icmp eq i32 %0, 1432
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %13, %11
  %.02 = phi float [ 0x401EE0B780000000, %13 ], [ 0x4023C08320000000, %11 ]
  %15 = icmp eq i32 %0, 2123
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16, %14
  %.01 = phi double [ 3.282190e+01, %16 ], [ 0x408B49779A6B50B1, %14 ]
  %18 = icmp eq i32 %0, 5123
  br i1 %18, label %19, label %20

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %17
  %.0 = phi double [ 7.779980e+01, %19 ], [ 0x409CCB9C779A6B51, %17 ]
  br label %21

21:                                               ; preds = %50, %20
  %.03 = phi i32 [ 0, %20 ], [ %51, %50 ]
  %22 = icmp ult i32 %.03, 500000
  br i1 %22, label %23, label %52

23:                                               ; preds = %21
  %24 = insertelement <4 x float> undef, float %.04, i64 0
  %25 = fmul <4 x float> %24, %24
  %26 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %27 = getelementptr inbounds %union.FV, %union.FV* %3, i64 0, i32 0
  store <4 x float> %26, <4 x float>* %27, align 16
  %28 = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %.04, i64 0
  %29 = insertelement <4 x float> %28, float %.04, i64 1
  %30 = fadd <4 x float> %29, %29
  %31 = getelementptr inbounds %union.FV, %union.FV* %4, i64 0, i32 0
  store <4 x float> %30, <4 x float>* %31, align 16
  %32 = insertelement <4 x float> undef, float %.04, i64 0
  %33 = insertelement <4 x float> %32, float %.04, i64 1
  %34 = insertelement <4 x float> %33, float %.02, i64 2
  %35 = insertelement <4 x float> %34, float %.02, i64 3
  %36 = fadd <4 x float> %35, %35
  %37 = getelementptr inbounds %union.FV, %union.FV* %5, i64 0, i32 0
  store <4 x float> %36, <4 x float>* %37, align 16
  %38 = insertelement <4 x float> <float poison, float poison, float 0x3FF1C6A7E0000000, float 0x3FF1C6A7E0000000>, float %.02, i64 0
  %39 = insertelement <4 x float> %38, float %.02, i64 1
  %40 = fadd <4 x float> %39, %39
  %41 = getelementptr inbounds %union.FV, %union.FV* %6, i64 0, i32 0
  store <4 x float> %40, <4 x float>* %41, align 16
  %42 = insertelement <2 x double> undef, double %.01, i64 0
  %43 = fadd <2 x double> %42, %42
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = getelementptr inbounds %union.DV, %union.DV* %7, i64 0, i32 0
  store <2 x double> %44, <2 x double>* %45, align 16
  %46 = insertelement <2 x double> undef, double %.01, i64 0
  %47 = insertelement <2 x double> %46, double %.0, i64 1
  %48 = fadd <2 x double> %47, %47
  %49 = getelementptr inbounds %union.DV, %union.DV* %8, i64 0, i32 0
  store <2 x double> %48, <2 x double>* %49, align 16
  br label %50

50:                                               ; preds = %23
  %51 = add i32 %.03, 1
  br label %21, !llvm.loop !4

52:                                               ; preds = %21
  call void @printFV(%union.FV* noundef nonnull %3)
  call void @printFV(%union.FV* noundef nonnull %4)
  call void @printFV(%union.FV* noundef nonnull %5)
  call void @printFV(%union.FV* noundef nonnull %6)
  call void @printDV(%union.DV* noundef nonnull %7)
  call void @printDV(%union.DV* noundef nonnull %8)
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

; Function Attrs: noinline nounwind uwtable
define internal void @printDV(%union.DV* nocapture noundef readonly %0) #0 {
  %2 = getelementptr %union.DV, %union.DV* %0, i64 0, i32 0, i64 0
  %3 = load double, double* %2, align 16
  %4 = getelementptr inbounds %union.DV, %union.DV* %0, i64 0, i32 0, i64 1
  %5 = load double, double* %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double noundef %3, double noundef %5) #2
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
