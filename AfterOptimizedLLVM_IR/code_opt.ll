; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/code.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@Gsm_Coder.e = internal global [50 x i16] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Coder(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4, i16* noundef %5, i16* noundef %6, i16* noundef %7) #0 {
  %9 = alloca %struct.gsm_state*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i16*, align 8
  %19 = alloca i16*, align 8
  %20 = alloca [160 x i16], align 16
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %9, align 8
  store i16* %1, i16** %10, align 8
  store i16* %2, i16** %11, align 8
  store i16* %3, i16** %12, align 8
  store i16* %4, i16** %13, align 8
  store i16* %5, i16** %14, align 8
  store i16* %6, i16** %15, align 8
  store i16* %7, i16** %16, align 8
  %23 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %24 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds [280 x i16], [280 x i16]* %24, i64 0, i64 0
  %26 = getelementptr inbounds i16, i16* %25, i64 120
  store i16* %26, i16** %18, align 8
  %27 = load i16*, i16** %18, align 8
  store i16* %27, i16** %19, align 8
  %28 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %29 = load i16*, i16** %10, align 8
  %30 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 0
  call void @Gsm_Preprocess(%struct.gsm_state* noundef %28, i16* noundef %29, i16* noundef %30)
  %31 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %32 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 0
  %33 = load i16*, i16** %11, align 8
  call void @Gsm_LPC_Analysis(%struct.gsm_state* noundef %31, i16* noundef %32, i16* noundef %33)
  %34 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %35 = load i16*, i16** %11, align 8
  %36 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 0
  call void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* noundef %34, i16* noundef %35, i16* noundef %36)
  store i32 0, i32* %17, align 4
  br label %37

37:                                               ; preds = %101, %8
  %38 = load i32, i32* %17, align 4
  %39 = icmp sle i32 %38, 3
  br i1 %39, label %40, label %106

40:                                               ; preds = %37
  %41 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %42 = getelementptr inbounds [160 x i16], [160 x i16]* %20, i64 0, i64 0
  %43 = load i32, i32* %17, align 4
  %44 = mul nsw i32 %43, 40
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %42, i64 %45
  %47 = load i16*, i16** %18, align 8
  %48 = load i16*, i16** %19, align 8
  %49 = load i16*, i16** %12, align 8
  %50 = getelementptr inbounds i16, i16* %49, i32 1
  store i16* %50, i16** %12, align 8
  %51 = load i16*, i16** %13, align 8
  %52 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %52, i16** %13, align 8
  call void @Gsm_Long_Term_Predictor(%struct.gsm_state* noundef %41, i16* noundef %46, i16* noundef %47, i16* noundef getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 5), i16* noundef %48, i16* noundef %49, i16* noundef %51)
  %53 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %54 = load i16*, i16** %15, align 8
  %55 = getelementptr inbounds i16, i16* %54, i32 1
  store i16* %55, i16** %15, align 8
  %56 = load i16*, i16** %14, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %14, align 8
  %58 = load i16*, i16** %16, align 8
  call void @Gsm_RPE_Encoding(%struct.gsm_state* noundef %53, i16* noundef getelementptr inbounds ([50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 5), i16* noundef %54, i16* noundef %56, i16* noundef %58)
  store i32 0, i32* %21, align 4
  br label %59

59:                                               ; preds = %93, %40
  %60 = load i32, i32* %21, align 4
  %61 = icmp sle i32 %60, 39
  br i1 %61, label %62, label %96

62:                                               ; preds = %59
  %63 = load i32, i32* %21, align 4
  %64 = add nsw i32 5, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [50 x i16], [50 x i16]* @Gsm_Coder.e, i64 0, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i64
  %69 = load i16*, i16** %19, align 8
  %70 = load i32, i32* %21, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i64
  %75 = add nsw i64 %68, %74
  store i64 %75, i64* %22, align 8
  %76 = sub nsw i64 %75, -32768
  %77 = icmp ugt i64 %76, 65535
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load i64, i64* %22, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 32767, i32 -32768
  %83 = sext i32 %82 to i64
  br label %86

84:                                               ; preds = %62
  %85 = load i64, i64* %22, align 8
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi i64 [ %83, %78 ], [ %85, %84 ]
  %88 = trunc i64 %87 to i16
  %89 = load i16*, i16** %18, align 8
  %90 = load i32, i32* %21, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i16, i16* %89, i64 %91
  store i16 %88, i16* %92, align 2
  br label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %21, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %59, !llvm.loop !4

96:                                               ; preds = %59
  %97 = load i16*, i16** %18, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 40
  store i16* %98, i16** %18, align 8
  %99 = load i16*, i16** %19, align 8
  %100 = getelementptr inbounds i16, i16* %99, i64 40
  store i16* %100, i16** %19, align 8
  br label %101

101:                                              ; preds = %96
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %17, align 4
  %104 = load i16*, i16** %16, align 8
  %105 = getelementptr inbounds i16, i16* %104, i64 13
  store i16* %105, i16** %16, align 8
  br label %37, !llvm.loop !6

106:                                              ; preds = %37
  %107 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %108 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %107, i32 0, i32 0
  %109 = getelementptr inbounds [280 x i16], [280 x i16]* %108, i64 0, i64 0
  %110 = bitcast i16* %109 to i8*
  %111 = load %struct.gsm_state*, %struct.gsm_state** %9, align 8
  %112 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds [280 x i16], [280 x i16]* %112, i64 0, i64 0
  %114 = getelementptr inbounds i16, i16* %113, i64 160
  %115 = bitcast i16* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 1 %115, i64 240, i1 false)
  ret void
}

declare dso_local void @Gsm_Preprocess(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_LPC_Analysis(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Short_Term_Analysis_Filter(%struct.gsm_state* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_Long_Term_Predictor(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef) #1

declare dso_local void @Gsm_RPE_Encoding(%struct.gsm_state* noundef, i16* noundef, i16* noundef, i16* noundef, i16* noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
