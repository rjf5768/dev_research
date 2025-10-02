; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/long_term.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/long_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

@.str = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/long_term.c\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor = private unnamed_addr constant [97 x i8] c"void Gsm_Long_Term_Predictor(struct gsm_state *, word *, word *, word *, word *, word *, word *)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dpp\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"Nc\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"bc\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Nr >= 40 && Nr <= 120\00", align 1
@__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering = private unnamed_addr constant [87 x i8] c"void Gsm_Long_Term_Synthesis_Filtering(struct gsm_state *, word, word, word *, word *)\00", align 1
@gsm_QLB = external dso_local global [4 x i16], align 2
@.str.8 = private unnamed_addr constant [16 x i8] c"brp != MIN_WORD\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"dmax > 0\00", align 1
@__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters = private unnamed_addr constant [71 x i8] c"void Calculation_of_the_LTP_parameters(word *, word *, word *, word *)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"scal >= 0\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"scal <= 100 && scal >= -100\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Nc <= 120 && Nc >= 40\00", align 1
@gsm_DLB = external dso_local global [4 x i16], align 2

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Long_Term_Predictor(%struct.gsm_state* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3, i16* noundef %4, i16* noundef %5, i16* noundef %6) #0 {
  %8 = alloca %struct.gsm_state*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  store %struct.gsm_state* %0, %struct.gsm_state** %8, align 8
  store i16* %1, i16** %9, align 8
  store i16* %2, i16** %10, align 8
  store i16* %3, i16** %11, align 8
  store i16* %4, i16** %12, align 8
  store i16* %5, i16** %13, align 8
  store i16* %6, i16** %14, align 8
  %15 = load i16*, i16** %9, align 8
  %16 = icmp ne i16* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %19

18:                                               ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

19:                                               ; preds = %17
  %20 = load i16*, i16** %10, align 8
  %21 = icmp ne i16* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

24:                                               ; preds = %22
  %25 = load i16*, i16** %11, align 8
  %26 = icmp ne i16* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

29:                                               ; preds = %27
  %30 = load i16*, i16** %12, align 8
  %31 = icmp ne i16* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

34:                                               ; preds = %32
  %35 = load i16*, i16** %13, align 8
  %36 = icmp ne i16* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

39:                                               ; preds = %37
  %40 = load i16*, i16** %14, align 8
  %41 = icmp ne i16* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %44

43:                                               ; preds = %39
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  unreachable

44:                                               ; preds = %42
  %45 = load i16*, i16** %9, align 8
  %46 = load i16*, i16** %10, align 8
  %47 = load i16*, i16** %14, align 8
  %48 = load i16*, i16** %13, align 8
  call void @Calculation_of_the_LTP_parameters(i16* noundef %45, i16* noundef %46, i16* noundef %47, i16* noundef %48)
  %49 = load i16*, i16** %14, align 8
  %50 = load i16, i16* %49, align 2
  %51 = load i16*, i16** %13, align 8
  %52 = load i16, i16* %51, align 2
  %53 = load i16*, i16** %10, align 8
  %54 = load i16*, i16** %9, align 8
  %55 = load i16*, i16** %12, align 8
  %56 = load i16*, i16** %11, align 8
  call void @Long_term_analysis_filtering(i16 noundef signext %50, i16 noundef signext %52, i16* noundef %53, i16* noundef %54, i16* noundef %55, i16* noundef %56)
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Calculation_of_the_LTP_parameters(i16* noundef %0, i16* noundef %1, i16* noundef %2, i16* noundef %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca [40 x i16], align 16
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca i16, align 2
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i16* %0, i16** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16* %2, i16** %7, align 8
  store i16* %3, i16** %8, align 8
  store i16 0, i16* %18, align 2
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %60, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sle i32 %24, 39
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i16*, i16** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  store i16 %31, i16* %20, align 2
  %32 = load i16, i16* %20, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %26
  %36 = load i16, i16* %20, align 2
  %37 = sext i16 %36 to i32
  %38 = icmp eq i32 %37, -32768
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35
  %41 = load i16, i16* %20, align 2
  %42 = sext i16 %41 to i32
  %43 = sub nsw i32 0, %42
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i32 [ 32767, %39 ], [ %43, %40 ]
  br label %49

46:                                               ; preds = %26
  %47 = load i16, i16* %20, align 2
  %48 = sext i16 %47 to i32
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %45, %44 ], [ %48, %46 ]
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %20, align 2
  %52 = load i16, i16* %20, align 2
  %53 = sext i16 %52 to i32
  %54 = load i16, i16* %18, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i16, i16* %20, align 2
  store i16 %58, i16* %18, align 2
  br label %59

59:                                               ; preds = %57, %49
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %23, !llvm.loop !4

63:                                               ; preds = %23
  store i16 0, i16* %20, align 2
  %64 = load i16, i16* %18, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i16 0, i16* %19, align 2
  br label %79

68:                                               ; preds = %63
  %69 = load i16, i16* %18, align 2
  %70 = sext i16 %69 to i32
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  unreachable

74:                                               ; preds = %72
  %75 = load i16, i16* %18, align 2
  %76 = sext i16 %75 to i64
  %77 = shl i64 %76, 16
  %78 = call signext i16 @gsm_norm(i64 noundef %77)
  store i16 %78, i16* %20, align 2
  br label %79

79:                                               ; preds = %74, %67
  %80 = load i16, i16* %20, align 2
  %81 = sext i16 %80 to i32
  %82 = icmp sgt i32 %81, 6
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i16 0, i16* %19, align 2
  br label %89

84:                                               ; preds = %79
  %85 = load i16, i16* %20, align 2
  %86 = sext i16 %85 to i32
  %87 = sub nsw i32 6, %86
  %88 = trunc i32 %87 to i16
  store i16 %88, i16* %19, align 2
  br label %89

89:                                               ; preds = %84, %83
  %90 = load i16, i16* %19, align 2
  %91 = sext i16 %90 to i32
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %95

94:                                               ; preds = %89
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  unreachable

95:                                               ; preds = %93
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %113, %95
  %97 = load i32, i32* %9, align 4
  %98 = icmp sle i32 %97, 39
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load i16*, i16** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i16, i16* %100, i64 %102
  %104 = load i16, i16* %103, align 2
  %105 = sext i16 %104 to i32
  %106 = load i16, i16* %19, align 2
  %107 = sext i16 %106 to i32
  %108 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %105, i32 noundef %107)
  %109 = trunc i32 %108 to i16
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 %111
  store i16 %109, i16* %112, align 2
  br label %113

113:                                              ; preds = %99
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %96, !llvm.loop !6

116:                                              ; preds = %96
  store i64 0, i64* %14, align 8
  store i16 40, i16* %11, align 2
  store i32 40, i32* %10, align 4
  br label %117

117:                                              ; preds = %687, %116
  %118 = load i32, i32* %10, align 4
  %119 = icmp sle i32 %118, 120
  br i1 %119, label %120, label %690

120:                                              ; preds = %117
  %121 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 0
  %122 = load i16, i16* %121, align 16
  %123 = sext i16 %122 to i32
  %124 = load i16*, i16** %6, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 0, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i16, i16* %124, i64 %127
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = mul nsw i32 %123, %130
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %21, align 8
  %133 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 1
  %134 = load i16, i16* %133, align 2
  %135 = sext i16 %134 to i32
  %136 = load i16*, i16** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sub nsw i32 1, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %136, i64 %139
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = mul nsw i32 %135, %142
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %21, align 8
  %146 = add nsw i64 %145, %144
  store i64 %146, i64* %21, align 8
  %147 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 2
  %148 = load i16, i16* %147, align 4
  %149 = sext i16 %148 to i32
  %150 = load i16*, i16** %6, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sub nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, i16* %150, i64 %153
  %155 = load i16, i16* %154, align 2
  %156 = sext i16 %155 to i32
  %157 = mul nsw i32 %149, %156
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %21, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %21, align 8
  %161 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 3
  %162 = load i16, i16* %161, align 2
  %163 = sext i16 %162 to i32
  %164 = load i16*, i16** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sub nsw i32 3, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i16, i16* %164, i64 %167
  %169 = load i16, i16* %168, align 2
  %170 = sext i16 %169 to i32
  %171 = mul nsw i32 %163, %170
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %21, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %21, align 8
  %175 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 4
  %176 = load i16, i16* %175, align 8
  %177 = sext i16 %176 to i32
  %178 = load i16*, i16** %6, align 8
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 4, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i16, i16* %178, i64 %181
  %183 = load i16, i16* %182, align 2
  %184 = sext i16 %183 to i32
  %185 = mul nsw i32 %177, %184
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %21, align 8
  %188 = add nsw i64 %187, %186
  store i64 %188, i64* %21, align 8
  %189 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 5
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i32
  %192 = load i16*, i16** %6, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sub nsw i32 5, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %192, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  %199 = mul nsw i32 %191, %198
  %200 = sext i32 %199 to i64
  %201 = load i64, i64* %21, align 8
  %202 = add nsw i64 %201, %200
  store i64 %202, i64* %21, align 8
  %203 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 6
  %204 = load i16, i16* %203, align 4
  %205 = sext i16 %204 to i32
  %206 = load i16*, i16** %6, align 8
  %207 = load i32, i32* %10, align 4
  %208 = sub nsw i32 6, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i16, i16* %206, i64 %209
  %211 = load i16, i16* %210, align 2
  %212 = sext i16 %211 to i32
  %213 = mul nsw i32 %205, %212
  %214 = sext i32 %213 to i64
  %215 = load i64, i64* %21, align 8
  %216 = add nsw i64 %215, %214
  store i64 %216, i64* %21, align 8
  %217 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 7
  %218 = load i16, i16* %217, align 2
  %219 = sext i16 %218 to i32
  %220 = load i16*, i16** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sub nsw i32 7, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i16, i16* %220, i64 %223
  %225 = load i16, i16* %224, align 2
  %226 = sext i16 %225 to i32
  %227 = mul nsw i32 %219, %226
  %228 = sext i32 %227 to i64
  %229 = load i64, i64* %21, align 8
  %230 = add nsw i64 %229, %228
  store i64 %230, i64* %21, align 8
  %231 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 8
  %232 = load i16, i16* %231, align 16
  %233 = sext i16 %232 to i32
  %234 = load i16*, i16** %6, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sub nsw i32 8, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i16, i16* %234, i64 %237
  %239 = load i16, i16* %238, align 2
  %240 = sext i16 %239 to i32
  %241 = mul nsw i32 %233, %240
  %242 = sext i32 %241 to i64
  %243 = load i64, i64* %21, align 8
  %244 = add nsw i64 %243, %242
  store i64 %244, i64* %21, align 8
  %245 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 9
  %246 = load i16, i16* %245, align 2
  %247 = sext i16 %246 to i32
  %248 = load i16*, i16** %6, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sub nsw i32 9, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i16, i16* %248, i64 %251
  %253 = load i16, i16* %252, align 2
  %254 = sext i16 %253 to i32
  %255 = mul nsw i32 %247, %254
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %21, align 8
  %258 = add nsw i64 %257, %256
  store i64 %258, i64* %21, align 8
  %259 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 10
  %260 = load i16, i16* %259, align 4
  %261 = sext i16 %260 to i32
  %262 = load i16*, i16** %6, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sub nsw i32 10, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i16, i16* %262, i64 %265
  %267 = load i16, i16* %266, align 2
  %268 = sext i16 %267 to i32
  %269 = mul nsw i32 %261, %268
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %21, align 8
  %272 = add nsw i64 %271, %270
  store i64 %272, i64* %21, align 8
  %273 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 11
  %274 = load i16, i16* %273, align 2
  %275 = sext i16 %274 to i32
  %276 = load i16*, i16** %6, align 8
  %277 = load i32, i32* %10, align 4
  %278 = sub nsw i32 11, %277
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i16, i16* %276, i64 %279
  %281 = load i16, i16* %280, align 2
  %282 = sext i16 %281 to i32
  %283 = mul nsw i32 %275, %282
  %284 = sext i32 %283 to i64
  %285 = load i64, i64* %21, align 8
  %286 = add nsw i64 %285, %284
  store i64 %286, i64* %21, align 8
  %287 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 12
  %288 = load i16, i16* %287, align 8
  %289 = sext i16 %288 to i32
  %290 = load i16*, i16** %6, align 8
  %291 = load i32, i32* %10, align 4
  %292 = sub nsw i32 12, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i16, i16* %290, i64 %293
  %295 = load i16, i16* %294, align 2
  %296 = sext i16 %295 to i32
  %297 = mul nsw i32 %289, %296
  %298 = sext i32 %297 to i64
  %299 = load i64, i64* %21, align 8
  %300 = add nsw i64 %299, %298
  store i64 %300, i64* %21, align 8
  %301 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 13
  %302 = load i16, i16* %301, align 2
  %303 = sext i16 %302 to i32
  %304 = load i16*, i16** %6, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sub nsw i32 13, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i16, i16* %304, i64 %307
  %309 = load i16, i16* %308, align 2
  %310 = sext i16 %309 to i32
  %311 = mul nsw i32 %303, %310
  %312 = sext i32 %311 to i64
  %313 = load i64, i64* %21, align 8
  %314 = add nsw i64 %313, %312
  store i64 %314, i64* %21, align 8
  %315 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 14
  %316 = load i16, i16* %315, align 4
  %317 = sext i16 %316 to i32
  %318 = load i16*, i16** %6, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sub nsw i32 14, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i16, i16* %318, i64 %321
  %323 = load i16, i16* %322, align 2
  %324 = sext i16 %323 to i32
  %325 = mul nsw i32 %317, %324
  %326 = sext i32 %325 to i64
  %327 = load i64, i64* %21, align 8
  %328 = add nsw i64 %327, %326
  store i64 %328, i64* %21, align 8
  %329 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 15
  %330 = load i16, i16* %329, align 2
  %331 = sext i16 %330 to i32
  %332 = load i16*, i16** %6, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sub nsw i32 15, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i16, i16* %332, i64 %335
  %337 = load i16, i16* %336, align 2
  %338 = sext i16 %337 to i32
  %339 = mul nsw i32 %331, %338
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %21, align 8
  %342 = add nsw i64 %341, %340
  store i64 %342, i64* %21, align 8
  %343 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 16
  %344 = load i16, i16* %343, align 16
  %345 = sext i16 %344 to i32
  %346 = load i16*, i16** %6, align 8
  %347 = load i32, i32* %10, align 4
  %348 = sub nsw i32 16, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i16, i16* %346, i64 %349
  %351 = load i16, i16* %350, align 2
  %352 = sext i16 %351 to i32
  %353 = mul nsw i32 %345, %352
  %354 = sext i32 %353 to i64
  %355 = load i64, i64* %21, align 8
  %356 = add nsw i64 %355, %354
  store i64 %356, i64* %21, align 8
  %357 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 17
  %358 = load i16, i16* %357, align 2
  %359 = sext i16 %358 to i32
  %360 = load i16*, i16** %6, align 8
  %361 = load i32, i32* %10, align 4
  %362 = sub nsw i32 17, %361
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i16, i16* %360, i64 %363
  %365 = load i16, i16* %364, align 2
  %366 = sext i16 %365 to i32
  %367 = mul nsw i32 %359, %366
  %368 = sext i32 %367 to i64
  %369 = load i64, i64* %21, align 8
  %370 = add nsw i64 %369, %368
  store i64 %370, i64* %21, align 8
  %371 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 18
  %372 = load i16, i16* %371, align 4
  %373 = sext i16 %372 to i32
  %374 = load i16*, i16** %6, align 8
  %375 = load i32, i32* %10, align 4
  %376 = sub nsw i32 18, %375
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i16, i16* %374, i64 %377
  %379 = load i16, i16* %378, align 2
  %380 = sext i16 %379 to i32
  %381 = mul nsw i32 %373, %380
  %382 = sext i32 %381 to i64
  %383 = load i64, i64* %21, align 8
  %384 = add nsw i64 %383, %382
  store i64 %384, i64* %21, align 8
  %385 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 19
  %386 = load i16, i16* %385, align 2
  %387 = sext i16 %386 to i32
  %388 = load i16*, i16** %6, align 8
  %389 = load i32, i32* %10, align 4
  %390 = sub nsw i32 19, %389
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %388, i64 %391
  %393 = load i16, i16* %392, align 2
  %394 = sext i16 %393 to i32
  %395 = mul nsw i32 %387, %394
  %396 = sext i32 %395 to i64
  %397 = load i64, i64* %21, align 8
  %398 = add nsw i64 %397, %396
  store i64 %398, i64* %21, align 8
  %399 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 20
  %400 = load i16, i16* %399, align 8
  %401 = sext i16 %400 to i32
  %402 = load i16*, i16** %6, align 8
  %403 = load i32, i32* %10, align 4
  %404 = sub nsw i32 20, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i16, i16* %402, i64 %405
  %407 = load i16, i16* %406, align 2
  %408 = sext i16 %407 to i32
  %409 = mul nsw i32 %401, %408
  %410 = sext i32 %409 to i64
  %411 = load i64, i64* %21, align 8
  %412 = add nsw i64 %411, %410
  store i64 %412, i64* %21, align 8
  %413 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 21
  %414 = load i16, i16* %413, align 2
  %415 = sext i16 %414 to i32
  %416 = load i16*, i16** %6, align 8
  %417 = load i32, i32* %10, align 4
  %418 = sub nsw i32 21, %417
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i16, i16* %416, i64 %419
  %421 = load i16, i16* %420, align 2
  %422 = sext i16 %421 to i32
  %423 = mul nsw i32 %415, %422
  %424 = sext i32 %423 to i64
  %425 = load i64, i64* %21, align 8
  %426 = add nsw i64 %425, %424
  store i64 %426, i64* %21, align 8
  %427 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 22
  %428 = load i16, i16* %427, align 4
  %429 = sext i16 %428 to i32
  %430 = load i16*, i16** %6, align 8
  %431 = load i32, i32* %10, align 4
  %432 = sub nsw i32 22, %431
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i16, i16* %430, i64 %433
  %435 = load i16, i16* %434, align 2
  %436 = sext i16 %435 to i32
  %437 = mul nsw i32 %429, %436
  %438 = sext i32 %437 to i64
  %439 = load i64, i64* %21, align 8
  %440 = add nsw i64 %439, %438
  store i64 %440, i64* %21, align 8
  %441 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 23
  %442 = load i16, i16* %441, align 2
  %443 = sext i16 %442 to i32
  %444 = load i16*, i16** %6, align 8
  %445 = load i32, i32* %10, align 4
  %446 = sub nsw i32 23, %445
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i16, i16* %444, i64 %447
  %449 = load i16, i16* %448, align 2
  %450 = sext i16 %449 to i32
  %451 = mul nsw i32 %443, %450
  %452 = sext i32 %451 to i64
  %453 = load i64, i64* %21, align 8
  %454 = add nsw i64 %453, %452
  store i64 %454, i64* %21, align 8
  %455 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 24
  %456 = load i16, i16* %455, align 16
  %457 = sext i16 %456 to i32
  %458 = load i16*, i16** %6, align 8
  %459 = load i32, i32* %10, align 4
  %460 = sub nsw i32 24, %459
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i16, i16* %458, i64 %461
  %463 = load i16, i16* %462, align 2
  %464 = sext i16 %463 to i32
  %465 = mul nsw i32 %457, %464
  %466 = sext i32 %465 to i64
  %467 = load i64, i64* %21, align 8
  %468 = add nsw i64 %467, %466
  store i64 %468, i64* %21, align 8
  %469 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 25
  %470 = load i16, i16* %469, align 2
  %471 = sext i16 %470 to i32
  %472 = load i16*, i16** %6, align 8
  %473 = load i32, i32* %10, align 4
  %474 = sub nsw i32 25, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i16, i16* %472, i64 %475
  %477 = load i16, i16* %476, align 2
  %478 = sext i16 %477 to i32
  %479 = mul nsw i32 %471, %478
  %480 = sext i32 %479 to i64
  %481 = load i64, i64* %21, align 8
  %482 = add nsw i64 %481, %480
  store i64 %482, i64* %21, align 8
  %483 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 26
  %484 = load i16, i16* %483, align 4
  %485 = sext i16 %484 to i32
  %486 = load i16*, i16** %6, align 8
  %487 = load i32, i32* %10, align 4
  %488 = sub nsw i32 26, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i16, i16* %486, i64 %489
  %491 = load i16, i16* %490, align 2
  %492 = sext i16 %491 to i32
  %493 = mul nsw i32 %485, %492
  %494 = sext i32 %493 to i64
  %495 = load i64, i64* %21, align 8
  %496 = add nsw i64 %495, %494
  store i64 %496, i64* %21, align 8
  %497 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 27
  %498 = load i16, i16* %497, align 2
  %499 = sext i16 %498 to i32
  %500 = load i16*, i16** %6, align 8
  %501 = load i32, i32* %10, align 4
  %502 = sub nsw i32 27, %501
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i16, i16* %500, i64 %503
  %505 = load i16, i16* %504, align 2
  %506 = sext i16 %505 to i32
  %507 = mul nsw i32 %499, %506
  %508 = sext i32 %507 to i64
  %509 = load i64, i64* %21, align 8
  %510 = add nsw i64 %509, %508
  store i64 %510, i64* %21, align 8
  %511 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 28
  %512 = load i16, i16* %511, align 8
  %513 = sext i16 %512 to i32
  %514 = load i16*, i16** %6, align 8
  %515 = load i32, i32* %10, align 4
  %516 = sub nsw i32 28, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i16, i16* %514, i64 %517
  %519 = load i16, i16* %518, align 2
  %520 = sext i16 %519 to i32
  %521 = mul nsw i32 %513, %520
  %522 = sext i32 %521 to i64
  %523 = load i64, i64* %21, align 8
  %524 = add nsw i64 %523, %522
  store i64 %524, i64* %21, align 8
  %525 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 29
  %526 = load i16, i16* %525, align 2
  %527 = sext i16 %526 to i32
  %528 = load i16*, i16** %6, align 8
  %529 = load i32, i32* %10, align 4
  %530 = sub nsw i32 29, %529
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i16, i16* %528, i64 %531
  %533 = load i16, i16* %532, align 2
  %534 = sext i16 %533 to i32
  %535 = mul nsw i32 %527, %534
  %536 = sext i32 %535 to i64
  %537 = load i64, i64* %21, align 8
  %538 = add nsw i64 %537, %536
  store i64 %538, i64* %21, align 8
  %539 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 30
  %540 = load i16, i16* %539, align 4
  %541 = sext i16 %540 to i32
  %542 = load i16*, i16** %6, align 8
  %543 = load i32, i32* %10, align 4
  %544 = sub nsw i32 30, %543
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i16, i16* %542, i64 %545
  %547 = load i16, i16* %546, align 2
  %548 = sext i16 %547 to i32
  %549 = mul nsw i32 %541, %548
  %550 = sext i32 %549 to i64
  %551 = load i64, i64* %21, align 8
  %552 = add nsw i64 %551, %550
  store i64 %552, i64* %21, align 8
  %553 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 31
  %554 = load i16, i16* %553, align 2
  %555 = sext i16 %554 to i32
  %556 = load i16*, i16** %6, align 8
  %557 = load i32, i32* %10, align 4
  %558 = sub nsw i32 31, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i16, i16* %556, i64 %559
  %561 = load i16, i16* %560, align 2
  %562 = sext i16 %561 to i32
  %563 = mul nsw i32 %555, %562
  %564 = sext i32 %563 to i64
  %565 = load i64, i64* %21, align 8
  %566 = add nsw i64 %565, %564
  store i64 %566, i64* %21, align 8
  %567 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 32
  %568 = load i16, i16* %567, align 16
  %569 = sext i16 %568 to i32
  %570 = load i16*, i16** %6, align 8
  %571 = load i32, i32* %10, align 4
  %572 = sub nsw i32 32, %571
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds i16, i16* %570, i64 %573
  %575 = load i16, i16* %574, align 2
  %576 = sext i16 %575 to i32
  %577 = mul nsw i32 %569, %576
  %578 = sext i32 %577 to i64
  %579 = load i64, i64* %21, align 8
  %580 = add nsw i64 %579, %578
  store i64 %580, i64* %21, align 8
  %581 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 33
  %582 = load i16, i16* %581, align 2
  %583 = sext i16 %582 to i32
  %584 = load i16*, i16** %6, align 8
  %585 = load i32, i32* %10, align 4
  %586 = sub nsw i32 33, %585
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i16, i16* %584, i64 %587
  %589 = load i16, i16* %588, align 2
  %590 = sext i16 %589 to i32
  %591 = mul nsw i32 %583, %590
  %592 = sext i32 %591 to i64
  %593 = load i64, i64* %21, align 8
  %594 = add nsw i64 %593, %592
  store i64 %594, i64* %21, align 8
  %595 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 34
  %596 = load i16, i16* %595, align 4
  %597 = sext i16 %596 to i32
  %598 = load i16*, i16** %6, align 8
  %599 = load i32, i32* %10, align 4
  %600 = sub nsw i32 34, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i16, i16* %598, i64 %601
  %603 = load i16, i16* %602, align 2
  %604 = sext i16 %603 to i32
  %605 = mul nsw i32 %597, %604
  %606 = sext i32 %605 to i64
  %607 = load i64, i64* %21, align 8
  %608 = add nsw i64 %607, %606
  store i64 %608, i64* %21, align 8
  %609 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 35
  %610 = load i16, i16* %609, align 2
  %611 = sext i16 %610 to i32
  %612 = load i16*, i16** %6, align 8
  %613 = load i32, i32* %10, align 4
  %614 = sub nsw i32 35, %613
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i16, i16* %612, i64 %615
  %617 = load i16, i16* %616, align 2
  %618 = sext i16 %617 to i32
  %619 = mul nsw i32 %611, %618
  %620 = sext i32 %619 to i64
  %621 = load i64, i64* %21, align 8
  %622 = add nsw i64 %621, %620
  store i64 %622, i64* %21, align 8
  %623 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 36
  %624 = load i16, i16* %623, align 8
  %625 = sext i16 %624 to i32
  %626 = load i16*, i16** %6, align 8
  %627 = load i32, i32* %10, align 4
  %628 = sub nsw i32 36, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i16, i16* %626, i64 %629
  %631 = load i16, i16* %630, align 2
  %632 = sext i16 %631 to i32
  %633 = mul nsw i32 %625, %632
  %634 = sext i32 %633 to i64
  %635 = load i64, i64* %21, align 8
  %636 = add nsw i64 %635, %634
  store i64 %636, i64* %21, align 8
  %637 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 37
  %638 = load i16, i16* %637, align 2
  %639 = sext i16 %638 to i32
  %640 = load i16*, i16** %6, align 8
  %641 = load i32, i32* %10, align 4
  %642 = sub nsw i32 37, %641
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i16, i16* %640, i64 %643
  %645 = load i16, i16* %644, align 2
  %646 = sext i16 %645 to i32
  %647 = mul nsw i32 %639, %646
  %648 = sext i32 %647 to i64
  %649 = load i64, i64* %21, align 8
  %650 = add nsw i64 %649, %648
  store i64 %650, i64* %21, align 8
  %651 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 38
  %652 = load i16, i16* %651, align 4
  %653 = sext i16 %652 to i32
  %654 = load i16*, i16** %6, align 8
  %655 = load i32, i32* %10, align 4
  %656 = sub nsw i32 38, %655
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds i16, i16* %654, i64 %657
  %659 = load i16, i16* %658, align 2
  %660 = sext i16 %659 to i32
  %661 = mul nsw i32 %653, %660
  %662 = sext i32 %661 to i64
  %663 = load i64, i64* %21, align 8
  %664 = add nsw i64 %663, %662
  store i64 %664, i64* %21, align 8
  %665 = getelementptr inbounds [40 x i16], [40 x i16]* %13, i64 0, i64 39
  %666 = load i16, i16* %665, align 2
  %667 = sext i16 %666 to i32
  %668 = load i16*, i16** %6, align 8
  %669 = load i32, i32* %10, align 4
  %670 = sub nsw i32 39, %669
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds i16, i16* %668, i64 %671
  %673 = load i16, i16* %672, align 2
  %674 = sext i16 %673 to i32
  %675 = mul nsw i32 %667, %674
  %676 = sext i32 %675 to i64
  %677 = load i64, i64* %21, align 8
  %678 = add nsw i64 %677, %676
  store i64 %678, i64* %21, align 8
  %679 = load i64, i64* %21, align 8
  %680 = load i64, i64* %14, align 8
  %681 = icmp sgt i64 %679, %680
  br i1 %681, label %682, label %686

682:                                              ; preds = %120
  %683 = load i32, i32* %10, align 4
  %684 = trunc i32 %683 to i16
  store i16 %684, i16* %11, align 2
  %685 = load i64, i64* %21, align 8
  store i64 %685, i64* %14, align 8
  br label %686

686:                                              ; preds = %682, %120
  br label %687

687:                                              ; preds = %686
  %688 = load i32, i32* %10, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %10, align 4
  br label %117, !llvm.loop !7

690:                                              ; preds = %117
  %691 = load i16, i16* %11, align 2
  %692 = load i16*, i16** %8, align 8
  store i16 %691, i16* %692, align 2
  %693 = load i64, i64* %14, align 8
  %694 = shl i64 %693, 1
  store i64 %694, i64* %14, align 8
  %695 = load i16, i16* %19, align 2
  %696 = sext i16 %695 to i32
  %697 = icmp sle i32 %696, 100
  br i1 %697, label %698, label %703

698:                                              ; preds = %690
  %699 = load i16, i16* %19, align 2
  %700 = sext i16 %699 to i32
  %701 = icmp sge i32 %700, -100
  br i1 %701, label %702, label %703

702:                                              ; preds = %698
  br label %704

703:                                              ; preds = %698, %690
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  unreachable

704:                                              ; preds = %702
  %705 = load i64, i64* %14, align 8
  %706 = load i16, i16* %19, align 2
  %707 = sext i16 %706 to i32
  %708 = sub nsw i32 6, %707
  %709 = zext i32 %708 to i64
  %710 = ashr i64 %705, %709
  store i64 %710, i64* %14, align 8
  %711 = load i16, i16* %11, align 2
  %712 = sext i16 %711 to i32
  %713 = icmp sle i32 %712, 120
  br i1 %713, label %714, label %719

714:                                              ; preds = %704
  %715 = load i16, i16* %11, align 2
  %716 = sext i16 %715 to i32
  %717 = icmp sge i32 %716, 40
  br i1 %717, label %718, label %719

718:                                              ; preds = %714
  br label %720

719:                                              ; preds = %714, %704
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  unreachable

720:                                              ; preds = %718
  store i64 0, i64* %15, align 8
  store i32 0, i32* %9, align 4
  br label %721

721:                                              ; preds = %741, %720
  %722 = load i32, i32* %9, align 4
  %723 = icmp sle i32 %722, 39
  br i1 %723, label %724, label %744

724:                                              ; preds = %721
  %725 = load i16*, i16** %6, align 8
  %726 = load i32, i32* %9, align 4
  %727 = load i16, i16* %11, align 2
  %728 = sext i16 %727 to i32
  %729 = sub nsw i32 %726, %728
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i16, i16* %725, i64 %730
  %732 = load i16, i16* %731, align 2
  %733 = sext i16 %732 to i32
  %734 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %733, i32 noundef 3)
  %735 = sext i32 %734 to i64
  store i64 %735, i64* %22, align 8
  %736 = load i64, i64* %22, align 8
  %737 = load i64, i64* %22, align 8
  %738 = mul nsw i64 %736, %737
  %739 = load i64, i64* %15, align 8
  %740 = add nsw i64 %739, %738
  store i64 %740, i64* %15, align 8
  br label %741

741:                                              ; preds = %724
  %742 = load i32, i32* %9, align 4
  %743 = add nsw i32 %742, 1
  store i32 %743, i32* %9, align 4
  br label %721, !llvm.loop !8

744:                                              ; preds = %721
  %745 = load i64, i64* %15, align 8
  %746 = shl i64 %745, 1
  store i64 %746, i64* %15, align 8
  %747 = load i64, i64* %14, align 8
  %748 = icmp sle i64 %747, 0
  br i1 %748, label %749, label %751

749:                                              ; preds = %744
  %750 = load i16*, i16** %7, align 8
  store i16 0, i16* %750, align 2
  br label %797

751:                                              ; preds = %744
  %752 = load i64, i64* %14, align 8
  %753 = load i64, i64* %15, align 8
  %754 = icmp sge i64 %752, %753
  br i1 %754, label %755, label %757

755:                                              ; preds = %751
  %756 = load i16*, i16** %7, align 8
  store i16 3, i16* %756, align 2
  br label %797

757:                                              ; preds = %751
  %758 = load i64, i64* %15, align 8
  %759 = call signext i16 @gsm_norm(i64 noundef %758)
  store i16 %759, i16* %20, align 2
  %760 = load i64, i64* %14, align 8
  %761 = load i16, i16* %20, align 2
  %762 = sext i16 %761 to i32
  %763 = zext i32 %762 to i64
  %764 = shl i64 %760, %763
  %765 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %764, i32 noundef 16)
  %766 = trunc i32 %765 to i16
  store i16 %766, i16* %16, align 2
  %767 = load i64, i64* %15, align 8
  %768 = load i16, i16* %20, align 2
  %769 = sext i16 %768 to i32
  %770 = zext i32 %769 to i64
  %771 = shl i64 %767, %770
  %772 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %771, i32 noundef 16)
  %773 = trunc i32 %772 to i16
  store i16 %773, i16* %17, align 2
  store i16 0, i16* %12, align 2
  br label %774

774:                                              ; preds = %791, %757
  %775 = load i16, i16* %12, align 2
  %776 = sext i16 %775 to i32
  %777 = icmp sle i32 %776, 2
  br i1 %777, label %778, label %794

778:                                              ; preds = %774
  %779 = load i16, i16* %16, align 2
  %780 = sext i16 %779 to i32
  %781 = load i16, i16* %17, align 2
  %782 = load i16, i16* %12, align 2
  %783 = sext i16 %782 to i64
  %784 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_DLB, i64 0, i64 %783
  %785 = load i16, i16* %784, align 2
  %786 = call signext i16 @gsm_mult(i16 noundef signext %781, i16 noundef signext %785)
  %787 = sext i16 %786 to i32
  %788 = icmp sle i32 %780, %787
  br i1 %788, label %789, label %790

789:                                              ; preds = %778
  br label %794

790:                                              ; preds = %778
  br label %791

791:                                              ; preds = %790
  %792 = load i16, i16* %12, align 2
  %793 = add i16 %792, 1
  store i16 %793, i16* %12, align 2
  br label %774, !llvm.loop !9

794:                                              ; preds = %789, %774
  %795 = load i16, i16* %12, align 2
  %796 = load i16*, i16** %7, align 8
  store i16 %795, i16* %796, align 2
  br label %797

797:                                              ; preds = %794, %755, %749
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Long_term_analysis_filtering(i16 noundef signext %0, i16 noundef signext %1, i16* noundef %2, i16* noundef %3, i16* noundef %4, i16* noundef %5) #0 {
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i16 %0, i16* %7, align 2
  store i16 %1, i16* %8, align 2
  store i16* %2, i16** %9, align 8
  store i16* %3, i16** %10, align 8
  store i16* %4, i16** %11, align 8
  store i16* %5, i16** %12, align 8
  %15 = load i16, i16* %7, align 2
  %16 = sext i16 %15 to i32
  switch i32 %16, label %241 [
    i32 0, label %17
    i32 1, label %73
    i32 2, label %129
    i32 3, label %185
  ]

17:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %18

18:                                               ; preds = %69, %17
  %19 = load i32, i32* %13, align 4
  %20 = icmp sle i32 %19, 39
  br i1 %20, label %21, label %72

21:                                               ; preds = %18
  %22 = load i16*, i16** %9, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i16, i16* %8, align 2
  %25 = sext i16 %24 to i32
  %26 = sub nsw i32 %23, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %22, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i64
  %31 = mul nsw i64 3277, %30
  %32 = add nsw i64 %31, 16384
  %33 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %32, i32 noundef 15)
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %11, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %35, i64 %37
  store i16 %34, i16* %38, align 2
  %39 = load i16*, i16** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %39, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i64
  %45 = load i16*, i16** %11, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %45, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i64
  %51 = sub nsw i64 %44, %50
  store i64 %51, i64* %14, align 8
  %52 = icmp sge i64 %51, 32767
  br i1 %52, label %53, label %54

53:                                               ; preds = %21
  br label %62

54:                                               ; preds = %21
  %55 = load i64, i64* %14, align 8
  %56 = icmp sle i64 %55, -32768
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %60

58:                                               ; preds = %54
  %59 = load i64, i64* %14, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i64 [ -32768, %57 ], [ %59, %58 ]
  br label %62

62:                                               ; preds = %60, %53
  %63 = phi i64 [ 32767, %53 ], [ %61, %60 ]
  %64 = trunc i64 %63 to i16
  %65 = load i16*, i16** %12, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i16, i16* %65, i64 %67
  store i16 %64, i16* %68, align 2
  br label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %18, !llvm.loop !10

72:                                               ; preds = %18
  br label %241

73:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %125, %73
  %75 = load i32, i32* %13, align 4
  %76 = icmp sle i32 %75, 39
  br i1 %76, label %77, label %128

77:                                               ; preds = %74
  %78 = load i16*, i16** %9, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i16, i16* %8, align 2
  %81 = sext i16 %80 to i32
  %82 = sub nsw i32 %79, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i16, i16* %78, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i64
  %87 = mul nsw i64 11469, %86
  %88 = add nsw i64 %87, 16384
  %89 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %88, i32 noundef 15)
  %90 = trunc i32 %89 to i16
  %91 = load i16*, i16** %11, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %91, i64 %93
  store i16 %90, i16* %94, align 2
  %95 = load i16*, i16** %10, align 8
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i16, i16* %95, i64 %97
  %99 = load i16, i16* %98, align 2
  %100 = sext i16 %99 to i64
  %101 = load i16*, i16** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i16, i16* %101, i64 %103
  %105 = load i16, i16* %104, align 2
  %106 = sext i16 %105 to i64
  %107 = sub nsw i64 %100, %106
  store i64 %107, i64* %14, align 8
  %108 = icmp sge i64 %107, 32767
  br i1 %108, label %109, label %110

109:                                              ; preds = %77
  br label %118

110:                                              ; preds = %77
  %111 = load i64, i64* %14, align 8
  %112 = icmp sle i64 %111, -32768
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %116

114:                                              ; preds = %110
  %115 = load i64, i64* %14, align 8
  br label %116

116:                                              ; preds = %114, %113
  %117 = phi i64 [ -32768, %113 ], [ %115, %114 ]
  br label %118

118:                                              ; preds = %116, %109
  %119 = phi i64 [ 32767, %109 ], [ %117, %116 ]
  %120 = trunc i64 %119 to i16
  %121 = load i16*, i16** %12, align 8
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i16, i16* %121, i64 %123
  store i16 %120, i16* %124, align 2
  br label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %74, !llvm.loop !11

128:                                              ; preds = %74
  br label %241

129:                                              ; preds = %6
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %181, %129
  %131 = load i32, i32* %13, align 4
  %132 = icmp sle i32 %131, 39
  br i1 %132, label %133, label %184

133:                                              ; preds = %130
  %134 = load i16*, i16** %9, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i16, i16* %8, align 2
  %137 = sext i16 %136 to i32
  %138 = sub nsw i32 %135, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i16, i16* %134, i64 %139
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i64
  %143 = mul nsw i64 21299, %142
  %144 = add nsw i64 %143, 16384
  %145 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %144, i32 noundef 15)
  %146 = trunc i32 %145 to i16
  %147 = load i16*, i16** %11, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i16, i16* %147, i64 %149
  store i16 %146, i16* %150, align 2
  %151 = load i16*, i16** %10, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i16, i16* %151, i64 %153
  %155 = load i16, i16* %154, align 2
  %156 = sext i16 %155 to i64
  %157 = load i16*, i16** %11, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i16, i16* %157, i64 %159
  %161 = load i16, i16* %160, align 2
  %162 = sext i16 %161 to i64
  %163 = sub nsw i64 %156, %162
  store i64 %163, i64* %14, align 8
  %164 = icmp sge i64 %163, 32767
  br i1 %164, label %165, label %166

165:                                              ; preds = %133
  br label %174

166:                                              ; preds = %133
  %167 = load i64, i64* %14, align 8
  %168 = icmp sle i64 %167, -32768
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %172

170:                                              ; preds = %166
  %171 = load i64, i64* %14, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i64 [ -32768, %169 ], [ %171, %170 ]
  br label %174

174:                                              ; preds = %172, %165
  %175 = phi i64 [ 32767, %165 ], [ %173, %172 ]
  %176 = trunc i64 %175 to i16
  %177 = load i16*, i16** %12, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i16, i16* %177, i64 %179
  store i16 %176, i16* %180, align 2
  br label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  br label %130, !llvm.loop !12

184:                                              ; preds = %130
  br label %241

185:                                              ; preds = %6
  store i32 0, i32* %13, align 4
  br label %186

186:                                              ; preds = %237, %185
  %187 = load i32, i32* %13, align 4
  %188 = icmp sle i32 %187, 39
  br i1 %188, label %189, label %240

189:                                              ; preds = %186
  %190 = load i16*, i16** %9, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i16, i16* %8, align 2
  %193 = sext i16 %192 to i32
  %194 = sub nsw i32 %191, %193
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %190, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i64
  %199 = mul nsw i64 32767, %198
  %200 = add nsw i64 %199, 16384
  %201 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %200, i32 noundef 15)
  %202 = trunc i32 %201 to i16
  %203 = load i16*, i16** %11, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i16, i16* %203, i64 %205
  store i16 %202, i16* %206, align 2
  %207 = load i16*, i16** %10, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i16, i16* %207, i64 %209
  %211 = load i16, i16* %210, align 2
  %212 = sext i16 %211 to i64
  %213 = load i16*, i16** %11, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i16, i16* %213, i64 %215
  %217 = load i16, i16* %216, align 2
  %218 = sext i16 %217 to i64
  %219 = sub nsw i64 %212, %218
  store i64 %219, i64* %14, align 8
  %220 = icmp sge i64 %219, 32767
  br i1 %220, label %221, label %222

221:                                              ; preds = %189
  br label %230

222:                                              ; preds = %189
  %223 = load i64, i64* %14, align 8
  %224 = icmp sle i64 %223, -32768
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  br label %228

226:                                              ; preds = %222
  %227 = load i64, i64* %14, align 8
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i64 [ -32768, %225 ], [ %227, %226 ]
  br label %230

230:                                              ; preds = %228, %221
  %231 = phi i64 [ 32767, %221 ], [ %229, %228 ]
  %232 = trunc i64 %231 to i16
  %233 = load i16*, i16** %12, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i16, i16* %233, i64 %235
  store i16 %232, i16* %236, align 2
  br label %237

237:                                              ; preds = %230
  %238 = load i32, i32* %13, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %13, align 4
  br label %186, !llvm.loop !13

240:                                              ; preds = %186
  br label %241

241:                                              ; preds = %6, %240, %184, %128, %72
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16* noundef %3, i16* noundef %4) #0 {
  %6 = alloca %struct.gsm_state*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store %struct.gsm_state* %0, %struct.gsm_state** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16* %3, i16** %9, align 8
  store i16* %4, i16** %10, align 8
  %16 = load i16, i16* %7, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp slt i32 %17, 40
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i16, i16* %7, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp sgt i32 %21, 120
  br i1 %22, label %23, label %28

23:                                               ; preds = %19, %5
  %24 = load %struct.gsm_state*, %struct.gsm_state** %6, align 8
  %25 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %24, i32 0, i32 7
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i32
  br label %31

28:                                               ; preds = %19
  %29 = load i16, i16* %7, align 2
  %30 = sext i16 %29 to i32
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %27, %23 ], [ %30, %28 ]
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %15, align 2
  %34 = load i16, i16* %15, align 2
  %35 = load %struct.gsm_state*, %struct.gsm_state** %6, align 8
  %36 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %35, i32 0, i32 7
  store i16 %34, i16* %36, align 2
  %37 = load i16, i16* %15, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp sge i32 %38, 40
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i16, i16* %15, align 2
  %42 = sext i16 %41 to i32
  %43 = icmp sle i32 %42, 120
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %46

45:                                               ; preds = %40, %31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, i64 0, i64 0)) #3
  unreachable

46:                                               ; preds = %44
  %47 = load i16, i16* %8, align 2
  %48 = sext i16 %47 to i64
  %49 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_QLB, i64 0, i64 %48
  %50 = load i16, i16* %49, align 2
  store i16 %50, i16* %13, align 2
  %51 = load i16, i16* %13, align 2
  %52 = sext i16 %51 to i32
  %53 = icmp ne i32 %52, -32768
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %56

55:                                               ; preds = %46
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, i64 0, i64 0)) #3
  unreachable

56:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %102, %56
  %58 = load i32, i32* %12, align 4
  %59 = icmp sle i32 %58, 39
  br i1 %59, label %60, label %105

60:                                               ; preds = %57
  %61 = load i16, i16* %13, align 2
  %62 = sext i16 %61 to i64
  %63 = load i16*, i16** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load i16, i16* %15, align 2
  %66 = sext i16 %65 to i32
  %67 = sub nsw i32 %64, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i16, i16* %63, i64 %68
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i64
  %72 = mul nsw i64 %62, %71
  %73 = add nsw i64 %72, 16384
  %74 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %73, i32 noundef 15)
  %75 = trunc i32 %74 to i16
  store i16 %75, i16* %14, align 2
  %76 = load i16*, i16** %9, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %76, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i64
  %82 = load i16, i16* %14, align 2
  %83 = sext i16 %82 to i64
  %84 = add nsw i64 %81, %83
  store i64 %84, i64* %11, align 8
  %85 = sub nsw i64 %84, -32768
  %86 = icmp ugt i64 %85, 65535
  br i1 %86, label %87, label %93

87:                                               ; preds = %60
  %88 = load i64, i64* %11, align 8
  %89 = icmp sgt i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 32767, i32 -32768
  %92 = sext i32 %91 to i64
  br label %95

93:                                               ; preds = %60
  %94 = load i64, i64* %11, align 8
  br label %95

95:                                               ; preds = %93, %87
  %96 = phi i64 [ %92, %87 ], [ %94, %93 ]
  %97 = trunc i64 %96 to i16
  %98 = load i16*, i16** %10, align 8
  %99 = load i32, i32* %12, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %98, i64 %100
  store i16 %97, i16* %101, align 2
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %57, !llvm.loop !14

105:                                              ; preds = %57
  store i32 0, i32* %12, align 4
  br label %106

106:                                              ; preds = %121, %105
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %107, 119
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load i16*, i16** %10, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 -80, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %110, i64 %113
  %115 = load i16, i16* %114, align 2
  %116 = load i16*, i16** %10, align 8
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 -120, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i16, i16* %116, i64 %119
  store i16 %115, i16* %120, align 2
  br label %121

121:                                              ; preds = %109
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %106, !llvm.loop !15

124:                                              ; preds = %106
  ret void
}

declare dso_local i32 @SASR(...) #2

declare dso_local signext i16 @gsm_norm(i64 noundef) #2

declare dso_local signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
