; ModuleID = './pr23324.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr23324.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.at6 = type {}
%union.ct6 = type { i64 }
%union.dt6 = type { double }
%union.ct7 = type {}
%struct.gt7 = type { double }
%struct.dt7 = type { float, i16 }
%struct.et6 = type { %struct.bt6, i64, i32, %union.ct6, i32*, %union.dt6 }
%struct.bt6 = type { [3 x i8], i8, i32, i64 }
%struct.et7 = type { %struct.dt7, [0 x float], i16, i16, double, float }
%union.ft7 = type { float* }

@xv6 = internal global double 0x40D2C9C67B30F8C6, align 8
@yv6 = internal global i64 1207859169, align 8
@zv6 = internal global i32 660195606, align 4
@vv6 = internal global %union.at6 undef, align 1
@wv6 = internal global { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 } { { i8, i8, i8, i8, i32, i64 } { i8 72, i8 66, i8 32, i8 16, i32 67426805, i64 1047191860 }, i64 1366022414, i8 90, i8 -109, i8 98, i8 2, %union.ct6 { i64 1069379046 }, i32* inttoptr (i64 358273621 to i32*), %union.dt6 { double 0x40A9EC157E23F24E } }, align 8
@vv7 = internal global float 0x40F797CFC0000000, align 4
@wv7 = internal global double 0x40DBC8AD8E25C811, align 8
@xv7 = internal global %union.ct7 undef, align 1
@bav7 = internal global i32 1345451862, align 4
@bbv7 = internal global %struct.gt7 { double 0x40E7606FBE1650A4 }, align 8
@bcv7 = internal global [1 x i64] [i64 1732133482], align 8
@bdv7 = internal global i64 381678602, align 8
@uv7 = internal global i8 70, align 1
@yv7 = internal global { %struct.dt7, [0 x float], i8, i8, i16, double, float } { %struct.dt7 { float 0x40DD6DFFC0000000, i16 -23101 }, [0 x float] zeroinitializer, i8 -86, i8 0, i16 22116, double 0x40D9DBE83393AB43, float 0x40AFE5EBE0000000 }, align 8
@zv7 = internal global { float, [4 x i8] } { float 0x40B3B23A60000000, [4 x i8] undef }, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  call void @caller_bf6()
  call void @caller_bf7()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @caller_bf6() #0 {
  %1 = load double, double* @xv6, align 8
  %2 = load i64, i64* @yv6, align 8
  %3 = load i32, i32* @zv6, align 4
  call void @callee_af6(%struct.et6* noundef byval(%struct.et6) align 8 bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), double noundef %1, i64 noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @caller_bf7() #0 {
  %1 = load float, float* @vv7, align 4
  %2 = load double, double* @wv7, align 8
  %3 = load i32, i32* @bav7, align 4
  %4 = load i64, i64* @bdv7, align 8
  %5 = load float*, float** bitcast ({ float, [4 x i8] }* @zv7 to float**), align 8
  %6 = load double, double* getelementptr inbounds (%struct.gt7, %struct.gt7* @bbv7, i64 0, i32 0), align 8
  %7 = call zeroext i8 @callee_af7(float noundef %1, double noundef %2, %struct.et7* noundef byval(%struct.et7) align 8 bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), float* %5, i32 noundef %3, double %6, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @bcv7, i64 0, i64 0), i64 noundef %4)
  %8 = load i8, i8* @uv7, align 1
  %9 = icmp eq i8 %8, %7
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  call void @abort() #3
  unreachable

11:                                               ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @callee_af6(%struct.et6* nocapture noundef readonly byval(%struct.et6) align 8 %0, double noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %6 = bitcast %struct.et6* %0 to i24*
  %7 = load i24, i24* %6, align 8
  %.unshifted = xor i24 %5, %7
  %.mask = and i24 %.unshifted, 63
  %8 = icmp eq i24 %.mask, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  call void @abort() #3
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %4
  %11 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %12 = bitcast %struct.et6* %0 to i24*
  %13 = load i24, i24* %12, align 8
  %14 = xor i24 %11, %13
  %15 = and i24 %14, 8128
  %16 = icmp eq i24 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  call void @abort() #3
  br label %UnifiedUnreachableBlock

18:                                               ; preds = %10
  %19 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %20 = bitcast %struct.et6* %0 to i24*
  %21 = load i24, i24* %20, align 8
  %22 = xor i24 %19, %21
  %23 = and i24 %22, 516096
  %24 = icmp eq i24 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %18
  %27 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %28 = bitcast %struct.et6* %0 to i24*
  %29 = load i24, i24* %28, align 8
  %.unshifted3 = xor i24 %27, %29
  %30 = icmp ult i24 %.unshifted3, 524288
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %26
  %33 = load i8, i8* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 0, i32 3), align 1
  %34 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 0, i32 1
  %35 = load i8, i8* %34, align 1
  %36 = icmp eq i8 %33, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %32
  %39 = load i32, i32* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 0, i32 4), align 4
  %40 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @abort() #3
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %38
  %45 = load i64, i64* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 0, i32 5), align 8
  %46 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %44
  %51 = load i64, i64* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 1), align 8
  %52 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %50
  %57 = load i32, i32* bitcast (i8* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 2) to i32*), align 8
  %58 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 2
  %59 = load i32, i32* %58, align 8
  %.unshifted4 = xor i32 %57, %59
  %.mask5 = and i32 %.unshifted4, 4095
  %60 = icmp eq i32 %.mask5, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  call void @abort() #3
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %56
  %63 = load i32, i32* bitcast (i8* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 2) to i32*), align 8
  %64 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = xor i32 %63, %65
  %67 = and i32 %66, 28672
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  call void @abort() #3
  br label %UnifiedUnreachableBlock

70:                                               ; preds = %62
  %71 = load i32, i32* bitcast (i8* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 2) to i32*), align 8
  %72 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 %71, %73
  %75 = and i32 %74, 98304
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  call void @abort() #3
  br label %UnifiedUnreachableBlock

78:                                               ; preds = %70
  %79 = load i32, i32* bitcast (i8* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 2) to i32*), align 8
  %80 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = xor i32 %79, %81
  %83 = and i32 %82, 134086656
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  call void @abort() #3
  br label %UnifiedUnreachableBlock

86:                                               ; preds = %78
  %87 = load i64, i64* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 6, i32 0), align 8
  %88 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 3, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void @abort() #3
  br label %UnifiedUnreachableBlock

92:                                               ; preds = %86
  %93 = load i32*, i32** getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 7), align 8
  %94 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %93, %95
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  call void @abort() #3
  br label %UnifiedUnreachableBlock

98:                                               ; preds = %92
  %99 = load double, double* getelementptr inbounds ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }, { { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6, i64 0, i32 8, i32 0), align 8
  %100 = getelementptr inbounds %struct.et6, %struct.et6* %0, i64 0, i32 5, i32 0
  %101 = load double, double* %100, align 8
  %102 = fcmp oeq double %99, %101
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  call void @abort() #3
  br label %UnifiedUnreachableBlock

104:                                              ; preds = %98
  %105 = load double, double* @xv6, align 8
  %106 = fcmp oeq double %105, %1
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @abort() #3
  br label %UnifiedUnreachableBlock

108:                                              ; preds = %104
  %109 = load i64, i64* @yv6, align 8
  %110 = icmp eq i64 %109, %2
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void @abort() #3
  br label %UnifiedUnreachableBlock

112:                                              ; preds = %108
  %113 = load i32, i32* @zv6, align 4
  %114 = icmp eq i32 %113, %3
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @abort() #3
  br label %UnifiedUnreachableBlock

116:                                              ; preds = %112
  ret void

UnifiedUnreachableBlock:                          ; preds = %115, %111, %107, %103, %97, %91, %85, %77, %69, %61, %55, %49, %43, %37, %31, %25, %17, %9
  unreachable
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @callee_af7(float noundef %0, double noundef %1, %struct.et7* nocapture noundef readonly byval(%struct.et7) align 8 %2, float* %3, i32 noundef %4, double %5, i64* nocapture noundef readonly %6, i64 noundef %7) #0 {
  %9 = alloca %union.ft7, align 8
  %10 = alloca %struct.gt7, align 8
  %11 = getelementptr inbounds %union.ft7, %union.ft7* %9, i64 0, i32 0
  store float* %3, float** %11, align 8
  %12 = getelementptr inbounds %struct.gt7, %struct.gt7* %10, i64 0, i32 0
  store double %5, double* %12, align 8
  %13 = load float, float* @vv7, align 4
  %14 = fcmp oeq float %13, %0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  call void @abort() #3
  br label %UnifiedUnreachableBlock

16:                                               ; preds = %8
  %17 = load double, double* @wv7, align 8
  %18 = fcmp oeq double %17, %1
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @abort() #3
  br label %UnifiedUnreachableBlock

20:                                               ; preds = %16
  %21 = load float, float* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 0, i32 0
  %23 = load float, float* %22, align 8
  %24 = fcmp oeq float %21, %23
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  call void @abort() #3
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %20
  %27 = load i16, i16* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 0, i32 1), align 4
  %28 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 0, i32 1
  %29 = load i16, i16* %28, align 4
  %30 = icmp eq i16 %27, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void @abort() #3
  br label %UnifiedUnreachableBlock

32:                                               ; preds = %26
  %33 = load i16, i16* bitcast (i8* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 2) to i16*), align 8
  %34 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 2
  %35 = load i16, i16* %34, align 8
  %.unshifted = xor i16 %33, %35
  %.mask = and i16 %.unshifted, 511
  %36 = icmp eq i16 %.mask, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @abort() #3
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %32
  %39 = load i16, i16* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 4), align 2
  %40 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 3
  %41 = load i16, i16* %40, align 2
  %42 = icmp eq i16 %39, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  call void @abort() #3
  br label %UnifiedUnreachableBlock

44:                                               ; preds = %38
  %45 = load double, double* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 5), align 8
  %46 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 4
  %47 = load double, double* %46, align 8
  %48 = fcmp oeq double %45, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @abort() #3
  br label %UnifiedUnreachableBlock

50:                                               ; preds = %44
  %51 = load float, float* getelementptr inbounds ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }, { %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7, i64 0, i32 6), align 8
  %52 = getelementptr inbounds %struct.et7, %struct.et7* %2, i64 0, i32 5
  %53 = load float, float* %52, align 8
  %54 = fcmp oeq float %51, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  call void @abort() #3
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %50
  %57 = load float, float* getelementptr inbounds ({ float, [4 x i8] }, { float, [4 x i8] }* @zv7, i64 0, i32 0), align 8
  %58 = bitcast %union.ft7* %9 to float*
  %59 = load float, float* %58, align 8
  %60 = fcmp oeq float %57, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  call void @abort() #3
  br label %UnifiedUnreachableBlock

62:                                               ; preds = %56
  %63 = load i32, i32* @bav7, align 4
  %64 = icmp eq i32 %63, %4
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  call void @abort() #3
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %62
  %67 = load double, double* getelementptr inbounds (%struct.gt7, %struct.gt7* @bbv7, i64 0, i32 0), align 8
  %68 = getelementptr inbounds %struct.gt7, %struct.gt7* %10, i64 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fcmp oeq double %67, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  call void @abort() #3
  br label %UnifiedUnreachableBlock

72:                                               ; preds = %66
  %73 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bcv7, i64 0, i64 0), align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  call void @abort() #3
  br label %UnifiedUnreachableBlock

77:                                               ; preds = %72
  %78 = load i64, i64* @bdv7, align 8
  %79 = icmp eq i64 %78, %7
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @abort() #3
  br label %UnifiedUnreachableBlock

81:                                               ; preds = %77
  %82 = load i8, i8* @uv7, align 1
  ret i8 %82

UnifiedUnreachableBlock:                          ; preds = %80, %76, %71, %65, %61, %55, %49, %43, %37, %31, %25, %19, %15
  unreachable
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
