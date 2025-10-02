; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/decode.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Decoder(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4, i16* noundef %5, i16* noundef %6, i16* noundef %7) #0 {
  %9 = alloca %struct.gsm_state*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [40 x i16], align 16
  %20 = alloca [160 x i16], align 16
  %21 = alloca i16*, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %9, align 8
  store i16* %1, i16** %10, align 8
  store i16* %2, i16** %11, align 8
  store i16* %3, i16** %12, align 8
  store i16* %4, i16** %13, align 8
  store i16* %5, i16** %14, align 8
  store i16* %6, i16** %15, align 8
  store i16* %7, i16** %16, align 8
  %22 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %23 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds [280 x i16], [280 x i16]* %23, i64 0, i64 0
  %25 = getelementptr inbounds i16, i16* %24, i64 120
  store i16* %25, i16** %21, align 8
  store i32 0, i32* %17, align 4
  br label %26

26:                                               ; preds = %63, %8
  %27 = load i32, i32* %17, align 4
  %28 = icmp sle i32 %27, 3
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %31 = load i16*, i16** %14, align 8
  %32 = load i16, i16* %31, align 2
  %33 = load i16*, i16** %13, align 8
  %34 = load i16, i16* %33, align 2
  %35 = load i16*, i16** %15, align 8
  %36 = getelementptr inbounds [40 x i16], [40 x i16]* %19, i64 0, i64 0
  call void @Gsm_RPE_Decoding(%struct.gsm_state* noundef %30, i16 noundef signext %32, i16 noundef signext %34, i16* noundef %35, i16* noundef %36)
  %37 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %38 = load i16*, i16** %11, align 8
  %39 = load i16, i16* %38, align 2
  %40 = load i16*, i16** %12, align 8
  %41 = load i16, i16* %40, align 2
  %42 = getelementptr inbounds [40 x i16], [40 x i16]* %19, i64 0, i64 0
  %43 = load i16*, i16** %21, align 8
  call void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* noundef %37, i16 noundef signext %39, i16 noundef signext %41, i16* noundef %42, i16* noundef %43)
  store i32 0, i32* %18, align 4
  br label %44

44:                                               ; preds = %59, %29
  %45 = load i32, i32* %18, align 4
  %46 = icmp sle i32 %45, 39
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i16*, i16** %21, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = load i32, i32* %17, align 4
  %54 = mul nsw i32 %53, 40
  %55 = load i32, i32* %18, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 %57
  store i16 %52, i16* %58, align 2
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %18, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %18, align 4
  br label %44, !llvm.loop !4

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %17, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %17, align 4
  %66 = load i16*, i16** %14, align 8
  %67 = getelementptr inbounds i16, i16* %66, i32 1
  store i16* %67, i16** %14, align 8
  %68 = load i16*, i16** %12, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %12, align 8
  %70 = load i16*, i16** %11, align 8
  %71 = getelementptr inbounds i16, i16* %70, i32 1
  store i16* %71, i16** %11, align 8
  %72 = load i16*, i16** %13, align 8
  %73 = getelementptr inbounds i16, i16* %72, i32 1
  store i16* %73, i16** %13, align 8
  %74 = load i16*, i16** %15, align 8
  %75 = getelementptr inbounds i16, i16* %74, i64 13
  store i16* %75, i16** %15, align 8
  br label %26, !llvm.loop !6

76:                                               ; preds = %26
  %77 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %78 = load i16*, i16** %10, align 8
  %79 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 0
  %80 = load i16*, i16** %16, align 8
  call void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* noundef %77, i16* noundef %78, i16* noundef %79, i16* noundef %80)
  %81 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %82 = load i16*, i16** %16, align 8
  call void @Postprocessing(%struct.gsm_state* noundef %81, i16* noundef %82)
  ret void
}

declare dso_local void @Gsm_RPE_Decoding(%struct.gsm_state* noundef, i16 noundef signext, i16 noundef signext, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* noundef, i16 noundef signext, i16 noundef signext, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Short_Term_Synthesis_Filter(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Postprocessing(%struct.gsm_state* noundef %0, i16* noundef %1) #0 {
  %3 = alloca %struct.gsm_state*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  store %struct.gsm_state* %0, %struct.gsm_state** %3, align 8
  store i16* %1, i16** %4, align 8
  %9 = load %struct.gsm_state*, %struct.gsm_state** %3, align 8
  %10 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %9, i32 0, i32 9
  %11 = load i16, i16* %10, align 2
  store i16 %11, i16* %6, align 2
  store i32 160, i32* %5, align 4
  br label %12

12:                                               ; preds = %62, %2
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load i16, i16* %6, align 2
  %18 = sext i16 %17 to i64
  %19 = mul nsw i64 %18, 28180
  %20 = add nsw i64 %19, 16384
  %21 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %20, i32 noundef 15)
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load i16*, i16** %4, align 8
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i64
  %26 = load i16, i16* %8, align 2
  %27 = sext i16 %26 to i64
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %7, align 8
  %29 = sub nsw i64 %28, -32768
  %30 = icmp ugt i64 %29, 65535
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 32767, i32 -32768
  %36 = sext i32 %35 to i64
  br label %39

37:                                               ; preds = %16
  %38 = load i64, i64* %7, align 8
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi i64 [ %36, %31 ], [ %38, %37 ]
  %41 = trunc i64 %40 to i16
  store i16 %41, i16* %6, align 2
  %42 = load i16, i16* %6, align 2
  %43 = sext i16 %42 to i64
  %44 = load i16, i16* %6, align 2
  %45 = sext i16 %44 to i64
  %46 = add nsw i64 %43, %45
  store i64 %46, i64* %7, align 8
  %47 = sub nsw i64 %46, -32768
  %48 = icmp ugt i64 %47, 65535
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = icmp sgt i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 32767, i32 -32768
  %54 = sext i32 %53 to i64
  br label %57

55:                                               ; preds = %39
  %56 = load i64, i64* %7, align 8
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i64 [ %54, %49 ], [ %56, %55 ]
  %59 = and i64 %58, 65528
  %60 = trunc i64 %59 to i16
  %61 = load i16*, i16** %4, align 8
  store i16 %60, i16* %61, align 2
  br label %62

62:                                               ; preds = %57
  %63 = load i16*, i16** %4, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %4, align 8
  br label %12, !llvm.loop !7

65:                                               ; preds = %12
  %66 = load i16, i16* %6, align 2
  %67 = load %struct.gsm_state*, %struct.gsm_state** %3, align 8
  %68 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %67, i32 0, i32 9
  store i16 %66, i16* %68, align 2
  ret void
}

declare dso_local i32 @SASR(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
