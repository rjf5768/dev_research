; ModuleID = './rpe.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mediabench/gsm/toast/rpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }
%_wyvern_thunk_type.4 = type { i16* (%_wyvern_thunk_type.4*)*, i16*, i1 }
%_wyvern_thunk_type.2 = type { i16* (%_wyvern_thunk_type.2*)*, i16*, i1 }
%_wyvern_thunk_type.0 = type { i16* (%_wyvern_thunk_type.0*)*, i16*, i1 }

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
define dso_local void @Gsm_RPE_Encoding(%struct.gsm_state* nocapture noundef readnone %0, i16* nocapture noundef %1, i16* nocapture noundef writeonly %2, i16* nocapture noundef %3, i16* nocapture noundef %4) #0 {
  %_wyvern_thunk_alloca4 = alloca %_wyvern_thunk_type.4, align 8
  %_wyvern_thunk_alloca1 = alloca %_wyvern_thunk_type.2, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %6 = alloca [40 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %_wyvern_thunk_fptr_gep2 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.2*)* @_wyvern_slice_memo_Gsm_RPE_Encoding_117370785, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_gep2, align 8
  %_wyvern_thunk_flag_gep3 = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunk_alloca1, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep3, align 8
  call void @_wyvern_calleeclone_Weighting_filter_1495601301(i16* noundef %1, %_wyvern_thunk_type.2* noundef nonnull %_wyvern_thunk_alloca1)
  %10 = getelementptr inbounds [40 x i16], [40 x i16]* %6, i64 0, i64 0
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_Gsm_RPE_Encoding_961080237, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  call void @_wyvern_calleeclone_RPE_grid_selection_1925396616(i16* noundef nonnull %10, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i16* noundef %3)
  %_wyvern_thunk_fptr_gep5 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca4, i64 0, i32 0
  store i16* (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_Gsm_RPE_Encoding_580154018, i16* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep5, align 8
  %_wyvern_thunk_flag_gep6 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca4, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep6, align 8
  call void @_wyvern_calleeclone_APCM_quantization_0556796942(%_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca4, i16* noundef %4, i16* noundef nonnull %8, i16* noundef nonnull %9, i16* noundef %2)
  %11 = load i16, i16* %8, align 2
  %12 = load i16, i16* %9, align 2
  %13 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0
  call void @APCM_inverse_quantization(i16* noundef %4, i16 noundef signext %11, i16 noundef signext %12, i16* noundef nonnull %13)
  %14 = load i16, i16* %3, align 2
  %15 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0
  call void @RPE_grid_positioning(i16 noundef signext %14, i16* noundef nonnull %15, i16* noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Weighting_filter(i16* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds i16, i16* %0, i64 -5
  br label %4

4:                                                ; preds = %83, %2
  %.0 = phi i32 [ 0, %2 ], [ %84, %83 ]
  %5 = icmp ult i32 %.0, 40
  br i1 %5, label %6, label %85

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i16, i16* %3, i64 %7
  %9 = load i16, i16* %8, align 2
  %10 = sext i16 %9 to i64
  %11 = mul nsw i64 %10, -134
  %12 = add nuw nsw i32 %.0, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i16, i16* %3, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = sext i16 %15 to i64
  %17 = mul nsw i64 %16, -374
  %18 = add nsw i64 %11, %17
  %19 = add nuw nsw i32 %.0, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, i16* %3, i64 %20
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i64
  %24 = mul nsw i64 %23, 2054
  %25 = add nsw i64 %18, %24
  %26 = add nuw nsw i32 %.0, 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %3, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i64
  %31 = mul nsw i64 %30, 5741
  %32 = add nsw i64 %25, %31
  %33 = add nuw nsw i32 %.0, 5
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %3, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i64
  %38 = shl nsw i64 %37, 13
  %39 = add nsw i64 %32, %38
  %40 = add nuw nsw i32 %.0, 6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, i16* %3, i64 %41
  %43 = load i16, i16* %42, align 2
  %44 = sext i16 %43 to i64
  %45 = mul nsw i64 %44, 5741
  %46 = add nsw i64 %39, %45
  %47 = add nuw nsw i32 %.0, 7
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %3, i64 %48
  %50 = load i16, i16* %49, align 2
  %51 = sext i16 %50 to i64
  %52 = mul nsw i64 %51, 2054
  %53 = add nsw i64 %46, %52
  %54 = add nuw nsw i32 %.0, 9
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %3, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = sext i16 %57 to i64
  %59 = mul nsw i64 %58, -374
  %60 = add nsw i64 %53, %59
  %61 = add nuw nsw i32 %.0, 10
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %3, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i64
  %66 = mul nsw i64 %65, -134
  %67 = add nsw i64 %60, %66
  %68 = add nsw i64 %67, 4096
  %69 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %68, i32 noundef 13) #4
  %70 = trunc i32 %69 to i16
  %71 = icmp slt i32 %69, -32768
  br i1 %71, label %72, label %73

72:                                               ; preds = %6
  br label %79

73:                                               ; preds = %6
  %74 = icmp sgt i32 %69, 32767
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  br label %77

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %76, %75
  %78 = phi i16 [ 32767, %75 ], [ %70, %76 ]
  br label %79

79:                                               ; preds = %77, %72
  %80 = phi i16 [ -32768, %72 ], [ %78, %77 ]
  %81 = zext i32 %.0 to i64
  %82 = getelementptr inbounds i16, i16* %1, i64 %81
  store i16 %80, i16* %82, align 2
  br label %83

83:                                               ; preds = %79
  %84 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

85:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @RPE_grid_selection(i16* noundef readonly %0, i16* nocapture noundef writeonly %1, i16* nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds i16, i16* %0, i64 3
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %6, i32 noundef 2) #4
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, %8
  %10 = getelementptr inbounds i16, i16* %0, i64 6
  %11 = load i16, i16* %10, align 2
  %12 = sext i16 %11 to i32
  %13 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %12, i32 noundef 2) #4
  %14 = sext i32 %13 to i64
  %15 = mul nsw i64 %14, %14
  %16 = add nuw nsw i64 %9, %15
  %17 = getelementptr inbounds i16, i16* %0, i64 9
  %18 = load i16, i16* %17, align 2
  %19 = sext i16 %18 to i32
  %20 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %19, i32 noundef 2) #4
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, %21
  %23 = add nuw nsw i64 %16, %22
  %24 = getelementptr inbounds i16, i16* %0, i64 12
  %25 = load i16, i16* %24, align 2
  %26 = sext i16 %25 to i32
  %27 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %26, i32 noundef 2) #4
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, %28
  %30 = add nuw nsw i64 %23, %29
  %31 = getelementptr inbounds i16, i16* %0, i64 15
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %33, i32 noundef 2) #4
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, %35
  %37 = add nuw nsw i64 %30, %36
  %38 = getelementptr inbounds i16, i16* %0, i64 18
  %39 = load i16, i16* %38, align 2
  %40 = sext i16 %39 to i32
  %41 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %40, i32 noundef 2) #4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %42
  %44 = add nuw nsw i64 %37, %43
  %45 = getelementptr inbounds i16, i16* %0, i64 21
  %46 = load i16, i16* %45, align 2
  %47 = sext i16 %46 to i32
  %48 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %47, i32 noundef 2) #4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %49
  %51 = add nuw nsw i64 %44, %50
  %52 = getelementptr inbounds i16, i16* %0, i64 24
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %54, i32 noundef 2) #4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %56
  %58 = add nsw i64 %51, %57
  %59 = getelementptr inbounds i16, i16* %0, i64 27
  %60 = load i16, i16* %59, align 2
  %61 = sext i16 %60 to i32
  %62 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %61, i32 noundef 2) #4
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, %63
  %65 = add nsw i64 %58, %64
  %66 = getelementptr inbounds i16, i16* %0, i64 30
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %68, i32 noundef 2) #4
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %70, %70
  %72 = add nsw i64 %65, %71
  %73 = getelementptr inbounds i16, i16* %0, i64 33
  %74 = load i16, i16* %73, align 2
  %75 = sext i16 %74 to i32
  %76 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %75, i32 noundef 2) #4
  %77 = sext i32 %76 to i64
  %78 = mul nsw i64 %77, %77
  %79 = add nsw i64 %72, %78
  %80 = getelementptr inbounds i16, i16* %0, i64 36
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %82, i32 noundef 2) #4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %84, %84
  %86 = add nsw i64 %79, %85
  %87 = load i16, i16* %0, align 2
  %88 = sext i16 %87 to i32
  %89 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %88, i32 noundef 2) #4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, %90
  %92 = add nsw i64 %86, %91
  %93 = shl i64 %92, 1
  %94 = getelementptr inbounds i16, i16* %0, i64 1
  %95 = load i16, i16* %94, align 2
  %96 = sext i16 %95 to i32
  %97 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %96, i32 noundef 2) #4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %98, %98
  %100 = getelementptr inbounds i16, i16* %0, i64 4
  %101 = load i16, i16* %100, align 2
  %102 = sext i16 %101 to i32
  %103 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %102, i32 noundef 2) #4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %104, %104
  %106 = add nuw nsw i64 %99, %105
  %107 = getelementptr inbounds i16, i16* %0, i64 7
  %108 = load i16, i16* %107, align 2
  %109 = sext i16 %108 to i32
  %110 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %109, i32 noundef 2) #4
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %111, %111
  %113 = add nuw nsw i64 %106, %112
  %114 = getelementptr inbounds i16, i16* %0, i64 10
  %115 = load i16, i16* %114, align 2
  %116 = sext i16 %115 to i32
  %117 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %116, i32 noundef 2) #4
  %118 = sext i32 %117 to i64
  %119 = mul nsw i64 %118, %118
  %120 = add nuw nsw i64 %113, %119
  %121 = getelementptr inbounds i16, i16* %0, i64 13
  %122 = load i16, i16* %121, align 2
  %123 = sext i16 %122 to i32
  %124 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %123, i32 noundef 2) #4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %125
  %127 = add nuw nsw i64 %120, %126
  %128 = getelementptr inbounds i16, i16* %0, i64 16
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %130, i32 noundef 2) #4
  %132 = sext i32 %131 to i64
  %133 = mul nsw i64 %132, %132
  %134 = add nuw nsw i64 %127, %133
  %135 = getelementptr inbounds i16, i16* %0, i64 19
  %136 = load i16, i16* %135, align 2
  %137 = sext i16 %136 to i32
  %138 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %137, i32 noundef 2) #4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, %139
  %141 = add nuw nsw i64 %134, %140
  %142 = getelementptr inbounds i16, i16* %0, i64 22
  %143 = load i16, i16* %142, align 2
  %144 = sext i16 %143 to i32
  %145 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %144, i32 noundef 2) #4
  %146 = sext i32 %145 to i64
  %147 = mul nsw i64 %146, %146
  %148 = add nsw i64 %141, %147
  %149 = getelementptr inbounds i16, i16* %0, i64 25
  %150 = load i16, i16* %149, align 2
  %151 = sext i16 %150 to i32
  %152 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %151, i32 noundef 2) #4
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %153
  %155 = add nsw i64 %148, %154
  %156 = getelementptr inbounds i16, i16* %0, i64 28
  %157 = load i16, i16* %156, align 2
  %158 = sext i16 %157 to i32
  %159 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %158, i32 noundef 2) #4
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %160, %160
  %162 = add nsw i64 %155, %161
  %163 = getelementptr inbounds i16, i16* %0, i64 31
  %164 = load i16, i16* %163, align 2
  %165 = sext i16 %164 to i32
  %166 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %165, i32 noundef 2) #4
  %167 = sext i32 %166 to i64
  %168 = mul nsw i64 %167, %167
  %169 = add nsw i64 %162, %168
  %170 = getelementptr inbounds i16, i16* %0, i64 34
  %171 = load i16, i16* %170, align 2
  %172 = sext i16 %171 to i32
  %173 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %172, i32 noundef 2) #4
  %174 = sext i32 %173 to i64
  %175 = mul nsw i64 %174, %174
  %176 = add nsw i64 %169, %175
  %177 = getelementptr inbounds i16, i16* %0, i64 37
  %178 = load i16, i16* %177, align 2
  %179 = sext i16 %178 to i32
  %180 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %179, i32 noundef 2) #4
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 %181, %181
  %183 = add nsw i64 %176, %182
  %184 = shl i64 %183, 1
  %185 = icmp sgt i64 %184, %93
  br i1 %185, label %186, label %187

186:                                              ; preds = %3
  br label %187

187:                                              ; preds = %186, %3
  %.01 = phi i64 [ %184, %186 ], [ %93, %3 ]
  %.0 = phi i16 [ 1, %186 ], [ 0, %3 ]
  %188 = getelementptr inbounds i16, i16* %0, i64 2
  %189 = load i16, i16* %188, align 2
  %190 = sext i16 %189 to i32
  %191 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %190, i32 noundef 2) #4
  %192 = sext i32 %191 to i64
  %193 = mul nsw i64 %192, %192
  %194 = getelementptr inbounds i16, i16* %0, i64 5
  %195 = load i16, i16* %194, align 2
  %196 = sext i16 %195 to i32
  %197 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %196, i32 noundef 2) #4
  %198 = sext i32 %197 to i64
  %199 = mul nsw i64 %198, %198
  %200 = add nuw nsw i64 %193, %199
  %201 = getelementptr inbounds i16, i16* %0, i64 8
  %202 = load i16, i16* %201, align 2
  %203 = sext i16 %202 to i32
  %204 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %203, i32 noundef 2) #4
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 %205, %205
  %207 = add nuw nsw i64 %200, %206
  %208 = getelementptr inbounds i16, i16* %0, i64 11
  %209 = load i16, i16* %208, align 2
  %210 = sext i16 %209 to i32
  %211 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %210, i32 noundef 2) #4
  %212 = sext i32 %211 to i64
  %213 = mul nsw i64 %212, %212
  %214 = add nuw nsw i64 %207, %213
  %215 = getelementptr inbounds i16, i16* %0, i64 14
  %216 = load i16, i16* %215, align 2
  %217 = sext i16 %216 to i32
  %218 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %217, i32 noundef 2) #4
  %219 = sext i32 %218 to i64
  %220 = mul nsw i64 %219, %219
  %221 = add nuw nsw i64 %214, %220
  %222 = getelementptr inbounds i16, i16* %0, i64 17
  %223 = load i16, i16* %222, align 2
  %224 = sext i16 %223 to i32
  %225 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %224, i32 noundef 2) #4
  %226 = sext i32 %225 to i64
  %227 = mul nsw i64 %226, %226
  %228 = add nuw nsw i64 %221, %227
  %229 = getelementptr inbounds i16, i16* %0, i64 20
  %230 = load i16, i16* %229, align 2
  %231 = sext i16 %230 to i32
  %232 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %231, i32 noundef 2) #4
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %233, %233
  %235 = add nuw nsw i64 %228, %234
  %236 = getelementptr inbounds i16, i16* %0, i64 23
  %237 = load i16, i16* %236, align 2
  %238 = sext i16 %237 to i32
  %239 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %238, i32 noundef 2) #4
  %240 = sext i32 %239 to i64
  %241 = mul nsw i64 %240, %240
  %242 = add nsw i64 %235, %241
  %243 = getelementptr inbounds i16, i16* %0, i64 26
  %244 = load i16, i16* %243, align 2
  %245 = sext i16 %244 to i32
  %246 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %245, i32 noundef 2) #4
  %247 = sext i32 %246 to i64
  %248 = mul nsw i64 %247, %247
  %249 = add nsw i64 %242, %248
  %250 = getelementptr inbounds i16, i16* %0, i64 29
  %251 = load i16, i16* %250, align 2
  %252 = sext i16 %251 to i32
  %253 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %252, i32 noundef 2) #4
  %254 = sext i32 %253 to i64
  %255 = mul nsw i64 %254, %254
  %256 = add nsw i64 %249, %255
  %257 = getelementptr inbounds i16, i16* %0, i64 32
  %258 = load i16, i16* %257, align 2
  %259 = sext i16 %258 to i32
  %260 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %259, i32 noundef 2) #4
  %261 = sext i32 %260 to i64
  %262 = mul nsw i64 %261, %261
  %263 = add nsw i64 %256, %262
  %264 = getelementptr inbounds i16, i16* %0, i64 35
  %265 = load i16, i16* %264, align 2
  %266 = sext i16 %265 to i32
  %267 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %266, i32 noundef 2) #4
  %268 = sext i32 %267 to i64
  %269 = mul nsw i64 %268, %268
  %270 = add nsw i64 %263, %269
  %271 = getelementptr inbounds i16, i16* %0, i64 38
  %272 = load i16, i16* %271, align 2
  %273 = sext i16 %272 to i32
  %274 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %273, i32 noundef 2) #4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %275, %275
  %277 = add nsw i64 %270, %276
  %278 = shl i64 %277, 1
  %279 = icmp sgt i64 %278, %.01
  br i1 %279, label %280, label %281

280:                                              ; preds = %187
  br label %281

281:                                              ; preds = %280, %187
  %.12 = phi i64 [ %278, %280 ], [ %.01, %187 ]
  %.1 = phi i16 [ 2, %280 ], [ %.0, %187 ]
  %282 = getelementptr inbounds i16, i16* %0, i64 39
  %283 = load i16, i16* %282, align 2
  %284 = sext i16 %283 to i32
  %285 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %284, i32 noundef 2) #4
  %286 = sext i32 %285 to i64
  %287 = mul nsw i64 %286, %286
  %288 = add nsw i64 %86, %287
  %289 = shl i64 %288, 1
  %290 = icmp sgt i64 %289, %.12
  br i1 %290, label %291, label %292

291:                                              ; preds = %281
  br label %292

292:                                              ; preds = %291, %281
  %.2 = phi i16 [ 3, %291 ], [ %.1, %281 ]
  br label %293

293:                                              ; preds = %304, %292
  %.03 = phi i32 [ 0, %292 ], [ %305, %304 ]
  %294 = icmp ult i32 %.03, 13
  br i1 %294, label %295, label %306

295:                                              ; preds = %293
  %296 = sext i16 %.2 to i32
  %297 = mul nsw i32 %.03, 3
  %298 = add nsw i32 %297, %296
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i16, i16* %0, i64 %299
  %301 = load i16, i16* %300, align 2
  %302 = zext i32 %.03 to i64
  %303 = getelementptr inbounds i16, i16* %1, i64 %302
  store i16 %301, i16* %303, align 2
  br label %304

304:                                              ; preds = %295
  %305 = add nuw nsw i32 %.03, 1
  br label %293, !llvm.loop !6

306:                                              ; preds = %293
  store i16 %.2, i16* %2, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_quantization(i16* nocapture noundef readonly %0, i16* nocapture noundef writeonly %1, i16* nocapture noundef writeonly %2, i16* nocapture noundef writeonly %3, i16* nocapture noundef writeonly %4) #0 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  br label %8

8:                                                ; preds = %28, %5
  %.03 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %.01 = phi i16 [ 0, %5 ], [ %.1, %28 ]
  %9 = icmp ult i32 %.03, 13
  br i1 %9, label %10, label %30

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds i16, i16* %0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = icmp slt i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = icmp eq i16 %13, -32768
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  %19 = sub i16 0, %13
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i16 [ 32767, %17 ], [ %19, %18 ]
  br label %23

22:                                               ; preds = %10
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i16 [ %21, %20 ], [ %13, %22 ]
  %25 = icmp sgt i16 %24, %.01
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %23
  %.1 = phi i16 [ %24, %26 ], [ %.01, %23 ]
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.03, 1
  br label %8, !llvm.loop !7

30:                                               ; preds = %8
  store i16 0, i16* %6, align 2
  %31 = sext i16 %.01 to i32
  %32 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %31, i32 noundef 9) #4
  br label %33

33:                                               ; preds = %52, %30
  %.14 = phi i32 [ 0, %30 ], [ %53, %52 ]
  %.02 = phi i32 [ 0, %30 ], [ %39, %52 ]
  %.0.in = phi i32 [ %32, %30 ], [ %41, %52 ]
  %34 = icmp ult i32 %.14, 6
  br i1 %34, label %35, label %54

35:                                               ; preds = %33
  %36 = trunc i32 %.0.in to i16
  %37 = icmp slt i16 %36, 1
  %38 = zext i1 %37 to i32
  %39 = or i32 %.02, %38
  %sext8 = shl i32 %.0.in, 16
  %40 = ashr exact i32 %sext8, 16
  %41 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %40, i32 noundef 1) #4
  %42 = load i16, i16* %6, align 2
  %43 = icmp slt i16 %42, 6
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %46

45:                                               ; preds = %35
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

46:                                               ; preds = %44
  %47 = icmp eq i32 %39, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i16, i16* %6, align 2
  %50 = add i16 %49, 1
  store i16 %50, i16* %6, align 2
  br label %51

51:                                               ; preds = %48, %46
  br label %52

52:                                               ; preds = %51
  %53 = add nuw nsw i32 %.14, 1
  br label %33, !llvm.loop !8

54:                                               ; preds = %33
  %55 = load i16, i16* %6, align 2
  %56 = icmp slt i16 %55, 7
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i16, i16* %6, align 2
  %59 = icmp sgt i16 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %62

61:                                               ; preds = %57, %54
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %60
  %63 = load i16, i16* %6, align 2
  %64 = add i16 %63, 5
  %65 = icmp slt i16 %64, 12
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = icmp sgt i16 %64, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  br label %70

69:                                               ; preds = %66, %62
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %68
  %71 = sext i16 %.01 to i32
  %72 = sext i16 %64 to i32
  %73 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %71, i32 noundef %72) #4
  %74 = trunc i32 %73 to i16
  %75 = load i16, i16* %6, align 2
  %76 = shl i16 %75, 3
  %77 = call signext i16 @gsm_add(i16 noundef signext %74, i16 noundef signext %76) #4
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %77, i16* noundef nonnull %6, i16* noundef nonnull %7)
  %78 = load i16, i16* %6, align 2
  %79 = icmp slt i16 %78, 4097
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = load i16, i16* %6, align 2
  %82 = icmp sgt i16 %81, -4097
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80, %70
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %83
  %86 = load i16, i16* %7, align 2
  %87 = icmp sgt i16 %86, -1
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i16, i16* %7, align 2
  %90 = icmp slt i16 %89, 8
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %93

92:                                               ; preds = %88, %85
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

93:                                               ; preds = %91
  %94 = load i16, i16* %6, align 2
  %95 = sub i16 6, %94
  %96 = load i16, i16* %7, align 2
  %97 = sext i16 %96 to i64
  %98 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_NRFAC, i64 0, i64 %97
  %99 = load i16, i16* %98, align 2
  br label %100

100:                                              ; preds = %126, %93
  %.2 = phi i32 [ 0, %93 ], [ %127, %126 ]
  %101 = icmp ult i32 %.2, 13
  br i1 %101, label %102, label %128

102:                                              ; preds = %100
  %103 = icmp sgt i16 %95, -1
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp slt i16 %95, 16
  br i1 %105, label %106, label %107

106:                                              ; preds = %104
  br label %108

107:                                              ; preds = %104, %102
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %106
  %109 = zext i32 %.2 to i64
  %110 = getelementptr inbounds i16, i16* %0, i64 %109
  %111 = load i16, i16* %110, align 2
  %112 = zext i16 %111 to i32
  %113 = zext i16 %95 to i32
  %114 = shl i32 %112, %113
  %115 = zext i32 %114 to i64
  %sext = shl i64 %115, 48
  %116 = ashr exact i64 %sext, 48
  %117 = sext i16 %99 to i64
  %118 = mul nsw i64 %116, %117
  %119 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %118, i32 noundef 15) #4
  %sext5 = shl i32 %119, 16
  %120 = ashr exact i32 %sext5, 16
  %121 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %120, i32 noundef 12) #4
  %122 = trunc i32 %121 to i16
  %123 = add i16 %122, 4
  %124 = zext i32 %.2 to i64
  %125 = getelementptr inbounds i16, i16* %1, i64 %124
  store i16 %123, i16* %125, align 2
  br label %126

126:                                              ; preds = %108
  %127 = add nuw nsw i32 %.2, 1
  br label %100, !llvm.loop !9

128:                                              ; preds = %100
  %129 = load i16, i16* %7, align 2
  store i16 %129, i16* %2, align 2
  %130 = load i16, i16* %6, align 2
  store i16 %130, i16* %3, align 2
  store i16 %77, i16* %4, align 2
  ret void

UnifiedUnreachableBlock:                          ; preds = %107, %92, %84, %69, %61, %45
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_inverse_quantization(i16* nocapture noundef readonly %0, i16 noundef signext %1, i16 noundef signext %2, i16* nocapture noundef writeonly %3) #0 {
  %5 = icmp sgt i16 %1, -1
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = icmp slt i16 %1, 8
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  br label %10

9:                                                ; preds = %6, %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 364, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %8
  %11 = sext i16 %1 to i64
  %12 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_FAC, i64 0, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = call signext i16 @gsm_sub(i16 noundef signext 6, i16 noundef signext %2) #4
  %15 = call signext i16 @gsm_sub(i16 noundef signext %14, i16 noundef signext 1) #4
  %16 = sext i16 %15 to i32
  %17 = call signext i16 @gsm_asl(i16 noundef signext 1, i32 noundef %16) #4
  br label %18

18:                                               ; preds = %55, %10
  %.02 = phi i16* [ %3, %10 ], [ %60, %55 ]
  %.01 = phi i32 [ 13, %10 ], [ %19, %55 ]
  %.0 = phi i16* [ %0, %10 ], [ %29, %55 ]
  %19 = add nsw i32 %.01, -1
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %61, label %20

20:                                               ; preds = %18
  %21 = load i16, i16* %.0, align 2
  %22 = icmp slt i16 %21, 8
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i16, i16* %.0, align 2
  %25 = icmp sgt i16 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23, %20
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 372, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %26
  %29 = getelementptr inbounds i16, i16* %.0, i64 1
  %30 = load i16, i16* %.0, align 2
  %31 = shl i16 %30, 1
  %32 = add i16 %31, -7
  %33 = icmp slt i16 %32, 8
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = icmp ult i16 %31, -32761
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  br label %38

37:                                               ; preds = %34, %28
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 376, i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.APCM_inverse_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %36
  %39 = shl i16 %32, 12
  %40 = sext i16 %13 to i64
  %41 = sext i16 %39 to i64
  %42 = mul nsw i64 %40, %41
  %43 = add nsw i64 %42, 16384
  %44 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %43, i32 noundef 15) #4
  %45 = zext i32 %44 to i64
  %sext = shl i64 %45, 48
  %46 = ashr exact i64 %sext, 48
  %47 = sext i16 %17 to i64
  %48 = add nsw i64 %46, %47
  %49 = add nsw i64 %48, -32768
  %50 = icmp ult i64 %49, -65536
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = icmp sgt i64 %48, 0
  %53 = select i1 %52, i64 32767, i64 -32768
  br label %55

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i64 [ %53, %51 ], [ %48, %54 ]
  %57 = trunc i64 %56 to i16
  %58 = sext i16 %14 to i32
  %59 = call signext i16 @gsm_asr(i16 noundef signext %57, i32 noundef %58) #4
  %60 = getelementptr inbounds i16, i16* %.02, i64 1
  store i16 %59, i16* %.02, align 2
  br label %18, !llvm.loop !10

61:                                               ; preds = %18
  ret void

UnifiedUnreachableBlock:                          ; preds = %37, %27, %9
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @RPE_grid_positioning(i16 noundef signext %0, i16* nocapture noundef readonly %1, i16* nocapture noundef writeonly %2) #0 {
  %4 = icmp sgt i16 %0, -1
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = icmp slt i16 %0, 4
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5, %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 402, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.RPE_grid_positioning, i64 0, i64 0)) #5
  unreachable

9:                                                ; preds = %7
  %10 = sext i16 %0 to i32
  switch i32 %10, label %25 [
    i32 3, label %11
    i32 2, label %13
    i32 1, label %16
    i32 0, label %18
  ]

11:                                               ; preds = %9
  %12 = getelementptr inbounds i16, i16* %2, i64 1
  store i16 0, i16* %2, align 2
  br label %13

13:                                               ; preds = %11, %9
  %.02 = phi i16* [ %2, %9 ], [ %12, %11 ]
  br label %14

14:                                               ; preds = %21, %13
  %.05 = phi i32 [ %23, %21 ], [ 13, %13 ]
  %.13 = phi i16* [ %20, %21 ], [ %.02, %13 ]
  %.01 = phi i16* [ %22, %21 ], [ %1, %13 ]
  %15 = getelementptr inbounds i16, i16* %.13, i64 1
  store i16 0, i16* %.13, align 2
  br label %16

16:                                               ; preds = %14, %9
  %.16 = phi i32 [ %.05, %14 ], [ 13, %9 ]
  %.24 = phi i16* [ %15, %14 ], [ %2, %9 ]
  %.1 = phi i16* [ %.01, %14 ], [ %1, %9 ]
  %17 = getelementptr inbounds i16, i16* %.24, i64 1
  store i16 0, i16* %.24, align 2
  br label %18

18:                                               ; preds = %16, %9
  %.27 = phi i32 [ 13, %9 ], [ %.16, %16 ]
  %.3 = phi i16* [ %2, %9 ], [ %17, %16 ]
  %.2 = phi i16* [ %1, %9 ], [ %.1, %16 ]
  %19 = load i16, i16* %.2, align 2
  %20 = getelementptr inbounds i16, i16* %.3, i64 1
  store i16 %19, i16* %.3, align 2
  br label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds i16, i16* %.2, i64 1
  %23 = add nsw i32 %.27, -1
  %.not = icmp eq i32 %23, 0
  br i1 %.not, label %24, label %14, !llvm.loop !11

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %9
  %.4 = phi i16* [ %2, %9 ], [ %20, %24 ]
  br label %26

26:                                               ; preds = %29, %25
  %.5 = phi i16* [ %.4, %25 ], [ %30, %29 ]
  %.0 = phi i16 [ %0, %25 ], [ %27, %29 ]
  %27 = add i16 %.0, 1
  %28 = icmp slt i16 %27, 4
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = getelementptr inbounds i16, i16* %.5, i64 1
  store i16 0, i16* %.5, align 2
  br label %26, !llvm.loop !12

31:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Gsm_RPE_Decoding(%struct.gsm_state* nocapture noundef readnone %0, i16 noundef signext %1, i16 noundef signext %2, i16* nocapture noundef readonly %3, i16* nocapture noundef writeonly %4) #0 {
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca [13 x i16], align 16
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %1, i16* noundef nonnull %6, i16* noundef nonnull %7)
  %9 = load i16, i16* %7, align 2
  %10 = load i16, i16* %6, align 2
  %11 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 0
  call void @APCM_inverse_quantization(i16* noundef %3, i16 noundef signext %9, i16 noundef signext %10, i16* noundef nonnull %11)
  %12 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 0
  call void @RPE_grid_positioning(i16 noundef signext %2, i16* noundef nonnull %12, i16* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %0, i16* nocapture noundef writeonly %1, i16* nocapture noundef writeonly %2) #0 {
  %4 = icmp sgt i16 %0, 15
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = sext i16 %0 to i32
  %7 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %6, i32 noundef 3) #4
  %8 = trunc i32 %7 to i16
  %9 = add i16 %8, -1
  br label %10

10:                                               ; preds = %5, %3
  %.01 = phi i16 [ %9, %5 ], [ 0, %3 ]
  %.neg = mul i16 %.01, -8
  %11 = add i16 %.neg, %0
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %23

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %17, %14
  %.12 = phi i16 [ %.01, %14 ], [ %20, %17 ]
  %.0 = phi i16 [ %11, %14 ], [ %19, %17 ]
  %16 = icmp slt i16 %.0, 8
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = shl i16 %.0, 1
  %19 = or i16 %18, 1
  %20 = add i16 %.12, -1
  br label %15, !llvm.loop !13

21:                                               ; preds = %15
  %22 = add i16 %.0, -8
  br label %23

23:                                               ; preds = %21, %13
  %.2 = phi i16 [ -4, %13 ], [ %.12, %21 ]
  %.1 = phi i16 [ 7, %13 ], [ %22, %21 ]
  %24 = icmp sgt i16 %.2, -5
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = icmp slt i16 %.2, 7
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  br label %29

28:                                               ; preds = %25, %23
  call void @__assert_fail(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 249, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

29:                                               ; preds = %27
  %30 = icmp sgt i16 %.1, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = icmp slt i16 %.1, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  br label %35

34:                                               ; preds = %31, %29
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 250, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization_xmaxc_to_exp_mant, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

35:                                               ; preds = %33
  store i16 %.2, i16* %1, align 2
  store i16 %.1, i16* %2, align 2
  ret void

UnifiedUnreachableBlock:                          ; preds = %34, %28
  unreachable
}

declare dso_local i32 @SASR(...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #2

declare dso_local signext i16 @gsm_add(i16 noundef signext, i16 noundef signext) #1

declare dso_local signext i16 @gsm_sub(i16 noundef signext, i16 noundef signext) #1

declare dso_local signext i16 @gsm_asl(i16 noundef signext, i32 noundef) #1

declare dso_local signext i16 @gsm_asr(i16 noundef signext, i32 noundef) #1

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_RPE_Encoding_961080237(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [13 x i16], align 16
  %1 = getelementptr inbounds [13 x i16], [13 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_RPE_grid_selection_1925396616(i16* noundef readonly %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i16* nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds i16, i16* %0, i64 3
  %4 = load i16, i16* %3, align 2
  %5 = sext i16 %4 to i32
  %6 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %5, i32 noundef 2) #4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, %7
  %9 = getelementptr inbounds i16, i16* %0, i64 6
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i32
  %12 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %11, i32 noundef 2) #4
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, %13
  %15 = add nuw nsw i64 %8, %14
  %16 = getelementptr inbounds i16, i16* %0, i64 9
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %18, i32 noundef 2) #4
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, %20
  %22 = add nuw nsw i64 %15, %21
  %23 = getelementptr inbounds i16, i16* %0, i64 12
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i32
  %26 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %25, i32 noundef 2) #4
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %27, %27
  %29 = add nuw nsw i64 %22, %28
  %30 = getelementptr inbounds i16, i16* %0, i64 15
  %31 = load i16, i16* %30, align 2
  %32 = sext i16 %31 to i32
  %33 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %32, i32 noundef 2) #4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, %34
  %36 = add nuw nsw i64 %29, %35
  %37 = getelementptr inbounds i16, i16* %0, i64 18
  %38 = load i16, i16* %37, align 2
  %39 = sext i16 %38 to i32
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef 2) #4
  %41 = sext i32 %40 to i64
  %42 = mul nsw i64 %41, %41
  %43 = add nuw nsw i64 %36, %42
  %44 = getelementptr inbounds i16, i16* %0, i64 21
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %46, i32 noundef 2) #4
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, %48
  %50 = add nuw nsw i64 %43, %49
  %51 = getelementptr inbounds i16, i16* %0, i64 24
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %53, i32 noundef 2) #4
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %55, %55
  %57 = add nsw i64 %50, %56
  %58 = getelementptr inbounds i16, i16* %0, i64 27
  %59 = load i16, i16* %58, align 2
  %60 = sext i16 %59 to i32
  %61 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %60, i32 noundef 2) #4
  %62 = sext i32 %61 to i64
  %63 = mul nsw i64 %62, %62
  %64 = add nsw i64 %57, %63
  %65 = getelementptr inbounds i16, i16* %0, i64 30
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %67, i32 noundef 2) #4
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, %69
  %71 = add nsw i64 %64, %70
  %72 = getelementptr inbounds i16, i16* %0, i64 33
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %74, i32 noundef 2) #4
  %76 = sext i32 %75 to i64
  %77 = mul nsw i64 %76, %76
  %78 = add nsw i64 %71, %77
  %79 = getelementptr inbounds i16, i16* %0, i64 36
  %80 = load i16, i16* %79, align 2
  %81 = sext i16 %80 to i32
  %82 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %81, i32 noundef 2) #4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %83, %83
  %85 = add nsw i64 %78, %84
  %86 = load i16, i16* %0, align 2
  %87 = sext i16 %86 to i32
  %88 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %87, i32 noundef 2) #4
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %89, %89
  %91 = add nsw i64 %85, %90
  %92 = shl i64 %91, 1
  %93 = getelementptr inbounds i16, i16* %0, i64 1
  %94 = load i16, i16* %93, align 2
  %95 = sext i16 %94 to i32
  %96 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %95, i32 noundef 2) #4
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %97, %97
  %99 = getelementptr inbounds i16, i16* %0, i64 4
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %101, i32 noundef 2) #4
  %103 = sext i32 %102 to i64
  %104 = mul nsw i64 %103, %103
  %105 = add nuw nsw i64 %98, %104
  %106 = getelementptr inbounds i16, i16* %0, i64 7
  %107 = load i16, i16* %106, align 2
  %108 = sext i16 %107 to i32
  %109 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %108, i32 noundef 2) #4
  %110 = sext i32 %109 to i64
  %111 = mul nsw i64 %110, %110
  %112 = add nuw nsw i64 %105, %111
  %113 = getelementptr inbounds i16, i16* %0, i64 10
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %115, i32 noundef 2) #4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %117, %117
  %119 = add nuw nsw i64 %112, %118
  %120 = getelementptr inbounds i16, i16* %0, i64 13
  %121 = load i16, i16* %120, align 2
  %122 = sext i16 %121 to i32
  %123 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %122, i32 noundef 2) #4
  %124 = sext i32 %123 to i64
  %125 = mul nsw i64 %124, %124
  %126 = add nuw nsw i64 %119, %125
  %127 = getelementptr inbounds i16, i16* %0, i64 16
  %128 = load i16, i16* %127, align 2
  %129 = sext i16 %128 to i32
  %130 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %129, i32 noundef 2) #4
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %131, %131
  %133 = add nuw nsw i64 %126, %132
  %134 = getelementptr inbounds i16, i16* %0, i64 19
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %136, i32 noundef 2) #4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %138, %138
  %140 = add nuw nsw i64 %133, %139
  %141 = getelementptr inbounds i16, i16* %0, i64 22
  %142 = load i16, i16* %141, align 2
  %143 = sext i16 %142 to i32
  %144 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %143, i32 noundef 2) #4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %145, %145
  %147 = add nsw i64 %140, %146
  %148 = getelementptr inbounds i16, i16* %0, i64 25
  %149 = load i16, i16* %148, align 2
  %150 = sext i16 %149 to i32
  %151 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %150, i32 noundef 2) #4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %152, %152
  %154 = add nsw i64 %147, %153
  %155 = getelementptr inbounds i16, i16* %0, i64 28
  %156 = load i16, i16* %155, align 2
  %157 = sext i16 %156 to i32
  %158 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %157, i32 noundef 2) #4
  %159 = sext i32 %158 to i64
  %160 = mul nsw i64 %159, %159
  %161 = add nsw i64 %154, %160
  %162 = getelementptr inbounds i16, i16* %0, i64 31
  %163 = load i16, i16* %162, align 2
  %164 = sext i16 %163 to i32
  %165 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %164, i32 noundef 2) #4
  %166 = sext i32 %165 to i64
  %167 = mul nsw i64 %166, %166
  %168 = add nsw i64 %161, %167
  %169 = getelementptr inbounds i16, i16* %0, i64 34
  %170 = load i16, i16* %169, align 2
  %171 = sext i16 %170 to i32
  %172 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %171, i32 noundef 2) #4
  %173 = sext i32 %172 to i64
  %174 = mul nsw i64 %173, %173
  %175 = add nsw i64 %168, %174
  %176 = getelementptr inbounds i16, i16* %0, i64 37
  %177 = load i16, i16* %176, align 2
  %178 = sext i16 %177 to i32
  %179 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %178, i32 noundef 2) #4
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %180, %180
  %182 = add nsw i64 %175, %181
  %183 = shl i64 %182, 1
  %184 = icmp sgt i64 %183, %92
  br i1 %184, label %185, label %186

185:                                              ; preds = %2
  br label %186

186:                                              ; preds = %185, %2
  %.01 = phi i64 [ %183, %185 ], [ %92, %2 ]
  %.0 = phi i16 [ 1, %185 ], [ 0, %2 ]
  %187 = getelementptr inbounds i16, i16* %0, i64 2
  %188 = load i16, i16* %187, align 2
  %189 = sext i16 %188 to i32
  %190 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %189, i32 noundef 2) #4
  %191 = sext i32 %190 to i64
  %192 = mul nsw i64 %191, %191
  %193 = getelementptr inbounds i16, i16* %0, i64 5
  %194 = load i16, i16* %193, align 2
  %195 = sext i16 %194 to i32
  %196 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %195, i32 noundef 2) #4
  %197 = sext i32 %196 to i64
  %198 = mul nsw i64 %197, %197
  %199 = add nuw nsw i64 %192, %198
  %200 = getelementptr inbounds i16, i16* %0, i64 8
  %201 = load i16, i16* %200, align 2
  %202 = sext i16 %201 to i32
  %203 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %202, i32 noundef 2) #4
  %204 = sext i32 %203 to i64
  %205 = mul nsw i64 %204, %204
  %206 = add nuw nsw i64 %199, %205
  %207 = getelementptr inbounds i16, i16* %0, i64 11
  %208 = load i16, i16* %207, align 2
  %209 = sext i16 %208 to i32
  %210 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %209, i32 noundef 2) #4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 %211, %211
  %213 = add nuw nsw i64 %206, %212
  %214 = getelementptr inbounds i16, i16* %0, i64 14
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %216, i32 noundef 2) #4
  %218 = sext i32 %217 to i64
  %219 = mul nsw i64 %218, %218
  %220 = add nuw nsw i64 %213, %219
  %221 = getelementptr inbounds i16, i16* %0, i64 17
  %222 = load i16, i16* %221, align 2
  %223 = sext i16 %222 to i32
  %224 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %223, i32 noundef 2) #4
  %225 = sext i32 %224 to i64
  %226 = mul nsw i64 %225, %225
  %227 = add nuw nsw i64 %220, %226
  %228 = getelementptr inbounds i16, i16* %0, i64 20
  %229 = load i16, i16* %228, align 2
  %230 = sext i16 %229 to i32
  %231 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %230, i32 noundef 2) #4
  %232 = sext i32 %231 to i64
  %233 = mul nsw i64 %232, %232
  %234 = add nuw nsw i64 %227, %233
  %235 = getelementptr inbounds i16, i16* %0, i64 23
  %236 = load i16, i16* %235, align 2
  %237 = sext i16 %236 to i32
  %238 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %237, i32 noundef 2) #4
  %239 = sext i32 %238 to i64
  %240 = mul nsw i64 %239, %239
  %241 = add nsw i64 %234, %240
  %242 = getelementptr inbounds i16, i16* %0, i64 26
  %243 = load i16, i16* %242, align 2
  %244 = sext i16 %243 to i32
  %245 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %244, i32 noundef 2) #4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %246, %246
  %248 = add nsw i64 %241, %247
  %249 = getelementptr inbounds i16, i16* %0, i64 29
  %250 = load i16, i16* %249, align 2
  %251 = sext i16 %250 to i32
  %252 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %251, i32 noundef 2) #4
  %253 = sext i32 %252 to i64
  %254 = mul nsw i64 %253, %253
  %255 = add nsw i64 %248, %254
  %256 = getelementptr inbounds i16, i16* %0, i64 32
  %257 = load i16, i16* %256, align 2
  %258 = sext i16 %257 to i32
  %259 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %258, i32 noundef 2) #4
  %260 = sext i32 %259 to i64
  %261 = mul nsw i64 %260, %260
  %262 = add nsw i64 %255, %261
  %263 = getelementptr inbounds i16, i16* %0, i64 35
  %264 = load i16, i16* %263, align 2
  %265 = sext i16 %264 to i32
  %266 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %265, i32 noundef 2) #4
  %267 = sext i32 %266 to i64
  %268 = mul nsw i64 %267, %267
  %269 = add nsw i64 %262, %268
  %270 = getelementptr inbounds i16, i16* %0, i64 38
  %271 = load i16, i16* %270, align 2
  %272 = sext i16 %271 to i32
  %273 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %272, i32 noundef 2) #4
  %274 = sext i32 %273 to i64
  %275 = mul nsw i64 %274, %274
  %276 = add nsw i64 %269, %275
  %277 = shl i64 %276, 1
  %278 = icmp sgt i64 %277, %.01
  br i1 %278, label %279, label %280

279:                                              ; preds = %186
  br label %280

280:                                              ; preds = %279, %186
  %.12 = phi i64 [ %277, %279 ], [ %.01, %186 ]
  %.1 = phi i16 [ 2, %279 ], [ %.0, %186 ]
  %281 = getelementptr inbounds i16, i16* %0, i64 39
  %282 = load i16, i16* %281, align 2
  %283 = sext i16 %282 to i32
  %284 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %283, i32 noundef 2) #4
  %285 = sext i32 %284 to i64
  %286 = mul nsw i64 %285, %285
  %287 = add nsw i64 %85, %286
  %288 = shl i64 %287, 1
  %289 = icmp sgt i64 %288, %.12
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %280
  %.2 = phi i16 [ 3, %290 ], [ %.1, %280 ]
  br label %292

292:                                              ; preds = %303, %291
  %.03 = phi i32 [ 0, %291 ], [ %304, %303 ]
  %293 = icmp ult i32 %.03, 13
  br i1 %293, label %294, label %305

294:                                              ; preds = %292
  %295 = sext i16 %.2 to i32
  %296 = mul nsw i32 %.03, 3
  %297 = add nsw i32 %296, %295
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i16, i16* %0, i64 %298
  %300 = load i16, i16* %299, align 2
  %301 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.0*)*, i16* (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #4
  %302 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %301
  store i16 %300, i16* %302, align 2
  br label %303

303:                                              ; preds = %294
  %304 = add nuw nsw i32 %.03, 1
  br label %292, !llvm.loop !6

305:                                              ; preds = %292
  store i16 %.2, i16* %1, align 2
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_RPE_Encoding_117370785(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [40 x i16], align 16
  %1 = getelementptr inbounds [40 x i16], [40 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_Weighting_filter_1495601301(i16* nocapture noundef readonly %0, %_wyvern_thunk_type.2* noundef %_wyvern_thunkptr) #0 {
  %2 = getelementptr inbounds i16, i16* %0, i64 -5
  br label %3

3:                                                ; preds = %82, %1
  %.0 = phi i32 [ 0, %1 ], [ %83, %82 ]
  %4 = icmp ult i32 %.0, 40
  br i1 %4, label %5, label %84

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i16, i16* %2, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = sext i16 %8 to i64
  %10 = mul nsw i64 %9, -134
  %11 = add nuw nsw i32 %.0, 1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, i16* %2, i64 %12
  %14 = load i16, i16* %13, align 2
  %15 = sext i16 %14 to i64
  %16 = mul nsw i64 %15, -374
  %17 = add nsw i64 %10, %16
  %18 = add nuw nsw i32 %.0, 3
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, i16* %2, i64 %19
  %21 = load i16, i16* %20, align 2
  %22 = sext i16 %21 to i64
  %23 = mul nsw i64 %22, 2054
  %24 = add nsw i64 %17, %23
  %25 = add nuw nsw i32 %.0, 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %2, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i64
  %30 = mul nsw i64 %29, 5741
  %31 = add nsw i64 %24, %30
  %32 = add nuw nsw i32 %.0, 5
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %2, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = sext i16 %35 to i64
  %37 = shl nsw i64 %36, 13
  %38 = add nsw i64 %31, %37
  %39 = add nuw nsw i32 %.0, 6
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %2, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = sext i16 %42 to i64
  %44 = mul nsw i64 %43, 5741
  %45 = add nsw i64 %38, %44
  %46 = add nuw nsw i32 %.0, 7
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %2, i64 %47
  %49 = load i16, i16* %48, align 2
  %50 = sext i16 %49 to i64
  %51 = mul nsw i64 %50, 2054
  %52 = add nsw i64 %45, %51
  %53 = add nuw nsw i32 %.0, 9
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i16, i16* %2, i64 %54
  %56 = load i16, i16* %55, align 2
  %57 = sext i16 %56 to i64
  %58 = mul nsw i64 %57, -374
  %59 = add nsw i64 %52, %58
  %60 = add nuw nsw i32 %.0, 10
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i16, i16* %2, i64 %61
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i64
  %65 = mul nsw i64 %64, -134
  %66 = add nsw i64 %59, %65
  %67 = add nsw i64 %66, 4096
  %68 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %67, i32 noundef 13) #4
  %69 = trunc i32 %68 to i16
  %70 = icmp slt i32 %68, -32768
  br i1 %70, label %71, label %72

71:                                               ; preds = %5
  br label %78

72:                                               ; preds = %5
  %73 = icmp sgt i32 %68, 32767
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  br label %76

75:                                               ; preds = %72
  br label %76

76:                                               ; preds = %75, %74
  %77 = phi i16 [ 32767, %74 ], [ %69, %75 ]
  br label %78

78:                                               ; preds = %76, %71
  %79 = phi i16 [ -32768, %71 ], [ %77, %76 ]
  %80 = zext i32 %.0 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.2, %_wyvern_thunk_type.2* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.2*)*, i16* (%_wyvern_thunk_type.2*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.2* %_wyvern_thunkptr) #4
  %81 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %80
  store i16 %79, i16* %81, align 2
  br label %82

82:                                               ; preds = %78
  %83 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !4

84:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind readonly willreturn
define i16* @_wyvern_slice_memo_Gsm_RPE_Encoding_580154018(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #3 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i16*, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %0 = alloca [13 x i16], align 16
  %1 = getelementptr inbounds [13 x i16], [13 x i16]* %0, i64 0, i64 0
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i16* %1, i16** %_wyvern_memo_val_addr, align 8
  ret i16* %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_wyvern_calleeclone_APCM_quantization_0556796942(%_wyvern_thunk_type.4* noundef %_wyvern_thunkptr, i16* nocapture noundef writeonly %0, i16* nocapture noundef writeonly %1, i16* nocapture noundef writeonly %2, i16* nocapture noundef writeonly %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  br label %7

7:                                                ; preds = %27, %4
  %.03 = phi i32 [ 0, %4 ], [ %28, %27 ]
  %.01 = phi i16 [ 0, %4 ], [ %.1, %27 ]
  %8 = icmp ult i32 %.03, 13
  br i1 %8, label %9, label %29

9:                                                ; preds = %7
  %10 = zext i32 %.03 to i64
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i16* (%_wyvern_thunk_type.4*)*, i16* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i16* %_wyvern_thunkfptr2(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #4
  %11 = getelementptr inbounds i16, i16* %_wyvern_thunkcall3, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = icmp slt i16 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = icmp eq i16 %12, -32768
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %19

17:                                               ; preds = %14
  %18 = sub i16 0, %12
  br label %19

19:                                               ; preds = %17, %16
  %20 = phi i16 [ 32767, %16 ], [ %18, %17 ]
  br label %22

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i16 [ %20, %19 ], [ %12, %21 ]
  %24 = icmp sgt i16 %23, %.01
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %22
  %.1 = phi i16 [ %23, %25 ], [ %.01, %22 ]
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !7

29:                                               ; preds = %7
  store i16 0, i16* %5, align 2
  %30 = sext i16 %.01 to i32
  %31 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %30, i32 noundef 9) #4
  br label %32

32:                                               ; preds = %51, %29
  %.14 = phi i32 [ 0, %29 ], [ %52, %51 ]
  %.02 = phi i32 [ 0, %29 ], [ %38, %51 ]
  %.0.in = phi i32 [ %31, %29 ], [ %40, %51 ]
  %33 = icmp ult i32 %.14, 6
  br i1 %33, label %34, label %53

34:                                               ; preds = %32
  %35 = trunc i32 %.0.in to i16
  %36 = icmp slt i16 %35, 1
  %37 = zext i1 %36 to i32
  %38 = or i32 %.02, %37
  %sext7 = shl i32 %.0.in, 16
  %39 = ashr exact i32 %sext7, 16
  %40 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %39, i32 noundef 1) #4
  %41 = load i16, i16* %5, align 2
  %42 = icmp slt i16 %41, 6
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %45

44:                                               ; preds = %34
  call void @__assert_fail(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 293, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

45:                                               ; preds = %43
  %46 = icmp eq i32 %38, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i16, i16* %5, align 2
  %49 = add i16 %48, 1
  store i16 %49, i16* %5, align 2
  br label %50

50:                                               ; preds = %47, %45
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.14, 1
  br label %32, !llvm.loop !8

53:                                               ; preds = %32
  %54 = load i16, i16* %5, align 2
  %55 = icmp slt i16 %54, 7
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i16, i16* %5, align 2
  %58 = icmp sgt i16 %57, -1
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %61

60:                                               ; preds = %56, %53
  call void @__assert_fail(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 297, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

61:                                               ; preds = %59
  %62 = load i16, i16* %5, align 2
  %63 = add i16 %62, 5
  %64 = icmp slt i16 %63, 12
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = icmp sgt i16 %63, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %69

68:                                               ; preds = %65, %61
  call void @__assert_fail(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 300, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

69:                                               ; preds = %67
  %70 = sext i16 %.01 to i32
  %71 = sext i16 %63 to i32
  %72 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %70, i32 noundef %71) #4
  %73 = trunc i32 %72 to i16
  %74 = load i16, i16* %5, align 2
  %75 = shl i16 %74, 3
  %76 = call signext i16 @gsm_add(i16 noundef signext %73, i16 noundef signext %75) #4
  call void @APCM_quantization_xmaxc_to_exp_mant(i16 noundef signext %76, i16* noundef nonnull %5, i16* noundef nonnull %6)
  %77 = load i16, i16* %5, align 2
  %78 = icmp slt i16 %77, 4097
  br i1 %78, label %79, label %83

79:                                               ; preds = %69
  %80 = load i16, i16* %5, align 2
  %81 = icmp sgt i16 %80, -4097
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %84

83:                                               ; preds = %79, %69
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 323, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

84:                                               ; preds = %82
  %85 = load i16, i16* %6, align 2
  %86 = icmp sgt i16 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i16, i16* %6, align 2
  %89 = icmp slt i16 %88, 8
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %92

91:                                               ; preds = %87, %84
  call void @__assert_fail(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %90
  %93 = load i16, i16* %5, align 2
  %94 = sub i16 6, %93
  %95 = load i16, i16* %6, align 2
  %96 = sext i16 %95 to i64
  %97 = getelementptr inbounds [8 x i16], [8 x i16]* @gsm_NRFAC, i64 0, i64 %96
  %98 = load i16, i16* %97, align 2
  br label %99

99:                                               ; preds = %125, %92
  %.2 = phi i32 [ 0, %92 ], [ %126, %125 ]
  %100 = icmp ult i32 %.2, 13
  br i1 %100, label %101, label %127

101:                                              ; preds = %99
  %102 = icmp sgt i16 %94, -1
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = icmp slt i16 %94, 16
  br i1 %104, label %105, label %106

105:                                              ; preds = %103
  br label %107

106:                                              ; preds = %103, %101
  call void @__assert_fail(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 noundef 331, i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.APCM_quantization, i64 0, i64 0)) #5
  br label %UnifiedUnreachableBlock

107:                                              ; preds = %105
  %108 = zext i32 %.2 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i16* (%_wyvern_thunk_type.4*)*, i16* (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i16* %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #4
  %109 = getelementptr inbounds i16, i16* %_wyvern_thunkcall, i64 %108
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i32
  %112 = zext i16 %94 to i32
  %113 = shl i32 %111, %112
  %114 = zext i32 %113 to i64
  %sext = shl i64 %114, 48
  %115 = ashr exact i64 %sext, 48
  %116 = sext i16 %98 to i64
  %117 = mul nsw i64 %115, %116
  %118 = call i32 (i64, i32, ...) bitcast (i32 (...)* @SASR to i32 (i64, i32, ...)*)(i64 noundef %117, i32 noundef 15) #4
  %sext4 = shl i32 %118, 16
  %119 = ashr exact i32 %sext4, 16
  %120 = call i32 (i32, i32, ...) bitcast (i32 (...)* @SASR to i32 (i32, i32, ...)*)(i32 noundef %119, i32 noundef 12) #4
  %121 = trunc i32 %120 to i16
  %122 = add i16 %121, 4
  %123 = zext i32 %.2 to i64
  %124 = getelementptr inbounds i16, i16* %0, i64 %123
  store i16 %122, i16* %124, align 2
  br label %125

125:                                              ; preds = %107
  %126 = add nuw nsw i32 %.2, 1
  br label %99, !llvm.loop !9

127:                                              ; preds = %99
  %128 = load i16, i16* %6, align 2
  store i16 %128, i16* %1, align 2
  %129 = load i16, i16* %5, align 2
  store i16 %129, i16* %2, align 2
  store i16 %76, i16* %3, align 2
  ret void

UnifiedUnreachableBlock:                          ; preds = %106, %91, %83, %68, %60, %44
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
