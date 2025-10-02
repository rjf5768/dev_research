; ModuleID = './long_term.ll'
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
define dso_local void @Gsm_Long_Term_Predictor(%struct.gsm_state* nocapture noundef readnone %0, i16* noundef readonly %1, i16* noundef %2, i16* noundef writeonly %3, i16* noundef %4, i16* noundef %5, i16* noundef %6) #0 {
  %.not = icmp eq i16* %1, null
  br i1 %.not, label %9, label %8

8:                                                ; preds = %7
  br label %10

9:                                                ; preds = %7
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  %.not1 = icmp eq i16* %2, null
  br i1 %.not1, label %12, label %11

11:                                               ; preds = %10
  br label %13

12:                                               ; preds = %10
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

13:                                               ; preds = %11
  %.not2 = icmp eq i16* %3, null
  br i1 %.not2, label %15, label %14

14:                                               ; preds = %13
  br label %16

15:                                               ; preds = %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 545, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %14
  %.not3 = icmp eq i16* %4, null
  br i1 %.not3, label %18, label %17

17:                                               ; preds = %16
  br label %19

18:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

19:                                               ; preds = %17
  %.not4 = icmp eq i16* %5, null
  br i1 %.not4, label %21, label %20

20:                                               ; preds = %19
  br label %22

21:                                               ; preds = %19
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %20
  %.not5 = icmp eq i16* %6, null
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %22
  br label %25

24:                                               ; preds = %22
  call void @__assert_fail(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 546, i8* noundef getelementptr inbounds ([97 x i8], [97 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Predictor, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

25:                                               ; preds = %23
  call void @Calculation_of_the_LTP_parameters(i16* noundef nonnull %1, i16* noundef nonnull %2, i16* noundef nonnull %6, i16* noundef nonnull %5)
  %26 = load i16, i16* %6, align 2
  %27 = load i16, i16* %5, align 2
  call void @Long_term_analysis_filtering(i16 noundef signext %26, i16 noundef signext %27, i16* noundef nonnull %2, i16* noundef nonnull %1, i16* noundef nonnull %4, i16* noundef nonnull %3)
  ret void

UnifiedUnreachableBlock:                          ; preds = %24, %21, %18, %15, %12, %9
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @Calculation_of_the_LTP_parameters(i16* nocapture noundef readonly %0, i16* noundef readonly %1, i16* nocapture noundef writeonly %2, i16* nocapture noundef writeonly %3) #0 {
  %5 = alloca [40 x i16], align 16
  br label %6

6:                                                ; preds = %26, %4
  %.03 = phi i32 [ 0, %4 ], [ %27, %26 ]
  %.02 = phi i16 [ 0, %4 ], [ %.1, %26 ]
  %7 = icmp ult i32 %.03, 40
  br i1 %7, label %8, label %28

8:                                                ; preds = %6
  %9 = zext i32 %.03 to i64
  %10 = getelementptr inbounds i16, i16* %0, i64 %9
  %11 = load i16, i16* %10, align 2
  %12 = icmp slt i16 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = icmp eq i16 %11, -32768
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  br label %18

16:                                               ; preds = %13
  %17 = sub i16 0, %11
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i16 [ 32767, %15 ], [ %17, %16 ]
  br label %21

20:                                               ; preds = %8
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i16 [ %19, %18 ], [ %11, %20 ]
  %23 = icmp sgt i16 %22, %.02
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %21
  %.1 = phi i16 [ %22, %24 ], [ %.02, %21 ]
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.03, 1
  br label %6, !llvm.loop !4

28:                                               ; preds = %6
  %29 = icmp eq i16 %.02, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  br label %39

31:                                               ; preds = %28
  %32 = icmp sgt i16 %.02, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %35

34:                                               ; preds = %31
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 101, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %33
  %36 = sext i16 %.02 to i64
  %37 = shl nsw i64 %36, 16
  %38 = call signext i16 @gsm_norm(i64 noundef %37) #4
  %phi.cast = sext i16 %38 to i32
  br label %39

39:                                               ; preds = %35, %30
  %.0 = phi i32 [ 0, %30 ], [ %phi.cast, %35 ]
  %40 = icmp sgt i32 %.0, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  br label %43

42:                                               ; preds = %39
  %.neg = mul i32 %.0, -65536
  %sext = add i32 %.neg, 393216
  %phi.cast14 = ashr exact i32 %sext, 16
  br label %43

43:                                               ; preds = %42, %41
  %.01 = phi i32 [ 0, %41 ], [ %phi.cast14, %42 ]
  %44 = icmp sgt i32 %.01, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  br label %47

46:                                               ; preds = %43
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %59, %47
  %.14 = phi i32 [ 0, %47 ], [ %60, %59 ]
  %49 = icmp ult i32 %.14, 40
  br i1 %49, label %50, label %61

50:                                               ; preds = %48
  %51 = zext i32 %.14 to i64
  %52 = getelementptr inbounds i16, i16* %0, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef %.01) #4
  %56 = trunc i32 %55 to i16
  %57 = zext i32 %.14 to i64
  %58 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 %57
  store i16 %56, i16* %58, align 2
  br label %59

59:                                               ; preds = %50
  %60 = add nuw nsw i32 %.14, 1
  br label %48, !llvm.loop !6

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %468, %61
  %.09 = phi i64 [ 0, %61 ], [ %.110, %468 ]
  %.06 = phi i16 [ 40, %61 ], [ %.17, %468 ]
  %.05 = phi i32 [ 40, %61 ], [ %469, %468 ]
  %63 = icmp ult i32 %.05, 121
  br i1 %63, label %64, label %470

64:                                               ; preds = %62
  %65 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 0
  %66 = load i16, i16* %65, align 16
  %67 = sext i16 %66 to i64
  %68 = sub nsw i32 0, %.05
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %1, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i64
  %73 = mul nsw i64 %67, %72
  %74 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 1
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i64
  %77 = sub nsw i32 1, %.05
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, i16* %1, i64 %78
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i64
  %82 = mul nsw i64 %76, %81
  %83 = add nsw i64 %73, %82
  %84 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 2
  %85 = load i16, i16* %84, align 4
  %86 = sext i16 %85 to i64
  %87 = sub nsw i32 2, %.05
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %1, i64 %88
  %90 = load i16, i16* %89, align 2
  %91 = sext i16 %90 to i64
  %92 = mul nsw i64 %86, %91
  %93 = add nsw i64 %83, %92
  %94 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 3
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i64
  %97 = sub nsw i32 3, %.05
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i16, i16* %1, i64 %98
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i64
  %102 = mul nsw i64 %96, %101
  %103 = add nsw i64 %93, %102
  %104 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 4
  %105 = load i16, i16* %104, align 8
  %106 = sext i16 %105 to i64
  %107 = sub nsw i32 4, %.05
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i16, i16* %1, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = sext i16 %110 to i64
  %112 = mul nsw i64 %106, %111
  %113 = add nsw i64 %103, %112
  %114 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 5
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i64
  %117 = sub nsw i32 5, %.05
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %1, i64 %118
  %120 = load i16, i16* %119, align 2
  %121 = sext i16 %120 to i64
  %122 = mul nsw i64 %116, %121
  %123 = add nsw i64 %113, %122
  %124 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 6
  %125 = load i16, i16* %124, align 4
  %126 = sext i16 %125 to i64
  %127 = sub nsw i32 6, %.05
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i16, i16* %1, i64 %128
  %130 = load i16, i16* %129, align 2
  %131 = sext i16 %130 to i64
  %132 = mul nsw i64 %126, %131
  %133 = add nsw i64 %123, %132
  %134 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 7
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i64
  %137 = sub nsw i32 7, %.05
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i16, i16* %1, i64 %138
  %140 = load i16, i16* %139, align 2
  %141 = sext i16 %140 to i64
  %142 = mul nsw i64 %136, %141
  %143 = add nsw i64 %133, %142
  %144 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 8
  %145 = load i16, i16* %144, align 16
  %146 = sext i16 %145 to i64
  %147 = sub nsw i32 8, %.05
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i16, i16* %1, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i64
  %152 = mul nsw i64 %146, %151
  %153 = add nsw i64 %143, %152
  %154 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 9
  %155 = load i16, i16* %154, align 2
  %156 = sext i16 %155 to i64
  %157 = sub nsw i32 9, %.05
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16, i16* %1, i64 %158
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i64
  %162 = mul nsw i64 %156, %161
  %163 = add nsw i64 %153, %162
  %164 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 10
  %165 = load i16, i16* %164, align 4
  %166 = sext i16 %165 to i64
  %167 = sub nsw i32 10, %.05
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i16, i16* %1, i64 %168
  %170 = load i16, i16* %169, align 2
  %171 = sext i16 %170 to i64
  %172 = mul nsw i64 %166, %171
  %173 = add nsw i64 %163, %172
  %174 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 11
  %175 = load i16, i16* %174, align 2
  %176 = sext i16 %175 to i64
  %177 = sub nsw i32 11, %.05
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i16, i16* %1, i64 %178
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i64
  %182 = mul nsw i64 %176, %181
  %183 = add nsw i64 %173, %182
  %184 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 12
  %185 = load i16, i16* %184, align 8
  %186 = sext i16 %185 to i64
  %187 = sub nsw i32 12, %.05
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i16, i16* %1, i64 %188
  %190 = load i16, i16* %189, align 2
  %191 = sext i16 %190 to i64
  %192 = mul nsw i64 %186, %191
  %193 = add nsw i64 %183, %192
  %194 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 13
  %195 = load i16, i16* %194, align 2
  %196 = sext i16 %195 to i64
  %197 = sub nsw i32 13, %.05
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i16, i16* %1, i64 %198
  %200 = load i16, i16* %199, align 2
  %201 = sext i16 %200 to i64
  %202 = mul nsw i64 %196, %201
  %203 = add nsw i64 %193, %202
  %204 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 14
  %205 = load i16, i16* %204, align 4
  %206 = sext i16 %205 to i64
  %207 = sub nsw i32 14, %.05
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i16, i16* %1, i64 %208
  %210 = load i16, i16* %209, align 2
  %211 = sext i16 %210 to i64
  %212 = mul nsw i64 %206, %211
  %213 = add nsw i64 %203, %212
  %214 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 15
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i64
  %217 = sub nsw i32 15, %.05
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i16, i16* %1, i64 %218
  %220 = load i16, i16* %219, align 2
  %221 = sext i16 %220 to i64
  %222 = mul nsw i64 %216, %221
  %223 = add nsw i64 %213, %222
  %224 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 16
  %225 = load i16, i16* %224, align 16
  %226 = sext i16 %225 to i64
  %227 = sub nsw i32 16, %.05
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, i16* %1, i64 %228
  %230 = load i16, i16* %229, align 2
  %231 = sext i16 %230 to i64
  %232 = mul nsw i64 %226, %231
  %233 = add nsw i64 %223, %232
  %234 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 17
  %235 = load i16, i16* %234, align 2
  %236 = sext i16 %235 to i64
  %237 = sub nsw i32 17, %.05
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i16, i16* %1, i64 %238
  %240 = load i16, i16* %239, align 2
  %241 = sext i16 %240 to i64
  %242 = mul nsw i64 %236, %241
  %243 = add nsw i64 %233, %242
  %244 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 18
  %245 = load i16, i16* %244, align 4
  %246 = sext i16 %245 to i64
  %247 = sub nsw i32 18, %.05
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i16, i16* %1, i64 %248
  %250 = load i16, i16* %249, align 2
  %251 = sext i16 %250 to i64
  %252 = mul nsw i64 %246, %251
  %253 = add nsw i64 %243, %252
  %254 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 19
  %255 = load i16, i16* %254, align 2
  %256 = sext i16 %255 to i64
  %257 = sub nsw i32 19, %.05
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i16, i16* %1, i64 %258
  %260 = load i16, i16* %259, align 2
  %261 = sext i16 %260 to i64
  %262 = mul nsw i64 %256, %261
  %263 = add nsw i64 %253, %262
  %264 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 20
  %265 = load i16, i16* %264, align 8
  %266 = sext i16 %265 to i64
  %267 = sub nsw i32 20, %.05
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i16, i16* %1, i64 %268
  %270 = load i16, i16* %269, align 2
  %271 = sext i16 %270 to i64
  %272 = mul nsw i64 %266, %271
  %273 = add nsw i64 %263, %272
  %274 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 21
  %275 = load i16, i16* %274, align 2
  %276 = sext i16 %275 to i64
  %277 = sub nsw i32 21, %.05
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i16, i16* %1, i64 %278
  %280 = load i16, i16* %279, align 2
  %281 = sext i16 %280 to i64
  %282 = mul nsw i64 %276, %281
  %283 = add nsw i64 %273, %282
  %284 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 22
  %285 = load i16, i16* %284, align 4
  %286 = sext i16 %285 to i64
  %287 = sub nsw i32 22, %.05
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i16, i16* %1, i64 %288
  %290 = load i16, i16* %289, align 2
  %291 = sext i16 %290 to i64
  %292 = mul nsw i64 %286, %291
  %293 = add nsw i64 %283, %292
  %294 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 23
  %295 = load i16, i16* %294, align 2
  %296 = sext i16 %295 to i64
  %297 = sub nsw i32 23, %.05
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i16, i16* %1, i64 %298
  %300 = load i16, i16* %299, align 2
  %301 = sext i16 %300 to i64
  %302 = mul nsw i64 %296, %301
  %303 = add nsw i64 %293, %302
  %304 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 24
  %305 = load i16, i16* %304, align 16
  %306 = sext i16 %305 to i64
  %307 = sub nsw i32 24, %.05
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i16, i16* %1, i64 %308
  %310 = load i16, i16* %309, align 2
  %311 = sext i16 %310 to i64
  %312 = mul nsw i64 %306, %311
  %313 = add nsw i64 %303, %312
  %314 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 25
  %315 = load i16, i16* %314, align 2
  %316 = sext i16 %315 to i64
  %317 = sub nsw i32 25, %.05
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i16, i16* %1, i64 %318
  %320 = load i16, i16* %319, align 2
  %321 = sext i16 %320 to i64
  %322 = mul nsw i64 %316, %321
  %323 = add nsw i64 %313, %322
  %324 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 26
  %325 = load i16, i16* %324, align 4
  %326 = sext i16 %325 to i64
  %327 = sub nsw i32 26, %.05
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i16, i16* %1, i64 %328
  %330 = load i16, i16* %329, align 2
  %331 = sext i16 %330 to i64
  %332 = mul nsw i64 %326, %331
  %333 = add nsw i64 %323, %332
  %334 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 27
  %335 = load i16, i16* %334, align 2
  %336 = sext i16 %335 to i64
  %337 = sub nsw i32 27, %.05
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i16, i16* %1, i64 %338
  %340 = load i16, i16* %339, align 2
  %341 = sext i16 %340 to i64
  %342 = mul nsw i64 %336, %341
  %343 = add nsw i64 %333, %342
  %344 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 28
  %345 = load i16, i16* %344, align 8
  %346 = sext i16 %345 to i64
  %347 = sub nsw i32 28, %.05
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i16, i16* %1, i64 %348
  %350 = load i16, i16* %349, align 2
  %351 = sext i16 %350 to i64
  %352 = mul nsw i64 %346, %351
  %353 = add nsw i64 %343, %352
  %354 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 29
  %355 = load i16, i16* %354, align 2
  %356 = sext i16 %355 to i64
  %357 = sub nsw i32 29, %.05
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i16, i16* %1, i64 %358
  %360 = load i16, i16* %359, align 2
  %361 = sext i16 %360 to i64
  %362 = mul nsw i64 %356, %361
  %363 = add nsw i64 %353, %362
  %364 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 30
  %365 = load i16, i16* %364, align 4
  %366 = sext i16 %365 to i64
  %367 = sub nsw i32 30, %.05
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i16, i16* %1, i64 %368
  %370 = load i16, i16* %369, align 2
  %371 = sext i16 %370 to i64
  %372 = mul nsw i64 %366, %371
  %373 = add nsw i64 %363, %372
  %374 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 31
  %375 = load i16, i16* %374, align 2
  %376 = sext i16 %375 to i64
  %377 = sub nsw i32 31, %.05
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i16, i16* %1, i64 %378
  %380 = load i16, i16* %379, align 2
  %381 = sext i16 %380 to i64
  %382 = mul nsw i64 %376, %381
  %383 = add nsw i64 %373, %382
  %384 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 32
  %385 = load i16, i16* %384, align 16
  %386 = sext i16 %385 to i64
  %387 = sub nsw i32 32, %.05
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i16, i16* %1, i64 %388
  %390 = load i16, i16* %389, align 2
  %391 = sext i16 %390 to i64
  %392 = mul nsw i64 %386, %391
  %393 = add nsw i64 %383, %392
  %394 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 33
  %395 = load i16, i16* %394, align 2
  %396 = sext i16 %395 to i64
  %397 = sub nsw i32 33, %.05
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i16, i16* %1, i64 %398
  %400 = load i16, i16* %399, align 2
  %401 = sext i16 %400 to i64
  %402 = mul nsw i64 %396, %401
  %403 = add nsw i64 %393, %402
  %404 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 34
  %405 = load i16, i16* %404, align 4
  %406 = sext i16 %405 to i64
  %407 = sub nsw i32 34, %.05
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i16, i16* %1, i64 %408
  %410 = load i16, i16* %409, align 2
  %411 = sext i16 %410 to i64
  %412 = mul nsw i64 %406, %411
  %413 = add nsw i64 %403, %412
  %414 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 35
  %415 = load i16, i16* %414, align 2
  %416 = sext i16 %415 to i64
  %417 = sub nsw i32 35, %.05
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i16, i16* %1, i64 %418
  %420 = load i16, i16* %419, align 2
  %421 = sext i16 %420 to i64
  %422 = mul nsw i64 %416, %421
  %423 = add nsw i64 %413, %422
  %424 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 36
  %425 = load i16, i16* %424, align 8
  %426 = sext i16 %425 to i64
  %427 = sub nsw i32 36, %.05
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i16, i16* %1, i64 %428
  %430 = load i16, i16* %429, align 2
  %431 = sext i16 %430 to i64
  %432 = mul nsw i64 %426, %431
  %433 = add nsw i64 %423, %432
  %434 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 37
  %435 = load i16, i16* %434, align 2
  %436 = sext i16 %435 to i64
  %437 = sub nsw i32 37, %.05
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i16, i16* %1, i64 %438
  %440 = load i16, i16* %439, align 2
  %441 = sext i16 %440 to i64
  %442 = mul nsw i64 %436, %441
  %443 = add nsw i64 %433, %442
  %444 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 38
  %445 = load i16, i16* %444, align 4
  %446 = sext i16 %445 to i64
  %447 = sub nsw i32 38, %.05
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i16, i16* %1, i64 %448
  %450 = load i16, i16* %449, align 2
  %451 = sext i16 %450 to i64
  %452 = mul nsw i64 %446, %451
  %453 = add nsw i64 %443, %452
  %454 = getelementptr inbounds [40 x i16], [40 x i16]* %5, i64 0, i64 39
  %455 = load i16, i16* %454, align 2
  %456 = sext i16 %455 to i64
  %457 = sub nsw i32 39, %.05
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i16, i16* %1, i64 %458
  %460 = load i16, i16* %459, align 2
  %461 = sext i16 %460 to i64
  %462 = mul nsw i64 %456, %461
  %463 = add nsw i64 %453, %462
  %464 = icmp sgt i64 %463, %.09
  br i1 %464, label %465, label %467

465:                                              ; preds = %64
  %466 = trunc i32 %.05 to i16
  br label %467

467:                                              ; preds = %465, %64
  %.110 = phi i64 [ %463, %465 ], [ %.09, %64 ]
  %.17 = phi i16 [ %466, %465 ], [ %.06, %64 ]
  br label %468

468:                                              ; preds = %467
  %469 = add nuw nsw i32 %.05, 1
  br label %62, !llvm.loop !7

470:                                              ; preds = %62
  store i16 %.06, i16* %3, align 2
  %471 = shl i64 %.09, 1
  %472 = icmp slt i32 %.01, 101
  br i1 %472, label %473, label %476

473:                                              ; preds = %470
  %474 = icmp sgt i32 %.01, -101
  br i1 %474, label %475, label %476

475:                                              ; preds = %473
  br label %477

476:                                              ; preds = %473, %470
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 165, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

477:                                              ; preds = %475
  %478 = sub nsw i32 6, %.01
  %479 = zext i32 %478 to i64
  %480 = ashr i64 %471, %479
  %481 = icmp slt i16 %.06, 121
  br i1 %481, label %482, label %485

482:                                              ; preds = %477
  %483 = icmp sgt i16 %.06, 39
  br i1 %483, label %484, label %485

484:                                              ; preds = %482
  br label %486

485:                                              ; preds = %482, %477
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 168, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.Calculation_of_the_LTP_parameters, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

486:                                              ; preds = %484
  br label %487

487:                                              ; preds = %497, %486
  %.011 = phi i64 [ 0, %486 ], [ %500, %497 ]
  %.2 = phi i32 [ 0, %486 ], [ %501, %497 ]
  %488 = icmp ult i32 %.2, 40
  br i1 %488, label %489, label %502

489:                                              ; preds = %487
  %490 = sext i16 %.06 to i32
  %491 = sub nsw i32 %.2, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i16, i16* %1, i64 %492
  %494 = load i16, i16* %493, align 2
  %495 = sext i16 %494 to i32
  %496 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %495, i32 noundef 3) #4
  br label %497

497:                                              ; preds = %489
  %498 = sext i32 %496 to i64
  %499 = mul nsw i64 %498, %498
  %500 = add nuw nsw i64 %.011, %499
  %501 = add nuw nsw i32 %.2, 1
  br label %487, !llvm.loop !8

502:                                              ; preds = %487
  %503 = shl nuw i64 %.011, 1
  %504 = icmp slt i64 %480, 1
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  store i16 0, i16* %2, align 2
  br label %533

506:                                              ; preds = %502
  %.not = icmp slt i64 %480, %503
  br i1 %.not, label %508, label %507

507:                                              ; preds = %506
  store i16 3, i16* %2, align 2
  br label %533

508:                                              ; preds = %506
  %509 = call signext i16 @gsm_norm(i64 noundef %503) #4
  %510 = sext i16 %509 to i64
  %511 = and i64 %510, 4294967295
  %512 = shl i64 %480, %511
  %513 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %512, i32 noundef 16) #4
  %514 = sext i16 %509 to i64
  %515 = and i64 %514, 4294967295
  %516 = shl i64 %503, %515
  %517 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %516, i32 noundef 16) #4
  %518 = trunc i32 %517 to i16
  br label %519

519:                                              ; preds = %530, %508
  %.08 = phi i16 [ 0, %508 ], [ %531, %530 ]
  %520 = icmp slt i16 %.08, 3
  br i1 %520, label %521, label %.loopexit

521:                                              ; preds = %519
  %sext15 = shl i32 %513, 16
  %522 = ashr exact i32 %sext15, 16
  %523 = sext i16 %.08 to i64
  %524 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_DLB, i64 0, i64 %523
  %525 = load i16, i16* %524, align 2
  %526 = call signext i16 @gsm_mult(i16 noundef signext %518, i16 noundef signext %525) #4
  %527 = sext i16 %526 to i32
  %.not16 = icmp sgt i32 %522, %527
  br i1 %.not16, label %529, label %528

528:                                              ; preds = %521
  br label %532

529:                                              ; preds = %521
  br label %530

530:                                              ; preds = %529
  %531 = add i16 %.08, 1
  br label %519, !llvm.loop !9

.loopexit:                                        ; preds = %519
  br label %532

532:                                              ; preds = %.loopexit, %528
  store i16 %.08, i16* %2, align 2
  br label %533

533:                                              ; preds = %532, %507, %505
  ret void

UnifiedUnreachableBlock:                          ; preds = %485, %476, %46, %34
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @Long_term_analysis_filtering(i16 noundef signext %0, i16 noundef signext %1, i16* nocapture noundef readonly %2, i16* nocapture noundef readonly %3, i16* nocapture noundef %4, i16* nocapture noundef writeonly %5) #0 {
  %7 = sext i16 %0 to i32
  switch i32 %7, label %172 [
    i32 0, label %8
    i32 1, label %49
    i32 2, label %90
    i32 3, label %131
  ]

8:                                                ; preds = %6
  br label %9

9:                                                ; preds = %46, %8
  %.0 = phi i32 [ 0, %8 ], [ %47, %46 ]
  %10 = icmp ult i32 %.0, 40
  br i1 %10, label %11, label %48

11:                                               ; preds = %9
  %12 = sext i16 %1 to i32
  %13 = sub nsw i32 %.0, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %2, i64 %14
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i64
  %18 = mul nsw i64 %17, 3277
  %19 = add nsw i64 %18, 16384
  %20 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %19, i32 noundef 15) #4
  %21 = trunc i32 %20 to i16
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds i16, i16* %4, i64 %22
  store i16 %21, i16* %23, align 2
  %24 = zext i32 %.0 to i64
  %25 = getelementptr inbounds i16, i16* %3, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = sext i16 %26 to i64
  %28 = zext i32 %.0 to i64
  %29 = getelementptr inbounds i16, i16* %4, i64 %28
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i64
  %32 = sub nsw i64 %27, %31
  %33 = icmp sgt i64 %32, 32766
  br i1 %33, label %34, label %35

34:                                               ; preds = %11
  br label %41

35:                                               ; preds = %11
  %36 = icmp slt i64 %32, -32767
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  br label %39

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %37
  %40 = phi i64 [ -32768, %37 ], [ %32, %38 ]
  br label %41

41:                                               ; preds = %39, %34
  %42 = phi i64 [ 32767, %34 ], [ %40, %39 ]
  %43 = trunc i64 %42 to i16
  %44 = zext i32 %.0 to i64
  %45 = getelementptr inbounds i16, i16* %5, i64 %44
  store i16 %43, i16* %45, align 2
  br label %46

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !10

48:                                               ; preds = %9
  br label %172

49:                                               ; preds = %6
  br label %50

50:                                               ; preds = %87, %49
  %.1 = phi i32 [ 0, %49 ], [ %88, %87 ]
  %51 = icmp ult i32 %.1, 40
  br i1 %51, label %52, label %89

52:                                               ; preds = %50
  %53 = sext i16 %1 to i32
  %54 = sub nsw i32 %.1, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %2, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i64
  %59 = mul nsw i64 %58, 11469
  %60 = add nsw i64 %59, 16384
  %61 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %60, i32 noundef 15) #4
  %62 = trunc i32 %61 to i16
  %63 = zext i32 %.1 to i64
  %64 = getelementptr inbounds i16, i16* %4, i64 %63
  store i16 %62, i16* %64, align 2
  %65 = zext i32 %.1 to i64
  %66 = getelementptr inbounds i16, i16* %3, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i64
  %69 = zext i32 %.1 to i64
  %70 = getelementptr inbounds i16, i16* %4, i64 %69
  %71 = load i16, i16* %70, align 2
  %72 = sext i16 %71 to i64
  %73 = sub nsw i64 %68, %72
  %74 = icmp sgt i64 %73, 32766
  br i1 %74, label %75, label %76

75:                                               ; preds = %52
  br label %82

76:                                               ; preds = %52
  %77 = icmp slt i64 %73, -32767
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  br label %80

79:                                               ; preds = %76
  br label %80

80:                                               ; preds = %79, %78
  %81 = phi i64 [ -32768, %78 ], [ %73, %79 ]
  br label %82

82:                                               ; preds = %80, %75
  %83 = phi i64 [ 32767, %75 ], [ %81, %80 ]
  %84 = trunc i64 %83 to i16
  %85 = zext i32 %.1 to i64
  %86 = getelementptr inbounds i16, i16* %5, i64 %85
  store i16 %84, i16* %86, align 2
  br label %87

87:                                               ; preds = %82
  %88 = add nuw nsw i32 %.1, 1
  br label %50, !llvm.loop !11

89:                                               ; preds = %50
  br label %172

90:                                               ; preds = %6
  br label %91

91:                                               ; preds = %128, %90
  %.2 = phi i32 [ 0, %90 ], [ %129, %128 ]
  %92 = icmp ult i32 %.2, 40
  br i1 %92, label %93, label %130

93:                                               ; preds = %91
  %94 = sext i16 %1 to i32
  %95 = sub nsw i32 %.2, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i16, i16* %2, i64 %96
  %98 = load i16, i16* %97, align 2
  %99 = sext i16 %98 to i64
  %100 = mul nsw i64 %99, 21299
  %101 = add nsw i64 %100, 16384
  %102 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %101, i32 noundef 15) #4
  %103 = trunc i32 %102 to i16
  %104 = zext i32 %.2 to i64
  %105 = getelementptr inbounds i16, i16* %4, i64 %104
  store i16 %103, i16* %105, align 2
  %106 = zext i32 %.2 to i64
  %107 = getelementptr inbounds i16, i16* %3, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i64
  %110 = zext i32 %.2 to i64
  %111 = getelementptr inbounds i16, i16* %4, i64 %110
  %112 = load i16, i16* %111, align 2
  %113 = sext i16 %112 to i64
  %114 = sub nsw i64 %109, %113
  %115 = icmp sgt i64 %114, 32766
  br i1 %115, label %116, label %117

116:                                              ; preds = %93
  br label %123

117:                                              ; preds = %93
  %118 = icmp slt i64 %114, -32767
  br i1 %118, label %119, label %120

119:                                              ; preds = %117
  br label %121

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120, %119
  %122 = phi i64 [ -32768, %119 ], [ %114, %120 ]
  br label %123

123:                                              ; preds = %121, %116
  %124 = phi i64 [ 32767, %116 ], [ %122, %121 ]
  %125 = trunc i64 %124 to i16
  %126 = zext i32 %.2 to i64
  %127 = getelementptr inbounds i16, i16* %5, i64 %126
  store i16 %125, i16* %127, align 2
  br label %128

128:                                              ; preds = %123
  %129 = add nuw nsw i32 %.2, 1
  br label %91, !llvm.loop !12

130:                                              ; preds = %91
  br label %172

131:                                              ; preds = %6
  br label %132

132:                                              ; preds = %169, %131
  %.3 = phi i32 [ 0, %131 ], [ %170, %169 ]
  %133 = icmp ult i32 %.3, 40
  br i1 %133, label %134, label %171

134:                                              ; preds = %132
  %135 = sext i16 %1 to i32
  %136 = sub nsw i32 %.3, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %2, i64 %137
  %139 = load i16, i16* %138, align 2
  %140 = sext i16 %139 to i64
  %141 = mul nsw i64 %140, 32767
  %142 = add nsw i64 %141, 16384
  %143 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %142, i32 noundef 15) #4
  %144 = trunc i32 %143 to i16
  %145 = zext i32 %.3 to i64
  %146 = getelementptr inbounds i16, i16* %4, i64 %145
  store i16 %144, i16* %146, align 2
  %147 = zext i32 %.3 to i64
  %148 = getelementptr inbounds i16, i16* %3, i64 %147
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i64
  %151 = zext i32 %.3 to i64
  %152 = getelementptr inbounds i16, i16* %4, i64 %151
  %153 = load i16, i16* %152, align 2
  %154 = sext i16 %153 to i64
  %155 = sub nsw i64 %150, %154
  %156 = icmp sgt i64 %155, 32766
  br i1 %156, label %157, label %158

157:                                              ; preds = %134
  br label %164

158:                                              ; preds = %134
  %159 = icmp slt i64 %155, -32767
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  br label %162

161:                                              ; preds = %158
  br label %162

162:                                              ; preds = %161, %160
  %163 = phi i64 [ -32768, %160 ], [ %155, %161 ]
  br label %164

164:                                              ; preds = %162, %157
  %165 = phi i64 [ 32767, %157 ], [ %163, %162 ]
  %166 = trunc i64 %165 to i16
  %167 = zext i32 %.3 to i64
  %168 = getelementptr inbounds i16, i16* %5, i64 %167
  store i16 %166, i16* %168, align 2
  br label %169

169:                                              ; preds = %164
  %170 = add nuw nsw i32 %.3, 1
  br label %132, !llvm.loop !13

171:                                              ; preds = %132
  br label %172

172:                                              ; preds = %171, %130, %89, %48, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_Long_Term_Synthesis_Filtering(%struct.gsm_state* nocapture noundef %0, i16 noundef signext %1, i16 noundef signext %2, i16* nocapture noundef readonly %3, i16* nocapture noundef %4) #0 {
  %6 = icmp slt i16 %1, 40
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = icmp sgt i16 %1, 120
  br i1 %8, label %9, label %12

9:                                                ; preds = %7, %5
  %10 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 7
  %11 = load i16, i16* %10, align 2
  br label %13

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %9
  %.in = phi i16 [ %11, %9 ], [ %1, %12 ]
  %14 = getelementptr inbounds %struct.gsm_state, %struct.gsm_state* %0, i64 0, i32 7
  store i16 %.in, i16* %14, align 2
  %15 = icmp sgt i16 %.in, 39
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = icmp slt i16 %.in, 121
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  br label %20

19:                                               ; preds = %16, %13
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 581, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %18
  %21 = sext i16 %2 to i64
  %22 = getelementptr inbounds [4 x i16], [4 x i16]* @gsm_QLB, i64 0, i64 %21
  %23 = load i16, i16* %22, align 2
  %.not = icmp eq i16 %23, -32768
  br i1 %.not, label %25, label %24

24:                                               ; preds = %20
  br label %26

25:                                               ; preds = %20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0), i32 noundef 590, i8* noundef getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.Gsm_Long_Term_Synthesis_Filtering, i64 0, i64 0)) #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %58, %26
  %.0 = phi i32 [ 0, %26 ], [ %59, %58 ]
  %28 = icmp ult i32 %.0, 40
  br i1 %28, label %29, label %60

29:                                               ; preds = %27
  %30 = sext i16 %23 to i64
  %31 = sext i16 %.in to i32
  %32 = sub nsw i32 %.0, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %4, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i64
  %37 = mul nsw i64 %30, %36
  %38 = add nsw i64 %37, 16384
  %39 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %38, i32 noundef 15) #4
  %40 = zext i32 %39 to i64
  %41 = zext i32 %.0 to i64
  %42 = getelementptr inbounds i16, i16* %3, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i64
  %sext = shl i64 %40, 48
  %45 = ashr exact i64 %sext, 48
  %46 = add nsw i64 %45, %44
  %47 = add nsw i64 %46, -32768
  %48 = icmp ult i64 %47, -65536
  br i1 %48, label %49, label %52

49:                                               ; preds = %29
  %50 = icmp sgt i64 %46, 0
  %51 = select i1 %50, i64 32767, i64 -32768
  br label %53

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i64 [ %51, %49 ], [ %46, %52 ]
  %55 = trunc i64 %54 to i16
  %56 = zext i32 %.0 to i64
  %57 = getelementptr inbounds i16, i16* %4, i64 %56
  store i16 %55, i16* %57, align 2
  br label %58

58:                                               ; preds = %53
  %59 = add nuw nsw i32 %.0, 1
  br label %27, !llvm.loop !14

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %71, %60
  %.1 = phi i32 [ 0, %60 ], [ %72, %71 ]
  %62 = icmp ult i32 %.1, 120
  br i1 %62, label %63, label %73

63:                                               ; preds = %61
  %64 = add nsw i32 %.1, -80
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i16, i16* %4, i64 %65
  %67 = load i16, i16* %66, align 2
  %68 = add nsw i32 %.1, -120
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i16, i16* %4, i64 %69
  store i16 %67, i16* %70, align 2
  br label %71

71:                                               ; preds = %63
  %72 = add nuw nsw i32 %.1, 1
  br label %61, !llvm.loop !15

73:                                               ; preds = %61
  ret void

UnifiedUnreachableBlock:                          ; preds = %25, %19
  unreachable
}

declare dso_local i32 @SASR(...) #2

declare dso_local signext i16 @gsm_norm(i64 noundef) #2

declare dso_local signext i16 @gsm_mult(i16 noundef signext, i16 noundef signext) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }

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
