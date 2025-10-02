; ModuleID = './pi.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Misc/pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Starting PI...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" x = %9.6f    y = %12.2f  low = %8d j = %7d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Pi = %9.6f ztot = %12.2f itot = %8d\0A\00", align 1
@str = private unnamed_addr constant [15 x i8] c"Starting PI...\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @myadd(float* nocapture noundef %0, float* nocapture noundef readonly %1) #0 {
  %3 = load float, float* %0, align 4
  %4 = load float, float* %1, align 4
  %5 = fadd float %3, %4
  store float %5, float* %0, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readnone %1) #1 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str, i64 0, i64 0))
  store float 0.000000e+00, float* %3, align 4
  br label %5

5:                                                ; preds = %24, %2
  %.05 = phi double [ undef, %2 ], [ %phi.cast, %24 ]
  %.04 = phi double [ undef, %2 ], [ %phi.cast6, %24 ]
  %.03 = phi float [ 5.813000e+03, %2 ], [ %16, %24 ]
  %.02 = phi i64 [ 1, %2 ], [ %.1, %24 ]
  %.01 = phi i64 [ 1907, %2 ], [ %9, %24 ]
  %.0 = phi i64 [ 1, %2 ], [ %25, %24 ]
  %6 = icmp ult i64 %.0, 40000001
  br i1 %6, label %7, label %26

7:                                                ; preds = %5
  %8 = mul nsw i64 %.01, 27611
  %9 = srem i64 %8, 74383
  %10 = sitofp i64 %9 to float
  %11 = fdiv float %10, 7.438300e+04
  %12 = fmul float %.03, 1.307000e+03
  %13 = fdiv float %12, 5.471000e+03
  %14 = fptosi float %13 to i64
  %15 = sitofp i64 %14 to float
  %16 = call float @llvm.fmuladd.f32(float %15, float -5.471000e+03, float %12)
  %17 = fdiv float %16, 5.471000e+03
  %18 = fmul float %17, %17
  %19 = call float @llvm.fmuladd.f32(float %11, float %11, float %18)
  store float %19, float* %4, align 4
  call void @myadd(float* noundef nonnull %3, float* noundef nonnull %4)
  %20 = fcmp ugt float %19, 1.000000e+00
  br i1 %20, label %23, label %21

21:                                               ; preds = %7
  %22 = add nsw i64 %.02, 1
  br label %23

23:                                               ; preds = %21, %7
  %.1 = phi i64 [ %22, %21 ], [ %.02, %7 ]
  br label %24

24:                                               ; preds = %23
  %25 = add nuw nsw i64 %.0, 1
  %phi.cast = fpext float %11 to double
  %phi.cast6 = fpext float %17 to double
  br label %5, !llvm.loop !4

26:                                               ; preds = %5
  %27 = trunc i64 %.02 to i32
  %28 = trunc i64 %.0 to i32
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), double noundef %.05, double noundef %.04, i32 noundef %27, i32 noundef %28) #5
  %30 = sitofp i64 %.02 to float
  %31 = fpext float %30 to double
  %32 = fmul double %31, 4.000000e+00
  %33 = fdiv double %32, 4.000000e+07
  %34 = fptrunc double %33 to float
  %35 = fpext float %34 to double
  %36 = load float, float* %3, align 4
  %37 = fpext float %36 to double
  %38 = fmul double %37, 0.000000e+00
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double noundef %35, double noundef %38, i32 noundef 40000000) #5
  ret i32 0
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
