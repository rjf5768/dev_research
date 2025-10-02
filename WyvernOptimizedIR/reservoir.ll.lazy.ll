; ModuleID = './reservoir.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/reservoir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lame_global_flags = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, float, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.III_side_info_t = type { i32, i32, i32, [2 x [4 x i32]], [2 x %struct.anon] }
%struct.anon = type { [2 x %struct.gr_info_ss] }
%struct.gr_info_ss = type { %struct.gr_info }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [4 x i32] }

@ResvSize = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"(l3_side->main_data_begin * 8) == ResvSize\00", align 1
@.str.1 = private unnamed_addr constant [87 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/reservoir.c\00", align 1
@__PRETTY_FUNCTION__.ResvFrameBegin = private unnamed_addr constant [69 x i8] c"int ResvFrameBegin(lame_global_flags *, III_side_info_t *, int, int)\00", align 1
@ResvMax = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ResvFrameBegin(%struct.lame_global_flags* nocapture noundef readonly %0, %struct.III_side_info_t* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 39
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i32 0, i32* @ResvSize, align 4
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 43
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %15

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14, %13
  %.0 = phi i32 [ 4088, %13 ], [ 2040, %14 ]
  %16 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %1, i64 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl nsw i32 %17, 3
  %19 = load i32, i32* @ResvSize, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %23

22:                                               ; preds = %15
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.ResvFrameBegin, i64 0, i64 0)) #3
  unreachable

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 45
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ResvSize, align 4
  %27 = icmp sgt i32 %3, 7680
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  %30 = sub nsw i32 7680, %3
  br label %31

31:                                               ; preds = %29, %28
  %storemerge = phi i32 [ %30, %29 ], [ 0, %28 ]
  store i32 %storemerge, i32* @ResvMax, align 4
  %32 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 17
  %33 = load i32, i32* %32, align 8
  %.not = icmp eq i32 %33, 0
  br i1 %.not, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* @ResvMax, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* @ResvMax, align 4
  %37 = icmp sgt i32 %36, %.0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 %.0, i32* @ResvMax, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = mul nsw i32 %25, %2
  %41 = add nsw i32 %40, %26
  ret i32 %41
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ResvMaxBits(i32 noundef %0, i32* nocapture noundef %1, i32* nocapture noundef %2, i32 noundef %3) #2 {
  store i32 %0, i32* %1, align 4
  %5 = load i32, i32* @ResvSize, align 4
  %6 = load i32, i32* @ResvMax, align 4
  %7 = mul nsw i32 %6, 9
  %8 = sdiv i32 %7, 10
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = load i32, i32* @ResvSize, align 4
  %12 = load i32, i32* @ResvMax, align 4
  %13 = mul nsw i32 %12, 9
  %.neg = sdiv i32 %13, -10
  %14 = add i32 %.neg, %11
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, %14
  br label %23

17:                                               ; preds = %4
  %18 = sitofp i32 %0 to double
  %19 = fdiv double %18, 1.520000e+01
  %20 = fptosi double %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = sub nsw i32 %21, %20
  br label %23

23:                                               ; preds = %17, %10
  %storemerge = phi i32 [ %22, %17 ], [ %16, %10 ]
  %.0 = phi i32 [ 0, %17 ], [ %14, %10 ]
  store i32 %storemerge, i32* %1, align 4
  %24 = load i32, i32* @ResvSize, align 4
  %25 = load i32, i32* @ResvMax, align 4
  %26 = mul nsw i32 %25, 6
  %27 = sdiv i32 %26, 10
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ResvSize, align 4
  br label %35

31:                                               ; preds = %23
  %32 = load i32, i32* @ResvMax, align 4
  %33 = mul nsw i32 %32, 6
  %34 = sdiv i32 %33, 10
  br label %35

35:                                               ; preds = %31, %29
  %36 = phi i32 [ %30, %29 ], [ %34, %31 ]
  %37 = sub nsw i32 %36, %.0
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %35
  %storemerge1 = phi i32 [ 0, %39 ], [ %37, %35 ]
  store i32 %storemerge1, i32* %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ResvAdjust(%struct.lame_global_flags* nocapture noundef readonly %0, %struct.gr_info* nocapture noundef readonly %1, %struct.III_side_info_t* nocapture noundef readnone %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 46
  %6 = load i32, i32* %5, align 4
  %7 = sdiv i32 %3, %6
  %8 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %1, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub i32 %7, %9
  %11 = load i32, i32* @ResvSize, align 4
  %12 = add i32 %11, %10
  store i32 %12, i32* @ResvSize, align 4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @ResvFrameEnd(%struct.lame_global_flags* nocapture noundef readonly %0, %struct.III_side_info_t* nocapture noundef writeonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %0, i64 0, i32 46
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = and i32 %2, 1
  %.not2 = icmp eq i32 %8, 0
  br i1 %.not2, label %12, label %9

9:                                                ; preds = %7
  %10 = load i32, i32* @ResvSize, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @ResvSize, align 4
  br label %12

12:                                               ; preds = %9, %7, %3
  %13 = load i32, i32* @ResvSize, align 4
  %14 = load i32, i32* @ResvMax, align 4
  %15 = sub nsw i32 %13, %14
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %12
  %.0 = phi i32 [ 0, %17 ], [ %15, %12 ]
  %19 = load i32, i32* @ResvSize, align 4
  %20 = sub nsw i32 %19, %.0
  store i32 %20, i32* @ResvSize, align 4
  %21 = srem i32 %20, 8
  %.not = icmp eq i32 %21, 0
  br i1 %.not, label %26, label %22

22:                                               ; preds = %18
  %23 = add nsw i32 %.0, %21
  %24 = load i32, i32* @ResvSize, align 4
  %25 = sub nsw i32 %24, %21
  store i32 %25, i32* @ResvSize, align 4
  br label %26

26:                                               ; preds = %22, %18
  %.01 = phi i32 [ %23, %22 ], [ %.0, %18 ]
  %27 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %1, i64 0, i32 2
  store i32 %.01, i32* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
