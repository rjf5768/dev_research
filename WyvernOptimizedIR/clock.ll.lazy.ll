; ModuleID = './clock.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/SPASS/clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeb = type { i64, i16, i16, i16 }

@clock_Akku = dso_local global [6 x float] zeroinitializer, align 16
@clock_Counters = dso_local global [6 x %struct.timeb] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"%u:%02u:%2.2f\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%u:%02u:0%2.2f\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @clock_Init() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %.0 = phi i32 [ 0, %0 ], [ %5, %4 ]
  %2 = icmp ult i32 %.0, 6
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  call void @clock_InitCounter(i32 noundef %.0)
  br label %4

4:                                                ; preds = %3
  %5 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

6:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @clock_InitCounter(i32 noundef %0) #1 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %2
  store float 0.000000e+00, float* %3, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StartCounter(i32 noundef %0) #2 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %2
  %4 = call i32 @ftime(%struct.timeb* noundef nonnull %3) #4
  ret void
}

declare dso_local i32 @ftime(%struct.timeb* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StopPassedTime(i32 noundef %0) #2 {
  %2 = alloca %struct.timeb, align 8
  %3 = call i32 @ftime(%struct.timeb* noundef nonnull %2) #4
  %4 = call float @clock_GetSeconds(i32 noundef %0)
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %5
  store float %4, float* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @clock_GetSeconds(i32 noundef %0) #2 {
  %2 = alloca %struct.timeb, align 8
  %3 = call i32 @ftime(%struct.timeb* noundef nonnull %2) #4
  %4 = getelementptr inbounds %struct.timeb, %struct.timeb* %2, i64 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %6, i32 0
  %8 = load i64, i64* %7, align 16
  %9 = sub nsw i64 %5, %8
  %10 = sitofp i64 %9 to float
  %11 = getelementptr inbounds %struct.timeb, %struct.timeb* %2, i64 0, i32 1
  %12 = load i16, i16* %11, align 8
  %13 = zext i16 %12 to i32
  %14 = zext i32 %0 to i64
  %15 = getelementptr inbounds [6 x %struct.timeb], [6 x %struct.timeb]* @clock_Counters, i64 0, i64 %14, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %13, %17
  %19 = sitofp i32 %18 to float
  %20 = fdiv float %19, 1.000000e+03
  %21 = fadd float %20, %10
  ret float %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_StopAddPassedTime(i32 noundef %0) #2 {
  %2 = alloca %struct.timeb, align 8
  %3 = call i32 @ftime(%struct.timeb* noundef nonnull %2) #4
  %4 = call float @clock_GetSeconds(i32 noundef %0)
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %5
  %7 = load float, float* %6, align 4
  %8 = fadd float %7, %4
  store float %8, float* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clock_PrintTime(i32 noundef %0) #2 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i64 0, i64 %2
  %4 = load float, float* %3, align 4
  %5 = fptoui float %4 to i32
  %6 = udiv i32 %5, 3600
  %7 = mul i32 %6, 3600
  %8 = uitofp i32 %7 to float
  %9 = fsub float %4, %8
  %10 = fptoui float %9 to i32
  %11 = udiv i32 %10, 60
  %12 = mul i32 %11, 60
  %13 = uitofp i32 %12 to float
  %14 = fsub float %9, %13
  %15 = fcmp ult float %14, 1.000000e+01
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = fpext float %14 to double
  %18 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 noundef %6, i32 noundef %11, double noundef %17) #4
  br label %22

19:                                               ; preds = %1
  %20 = fpext float %14 to double
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 noundef %6, i32 noundef %11, double noundef %20) #4
  br label %22

22:                                               ; preds = %19, %16
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
