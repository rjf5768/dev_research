; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/rpe.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/rpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [9 x i8] c"exp <= 5\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/rpe.c\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization = private unnamed_addr constant [63 x i8] c"void APCM_quantization(word *, word *, word *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"exp <= 6 && exp >= 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"temp <= 11 && temp >= 0\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"exp <= 4096 && exp >= -4096\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"mant >= 0 && mant <= 7\00", align 1
@gsm_NRFAC = external dso_local global [8 x i16], align 16
@.str.6 = private unnamed_addr constant [25 x i8] c"temp1 >= 0 && temp1 < 16\00", align 1
@__PRETTY_FUNCTION__.APCM_inverse_quantization = private unnamed_addr constant [59 x i8] c"void APCM_inverse_quantization(word *, word, word, word *)\00", align 1
@gsm_FAC = external dso_local global [8 x i16], align 16
@.str.7 = private unnamed_addr constant [23 x i8] c"*xMc <= 7 && *xMc >= 0\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"temp <= 7 && temp >= -7\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"0 <= Mc && Mc <= 3\00", align 1
@__PRETTY_FUNCTION__.RPE_grid_positioning = private unnamed_addr constant [48 x i8] c"void RPE_grid_positioning(word, word *, word *)\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"exp >= -4 && exp <= 6\00", align 1
@__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant = private unnamed_addr constant [63 x i8] c"void APCM_quantization_xmaxc_to_exp_mant(word, word *, word *)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_RPE_Encoding(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4) #0 {
  %6 = alloca %struct.gsm_state*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca [40 x i16], align 16
  %12 = alloca [13 x i16], align 16
  %13 = alloca [13 x i16], align 16
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.gsm_state* %0, %struct.gsm_state** %6, align 8
  store i16* %1, i16** %7, align 8
  store i16* %2, i16** %8, align 8
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  %16 = load i16*, i16** %7, align 8
  %17 = getelementptr inbounds [40 x i16], [40 x i16]* %11, i64 0, i64 0
  call void @Weighting_filter(i16* noundef %16, i16* noundef %17)
  %18 = getelementptr inbounds [40 x i16], [40 x i16]* %11, i64 0, i64 0
  %19 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %20 = load i16*, i16** %9, align 8
  call void @RPE_grid_selection(i16* noundef %18, i16* noundef %19, i16* noundef %20)
  %21 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %22 = load i16*, i16** %10, align 8
  %23 = load i16*, i16** %8, align 8
  call void @APCM_quantization(i16* noundef %21, i16* noundef %22, i16* noundef %14, i16* noundef %15, i16* noundef %23)
  %24 = load i16*, i16** %10, align 8
  %25 = load i16, i16* %14, align 2
  %26 = load i16, i16* %15, align 2
  %27 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  call void @APCM_inverse_quantization(i16* noundef %24, i16 noundef signext %25, i16 noundef signext %26, i16* noundef %27)
  %28 = load i16*, i16** %9, align 8
  %29 = load i16, i16* %28, align 2
  %30 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  %31 = load i16*, i16** %7, align 8
  call void @RPE_grid_positioning(i16 noundef signext %29, i16* noundef %30, i16* noundef %31)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Weighting_filter(i16* noundef %0, i16* noundef %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %7 = load i16*, i16** %3, align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 -5
  store i16* %8, i16** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %116, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %10, 39
  br i1 %11, label %12, label %119

12:                                               ; preds = %9
  store i64 4096, i64* %5, align 8
  %13 = load i16*, i16** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 0
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %13, i64 %16
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i64
  %20 = mul nsw i64 %19, -134
  %21 = load i16*, i16** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i16, i16* %21, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i64
  %28 = mul nsw i64 %27, -374
  %29 = add nsw i64 %20, %28
  %30 = load i16*, i16** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %30, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i64
  %37 = mul nsw i64 %36, 2054
  %38 = add nsw i64 %29, %37
  %39 = load i16*, i16** %3, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %39, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i64
  %46 = mul nsw i64 %45, 5741
  %47 = add nsw i64 %38, %46
  %48 = load i16*, i16** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 5
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %48, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i64
  %55 = mul nsw i64 %54, 8192
  %56 = add nsw i64 %47, %55
  %57 = load i16*, i16** %3, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 6
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %57, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i64
  %64 = mul nsw i64 %63, 5741
  %65 = add nsw i64 %56, %64
  %66 = load i16*, i16** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %66, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i64
  %73 = mul nsw i64 %72, 2054
  %74 = add nsw i64 %65, %73
  %75 = load i16*, i16** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 9
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %75, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i64
  %82 = mul nsw i64 %81, -374
  %83 = add nsw i64 %74, %82
  %84 = load i16*, i16** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 10
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i16, i16* %84, i64 %87
  %89 = load i16, i16* %88, align 2
  %90 = sext i16 %89 to i64
  %91 = mul nsw i64 %90, -134
  %92 = add nsw i64 %83, %91
  %93 = load i64, i64* %5, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %5, align 8
  %95 = load i64, i64* %5, align 8
  %96 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %95, i32 noundef 13)
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %5, align 8
  %98 = load i64, i64* %5, align 8
  %99 = icmp slt i64 %98, -32768
  br i1 %99, label %100, label %101

100:                                              ; preds = %12
  br label %109

101:                                              ; preds = %12
  %102 = load i64, i64* %5, align 8
  %103 = icmp sgt i64 %102, 32767
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %107

105:                                              ; preds = %101
  %106 = load i64, i64* %5, align 8
  br label %107

107:                                              ; preds = %105, %104
  %108 = phi i64 [ 32767, %104 ], [ %106, %105 ]
  br label %109

109:                                              ; preds = %107, %100
  %110 = phi i64 [ -32768, %100 ], [ %108, %107 ]
  %111 = trunc i64 %110 to i16
  %112 = load i16*, i16** %4, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i16, i16* %112, i64 %114
  store i16 %111, i16* %115, align 2
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %9, !llvm.loop !4

119:                                              ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RPE_grid_selection(i16* noundef %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i64, align 8
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i64 0, i64* %10, align 8
  store i16 0, i16* %11, align 2
  store i64 0, i64* %8, align 8
  %13 = load i16*, i16** %4, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 3
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i32
  %17 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %16, i32 noundef 2)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = mul nsw i64 %19, %20
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %22, %21
  store i64 %23, i64* %8, align 8
  %24 = load i16*, i16** %4, align 8
  %25 = getelementptr inbounds i16, i16* %24, i64 6
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  %28 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %27, i32 noundef 2)
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = mul nsw i64 %30, %31
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %8, align 8
  %35 = load i16*, i16** %4, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 9
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %38, i32 noundef 2)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = mul nsw i64 %41, %42
  %44 = load i64, i64* %8, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i16*, i16** %4, align 8
  %47 = getelementptr inbounds i16, i16* %46, i64 12
  %48 = load i16, i16* %47, align 2
  %49 = sext i16 %48 to i32
  %50 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %49, i32 noundef 2)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = mul nsw i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = add nsw i64 %55, %54
  store i64 %56, i64* %8, align 8
  %57 = load i16*, i16** %4, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 15
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %60, i32 noundef 2)
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %9, align 8
  %65 = mul nsw i64 %63, %64
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i16*, i16** %4, align 8
  %69 = getelementptr inbounds i16, i16* %68, i64 18
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i32
  %72 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %71, i32 noundef 2)
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %9, align 8
  %76 = mul nsw i64 %74, %75
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 21
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %82, i32 noundef 2)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %9, align 8
  %87 = mul nsw i64 %85, %86
  %88 = load i64, i64* %8, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i16*, i16** %4, align 8
  %91 = getelementptr inbounds i16, i16* %90, i64 24
  %92 = load i16, i16* %91, align 2
  %93 = sext i16 %92 to i32
  %94 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %93, i32 noundef 2)
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %9, align 8
  %98 = mul nsw i64 %96, %97
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %8, align 8
  %101 = load i16*, i16** %4, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 27
  %103 = load i16, i16* %102, align 2
  %104 = sext i16 %103 to i32
  %105 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %104, i32 noundef 2)
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %9, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %9, align 8
  %109 = mul nsw i64 %107, %108
  %110 = load i64, i64* %8, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %8, align 8
  %112 = load i16*, i16** %4, align 8
  %113 = getelementptr inbounds i16, i16* %112, i64 30
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %115, i32 noundef 2)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %9, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = mul nsw i64 %118, %119
  %121 = load i64, i64* %8, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %8, align 8
  %123 = load i16*, i16** %4, align 8
  %124 = getelementptr inbounds i16, i16* %123, i64 33
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %126, i32 noundef 2)
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = mul nsw i64 %129, %130
  %132 = load i64, i64* %8, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %8, align 8
  %134 = load i16*, i16** %4, align 8
  %135 = getelementptr inbounds i16, i16* %134, i64 36
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  %138 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %137, i32 noundef 2)
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %9, align 8
  %142 = mul nsw i64 %140, %141
  %143 = load i64, i64* %8, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  store i64 %145, i64* %12, align 8
  %146 = load i16*, i16** %4, align 8
  %147 = getelementptr inbounds i16, i16* %146, i64 0
  %148 = load i16, i16* %147, align 2
  %149 = sext i16 %148 to i32
  %150 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %149, i32 noundef 2)
  %151 = sext i32 %150 to i64
  store i64 %151, i64* %9, align 8
  %152 = load i64, i64* %9, align 8
  %153 = load i64, i64* %9, align 8
  %154 = mul nsw i64 %152, %153
  %155 = load i64, i64* %8, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = shl i64 %157, 1
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %8, align 8
  store i64 %159, i64* %10, align 8
  store i64 0, i64* %8, align 8
  %160 = load i16*, i16** %4, align 8
  %161 = getelementptr inbounds i16, i16* %160, i64 1
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %163, i32 noundef 2)
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %9, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* %9, align 8
  %168 = mul nsw i64 %166, %167
  %169 = load i64, i64* %8, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %8, align 8
  %171 = load i16*, i16** %4, align 8
  %172 = getelementptr inbounds i16, i16* %171, i64 4
  %173 = load i16, i16* %172, align 2
  %174 = sext i16 %173 to i32
  %175 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %174, i32 noundef 2)
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %9, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %9, align 8
  %179 = mul nsw i64 %177, %178
  %180 = load i64, i64* %8, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %8, align 8
  %182 = load i16*, i16** %4, align 8
  %183 = getelementptr inbounds i16, i16* %182, i64 7
  %184 = load i16, i16* %183, align 2
  %185 = sext i16 %184 to i32
  %186 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %185, i32 noundef 2)
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %9, align 8
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* %9, align 8
  %190 = mul nsw i64 %188, %189
  %191 = load i64, i64* %8, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %8, align 8
  %193 = load i16*, i16** %4, align 8
  %194 = getelementptr inbounds i16, i16* %193, i64 10
  %195 = load i16, i16* %194, align 2
  %196 = sext i16 %195 to i32
  %197 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %196, i32 noundef 2)
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %9, align 8
  %201 = mul nsw i64 %199, %200
  %202 = load i64, i64* %8, align 8
  %203 = add nsw i64 %202, %201
  store i64 %203, i64* %8, align 8
  %204 = load i16*, i16** %4, align 8
  %205 = getelementptr inbounds i16, i16* %204, i64 13
  %206 = load i16, i16* %205, align 2
  %207 = sext i16 %206 to i32
  %208 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %207, i32 noundef 2)
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %9, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* %9, align 8
  %212 = mul nsw i64 %210, %211
  %213 = load i64, i64* %8, align 8
  %214 = add nsw i64 %213, %212
  store i64 %214, i64* %8, align 8
  %215 = load i16*, i16** %4, align 8
  %216 = getelementptr inbounds i16, i16* %215, i64 16
  %217 = load i16, i16* %216, align 2
  %218 = sext i16 %217 to i32
  %219 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %218, i32 noundef 2)
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %9, align 8
  %221 = load i64, i64* %9, align 8
  %222 = load i64, i64* %9, align 8
  %223 = mul nsw i64 %221, %222
  %224 = load i64, i64* %8, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %8, align 8
  %226 = load i16*, i16** %4, align 8
  %227 = getelementptr inbounds i16, i16* %226, i64 19
  %228 = load i16, i16* %227, align 2
  %229 = sext i16 %228 to i32
  %230 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %229, i32 noundef 2)
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %9, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load i64, i64* %9, align 8
  %234 = mul nsw i64 %232, %233
  %235 = load i64, i64* %8, align 8
  %236 = add nsw i64 %235, %234
  store i64 %236, i64* %8, align 8
  %237 = load i16*, i16** %4, align 8
  %238 = getelementptr inbounds i16, i16* %237, i64 22
  %239 = load i16, i16* %238, align 2
  %240 = sext i16 %239 to i32
  %241 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %240, i32 noundef 2)
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %9, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i64, i64* %9, align 8
  %245 = mul nsw i64 %243, %244
  %246 = load i64, i64* %8, align 8
  %247 = add nsw i64 %246, %245
  store i64 %247, i64* %8, align 8
  %248 = load i16*, i16** %4, align 8
  %249 = getelementptr inbounds i16, i16* %248, i64 25
  %250 = load i16, i16* %249, align 2
  %251 = sext i16 %250 to i32
  %252 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %251, i32 noundef 2)
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %9, align 8
  %254 = load i64, i64* %9, align 8
  %255 = load i64, i64* %9, align 8
  %256 = mul nsw i64 %254, %255
  %257 = load i64, i64* %8, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %8, align 8
  %259 = load i16*, i16** %4, align 8
  %260 = getelementptr inbounds i16, i16* %259, i64 28
  %261 = load i16, i16* %260, align 2
  %262 = sext i16 %261 to i32
  %263 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %262, i32 noundef 2)
  %264 = sext i32 %263 to i64
  store i64 %264, i64* %9, align 8
  %265 = load i64, i64* %9, align 8
  %266 = load i64, i64* %9, align 8
  %267 = mul nsw i64 %265, %266
  %268 = load i64, i64* %8, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %8, align 8
  %270 = load i16*, i16** %4, align 8
  %271 = getelementptr inbounds i16, i16* %270, i64 31
  %272 = load i16, i16* %271, align 2
  %273 = sext i16 %272 to i32
  %274 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %273, i32 noundef 2)
  %275 = sext i32 %274 to i64
  store i64 %275, i64* %9, align 8
  %276 = load i64, i64* %9, align 8
  %277 = load i64, i64* %9, align 8
  %278 = mul nsw i64 %276, %277
  %279 = load i64, i64* %8, align 8
  %280 = add nsw i64 %279, %278
  store i64 %280, i64* %8, align 8
  %281 = load i16*, i16** %4, align 8
  %282 = getelementptr inbounds i16, i16* %281, i64 34
  %283 = load i16, i16* %282, align 2
  %284 = sext i16 %283 to i32
  %285 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %284, i32 noundef 2)
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %9, align 8
  %287 = load i64, i64* %9, align 8
  %288 = load i64, i64* %9, align 8
  %289 = mul nsw i64 %287, %288
  %290 = load i64, i64* %8, align 8
  %291 = add nsw i64 %290, %289
  store i64 %291, i64* %8, align 8
  %292 = load i16*, i16** %4, align 8
  %293 = getelementptr inbounds i16, i16* %292, i64 37
  %294 = load i16, i16* %293, align 2
  %295 = sext i16 %294 to i32
  %296 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %295, i32 noundef 2)
  %297 = sext i32 %296 to i64
  store i64 %297, i64* %9, align 8
  %298 = load i64, i64* %9, align 8
  %299 = load i64, i64* %9, align 8
  %300 = mul nsw i64 %298, %299
  %301 = load i64, i64* %8, align 8
  %302 = add nsw i64 %301, %300
  store i64 %302, i64* %8, align 8
  %303 = load i64, i64* %8, align 8
  %304 = shl i64 %303, 1
  store i64 %304, i64* %8, align 8
  %305 = load i64, i64* %8, align 8
  %306 = load i64, i64* %10, align 8
  %307 = icmp sgt i64 %305, %306
  br i1 %307, label %308, label %310

308:                                              ; preds = %3
  store i16 1, i16* %11, align 2
  %309 = load i64, i64* %8, align 8
  store i64 %309, i64* %10, align 8
  br label %310

310:                                              ; preds = %308, %3
  store i64 0, i64* %8, align 8
  %311 = load i16*, i16** %4, align 8
  %312 = getelementptr inbounds i16, i16* %311, i64 2
  %313 = load i16, i16* %312, align 2
  %314 = sext i16 %313 to i32
  %315 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %314, i32 noundef 2)
  %316 = sext i32 %315 to i64
  store i64 %316, i64* %9, align 8
  %317 = load i64, i64* %9, align 8
  %318 = load i64, i64* %9, align 8
  %319 = mul nsw i64 %317, %318
  %320 = load i64, i64* %8, align 8
  %321 = add nsw i64 %320, %319
  store i64 %321, i64* %8, align 8
  %322 = load i16*, i16** %4, align 8
  %323 = getelementptr inbounds i16, i16* %322, i64 5
  %324 = load i16, i16* %323, align 2
  %325 = sext i16 %324 to i32
  %326 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %325, i32 noundef 2)
  %327 = sext i32 %326 to i64
  store i64 %327, i64* %9, align 8
  %328 = load i64, i64* %9, align 8
  %329 = load i64, i64* %9, align 8
  %330 = mul nsw i64 %328, %329
  %331 = load i64, i64* %8, align 8
  %332 = add nsw i64 %331, %330
  store i64 %332, i64* %8, align 8
  %333 = load i16*, i16** %4, align 8
  %334 = getelementptr inbounds i16, i16* %333, i64 8
  %335 = load i16, i16* %334, align 2
  %336 = sext i16 %335 to i32
  %337 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %336, i32 noundef 2)
  %338 = sext i32 %337 to i64
  store i64 %338, i64* %9, align 8
  %339 = load i64, i64* %9, align 8
  %340 = load i64, i64* %9, align 8
  %341 = mul nsw i64 %339, %340
  %342 = load i64, i64* %8, align 8
  %343 = add nsw i64 %342, %341
  store i64 %343, i64* %8, align 8
  %344 = load i16*, i16** %4, align 8
  %345 = getelementptr inbounds i16, i16* %344, i64 11
  %346 = load i16, i16* %345, align 2
  %347 = sext i16 %346 to i32
  %348 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %347, i32 noundef 2)
  %349 = sext i32 %348 to i64
  store i64 %349, i64* %9, align 8
  %350 = load i64, i64* %9, align 8
  %351 = load i64, i64* %9, align 8
  %352 = mul nsw i64 %350, %351
  %353 = load i64, i64* %8, align 8
  %354 = add nsw i64 %353, %352
  store i64 %354, i64* %8, align 8
  %355 = load i16*, i16** %4, align 8
  %356 = getelementptr inbounds i16, i16* %355, i64 14
  %357 = load i16, i16* %356, align 2
  %358 = sext i16 %357 to i32
  %359 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %358, i32 noundef 2)
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %9, align 8
  %361 = load i64, i64* %9, align 8
  %362 = load i64, i64* %9, align 8
  %363 = mul nsw i64 %361, %362
  %364 = load i64, i64* %8, align 8
  %365 = add nsw i64 %364, %363
  store i64 %365, i64* %8, align 8
  %366 = load i16*, i16** %4, align 8
  %367 = getelementptr inbounds i16, i16* %366, i64 17
  %368 = load i16, i16* %367, align 2
  %369 = sext i16 %368 to i32
  %370 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %369, i32 noundef 2)
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %9, align 8
  %372 = load i64, i64* %9, align 8
  %373 = load i64, i64* %9, align 8
  %374 = mul nsw i64 %372, %373
  %375 = load i64, i64* %8, align 8
  %376 = add nsw i64 %375, %374
  store i64 %376, i64* %8, align 8
  %377 = load i16*, i16** %4, align 8
  %378 = getelementptr inbounds i16, i16* %377, i64 20
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  %381 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %380, i32 noundef 2)
  %382 = sext i32 %381 to i64
  store i64 %382, i64* %9, align 8
  %383 = load i64, i64* %9, align 8
  %384 = load i64, i64* %9, align 8
  %385 = mul nsw i64 %383, %384
  %386 = load i64, i64* %8, align 8
  %387 = add nsw i64 %386, %385
  store i64 %387, i64* %8, align 8
  %388 = load i16*, i16** %4, align 8
  %389 = getelementptr inbounds i16, i16* %388, i64 23
  %390 = load i16, i16* %389, align 2
  %391 = sext i16 %390 to i32
  %392 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %391, i32 noundef 2)
  %393 = sext i32 %392 to i64
  store i64 %393, i64* %9, align 8
  %394 = load i64, i64* %9, align 8
  %395 = load i64, i64* %9, align 8
  %396 = mul nsw i64 %394, %395
  %397 = load i64, i64* %8, align 8
  %398 = add nsw i64 %397, %396
  store i64 %398, i64* %8, align 8
  %399 = load i16*, i16** %4, align 8
  %400 = getelementptr inbounds i16, i16* %399, i64 26
  %401 = load i16, i16* %400, align 2
  %402 = sext i16 %401 to i32
  %403 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %402, i32 noundef 2)
  %404 = sext i32 %403 to i64
  store i64 %404, i64* %9, align 8
  %405 = load i64, i64* %9, align 8
  %406 = load i64, i64* %9, align 8
  %407 = mul nsw i64 %405, %406
  %408 = load i64, i64* %8, align 8
  %409 = add nsw i64 %408, %407
  store i64 %409, i64* %8, align 8
  %410 = load i16*, i16** %4, align 8
  %411 = getelementptr inbounds i16, i16* %410, i64 29
  %412 = load i16, i16* %411, align 2
  %413 = sext i16 %412 to i32
  %414 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %413, i32 noundef 2)
  %415 = sext i32 %414 to i64
  store i64 %415, i64* %9, align 8
  %416 = load i64, i64* %9, align 8
  %417 = load i64, i64* %9, align 8
  %418 = mul nsw i64 %416, %417
  %419 = load i64, i64* %8, align 8
  %420 = add nsw i64 %419, %418
  store i64 %420, i64* %8, align 8
  %421 = load i16*, i16** %4, align 8
  %422 = getelementptr inbounds i16, i16* %421, i64 32
  %423 = load i16, i16* %422, align 2
  %424 = sext i16 %423 to i32
  %425 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %424, i32 noundef 2)
  %426 = sext i32 %425 to i64
  store i64 %426, i64* %9, align 8
  %427 = load i64, i64* %9, align 8
  %428 = load i64, i64* %9, align 8
  %429 = mul nsw i64 %427, %428
  %430 = load i64, i64* %8, align 8
  %431 = add nsw i64 %430, %429
  store i64 %431, i64* %8, align 8
  %432 = load i16*, i16** %4, align 8
  %433 = getelementptr inbounds i16, i16* %432, i64 35
  %434 = load i16, i16* %433, align 2
  %435 = sext i16 %434 to i32
  %436 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %435, i32 noundef 2)
  %437 = sext i32 %436 to i64
  store i64 %437, i64* %9, align 8
  %438 = load i64, i64* %9, align 8
  %439 = load i64, i64* %9, align 8
  %440 = mul nsw i64 %438, %439
  %441 = load i64, i64* %8, align 8
  %442 = add nsw i64 %441, %440
  store i64 %442, i64* %8, align 8
  %443 = load i16*, i16** %4, align 8
  %444 = getelementptr inbounds i16, i16* %443, i64 38
  %445 = load i16, i16* %444, align 2
  %446 = sext i16 %445 to i32
  %447 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %446, i32 noundef 2)
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %9, align 8
  %449 = load i64, i64* %9, align 8
  %450 = load i64, i64* %9, align 8
  %451 = mul nsw i64 %449, %450
  %452 = load i64, i64* %8, align 8
  %453 = add nsw i64 %452, %451
  store i64 %453, i64* %8, align 8
  %454 = load i64, i64* %8, align 8
  %455 = shl i64 %454, 1
  store i64 %455, i64* %8, align 8
  %456 = load i64, i64* %8, align 8
  %457 = load i64, i64* %10, align 8
  %458 = icmp sgt i64 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %310
  store i16 2, i16* %11, align 2
  %460 = load i64, i64* %8, align 8
  store i64 %460, i64* %10, align 8
  br label %461

461:                                              ; preds = %459, %310
  %462 = load i64, i64* %12, align 8
  store i64 %462, i64* %8, align 8
  %463 = load i16*, i16** %4, align 8
  %464 = getelementptr inbounds i16, i16* %463, i64 39
  %465 = load i16, i16* %464, align 2
  %466 = sext i16 %465 to i32
  %467 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %466, i32 noundef 2)
  %468 = sext i32 %467 to i64
  store i64 %468, i64* %9, align 8
  %469 = load i64, i64* %9, align 8
  %470 = load i64, i64* %9, align 8
  %471 = mul nsw i64 %469, %470
  %472 = load i64, i64* %8, align 8
  %473 = add nsw i64 %472, %471
  store i64 %473, i64* %8, align 8
  %474 = load i64, i64* %8, align 8
  %475 = shl i64 %474, 1
  store i64 %475, i64* %8, align 8
  %476 = load i64, i64* %8, align 8
  %477 = load i64, i64* %10, align 8
  %478 = icmp sgt i64 %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %461
  store i16 3, i16* %11, align 2
  %480 = load i64, i64* %8, align 8
  store i64 %480, i64* %10, align 8
  br label %481

481:                                              ; preds = %479, %461
  store i32 0, i32* %7, align 4
  br label %482

482:                                              ; preds = %499, %481
  %483 = load i32, i32* %7, align 4
  %484 = icmp sle i32 %483, 12
  br i1 %484, label %485, label %502

485:                                              ; preds = %482
  %486 = load i16*, i16** %4, align 8
  %487 = load i16, i16* %11, align 2
  %488 = sext i16 %487 to i32
  %489 = load i32, i32* %7, align 4
  %490 = mul nsw i32 3, %489
  %491 = add nsw i32 %488, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i16, i16* %486, i64 %492
  %494 = load i16, i16* %493, align 2
  %495 = load i16*, i16** %5, align 8
  %496 = load i32, i32* %7, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i16, i16* %495, i64 %497
  store i16 %494, i16* %498, align 2
  br label %499

499:                                              ; preds = %485
  %500 = load i32, i32* %7, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %7, align 4
  br label %482, !llvm.loop !6

502:                                              ; preds = %482
  %503 = load i16, i16* %11, align 2
  %504 = load i16*, i16** %6, align 8
  store i16 %503, i16* %504, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_quantization(i16* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  store i16* %0, i16** %6, align 8
  store i16* %1, i16** %7, align 8
  store i16* %2, i16** %8, align 8
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  store i16 0, i16* %13, align 2
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %57, %5
  %21 = load i32, i32* %11, align 4
  %22 = icmp sle i32 %21, 12
  br i1 %22, label %23, label %60

23:                                               ; preds = %20
  %24 = load i16*, i16** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %15, align 2
  %29 = load i16, i16* %15, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %23
  %33 = load i16, i16* %15, align 2
  %34 = sext i16 %33 to i32
  %35 = icmp eq i32 %34, -32768
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  %38 = load i16, i16* %15, align 2
  %39 = sext i16 %38 to i32
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i32 [ 32767, %36 ], [ %40, %37 ]
  br label %46

43:                                               ; preds = %23
  %44 = load i16, i16* %15, align 2
  %45 = sext i16 %44 to i32
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i32 [ %42, %41 ], [ %45, %43 ]
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %15, align 2
  %49 = load i16, i16* %15, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* %13, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i16, i16* %15, align 2
  store i16 %55, i16* %13, align 2
  br label %56

56:                                               ; preds = %54, %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  br label %20, !llvm.loop !7

60:                                               ; preds = %20
  store i16 0, i16* %18, align 2
  %61 = load i16, i16* %13, align 2
  %62 = sext i16 %61 to i32
  %63 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %62, i32 noundef 9)
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %15, align 2
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %91, %60
  %66 = load i32, i32* %11, align 4
  %67 = icmp sle i32 %66, 5
  br i1 %67, label %68, label %94

68:                                               ; preds = %65
  %69 = load i16, i16* %15, align 2
  %70 = sext i16 %69 to i32
  %71 = icmp sle i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load i16, i16* %15, align 2
  %76 = sext i16 %75 to i32
  %77 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %76, i32 noundef 1)
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %15, align 2
  %79 = load i16, i16* %18, align 2
  %80 = sext i16 %79 to i32
  %81 = icmp sle i32 %80, 5
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %84

83:                                               ; preds = %68
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

84:                                               ; preds = %82
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i16, i16* %18, align 2
  %89 = add i16 %88, 1
  store i16 %89, i16* %18, align 2
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %65, !llvm.loop !8

94:                                               ; preds = %65
  %95 = load i16, i16* %18, align 2
  %96 = sext i16 %95 to i32
  %97 = icmp sle i32 %96, 6
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i16, i16* %18, align 2
  %100 = sext i16 %99 to i32
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %104

103:                                              ; preds = %98, %94
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

104:                                              ; preds = %102
  %105 = load i16, i16* %18, align 2
  %106 = sext i16 %105 to i32
  %107 = add nsw i32 %106, 5
  %108 = trunc i32 %107 to i16
  store i16 %108, i16* %15, align 2
  %109 = load i16, i16* %15, align 2
  %110 = sext i16 %109 to i32
  %111 = icmp sle i32 %110, 11
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = load i16, i16* %15, align 2
  %114 = sext i16 %113 to i32
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %118

117:                                              ; preds = %112, %104
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

118:                                              ; preds = %116
  %119 = load i16, i16* %13, align 2
  %120 = sext i16 %119 to i32
  %121 = load i16, i16* %15, align 2
  %122 = sext i16 %121 to i32
  %123 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %120, i32 noundef %122)
  %124 = trunc i32 %123 to i16
  %125 = load i16, i16* %18, align 2
  %126 = sext i16 %125 to i32
  %127 = shl i32 %126, 3
  %128 = trunc i32 %127 to i16
  %129 = call signext i16 @gsm_add(i16 noundef signext %124, i16 noundef signext %128)
  store i16 %129, i16* %14, align 2
  %130 = load i16, i16* %14, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %130, i16* noundef %18, i16* noundef %19)
  %131 = load i16, i16* %18, align 2
  %132 = sext i16 %131 to i32
  %133 = icmp sle i32 %132, 4096
  br i1 %133, label %134, label %139

134:                                              ; preds = %118
  %135 = load i16, i16* %18, align 2
  %136 = sext i16 %135 to i32
  %137 = icmp sge i32 %136, -4096
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %140

139:                                              ; preds = %134, %118
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

140:                                              ; preds = %138
  %141 = load i16, i16* %19, align 2
  %142 = sext i16 %141 to i32
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i16, i16* %19, align 2
  %146 = sext i16 %145 to i32
  %147 = icmp sle i32 %146, 7
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %150

149:                                              ; preds = %144, %140
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

150:                                              ; preds = %148
  %151 = load i16, i16* %18, align 2
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 6, %152
  %154 = trunc i32 %153 to i16
  store i16 %154, i16* %16, align 2
  %155 = load i16, i16* %19, align 2
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_NRFAC, i64 0, i64 %156
  %158 = load i16, i16* %157, align 2
  store i16 %158, i16* %17, align 2
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %202, %150
  %160 = load i32, i32* %11, align 4
  %161 = icmp sle i32 %160, 12
  br i1 %161, label %162, label %205

162:                                              ; preds = %159
  %163 = load i16, i16* %16, align 2
  %164 = sext i16 %163 to i32
  %165 = icmp sge i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i16, i16* %16, align 2
  %168 = sext i16 %167 to i32
  %169 = icmp slt i32 %168, 16
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %172

171:                                              ; preds = %166, %162
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #3
  unreachable

172:                                              ; preds = %170
  %173 = load i16*, i16** %6, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %173, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  %179 = load i16, i16* %16, align 2
  %180 = sext i16 %179 to i32
  %181 = shl i32 %178, %180
  %182 = trunc i32 %181 to i16
  store i16 %182, i16* %15, align 2
  %183 = load i16, i16* %15, align 2
  %184 = sext i16 %183 to i64
  %185 = load i16, i16* %17, align 2
  %186 = sext i16 %185 to i64
  %187 = mul nsw i64 %184, %186
  %188 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %187, i32 noundef 15)
  %189 = trunc i32 %188 to i16
  store i16 %189, i16* %15, align 2
  %190 = load i16, i16* %15, align 2
  %191 = sext i16 %190 to i32
  %192 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %191, i32 noundef 12)
  %193 = trunc i32 %192 to i16
  store i16 %193, i16* %15, align 2
  %194 = load i16, i16* %15, align 2
  %195 = sext i16 %194 to i32
  %196 = add nsw i32 %195, 4
  %197 = trunc i32 %196 to i16
  %198 = load i16*, i16** %7, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, i16* %198, i64 %200
  store i16 %197, i16* %201, align 2
  br label %202

202:                                              ; preds = %172
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %159, !llvm.loop !9

205:                                              ; preds = %159
  %206 = load i16, i16* %19, align 2
  %207 = load i16*, i16** %8, align 8
  store i16 %206, i16* %207, align 2
  %208 = load i16, i16* %18, align 2
  %209 = load i16*, i16** %9, align 8
  store i16 %208, i16* %209, align 2
  %210 = load i16, i16* %14, align 2
  %211 = load i16*, i16** %10, align 8
  store i16 %210, i16* %211, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_inverse_quantization(i16* noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16* noundef %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i64, align 8
  store i16* %0, i16** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16* %3, i16** %8, align 8
  %15 = load i16, i16* %6, align 2
  %16 = sext i16 %15 to i32
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load i16, i16* %6, align 2
  %20 = sext i16 %19 to i32
  %21 = icmp sle i32 %20, 7
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %24

23:                                               ; preds = %18, %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %22
  %25 = load i16, i16* %6, align 2
  %26 = sext i16 %25 to i64
  %27 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_FAC, i64 0, i64 %26
  %28 = load i16, i16* %27, align 2
  store i16 %28, i16* %11, align 2
  %29 = load i16, i16* %7, align 2
  %30 = call signext i16 @gsm_sub(i16 noundef signext 6, i16 noundef signext %29)
  store i16 %30, i16* %12, align 2
  %31 = load i16, i16* %12, align 2
  %32 = call signext i16 @gsm_sub(i16 noundef signext %31, i16 noundef signext 1)
  %33 = sext i16 %32 to i32
  %34 = call signext i16 @gsm_asl(i16 noundef signext 1, i32 noundef %33)
  store i16 %34, i16* %13, align 2
  store i32 13, i32* %9, align 4
  br label %35

35:                                               ; preds = %96, %24
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %105

39:                                               ; preds = %35
  %40 = load i16*, i16** %5, align 8
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp sle i32 %42, 7
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i16*, i16** %5, align 8
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %51

50:                                               ; preds = %44, %39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #3
  unreachable

51:                                               ; preds = %49
  %52 = load i16*, i16** %5, align 8
  %53 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %53, i16** %5, align 8
  %54 = load i16, i16* %52, align 2
  %55 = sext i16 %54 to i32
  %56 = shl i32 %55, 1
  %57 = sub nsw i32 %56, 7
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* %10, align 2
  %59 = load i16, i16* %10, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp sle i32 %60, 7
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = load i16, i16* %10, align 2
  %64 = sext i16 %63 to i32
  %65 = icmp sge i32 %64, -7
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62, %51
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #3
  unreachable

68:                                               ; preds = %66
  %69 = load i16, i16* %10, align 2
  %70 = sext i16 %69 to i32
  %71 = shl i32 %70, 12
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %10, align 2
  %73 = load i16, i16* %11, align 2
  %74 = sext i16 %73 to i64
  %75 = load i16, i16* %10, align 2
  %76 = sext i16 %75 to i64
  %77 = mul nsw i64 %74, %76
  %78 = add nsw i64 %77, 16384
  %79 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %78, i32 noundef 15)
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %10, align 2
  %81 = load i16, i16* %10, align 2
  %82 = sext i16 %81 to i64
  %83 = load i16, i16* %13, align 2
  %84 = sext i16 %83 to i64
  %85 = add nsw i64 %82, %84
  store i64 %85, i64* %14, align 8
  %86 = sub nsw i64 %85, -32768
  %87 = icmp ugt i64 %86, 65535
  br i1 %87, label %88, label %94

88:                                               ; preds = %68
  %89 = load i64, i64* %14, align 8
  %90 = icmp sgt i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 32767, i32 -32768
  %93 = sext i32 %92 to i64
  br label %96

94:                                               ; preds = %68
  %95 = load i64, i64* %14, align 8
  br label %96

96:                                               ; preds = %94, %88
  %97 = phi i64 [ %93, %88 ], [ %95, %94 ]
  %98 = trunc i64 %97 to i16
  store i16 %98, i16* %10, align 2
  %99 = load i16, i16* %10, align 2
  %100 = load i16, i16* %12, align 2
  %101 = sext i16 %100 to i32
  %102 = call signext i16 @gsm_asr(i16 noundef signext %99, i32 noundef %101)
  %103 = load i16*, i16** %8, align 8
  %104 = getelementptr inbounds i16, i16* %103, i32 1
  store i16* %104, i16** %8, align 8
  store i16 %102, i16* %103, align 2
  br label %35, !llvm.loop !10

105:                                              ; preds = %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RPE_grid_positioning(i16 noundef signext %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 13, i32* %7, align 4
  %8 = load i16, i16* %4, align 2
  %9 = sext i16 %8 to i32
  %10 = icmp sle i32 0, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i16, i16* %4, align 2
  %13 = sext i16 %12 to i32
  %14 = icmp sle i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %17

16:                                               ; preds = %11, %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.RPE_grid_positioning, i64 0, i64 0)) #3
  unreachable

17:                                               ; preds = %15
  %18 = load i16, i16* %4, align 2
  %19 = sext i16 %18 to i32
  switch i32 %19, label %41 [
    i32 3, label %20
    i32 2, label %23
    i32 1, label %27
    i32 0, label %30
  ]

20:                                               ; preds = %17
  %21 = load i16*, i16** %6, align 8
  %22 = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %22, i16** %6, align 8
  store i16 0, i16* %21, align 2
  br label %23

23:                                               ; preds = %17, %20
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i16*, i16** %6, align 8
  %26 = getelementptr inbounds i16, i16* %25, i32 1
  store i16* %26, i16** %6, align 8
  store i16 0, i16* %25, align 2
  br label %27

27:                                               ; preds = %17, %24
  %28 = load i16*, i16** %6, align 8
  %29 = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %29, i16** %6, align 8
  store i16 0, i16* %28, align 2
  br label %30

30:                                               ; preds = %17, %27
  %31 = load i16*, i16** %5, align 8
  %32 = getelementptr inbounds i16, i16* %31, i32 1
  store i16* %32, i16** %5, align 8
  %33 = load i16, i16* %31, align 2
  %34 = load i16*, i16** %6, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %6, align 8
  store i16 %33, i16* %34, align 2
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %24, label %40, !llvm.loop !11

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %17
  br label %42

42:                                               ; preds = %47, %41
  %43 = load i16, i16* %4, align 2
  %44 = add i16 %43, 1
  store i16 %44, i16* %4, align 2
  %45 = sext i16 %44 to i32
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i16*, i16** %6, align 8
  %49 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %49, i16** %6, align 8
  store i16 0, i16* %48, align 2
  br label %42, !llvm.loop !12

50:                                               ; preds = %42
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(%struct.gsm_state* noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16* noundef %3, i16* noundef %4) #0 {
  %6 = alloca %struct.gsm_state*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca [13 x i16], align 16
  store %struct.gsm_state* %0, %struct.gsm_state** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  %14 = load i16, i16* %7, align 2
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %14, i16* noundef %11, i16* noundef %12)
  %15 = load i16*, i16** %9, align 8
  %16 = load i16, i16* %12, align 2
  %17 = load i16, i16* %11, align 2
  %18 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  call void @APCM_inverse_quantization(i16* noundef %15, i16 noundef signext %16, i16 noundef signext %17, i16* noundef %18)
  %19 = load i16, i16* %8, align 2
  %20 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  %21 = load i16*, i16** %10, align 8
  call void @RPE_grid_positioning(i16 noundef signext %19, i16* noundef %20, i16* noundef %21)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %0, i16* noundef %1, i16* noundef %2) #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i16 %0, i16* %4, align 2
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i16 0, i16* %7, align 2
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = icmp sgt i32 %10, 15
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i16, i16* %4, align 2
  %14 = sext i16 %13 to i32
  %15 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %14, i32 noundef 3)
  %16 = sub nsw i32 %15, 1
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %7, align 2
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i16, i16* %4, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* %7, align 2
  %22 = sext i16 %21 to i32
  %23 = shl i32 %22, 3
  %24 = sub nsw i32 %20, %23
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %8, align 2
  %26 = load i16, i16* %8, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i16 -4, i16* %7, align 2
  store i16 7, i16* %8, align 2
  br label %48

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %35, %30
  %32 = load i16, i16* %8, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sle i32 %33, 7
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i16, i16* %8, align 2
  %37 = sext i16 %36 to i32
  %38 = shl i32 %37, 1
  %39 = or i32 %38, 1
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %8, align 2
  %41 = load i16, i16* %7, align 2
  %42 = add i16 %41, -1
  store i16 %42, i16* %7, align 2
  br label %31, !llvm.loop !13

43:                                               ; preds = %31
  %44 = load i16, i16* %8, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %45, 8
  %47 = trunc i32 %46 to i16
  store i16 %47, i16* %8, align 2
  br label %48

48:                                               ; preds = %43, %29
  %49 = load i16, i16* %7, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp sge i32 %50, -4
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i16, i16* %7, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp sle i32 %54, 6
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %58

57:                                               ; preds = %52, %48
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, i64 0, i64 0)) #3
  unreachable

58:                                               ; preds = %56
  %59 = load i16, i16* %8, align 2
  %60 = sext i16 %59 to i32
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i16, i16* %8, align 2
  %64 = sext i16 %63 to i32
  %65 = icmp sle i32 %64, 7
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62, %58
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, i64 0, i64 0)) #3
  unreachable

68:                                               ; preds = %66
  %69 = load i16, i16* %7, align 2
  %70 = load i16*, i16** %5, align 8
  store i16 %69, i16* %70, align 2
  %71 = load i16, i16* %8, align 2
  %72 = load i16*, i16** %6, align 8
  store i16 %71, i16* %72, align 2
  ret void
}

declare dso_local i32 @SASR(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local signext i16 @gsm_add(i16 noundef signext, i16 noundef signext) #1

declare dso_local signext i16 @gsm_sub(i16 noundef signext, i16 noundef signext) #1

declare dso_local signext i16 @gsm_asl(i16 noundef signext, i32 noundef) #1

declare dso_local signext i16 @gsm_asr(i16 noundef signext, i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
