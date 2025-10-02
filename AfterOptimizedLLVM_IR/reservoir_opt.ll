; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MiBench/consumer-lame/reservoir.c'
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
define dso_local i32 @ResvFrameBegin(%struct.lame_global_flags* noundef %0, %struct.III_side_info_t* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.lame_global_flags*, align 8
  %6 = alloca %struct.III_side_info_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 8
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 8
  %12 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %11, i32 0, i32 39
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* @ResvSize, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 8
  %18 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %17, i32 0, i32 43
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 4088, i32* %10, align 4
  br label %23

22:                                               ; preds = %16
  store i32 2040, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load %struct.III_side_info_t*, %struct.III_side_info_t** %6, align 8
  %25 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = load i32, i32* @ResvSize, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %32

31:                                               ; preds = %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 noundef 68, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.ResvFrameBegin, i64 0, i64 0)) #2
  unreachable

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 8
  %35 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %34, i32 0, i32 45
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = load i32, i32* @ResvSize, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 7680
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 0, i32* @ResvMax, align 4
  br label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 7680, %44
  store i32 %45, i32* @ResvMax, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 8
  %48 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %47, i32 0, i32 17
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* @ResvMax, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* @ResvMax, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* @ResvMax, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %9, align 4
  ret i32 %59
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @ResvMaxBits(i32 noundef %0, i32* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32*, i32** %6, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @ResvSize, align 4
  %13 = load i32, i32* @ResvMax, align 4
  %14 = mul nsw i32 %13, 9
  %15 = sdiv i32 %14, 10
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %4
  %18 = load i32, i32* @ResvSize, align 4
  %19 = load i32, i32* @ResvMax, align 4
  %20 = mul nsw i32 %19, 9
  %21 = sdiv i32 %20, 10
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %23
  store i32 %26, i32* %24, align 4
  br label %35

27:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 1.520000e+01
  %31 = fptosi double %30 to i32
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %33, %31
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %17
  %36 = load i32, i32* @ResvSize, align 4
  %37 = load i32, i32* @ResvMax, align 4
  %38 = mul nsw i32 %37, 6
  %39 = sdiv i32 %38, 10
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @ResvSize, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @ResvMax, align 4
  %45 = mul nsw i32 %44, 6
  %46 = sdiv i32 %45, 10
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i32 [ %42, %41 ], [ %46, %43 ]
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32*, i32** %7, align 8
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %47
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ResvAdjust(%struct.lame_global_flags* noundef %0, %struct.gr_info* noundef %1, %struct.III_side_info_t* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.lame_global_flags*, align 8
  %6 = alloca %struct.gr_info*, align 8
  %7 = alloca %struct.III_side_info_t*, align 8
  %8 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %5, align 8
  store %struct.gr_info* %1, %struct.gr_info** %6, align 8
  store %struct.III_side_info_t* %2, %struct.III_side_info_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lame_global_flags*, %struct.lame_global_flags** %5, align 8
  %11 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %10, i32 0, i32 46
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %9, %12
  %14 = load %struct.gr_info*, %struct.gr_info** %6, align 8
  %15 = getelementptr inbounds %struct.gr_info, %struct.gr_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub i32 %13, %16
  %18 = load i32, i32* @ResvSize, align 4
  %19 = add i32 %18, %17
  store i32 %19, i32* @ResvSize, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ResvFrameEnd(%struct.lame_global_flags* noundef %0, %struct.III_side_info_t* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.lame_global_flags*, align 8
  %5 = alloca %struct.III_side_info_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lame_global_flags* %0, %struct.lame_global_flags** %4, align 8
  store %struct.III_side_info_t* %1, %struct.III_side_info_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.lame_global_flags*, %struct.lame_global_flags** %4, align 8
  %10 = getelementptr inbounds %struct.lame_global_flags, %struct.lame_global_flags* %9, i32 0, i32 46
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @ResvSize, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @ResvSize, align 4
  br label %20

20:                                               ; preds = %17, %13, %3
  %21 = load i32, i32* @ResvSize, align 4
  %22 = load i32, i32* @ResvMax, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ResvSize, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* @ResvSize, align 4
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ResvSize, align 4
  %33 = srem i32 %32, 8
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ResvSize, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* @ResvSize, align 4
  br label %42

42:                                               ; preds = %35, %27
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.III_side_info_t*, %struct.III_side_info_t** %5, align 8
  %45 = getelementptr inbounds %struct.III_side_info_t, %struct.III_side_info_t* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
