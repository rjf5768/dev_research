; ModuleID = '/project/test/llvm-test-suite/SingleSource/Regression/C/gcc-c-torture/execute/pr23324.c'
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
%union.ft7 = type { float* }
%struct.et7 = type { %struct.dt7, [0 x float], i16, i16, double, float }

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
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @caller_bf6()
  call void @caller_bf7()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @caller_bf6() #0 {
  %1 = alloca %union.at6, align 1
  %2 = alloca %union.at6, align 1
  %3 = alloca %union.at6, align 1
  %4 = load double, double* @xv6, align 8
  %5 = load i64, i64* @yv6, align 8
  %6 = load i32, i32* @zv6, align 4
  call void @callee_af6(%struct.et6* noundef byval(%struct.et6) align 8 bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), double noundef %4, i64 noundef %5, i32 noundef %6)
  %7 = bitcast %union.at6* %1 to i8*
  %8 = bitcast %union.at6* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 0, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @caller_bf7() #0 {
  %1 = alloca i8, align 1
  %2 = load float, float* @vv7, align 4
  %3 = load double, double* @wv7, align 8
  %4 = load i32, i32* @bav7, align 4
  %5 = load i64, i64* @bdv7, align 8
  %6 = load float*, float** getelementptr inbounds (%union.ft7, %union.ft7* bitcast ({ float, [4 x i8] }* @zv7 to %union.ft7*), i32 0, i32 0), align 8
  %7 = load double, double* getelementptr inbounds (%struct.gt7, %struct.gt7* @bbv7, i32 0, i32 0), align 8
  %8 = call zeroext i8 @callee_af7(float noundef %2, double noundef %3, %struct.et7* noundef byval(%struct.et7) align 8 bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), float* %6, i32 noundef %4, double %7, i64* noundef getelementptr inbounds ([1 x i64], [1 x i64]* @bcv7, i64 0, i64 0), i64 noundef %5)
  store i8 %8, i8* %1, align 1
  %9 = load i8, i8* @uv7, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* %1, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  call void @abort() #3
  unreachable

15:                                               ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @callee_af6(%struct.et6* noundef byval(%struct.et6) align 8 %0, double noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %union.at6, align 1
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store double %1, double* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %10 = shl i24 %9, 18
  %11 = ashr i24 %10, 18
  %12 = sext i24 %11 to i32
  %13 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %14 = bitcast %struct.bt6* %13 to i24*
  %15 = load i24, i24* %14, align 8
  %16 = shl i24 %15, 18
  %17 = ashr i24 %16, 18
  %18 = sext i24 %17 to i32
  %19 = icmp eq i32 %12, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  call void @abort() #3
  unreachable

21:                                               ; preds = %4
  %22 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %23 = shl i24 %22, 11
  %24 = ashr i24 %23, 17
  %25 = sext i24 %24 to i32
  %26 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %27 = bitcast %struct.bt6* %26 to i24*
  %28 = load i24, i24* %27, align 8
  %29 = shl i24 %28, 11
  %30 = ashr i24 %29, 17
  %31 = sext i24 %30 to i32
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %34, label %33

33:                                               ; preds = %21
  call void @abort() #3
  unreachable

34:                                               ; preds = %21
  %35 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %36 = shl i24 %35, 5
  %37 = ashr i24 %36, 18
  %38 = sext i24 %37 to i32
  %39 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %40 = bitcast %struct.bt6* %39 to i24*
  %41 = load i24, i24* %40, align 8
  %42 = shl i24 %41, 5
  %43 = ashr i24 %42, 18
  %44 = sext i24 %43 to i32
  %45 = icmp eq i32 %38, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  call void @abort() #3
  unreachable

47:                                               ; preds = %34
  %48 = load i24, i24* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to i24*), align 8
  %49 = ashr i24 %48, 19
  %50 = sext i24 %49 to i32
  %51 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %52 = bitcast %struct.bt6* %51 to i24*
  %53 = load i24, i24* %52, align 8
  %54 = ashr i24 %53, 19
  %55 = sext i24 %54 to i32
  %56 = icmp eq i32 %50, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %47
  call void @abort() #3
  unreachable

58:                                               ; preds = %47
  %59 = load i8, i8* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 0, i32 1), align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %62 = getelementptr inbounds %struct.bt6, %struct.bt6* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void @abort() #3
  unreachable

67:                                               ; preds = %58
  %68 = load i32, i32* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 0, i32 2), align 4
  %69 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %70 = getelementptr inbounds %struct.bt6, %struct.bt6* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %67
  call void @abort() #3
  unreachable

74:                                               ; preds = %67
  %75 = load i64, i64* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 0, i32 3), align 8
  %76 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 0
  %77 = getelementptr inbounds %struct.bt6, %struct.bt6* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  call void @abort() #3
  unreachable

81:                                               ; preds = %74
  %82 = load i64, i64* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 1), align 8
  %83 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %82, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  call void @abort() #3
  unreachable

87:                                               ; preds = %81
  %88 = load i32, i32* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 2), align 8
  %89 = shl i32 %88, 20
  %90 = ashr i32 %89, 20
  %91 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %92, 20
  %94 = ashr i32 %93, 20
  %95 = icmp eq i32 %90, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  call void @abort() #3
  unreachable

97:                                               ; preds = %87
  %98 = load i32, i32* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 2), align 8
  %99 = shl i32 %98, 17
  %100 = ashr i32 %99, 29
  %101 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 17
  %104 = ashr i32 %103, 29
  %105 = icmp eq i32 %100, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  call void @abort() #3
  unreachable

107:                                              ; preds = %97
  %108 = load i32, i32* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 2), align 8
  %109 = shl i32 %108, 15
  %110 = ashr i32 %109, 30
  %111 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 %112, 15
  %114 = ashr i32 %113, 30
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  call void @abort() #3
  unreachable

117:                                              ; preds = %107
  %118 = load i32, i32* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 2), align 8
  %119 = shl i32 %118, 5
  %120 = ashr i32 %119, 22
  %121 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = shl i32 %122, 5
  %124 = ashr i32 %123, 22
  %125 = icmp eq i32 %120, %124
  br i1 %125, label %127, label %126

126:                                              ; preds = %117
  call void @abort() #3
  unreachable

127:                                              ; preds = %117
  %128 = load i64, i64* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 3, i32 0), align 8
  %129 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 3
  %130 = bitcast %union.ct6* %129 to i64*
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %128, %131
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  call void @abort() #3
  unreachable

134:                                              ; preds = %127
  %135 = load i32*, i32** getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 4), align 8
  %136 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %135, %137
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  call void @abort() #3
  unreachable

140:                                              ; preds = %134
  %141 = load double, double* getelementptr inbounds (%struct.et6, %struct.et6* bitcast ({ { i8, i8, i8, i8, i32, i64 }, i64, i8, i8, i8, i8, %union.ct6, i32*, %union.dt6 }* @wv6 to %struct.et6*), i32 0, i32 5, i32 0), align 8
  %142 = getelementptr inbounds %struct.et6, %struct.et6* %0, i32 0, i32 5
  %143 = bitcast %union.dt6* %142 to double*
  %144 = load double, double* %143, align 8
  %145 = fcmp oeq double %141, %144
  br i1 %145, label %147, label %146

146:                                              ; preds = %140
  call void @abort() #3
  unreachable

147:                                              ; preds = %140
  %148 = load double, double* @xv6, align 8
  %149 = load double, double* %6, align 8
  %150 = fcmp oeq double %148, %149
  br i1 %150, label %152, label %151

151:                                              ; preds = %147
  call void @abort() #3
  unreachable

152:                                              ; preds = %147
  %153 = load i64, i64* @yv6, align 8
  %154 = load i64, i64* %7, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  call void @abort() #3
  unreachable

157:                                              ; preds = %152
  %158 = load i32, i32* @zv6, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  call void @abort() #3
  unreachable

162:                                              ; preds = %157
  %163 = bitcast %union.at6* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %163, i8* align 1 bitcast (%union.at6* @vv6 to i8*), i64 0, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @callee_af7(float noundef %0, double noundef %1, %struct.et7* noundef byval(%struct.et7) align 8 %2, float* %3, i32 noundef %4, double %5, i64* noundef %6, i64 noundef %7) #0 {
  %9 = alloca %union.ct7, align 1
  %10 = alloca %union.ft7, align 8
  %11 = alloca %struct.gt7, align 8
  %12 = alloca float, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = getelementptr inbounds %union.ft7, %union.ft7* %10, i32 0, i32 0
  store float* %3, float** %17, align 8
  %18 = getelementptr inbounds %struct.gt7, %struct.gt7* %11, i32 0, i32 0
  store double %5, double* %18, align 8
  store float %0, float* %12, align 4
  store double %1, double* %13, align 8
  store i32 %4, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i64 %7, i64* %16, align 8
  %19 = load float, float* @vv7, align 4
  %20 = load float, float* %12, align 4
  %21 = fcmp oeq float %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  call void @abort() #3
  unreachable

23:                                               ; preds = %8
  %24 = load double, double* @wv7, align 8
  %25 = load double, double* %13, align 8
  %26 = fcmp oeq double %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  call void @abort() #3
  unreachable

28:                                               ; preds = %23
  %29 = load float, float* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 0
  %31 = getelementptr inbounds %struct.dt7, %struct.dt7* %30, i32 0, i32 0
  %32 = load float, float* %31, align 8
  %33 = fcmp oeq float %29, %32
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  call void @abort() #3
  unreachable

35:                                               ; preds = %28
  %36 = load i16, i16* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 0, i32 1), align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 0
  %39 = getelementptr inbounds %struct.dt7, %struct.dt7* %38, i32 0, i32 1
  %40 = load i16, i16* %39, align 4
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %37, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  call void @abort() #3
  unreachable

44:                                               ; preds = %35
  %45 = load i16, i16* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 2), align 8
  %46 = shl i16 %45, 7
  %47 = ashr i16 %46, 7
  %48 = sext i16 %47 to i32
  %49 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 2
  %50 = load i16, i16* %49, align 8
  %51 = shl i16 %50, 7
  %52 = ashr i16 %51, 7
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %44
  call void @abort() #3
  unreachable

56:                                               ; preds = %44
  %57 = load i16, i16* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 3), align 2
  %58 = sext i16 %57 to i32
  %59 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 3
  %60 = load i16, i16* %59, align 2
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  call void @abort() #3
  unreachable

64:                                               ; preds = %56
  %65 = load double, double* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 4), align 8
  %66 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 4
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %65, %67
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  call void @abort() #3
  unreachable

70:                                               ; preds = %64
  %71 = load float, float* getelementptr inbounds (%struct.et7, %struct.et7* bitcast ({ %struct.dt7, [0 x float], i8, i8, i16, double, float }* @yv7 to %struct.et7*), i32 0, i32 5), align 8
  %72 = getelementptr inbounds %struct.et7, %struct.et7* %2, i32 0, i32 5
  %73 = load float, float* %72, align 8
  %74 = fcmp oeq float %71, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @abort() #3
  unreachable

76:                                               ; preds = %70
  %77 = load float, float* getelementptr inbounds ({ float, [4 x i8] }, { float, [4 x i8] }* @zv7, i32 0, i32 0), align 8
  %78 = bitcast %union.ft7* %10 to float*
  %79 = load float, float* %78, align 8
  %80 = fcmp oeq float %77, %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  call void @abort() #3
  unreachable

82:                                               ; preds = %76
  %83 = load i32, i32* @bav7, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  call void @abort() #3
  unreachable

87:                                               ; preds = %82
  %88 = load double, double* getelementptr inbounds (%struct.gt7, %struct.gt7* @bbv7, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.gt7, %struct.gt7* %11, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %88, %90
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  call void @abort() #3
  unreachable

93:                                               ; preds = %87
  %94 = load i64, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @bcv7, i64 0, i64 0), align 8
  %95 = load i64*, i64** %15, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  call void @abort() #3
  unreachable

100:                                              ; preds = %93
  %101 = load i64, i64* @bdv7, align 8
  %102 = load i64, i64* %16, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @abort() #3
  unreachable

105:                                              ; preds = %100
  %106 = load i8, i8* @uv7, align 1
  ret i8 %106
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
