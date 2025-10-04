; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.expandfft.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.expandfft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = dso_local global [2048 x float] zeroinitializer, align 16
@z = dso_local global [2048 x float] zeroinitializer, align 16
@w = dso_local global [1024 x float] zeroinitializer, align 16
@y = dso_local global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" for n=%d, fwd/bck error=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" for n=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%g  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  store float 3.310000e+02, float* %9, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %202, %0
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %205

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 2048
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = call float @ggl(float* noundef %9)
  store float %28, float* %11, align 4
  %29 = call float @ggl(float* noundef %9)
  store float %29, float* %12, align 4
  %30 = load float, float* %11, align 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %32
  store float %30, float* %33, align 4
  %34 = load float, float* %11, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %36
  store float %34, float* %37, align 4
  %38 = load float, float* %12, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %41
  store float %38, float* %42, align 4
  %43 = load float, float* %12, align 4
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %27
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %3, align 4
  br label %24, !llvm.loop !4

51:                                               ; preds = %24
  br label %79

52:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 2048
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  %57 = load float, float* %11, align 4
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %59
  store float %57, float* %60, align 4
  %61 = load float, float* %11, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %63
  store float %61, float* %64, align 4
  %65 = load float, float* %12, align 4
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %68
  store float %65, float* %69, align 4
  %70 = load float, float* %12, align 4
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %73
  store float %70, float* %74, align 4
  br label %75

75:                                               ; preds = %56
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %3, align 4
  br label %53, !llvm.loop !6

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78, %51
  store i32 1024, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  call void (i32, float*, ...) bitcast (void (i32, [2 x float]*)* @cffti to void (i32, float*, ...)*)(i32 noundef %80, float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0))
  %81 = load i32, i32* %2, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %163

83:                                               ; preds = %79
  store float 1.000000e+00, float* %10, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load float, float* %10, align 4
  %86 = fpext float %85 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %84, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %86)
  store float -1.000000e+00, float* %10, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load float, float* %10, align 4
  %89 = fpext float %88 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %87, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %89)
  %90 = load i32, i32* %6, align 4
  %91 = sitofp i32 %90 to float
  %92 = fpext float %91 to double
  %93 = fdiv double 1.000000e+00, %92
  %94 = fptrunc double %93 to float
  store float %94, float* %8, align 4
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %152, %83
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 2048
  br i1 %97, label %98, label %155

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float, float* %8, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fneg float %103
  %109 = call float @llvm.fmuladd.f32(float %108, float %107, float %102)
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %111
  %113 = load float, float* %112, align 4
  %114 = load float, float* %8, align 4
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fneg float %114
  %120 = call float @llvm.fmuladd.f32(float %119, float %118, float %113)
  %121 = load i32, i32* %3, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %123
  %125 = load float, float* %124, align 4
  %126 = load float, float* %8, align 4
  %127 = load i32, i32* %3, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fneg float %126
  %133 = call float @llvm.fmuladd.f32(float %132, float %131, float %125)
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load float, float* %8, align 4
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fneg float %139
  %146 = call float @llvm.fmuladd.f32(float %145, float %144, float %138)
  %147 = fmul float %133, %146
  %148 = call float @llvm.fmuladd.f32(float %109, float %120, float %147)
  %149 = fpext float %148 to double
  %150 = load double, double* %7, align 8
  %151 = fadd double %150, %149
  store double %151, double* %7, align 8
  br label %152

152:                                              ; preds = %98
  %153 = load i32, i32* %3, align 4
  %154 = add nsw i32 %153, 2
  store i32 %154, i32* %3, align 4
  br label %95, !llvm.loop !7

155:                                              ; preds = %95
  %156 = load float, float* %8, align 4
  %157 = fpext float %156 to double
  %158 = load double, double* %7, align 8
  %159 = fmul double %157, %158
  %160 = call double @sqrt(double noundef %159) #5
  store double %160, double* %7, align 8
  %161 = load double, double* %7, align 8
  %162 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1024, double noundef %161)
  store i32 0, i32* %2, align 4
  br label %201

163:                                              ; preds = %79
  store i32 0, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %164

164:                                              ; preds = %174, %163
  %165 = load i32, i32* %5, align 4
  %166 = icmp slt i32 %165, 20000
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  store float 1.000000e+00, float* %10, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load float, float* %10, align 4
  %170 = fpext float %169 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %168, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %170)
  store float -1.000000e+00, float* %10, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load float, float* %10, align 4
  %173 = fpext float %172 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %171, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %173)
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %164, !llvm.loop !8

177:                                              ; preds = %164
  %178 = load i32, i32* %6, align 4
  %179 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %197, %177
  %181 = load i32, i32* %3, align 4
  %182 = icmp slt i32 %181, 1024
  br i1 %182, label %183, label %200

183:                                              ; preds = %180
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i64 0, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fpext float %187 to double
  %189 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %188)
  %190 = load i32, i32* %16, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp eq i32 %192, 4
  br i1 %193, label %194, label %196

194:                                              ; preds = %183
  %195 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %196

196:                                              ; preds = %194, %183
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %3, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %3, align 4
  br label %180, !llvm.loop !9

200:                                              ; preds = %180
  br label %201

201:                                              ; preds = %200, %155
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %4, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %4, align 4
  br label %17, !llvm.loop !10

205:                                              ; preds = %17
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @cfft2(i32 noundef %0, [2 x float]* noundef %1, [2 x float]* noundef %2, [2 x float]* noundef %3, double noundef %4) #4 {
  %6 = alloca <4 x float>, align 16
  %7 = alloca <4 x float>, align 16
  %8 = alloca <4 x float>, align 16
  %9 = alloca <4 x float>, align 16
  %10 = alloca <4 x float>, align 16
  %11 = alloca <4 x float>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca <4 x float>, align 16
  %14 = alloca <4 x float>, align 16
  %15 = alloca <4 x float>, align 16
  %16 = alloca <4 x float>, align 16
  %17 = alloca <4 x float>, align 16
  %18 = alloca <4 x float>, align 16
  %19 = alloca <4 x float>, align 16
  %20 = alloca <4 x float>, align 16
  %21 = alloca <4 x float>, align 16
  %22 = alloca <4 x float>, align 16
  %23 = alloca <4 x float>, align 16
  %24 = alloca <4 x float>, align 16
  %25 = alloca <4 x float>, align 16
  %26 = alloca <4 x float>, align 16
  %27 = alloca <4 x float>, align 16
  %28 = alloca float*, align 8
  %29 = alloca <4 x float>, align 16
  %30 = alloca float*, align 8
  %31 = alloca <4 x float>, align 16
  %32 = alloca float*, align 8
  %33 = alloca <4 x float>, align 16
  %34 = alloca float*, align 8
  %35 = alloca <4 x float>, align 16
  %36 = alloca float*, align 8
  %37 = alloca <4 x float>, align 16
  %38 = alloca float*, align 8
  %39 = alloca <4 x float>, align 16
  %40 = alloca float*, align 8
  %41 = alloca <4 x float>, align 16
  %42 = alloca float*, align 8
  %43 = alloca <4 x float>, align 16
  %44 = alloca float*, align 8
  %45 = alloca <4 x float>, align 16
  %46 = alloca float*, align 8
  %47 = alloca <4 x float>, align 16
  %48 = alloca <4 x float>, align 16
  %49 = alloca <4 x float>, align 16
  %50 = alloca <4 x float>, align 16
  %51 = alloca <4 x float>, align 16
  %52 = alloca <4 x float>, align 16
  %53 = alloca <4 x float>, align 16
  %54 = alloca <4 x float>, align 16
  %55 = alloca <4 x float>, align 16
  %56 = alloca <4 x float>, align 16
  %57 = alloca <4 x float>, align 16
  %58 = alloca <4 x float>, align 16
  %59 = alloca <4 x float>, align 16
  %60 = alloca <4 x float>, align 16
  %61 = alloca <4 x float>, align 16
  %62 = alloca <4 x float>, align 16
  %63 = alloca <4 x float>, align 16
  %64 = alloca float*, align 8
  %65 = alloca float*, align 8
  %66 = alloca float*, align 8
  %67 = alloca float*, align 8
  %68 = alloca float*, align 8
  %69 = alloca float*, align 8
  %70 = alloca float*, align 8
  %71 = alloca float*, align 8
  %72 = alloca float*, align 8
  %73 = alloca float*, align 8
  %74 = alloca float*, align 8
  %75 = alloca float*, align 8
  %76 = alloca float*, align 8
  %77 = alloca float*, align 8
  %78 = alloca i32, align 4
  %79 = alloca [2 x float]*, align 8
  %80 = alloca [2 x float]*, align 8
  %81 = alloca [2 x float]*, align 8
  %82 = alloca float, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  %89 = alloca i32, align 4
  %90 = alloca i32, align 4
  %91 = alloca i32, align 4
  %92 = alloca i32, align 4
  %93 = alloca i32, align 4
  %94 = alloca i32, align 4
  %95 = alloca [2 x float]*, align 8
  %96 = alloca [2 x float]*, align 8
  %97 = alloca [2 x float]*, align 8
  %98 = alloca [2 x float]*, align 8
  %99 = alloca [2 x float]*, align 8
  %100 = alloca [2 x float]*, align 8
  %101 = alloca [2 x float]*, align 8
  %102 = alloca [2 x float]*, align 8
  %103 = alloca float, align 4
  %104 = alloca float, align 4
  %105 = alloca [4 x float], align 16
  %106 = alloca [4 x float], align 16
  %107 = alloca <4 x float>, align 16
  %108 = alloca <4 x float>, align 16
  %109 = alloca <4 x float>, align 16
  %110 = alloca <4 x float>, align 16
  %111 = alloca <4 x float>, align 16
  %112 = alloca <4 x float>, align 16
  %113 = alloca <4 x float>, align 16
  %114 = alloca <4 x float>, align 16
  %115 = alloca <4 x float>, align 16
  %116 = alloca <4 x float>, align 16
  %117 = alloca <4 x float>, align 16
  %118 = alloca <4 x float>, align 16
  %119 = alloca <4 x float>, align 16
  %120 = alloca <4 x float>, align 16
  %121 = alloca <4 x float>, align 16
  %122 = alloca <4 x float>, align 16
  %123 = fptrunc double %4 to float
  store i32 %0, i32* %78, align 4
  store [2 x float]* %1, [2 x float]** %79, align 8
  store [2 x float]* %2, [2 x float]** %80, align 8
  store [2 x float]* %3, [2 x float]** %81, align 8
  store float %123, float* %82, align 4
  %124 = load i32, i32* %78, align 4
  %125 = icmp sle i32 %124, 1
  br i1 %125, label %126, label %141

126:                                              ; preds = %5
  %127 = load [2 x float]*, [2 x float]** %79, align 8
  %128 = getelementptr inbounds [2 x float], [2 x float]* %127, i64 0
  %129 = getelementptr inbounds [2 x float], [2 x float]* %128, i64 0, i64 0
  %130 = load float, float* %129, align 4
  %131 = load [2 x float]*, [2 x float]** %80, align 8
  %132 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 0
  %133 = getelementptr inbounds [2 x float], [2 x float]* %132, i64 0, i64 0
  store float %130, float* %133, align 4
  %134 = load [2 x float]*, [2 x float]** %79, align 8
  %135 = getelementptr inbounds [2 x float], [2 x float]* %134, i64 0
  %136 = getelementptr inbounds [2 x float], [2 x float]* %135, i64 0, i64 1
  %137 = load float, float* %136, align 4
  %138 = load [2 x float]*, [2 x float]** %80, align 8
  %139 = getelementptr inbounds [2 x float], [2 x float]* %138, i64 0
  %140 = getelementptr inbounds [2 x float], [2 x float]* %139, i64 0, i64 1
  store float %137, float* %140, align 4
  br label %918

141:                                              ; preds = %5
  %142 = load i32, i32* %78, align 4
  %143 = sitofp i32 %142 to float
  %144 = fpext float %143 to double
  %145 = call double @log(double noundef %144) #5
  %146 = call double @log(double noundef 1.990000e+00) #5
  %147 = fdiv double %145, %146
  %148 = fptosi double %147 to i32
  store i32 %148, i32* %89, align 4
  store i32 1, i32* %91, align 4
  store i32 2, i32* %92, align 4
  %149 = load i32, i32* %78, align 4
  %150 = sdiv i32 %149, 2
  store i32 %150, i32* %88, align 4
  %151 = load [2 x float]*, [2 x float]** %79, align 8
  %152 = getelementptr inbounds [2 x float], [2 x float]* %151, i64 0
  %153 = getelementptr inbounds [2 x float], [2 x float]* %152, i64 0, i64 0
  %154 = bitcast float* %153 to i8*
  %155 = bitcast i8* %154 to [2 x float]*
  store [2 x float]* %155, [2 x float]** %95, align 8
  %156 = load [2 x float]*, [2 x float]** %79, align 8
  %157 = load i32, i32* %78, align 4
  %158 = sdiv i32 %157, 2
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x float], [2 x float]* %156, i64 %159
  %161 = getelementptr inbounds [2 x float], [2 x float]* %160, i64 0, i64 0
  %162 = bitcast float* %161 to i8*
  %163 = bitcast i8* %162 to [2 x float]*
  store [2 x float]* %163, [2 x float]** %96, align 8
  %164 = load [2 x float]*, [2 x float]** %80, align 8
  %165 = getelementptr inbounds [2 x float], [2 x float]* %164, i64 0
  %166 = getelementptr inbounds [2 x float], [2 x float]* %165, i64 0, i64 0
  %167 = bitcast float* %166 to i8*
  %168 = bitcast i8* %167 to [2 x float]*
  store [2 x float]* %168, [2 x float]** %97, align 8
  %169 = load [2 x float]*, [2 x float]** %80, align 8
  %170 = getelementptr inbounds [2 x float], [2 x float]* %169, i64 1
  %171 = getelementptr inbounds [2 x float], [2 x float]* %170, i64 0, i64 0
  %172 = bitcast float* %171 to i8*
  %173 = bitcast i8* %172 to [2 x float]*
  store [2 x float]* %173, [2 x float]** %98, align 8
  store i32 0, i32* %90, align 4
  br label %174

174:                                              ; preds = %308, %141
  %175 = load i32, i32* %90, align 4
  %176 = load i32, i32* %88, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %311

178:                                              ; preds = %174
  %179 = load i32, i32* %90, align 4
  %180 = load i32, i32* %92, align 4
  %181 = mul nsw i32 %179, %180
  store i32 %181, i32* %84, align 4
  %182 = load [2 x float]*, [2 x float]** %81, align 8
  %183 = load i32, i32* %90, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [2 x float], [2 x float]* %182, i64 %184
  %186 = getelementptr inbounds [2 x float], [2 x float]* %185, i64 0, i64 0
  %187 = load float, float* %186, align 4
  store float %187, float* %103, align 4
  %188 = load [2 x float]*, [2 x float]** %81, align 8
  %189 = load i32, i32* %90, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [2 x float], [2 x float]* %188, i64 %190
  %192 = getelementptr inbounds [2 x float], [2 x float]* %191, i64 0, i64 1
  %193 = load float, float* %192, align 4
  store float %193, float* %104, align 4
  %194 = load float, float* %82, align 4
  %195 = fpext float %194 to double
  %196 = fcmp olt double %195, 0.000000e+00
  br i1 %196, label %197, label %200

197:                                              ; preds = %178
  %198 = load float, float* %104, align 4
  %199 = fneg float %198
  store float %199, float* %104, align 4
  br label %200

200:                                              ; preds = %197, %178
  %201 = load float, float* %103, align 4
  %202 = load [2 x float]*, [2 x float]** %95, align 8
  %203 = load i32, i32* %90, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [2 x float], [2 x float]* %202, i64 %204
  %206 = getelementptr inbounds [2 x float], [2 x float]* %205, i64 0, i64 0
  %207 = load float, float* %206, align 4
  %208 = load [2 x float]*, [2 x float]** %96, align 8
  %209 = load i32, i32* %90, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [2 x float], [2 x float]* %208, i64 %210
  %212 = getelementptr inbounds [2 x float], [2 x float]* %211, i64 0, i64 0
  %213 = load float, float* %212, align 4
  %214 = fsub float %207, %213
  %215 = load float, float* %104, align 4
  %216 = load [2 x float]*, [2 x float]** %95, align 8
  %217 = load i32, i32* %90, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x float], [2 x float]* %216, i64 %218
  %220 = getelementptr inbounds [2 x float], [2 x float]* %219, i64 0, i64 1
  %221 = load float, float* %220, align 4
  %222 = load [2 x float]*, [2 x float]** %96, align 8
  %223 = load i32, i32* %90, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x float], [2 x float]* %222, i64 %224
  %226 = getelementptr inbounds [2 x float], [2 x float]* %225, i64 0, i64 1
  %227 = load float, float* %226, align 4
  %228 = fsub float %221, %227
  %229 = fmul float %215, %228
  %230 = fneg float %229
  %231 = call float @llvm.fmuladd.f32(float %201, float %214, float %230)
  %232 = load [2 x float]*, [2 x float]** %98, align 8
  %233 = load i32, i32* %84, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [2 x float], [2 x float]* %232, i64 %234
  %236 = getelementptr inbounds [2 x float], [2 x float]* %235, i64 0, i64 0
  store float %231, float* %236, align 4
  %237 = load float, float* %104, align 4
  %238 = load [2 x float]*, [2 x float]** %95, align 8
  %239 = load i32, i32* %90, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [2 x float], [2 x float]* %238, i64 %240
  %242 = getelementptr inbounds [2 x float], [2 x float]* %241, i64 0, i64 0
  %243 = load float, float* %242, align 4
  %244 = load [2 x float]*, [2 x float]** %96, align 8
  %245 = load i32, i32* %90, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [2 x float], [2 x float]* %244, i64 %246
  %248 = getelementptr inbounds [2 x float], [2 x float]* %247, i64 0, i64 0
  %249 = load float, float* %248, align 4
  %250 = fsub float %243, %249
  %251 = load float, float* %103, align 4
  %252 = load [2 x float]*, [2 x float]** %95, align 8
  %253 = load i32, i32* %90, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [2 x float], [2 x float]* %252, i64 %254
  %256 = getelementptr inbounds [2 x float], [2 x float]* %255, i64 0, i64 1
  %257 = load float, float* %256, align 4
  %258 = load [2 x float]*, [2 x float]** %96, align 8
  %259 = load i32, i32* %90, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [2 x float], [2 x float]* %258, i64 %260
  %262 = getelementptr inbounds [2 x float], [2 x float]* %261, i64 0, i64 1
  %263 = load float, float* %262, align 4
  %264 = fsub float %257, %263
  %265 = fmul float %251, %264
  %266 = call float @llvm.fmuladd.f32(float %237, float %250, float %265)
  %267 = load [2 x float]*, [2 x float]** %98, align 8
  %268 = load i32, i32* %84, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [2 x float], [2 x float]* %267, i64 %269
  %271 = getelementptr inbounds [2 x float], [2 x float]* %270, i64 0, i64 1
  store float %266, float* %271, align 4
  %272 = load [2 x float]*, [2 x float]** %95, align 8
  %273 = load i32, i32* %90, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [2 x float], [2 x float]* %272, i64 %274
  %276 = getelementptr inbounds [2 x float], [2 x float]* %275, i64 0, i64 0
  %277 = load float, float* %276, align 4
  %278 = load [2 x float]*, [2 x float]** %96, align 8
  %279 = load i32, i32* %90, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x float], [2 x float]* %278, i64 %280
  %282 = getelementptr inbounds [2 x float], [2 x float]* %281, i64 0, i64 0
  %283 = load float, float* %282, align 4
  %284 = fadd float %277, %283
  %285 = load [2 x float]*, [2 x float]** %97, align 8
  %286 = load i32, i32* %84, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [2 x float], [2 x float]* %285, i64 %287
  %289 = getelementptr inbounds [2 x float], [2 x float]* %288, i64 0, i64 0
  store float %284, float* %289, align 4
  %290 = load [2 x float]*, [2 x float]** %95, align 8
  %291 = load i32, i32* %90, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [2 x float], [2 x float]* %290, i64 %292
  %294 = getelementptr inbounds [2 x float], [2 x float]* %293, i64 0, i64 1
  %295 = load float, float* %294, align 4
  %296 = load [2 x float]*, [2 x float]** %96, align 8
  %297 = load i32, i32* %90, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x float], [2 x float]* %296, i64 %298
  %300 = getelementptr inbounds [2 x float], [2 x float]* %299, i64 0, i64 1
  %301 = load float, float* %300, align 4
  %302 = fadd float %295, %301
  %303 = load [2 x float]*, [2 x float]** %97, align 8
  %304 = load i32, i32* %84, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [2 x float], [2 x float]* %303, i64 %305
  %307 = getelementptr inbounds [2 x float], [2 x float]* %306, i64 0, i64 1
  store float %302, float* %307, align 4
  br label %308

308:                                              ; preds = %200
  %309 = load i32, i32* %90, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %90, align 4
  br label %174, !llvm.loop !11

311:                                              ; preds = %174
  %312 = load i32, i32* %78, align 4
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  br label %918

315:                                              ; preds = %311
  store i32 2, i32* %91, align 4
  store i32 4, i32* %92, align 4
  %316 = load i32, i32* %78, align 4
  %317 = sdiv i32 %316, 4
  store i32 %317, i32* %88, align 4
  %318 = load [2 x float]*, [2 x float]** %80, align 8
  %319 = getelementptr inbounds [2 x float], [2 x float]* %318, i64 0
  %320 = getelementptr inbounds [2 x float], [2 x float]* %319, i64 0, i64 0
  %321 = bitcast float* %320 to i8*
  %322 = bitcast i8* %321 to [2 x float]*
  store [2 x float]* %322, [2 x float]** %95, align 8
  %323 = load [2 x float]*, [2 x float]** %80, align 8
  %324 = load i32, i32* %78, align 4
  %325 = sdiv i32 %324, 2
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x float], [2 x float]* %323, i64 %326
  %328 = getelementptr inbounds [2 x float], [2 x float]* %327, i64 0, i64 0
  %329 = bitcast float* %328 to i8*
  %330 = bitcast i8* %329 to [2 x float]*
  store [2 x float]* %330, [2 x float]** %96, align 8
  %331 = load [2 x float]*, [2 x float]** %79, align 8
  %332 = getelementptr inbounds [2 x float], [2 x float]* %331, i64 0
  %333 = getelementptr inbounds [2 x float], [2 x float]* %332, i64 0, i64 0
  %334 = bitcast float* %333 to i8*
  %335 = bitcast i8* %334 to [2 x float]*
  store [2 x float]* %335, [2 x float]** %97, align 8
  %336 = load [2 x float]*, [2 x float]** %79, align 8
  %337 = load i32, i32* %91, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [2 x float], [2 x float]* %336, i64 %338
  %340 = getelementptr inbounds [2 x float], [2 x float]* %339, i64 0, i64 0
  %341 = bitcast float* %340 to i8*
  %342 = bitcast i8* %341 to [2 x float]*
  store [2 x float]* %342, [2 x float]** %98, align 8
  %343 = load i32, i32* %78, align 4
  %344 = icmp eq i32 %343, 4
  br i1 %344, label %345, label %358

345:                                              ; preds = %315
  %346 = load [2 x float]*, [2 x float]** %80, align 8
  %347 = getelementptr inbounds [2 x float], [2 x float]* %346, i64 0
  %348 = getelementptr inbounds [2 x float], [2 x float]* %347, i64 0, i64 0
  %349 = bitcast float* %348 to i8*
  %350 = bitcast i8* %349 to [2 x float]*
  store [2 x float]* %350, [2 x float]** %97, align 8
  %351 = load [2 x float]*, [2 x float]** %80, align 8
  %352 = load i32, i32* %91, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [2 x float], [2 x float]* %351, i64 %353
  %355 = getelementptr inbounds [2 x float], [2 x float]* %354, i64 0, i64 0
  %356 = bitcast float* %355 to i8*
  %357 = bitcast i8* %356 to [2 x float]*
  store [2 x float]* %357, [2 x float]** %98, align 8
  br label %358

358:                                              ; preds = %345, %315
  store i32 0, i32* %90, align 4
  br label %359

359:                                              ; preds = %477, %358
  %360 = load i32, i32* %90, align 4
  %361 = load i32, i32* %88, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %480

363:                                              ; preds = %359
  %364 = load i32, i32* %90, align 4
  %365 = load i32, i32* %91, align 4
  %366 = mul nsw i32 %364, %365
  store i32 %366, i32* %85, align 4
  %367 = load i32, i32* %90, align 4
  %368 = load i32, i32* %92, align 4
  %369 = mul nsw i32 %367, %368
  store i32 %369, i32* %84, align 4
  %370 = load [2 x float]*, [2 x float]** %81, align 8
  %371 = load i32, i32* %85, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [2 x float], [2 x float]* %370, i64 %372
  %374 = getelementptr inbounds [2 x float], [2 x float]* %373, i64 0, i64 0
  %375 = load float, float* %374, align 4
  store float %375, float* %103, align 4
  %376 = load [2 x float]*, [2 x float]** %81, align 8
  %377 = load i32, i32* %85, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [2 x float], [2 x float]* %376, i64 %378
  %380 = getelementptr inbounds [2 x float], [2 x float]* %379, i64 0, i64 1
  %381 = load float, float* %380, align 4
  store float %381, float* %104, align 4
  %382 = load float, float* %82, align 4
  %383 = fpext float %382 to double
  %384 = fcmp olt double %383, 0.000000e+00
  br i1 %384, label %385, label %388

385:                                              ; preds = %363
  %386 = load float, float* %104, align 4
  %387 = fneg float %386
  store float %387, float* %104, align 4
  br label %388

388:                                              ; preds = %385, %363
  %389 = load float, float* %103, align 4
  %390 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float %389, float* %390, align 16
  %391 = load float, float* %103, align 4
  %392 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 1
  store float %391, float* %392, align 4
  %393 = load float, float* %103, align 4
  %394 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 2
  store float %393, float* %394, align 8
  %395 = load float, float* %103, align 4
  %396 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 3
  store float %395, float* %396, align 4
  %397 = load float, float* %104, align 4
  %398 = fneg float %397
  %399 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 0
  store float %398, float* %399, align 16
  %400 = load float, float* %104, align 4
  %401 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 1
  store float %400, float* %401, align 4
  %402 = load float, float* %104, align 4
  %403 = fneg float %402
  %404 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 2
  store float %403, float* %404, align 8
  %405 = load float, float* %104, align 4
  %406 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 3
  store float %405, float* %406, align 4
  %407 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float* %407, float** %64, align 8
  %408 = load float*, float** %64, align 8
  %409 = bitcast float* %408 to <4 x float>*
  %410 = load <4 x float>, <4 x float>* %409, align 16
  store <4 x float> %410, <4 x float>* %113, align 16
  %411 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 0
  store float* %411, float** %65, align 8
  %412 = load float*, float** %65, align 8
  %413 = bitcast float* %412 to <4 x float>*
  %414 = load <4 x float>, <4 x float>* %413, align 16
  store <4 x float> %414, <4 x float>* %114, align 16
  %415 = load [2 x float]*, [2 x float]** %95, align 8
  %416 = load i32, i32* %85, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [2 x float], [2 x float]* %415, i64 %417
  %419 = getelementptr inbounds [2 x float], [2 x float]* %418, i64 0, i64 0
  store float* %419, float** %66, align 8
  %420 = load float*, float** %66, align 8
  %421 = bitcast float* %420 to <4 x float>*
  %422 = load <4 x float>, <4 x float>* %421, align 16
  store <4 x float> %422, <4 x float>* %107, align 16
  %423 = load [2 x float]*, [2 x float]** %96, align 8
  %424 = load i32, i32* %85, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [2 x float], [2 x float]* %423, i64 %425
  %427 = getelementptr inbounds [2 x float], [2 x float]* %426, i64 0, i64 0
  store float* %427, float** %67, align 8
  %428 = load float*, float** %67, align 8
  %429 = bitcast float* %428 to <4 x float>*
  %430 = load <4 x float>, <4 x float>* %429, align 16
  store <4 x float> %430, <4 x float>* %108, align 16
  %431 = load <4 x float>, <4 x float>* %107, align 16
  %432 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %431, <4 x float>* %48, align 16
  store <4 x float> %432, <4 x float>* %49, align 16
  %433 = load <4 x float>, <4 x float>* %48, align 16
  %434 = load <4 x float>, <4 x float>* %49, align 16
  %435 = fadd <4 x float> %433, %434
  store <4 x float> %435, <4 x float>* %109, align 16
  %436 = load [2 x float]*, [2 x float]** %97, align 8
  %437 = load i32, i32* %84, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x float], [2 x float]* %436, i64 %438
  %440 = getelementptr inbounds [2 x float], [2 x float]* %439, i64 0, i64 0
  %441 = load <4 x float>, <4 x float>* %109, align 16
  store float* %440, float** %28, align 8
  store <4 x float> %441, <4 x float>* %29, align 16
  %442 = load <4 x float>, <4 x float>* %29, align 16
  %443 = load float*, float** %28, align 8
  %444 = bitcast float* %443 to <4 x float>*
  store <4 x float> %442, <4 x float>* %444, align 16
  %445 = load <4 x float>, <4 x float>* %107, align 16
  %446 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %445, <4 x float>* %18, align 16
  store <4 x float> %446, <4 x float>* %19, align 16
  %447 = load <4 x float>, <4 x float>* %18, align 16
  %448 = load <4 x float>, <4 x float>* %19, align 16
  %449 = fsub <4 x float> %447, %448
  store <4 x float> %449, <4 x float>* %110, align 16
  %450 = load <4 x float>, <4 x float>* %110, align 16
  %451 = load <4 x float>, <4 x float>* %110, align 16
  %452 = shufflevector <4 x float> %450, <4 x float> %451, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %452, <4 x float>* %111, align 16
  %453 = load <4 x float>, <4 x float>* %113, align 16
  %454 = load <4 x float>, <4 x float>* %110, align 16
  store <4 x float> %453, <4 x float>* %6, align 16
  store <4 x float> %454, <4 x float>* %7, align 16
  %455 = load <4 x float>, <4 x float>* %6, align 16
  %456 = load <4 x float>, <4 x float>* %7, align 16
  %457 = fmul <4 x float> %455, %456
  store <4 x float> %457, <4 x float>* %107, align 16
  %458 = load <4 x float>, <4 x float>* %114, align 16
  %459 = load <4 x float>, <4 x float>* %111, align 16
  store <4 x float> %458, <4 x float>* %8, align 16
  store <4 x float> %459, <4 x float>* %9, align 16
  %460 = load <4 x float>, <4 x float>* %8, align 16
  %461 = load <4 x float>, <4 x float>* %9, align 16
  %462 = fmul <4 x float> %460, %461
  store <4 x float> %462, <4 x float>* %108, align 16
  %463 = load <4 x float>, <4 x float>* %107, align 16
  %464 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %463, <4 x float>* %50, align 16
  store <4 x float> %464, <4 x float>* %51, align 16
  %465 = load <4 x float>, <4 x float>* %50, align 16
  %466 = load <4 x float>, <4 x float>* %51, align 16
  %467 = fadd <4 x float> %465, %466
  store <4 x float> %467, <4 x float>* %109, align 16
  %468 = load [2 x float]*, [2 x float]** %98, align 8
  %469 = load i32, i32* %84, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [2 x float], [2 x float]* %468, i64 %470
  %472 = getelementptr inbounds [2 x float], [2 x float]* %471, i64 0, i64 0
  %473 = load <4 x float>, <4 x float>* %109, align 16
  store float* %472, float** %30, align 8
  store <4 x float> %473, <4 x float>* %31, align 16
  %474 = load <4 x float>, <4 x float>* %31, align 16
  %475 = load float*, float** %30, align 8
  %476 = bitcast float* %475 to <4 x float>*
  store <4 x float> %474, <4 x float>* %476, align 16
  br label %477

477:                                              ; preds = %388
  %478 = load i32, i32* %90, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %90, align 4
  br label %359, !llvm.loop !12

480:                                              ; preds = %359
  %481 = load i32, i32* %78, align 4
  %482 = icmp eq i32 %481, 4
  br i1 %482, label %483, label %484

483:                                              ; preds = %480
  br label %918

484:                                              ; preds = %480
  %485 = load i32, i32* %91, align 4
  %486 = mul nsw i32 %485, 2
  store i32 %486, i32* %91, align 4
  %487 = load i32, i32* %91, align 4
  %488 = mul nsw i32 2, %487
  store i32 %488, i32* %92, align 4
  %489 = load i32, i32* %78, align 4
  %490 = load i32, i32* %92, align 4
  %491 = sdiv i32 %489, %490
  store i32 %491, i32* %88, align 4
  store i32 0, i32* %94, align 4
  store i32 2, i32* %93, align 4
  br label %492

492:                                              ; preds = %771, %484
  %493 = load i32, i32* %93, align 4
  %494 = load i32, i32* %89, align 4
  %495 = sub nsw i32 %494, 1
  %496 = icmp slt i32 %493, %495
  br i1 %496, label %497, label %774

497:                                              ; preds = %492
  %498 = load i32, i32* %94, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %526

500:                                              ; preds = %497
  %501 = load [2 x float]*, [2 x float]** %80, align 8
  %502 = getelementptr inbounds [2 x float], [2 x float]* %501, i64 0
  %503 = getelementptr inbounds [2 x float], [2 x float]* %502, i64 0, i64 0
  %504 = bitcast float* %503 to i8*
  %505 = bitcast i8* %504 to [2 x float]*
  store [2 x float]* %505, [2 x float]** %95, align 8
  %506 = load [2 x float]*, [2 x float]** %80, align 8
  %507 = load i32, i32* %78, align 4
  %508 = sdiv i32 %507, 2
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [2 x float], [2 x float]* %506, i64 %509
  %511 = getelementptr inbounds [2 x float], [2 x float]* %510, i64 0, i64 0
  %512 = bitcast float* %511 to i8*
  %513 = bitcast i8* %512 to [2 x float]*
  store [2 x float]* %513, [2 x float]** %96, align 8
  %514 = load [2 x float]*, [2 x float]** %79, align 8
  %515 = getelementptr inbounds [2 x float], [2 x float]* %514, i64 0
  %516 = getelementptr inbounds [2 x float], [2 x float]* %515, i64 0, i64 0
  %517 = bitcast float* %516 to i8*
  %518 = bitcast i8* %517 to [2 x float]*
  store [2 x float]* %518, [2 x float]** %97, align 8
  %519 = load [2 x float]*, [2 x float]** %79, align 8
  %520 = load i32, i32* %91, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [2 x float], [2 x float]* %519, i64 %521
  %523 = getelementptr inbounds [2 x float], [2 x float]* %522, i64 0, i64 0
  %524 = bitcast float* %523 to i8*
  %525 = bitcast i8* %524 to [2 x float]*
  store [2 x float]* %525, [2 x float]** %98, align 8
  store i32 0, i32* %94, align 4
  br label %552

526:                                              ; preds = %497
  %527 = load [2 x float]*, [2 x float]** %79, align 8
  %528 = getelementptr inbounds [2 x float], [2 x float]* %527, i64 0
  %529 = getelementptr inbounds [2 x float], [2 x float]* %528, i64 0, i64 0
  %530 = bitcast float* %529 to i8*
  %531 = bitcast i8* %530 to [2 x float]*
  store [2 x float]* %531, [2 x float]** %95, align 8
  %532 = load [2 x float]*, [2 x float]** %79, align 8
  %533 = load i32, i32* %78, align 4
  %534 = sdiv i32 %533, 2
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds [2 x float], [2 x float]* %532, i64 %535
  %537 = getelementptr inbounds [2 x float], [2 x float]* %536, i64 0, i64 0
  %538 = bitcast float* %537 to i8*
  %539 = bitcast i8* %538 to [2 x float]*
  store [2 x float]* %539, [2 x float]** %96, align 8
  %540 = load [2 x float]*, [2 x float]** %80, align 8
  %541 = getelementptr inbounds [2 x float], [2 x float]* %540, i64 0
  %542 = getelementptr inbounds [2 x float], [2 x float]* %541, i64 0, i64 0
  %543 = bitcast float* %542 to i8*
  %544 = bitcast i8* %543 to [2 x float]*
  store [2 x float]* %544, [2 x float]** %97, align 8
  %545 = load [2 x float]*, [2 x float]** %80, align 8
  %546 = load i32, i32* %91, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [2 x float], [2 x float]* %545, i64 %547
  %549 = getelementptr inbounds [2 x float], [2 x float]* %548, i64 0, i64 0
  %550 = bitcast float* %549 to i8*
  %551 = bitcast i8* %550 to [2 x float]*
  store [2 x float]* %551, [2 x float]** %98, align 8
  store i32 1, i32* %94, align 4
  br label %552

552:                                              ; preds = %526, %500
  store i32 0, i32* %90, align 4
  br label %553

553:                                              ; preds = %760, %552
  %554 = load i32, i32* %90, align 4
  %555 = load i32, i32* %88, align 4
  %556 = icmp slt i32 %554, %555
  br i1 %556, label %557, label %763

557:                                              ; preds = %553
  %558 = load i32, i32* %90, align 4
  %559 = load i32, i32* %91, align 4
  %560 = mul nsw i32 %558, %559
  store i32 %560, i32* %85, align 4
  %561 = load i32, i32* %90, align 4
  %562 = load i32, i32* %92, align 4
  %563 = mul nsw i32 %561, %562
  store i32 %563, i32* %84, align 4
  %564 = load [2 x float]*, [2 x float]** %81, align 8
  %565 = load i32, i32* %85, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [2 x float], [2 x float]* %564, i64 %566
  %568 = getelementptr inbounds [2 x float], [2 x float]* %567, i64 0, i64 0
  %569 = load float, float* %568, align 4
  store float %569, float* %103, align 4
  %570 = load [2 x float]*, [2 x float]** %81, align 8
  %571 = load i32, i32* %85, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [2 x float], [2 x float]* %570, i64 %572
  %574 = getelementptr inbounds [2 x float], [2 x float]* %573, i64 0, i64 1
  %575 = load float, float* %574, align 4
  store float %575, float* %104, align 4
  %576 = load float, float* %82, align 4
  %577 = fpext float %576 to double
  %578 = fcmp olt double %577, 0.000000e+00
  br i1 %578, label %579, label %582

579:                                              ; preds = %557
  %580 = load float, float* %104, align 4
  %581 = fneg float %580
  store float %581, float* %104, align 4
  br label %582

582:                                              ; preds = %579, %557
  %583 = load float, float* %103, align 4
  %584 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float %583, float* %584, align 16
  %585 = load float, float* %103, align 4
  %586 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 1
  store float %585, float* %586, align 4
  %587 = load float, float* %103, align 4
  %588 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 2
  store float %587, float* %588, align 8
  %589 = load float, float* %103, align 4
  %590 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 3
  store float %589, float* %590, align 4
  %591 = load float, float* %104, align 4
  %592 = fneg float %591
  %593 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 0
  store float %592, float* %593, align 16
  %594 = load float, float* %104, align 4
  %595 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 1
  store float %594, float* %595, align 4
  %596 = load float, float* %104, align 4
  %597 = fneg float %596
  %598 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 2
  store float %597, float* %598, align 8
  %599 = load float, float* %104, align 4
  %600 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 3
  store float %599, float* %600, align 4
  %601 = getelementptr inbounds [4 x float], [4 x float]* %105, i64 0, i64 0
  store float* %601, float** %68, align 8
  %602 = load float*, float** %68, align 8
  %603 = bitcast float* %602 to <4 x float>*
  %604 = load <4 x float>, <4 x float>* %603, align 16
  store <4 x float> %604, <4 x float>* %113, align 16
  %605 = getelementptr inbounds [4 x float], [4 x float]* %106, i64 0, i64 0
  store float* %605, float** %69, align 8
  %606 = load float*, float** %69, align 8
  %607 = bitcast float* %606 to <4 x float>*
  %608 = load <4 x float>, <4 x float>* %607, align 16
  store <4 x float> %608, <4 x float>* %114, align 16
  store i32 0, i32* %86, align 4
  br label %609

609:                                              ; preds = %756, %582
  %610 = load i32, i32* %86, align 4
  %611 = load i32, i32* %91, align 4
  %612 = icmp slt i32 %610, %611
  br i1 %612, label %613, label %759

613:                                              ; preds = %609
  %614 = load i32, i32* %86, align 4
  %615 = add nsw i32 %614, 2
  store i32 %615, i32* %87, align 4
  %616 = load [2 x float]*, [2 x float]** %95, align 8
  %617 = load i32, i32* %85, align 4
  %618 = load i32, i32* %86, align 4
  %619 = add nsw i32 %617, %618
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [2 x float], [2 x float]* %616, i64 %620
  %622 = getelementptr inbounds [2 x float], [2 x float]* %621, i64 0, i64 0
  store float* %622, float** %70, align 8
  %623 = load float*, float** %70, align 8
  %624 = bitcast float* %623 to <4 x float>*
  %625 = load <4 x float>, <4 x float>* %624, align 16
  store <4 x float> %625, <4 x float>* %107, align 16
  %626 = load [2 x float]*, [2 x float]** %96, align 8
  %627 = load i32, i32* %85, align 4
  %628 = load i32, i32* %86, align 4
  %629 = add nsw i32 %627, %628
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [2 x float], [2 x float]* %626, i64 %630
  %632 = getelementptr inbounds [2 x float], [2 x float]* %631, i64 0, i64 0
  store float* %632, float** %71, align 8
  %633 = load float*, float** %71, align 8
  %634 = bitcast float* %633 to <4 x float>*
  %635 = load <4 x float>, <4 x float>* %634, align 16
  store <4 x float> %635, <4 x float>* %108, align 16
  %636 = load <4 x float>, <4 x float>* %107, align 16
  %637 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %636, <4 x float>* %52, align 16
  store <4 x float> %637, <4 x float>* %53, align 16
  %638 = load <4 x float>, <4 x float>* %52, align 16
  %639 = load <4 x float>, <4 x float>* %53, align 16
  %640 = fadd <4 x float> %638, %639
  store <4 x float> %640, <4 x float>* %109, align 16
  %641 = load [2 x float]*, [2 x float]** %97, align 8
  %642 = load i32, i32* %84, align 4
  %643 = load i32, i32* %86, align 4
  %644 = add nsw i32 %642, %643
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [2 x float], [2 x float]* %641, i64 %645
  %647 = getelementptr inbounds [2 x float], [2 x float]* %646, i64 0, i64 0
  %648 = load <4 x float>, <4 x float>* %109, align 16
  store float* %647, float** %32, align 8
  store <4 x float> %648, <4 x float>* %33, align 16
  %649 = load <4 x float>, <4 x float>* %33, align 16
  %650 = load float*, float** %32, align 8
  %651 = bitcast float* %650 to <4 x float>*
  store <4 x float> %649, <4 x float>* %651, align 16
  %652 = load <4 x float>, <4 x float>* %107, align 16
  %653 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %652, <4 x float>* %20, align 16
  store <4 x float> %653, <4 x float>* %21, align 16
  %654 = load <4 x float>, <4 x float>* %20, align 16
  %655 = load <4 x float>, <4 x float>* %21, align 16
  %656 = fsub <4 x float> %654, %655
  store <4 x float> %656, <4 x float>* %110, align 16
  %657 = load <4 x float>, <4 x float>* %110, align 16
  %658 = load <4 x float>, <4 x float>* %110, align 16
  %659 = shufflevector <4 x float> %657, <4 x float> %658, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %659, <4 x float>* %111, align 16
  %660 = load <4 x float>, <4 x float>* %113, align 16
  %661 = load <4 x float>, <4 x float>* %110, align 16
  store <4 x float> %660, <4 x float>* %10, align 16
  store <4 x float> %661, <4 x float>* %11, align 16
  %662 = load <4 x float>, <4 x float>* %10, align 16
  %663 = load <4 x float>, <4 x float>* %11, align 16
  %664 = fmul <4 x float> %662, %663
  store <4 x float> %664, <4 x float>* %107, align 16
  %665 = load <4 x float>, <4 x float>* %114, align 16
  %666 = load <4 x float>, <4 x float>* %111, align 16
  store <4 x float> %665, <4 x float>* %12, align 16
  store <4 x float> %666, <4 x float>* %13, align 16
  %667 = load <4 x float>, <4 x float>* %12, align 16
  %668 = load <4 x float>, <4 x float>* %13, align 16
  %669 = fmul <4 x float> %667, %668
  store <4 x float> %669, <4 x float>* %108, align 16
  %670 = load <4 x float>, <4 x float>* %107, align 16
  %671 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %670, <4 x float>* %54, align 16
  store <4 x float> %671, <4 x float>* %55, align 16
  %672 = load <4 x float>, <4 x float>* %54, align 16
  %673 = load <4 x float>, <4 x float>* %55, align 16
  %674 = fadd <4 x float> %672, %673
  store <4 x float> %674, <4 x float>* %109, align 16
  %675 = load [2 x float]*, [2 x float]** %98, align 8
  %676 = load i32, i32* %84, align 4
  %677 = load i32, i32* %86, align 4
  %678 = add nsw i32 %676, %677
  %679 = sext i32 %678 to i64
  %680 = getelementptr inbounds [2 x float], [2 x float]* %675, i64 %679
  %681 = getelementptr inbounds [2 x float], [2 x float]* %680, i64 0, i64 0
  %682 = load <4 x float>, <4 x float>* %109, align 16
  store float* %681, float** %34, align 8
  store <4 x float> %682, <4 x float>* %35, align 16
  %683 = load <4 x float>, <4 x float>* %35, align 16
  %684 = load float*, float** %34, align 8
  %685 = bitcast float* %684 to <4 x float>*
  store <4 x float> %683, <4 x float>* %685, align 16
  %686 = load [2 x float]*, [2 x float]** %95, align 8
  %687 = load i32, i32* %85, align 4
  %688 = load i32, i32* %87, align 4
  %689 = add nsw i32 %687, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds [2 x float], [2 x float]* %686, i64 %690
  %692 = getelementptr inbounds [2 x float], [2 x float]* %691, i64 0, i64 0
  store float* %692, float** %72, align 8
  %693 = load float*, float** %72, align 8
  %694 = bitcast float* %693 to <4 x float>*
  %695 = load <4 x float>, <4 x float>* %694, align 16
  store <4 x float> %695, <4 x float>* %115, align 16
  %696 = load [2 x float]*, [2 x float]** %96, align 8
  %697 = load i32, i32* %85, align 4
  %698 = load i32, i32* %87, align 4
  %699 = add nsw i32 %697, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [2 x float], [2 x float]* %696, i64 %700
  %702 = getelementptr inbounds [2 x float], [2 x float]* %701, i64 0, i64 0
  store float* %702, float** %73, align 8
  %703 = load float*, float** %73, align 8
  %704 = bitcast float* %703 to <4 x float>*
  %705 = load <4 x float>, <4 x float>* %704, align 16
  store <4 x float> %705, <4 x float>* %116, align 16
  %706 = load <4 x float>, <4 x float>* %115, align 16
  %707 = load <4 x float>, <4 x float>* %116, align 16
  store <4 x float> %706, <4 x float>* %56, align 16
  store <4 x float> %707, <4 x float>* %57, align 16
  %708 = load <4 x float>, <4 x float>* %56, align 16
  %709 = load <4 x float>, <4 x float>* %57, align 16
  %710 = fadd <4 x float> %708, %709
  store <4 x float> %710, <4 x float>* %117, align 16
  %711 = load [2 x float]*, [2 x float]** %97, align 8
  %712 = load i32, i32* %84, align 4
  %713 = load i32, i32* %87, align 4
  %714 = add nsw i32 %712, %713
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [2 x float], [2 x float]* %711, i64 %715
  %717 = getelementptr inbounds [2 x float], [2 x float]* %716, i64 0, i64 0
  %718 = load <4 x float>, <4 x float>* %117, align 16
  store float* %717, float** %36, align 8
  store <4 x float> %718, <4 x float>* %37, align 16
  %719 = load <4 x float>, <4 x float>* %37, align 16
  %720 = load float*, float** %36, align 8
  %721 = bitcast float* %720 to <4 x float>*
  store <4 x float> %719, <4 x float>* %721, align 16
  %722 = load <4 x float>, <4 x float>* %115, align 16
  %723 = load <4 x float>, <4 x float>* %116, align 16
  store <4 x float> %722, <4 x float>* %22, align 16
  store <4 x float> %723, <4 x float>* %23, align 16
  %724 = load <4 x float>, <4 x float>* %22, align 16
  %725 = load <4 x float>, <4 x float>* %23, align 16
  %726 = fsub <4 x float> %724, %725
  store <4 x float> %726, <4 x float>* %118, align 16
  %727 = load <4 x float>, <4 x float>* %118, align 16
  %728 = load <4 x float>, <4 x float>* %118, align 16
  %729 = shufflevector <4 x float> %727, <4 x float> %728, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %729, <4 x float>* %119, align 16
  %730 = load <4 x float>, <4 x float>* %113, align 16
  %731 = load <4 x float>, <4 x float>* %118, align 16
  store <4 x float> %730, <4 x float>* %14, align 16
  store <4 x float> %731, <4 x float>* %15, align 16
  %732 = load <4 x float>, <4 x float>* %14, align 16
  %733 = load <4 x float>, <4 x float>* %15, align 16
  %734 = fmul <4 x float> %732, %733
  store <4 x float> %734, <4 x float>* %115, align 16
  %735 = load <4 x float>, <4 x float>* %114, align 16
  %736 = load <4 x float>, <4 x float>* %119, align 16
  store <4 x float> %735, <4 x float>* %16, align 16
  store <4 x float> %736, <4 x float>* %17, align 16
  %737 = load <4 x float>, <4 x float>* %16, align 16
  %738 = load <4 x float>, <4 x float>* %17, align 16
  %739 = fmul <4 x float> %737, %738
  store <4 x float> %739, <4 x float>* %116, align 16
  %740 = load <4 x float>, <4 x float>* %115, align 16
  %741 = load <4 x float>, <4 x float>* %116, align 16
  store <4 x float> %740, <4 x float>* %58, align 16
  store <4 x float> %741, <4 x float>* %59, align 16
  %742 = load <4 x float>, <4 x float>* %58, align 16
  %743 = load <4 x float>, <4 x float>* %59, align 16
  %744 = fadd <4 x float> %742, %743
  store <4 x float> %744, <4 x float>* %117, align 16
  %745 = load [2 x float]*, [2 x float]** %98, align 8
  %746 = load i32, i32* %84, align 4
  %747 = load i32, i32* %87, align 4
  %748 = add nsw i32 %746, %747
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [2 x float], [2 x float]* %745, i64 %749
  %751 = getelementptr inbounds [2 x float], [2 x float]* %750, i64 0, i64 0
  %752 = load <4 x float>, <4 x float>* %117, align 16
  store float* %751, float** %38, align 8
  store <4 x float> %752, <4 x float>* %39, align 16
  %753 = load <4 x float>, <4 x float>* %39, align 16
  %754 = load float*, float** %38, align 8
  %755 = bitcast float* %754 to <4 x float>*
  store <4 x float> %753, <4 x float>* %755, align 16
  br label %756

756:                                              ; preds = %613
  %757 = load i32, i32* %86, align 4
  %758 = add nsw i32 %757, 4
  store i32 %758, i32* %86, align 4
  br label %609, !llvm.loop !13

759:                                              ; preds = %609
  br label %760

760:                                              ; preds = %759
  %761 = load i32, i32* %90, align 4
  %762 = add nsw i32 %761, 1
  store i32 %762, i32* %90, align 4
  br label %553, !llvm.loop !14

763:                                              ; preds = %553
  %764 = load i32, i32* %91, align 4
  %765 = mul nsw i32 %764, 2
  store i32 %765, i32* %91, align 4
  %766 = load i32, i32* %91, align 4
  %767 = mul nsw i32 2, %766
  store i32 %767, i32* %92, align 4
  %768 = load i32, i32* %78, align 4
  %769 = load i32, i32* %92, align 4
  %770 = sdiv i32 %768, %769
  store i32 %770, i32* %88, align 4
  br label %771

771:                                              ; preds = %763
  %772 = load i32, i32* %93, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %93, align 4
  br label %492, !llvm.loop !15

774:                                              ; preds = %492
  %775 = load [2 x float]*, [2 x float]** %80, align 8
  %776 = getelementptr inbounds [2 x float], [2 x float]* %775, i64 0
  %777 = getelementptr inbounds [2 x float], [2 x float]* %776, i64 0, i64 0
  %778 = bitcast float* %777 to i8*
  %779 = bitcast i8* %778 to [2 x float]*
  store [2 x float]* %779, [2 x float]** %97, align 8
  %780 = load [2 x float]*, [2 x float]** %80, align 8
  %781 = load i32, i32* %78, align 4
  %782 = sdiv i32 %781, 2
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [2 x float], [2 x float]* %780, i64 %783
  %785 = getelementptr inbounds [2 x float], [2 x float]* %784, i64 0, i64 0
  %786 = bitcast float* %785 to i8*
  %787 = bitcast i8* %786 to [2 x float]*
  store [2 x float]* %787, [2 x float]** %98, align 8
  %788 = load i32, i32* %94, align 4
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %804

790:                                              ; preds = %774
  %791 = load [2 x float]*, [2 x float]** %80, align 8
  %792 = getelementptr inbounds [2 x float], [2 x float]* %791, i64 0
  %793 = getelementptr inbounds [2 x float], [2 x float]* %792, i64 0, i64 0
  %794 = bitcast float* %793 to i8*
  %795 = bitcast i8* %794 to [2 x float]*
  store [2 x float]* %795, [2 x float]** %95, align 8
  %796 = load [2 x float]*, [2 x float]** %80, align 8
  %797 = load i32, i32* %78, align 4
  %798 = sdiv i32 %797, 2
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [2 x float], [2 x float]* %796, i64 %799
  %801 = getelementptr inbounds [2 x float], [2 x float]* %800, i64 0, i64 0
  %802 = bitcast float* %801 to i8*
  %803 = bitcast i8* %802 to [2 x float]*
  store [2 x float]* %803, [2 x float]** %96, align 8
  br label %818

804:                                              ; preds = %774
  %805 = load [2 x float]*, [2 x float]** %79, align 8
  %806 = getelementptr inbounds [2 x float], [2 x float]* %805, i64 0
  %807 = getelementptr inbounds [2 x float], [2 x float]* %806, i64 0, i64 0
  %808 = bitcast float* %807 to i8*
  %809 = bitcast i8* %808 to [2 x float]*
  store [2 x float]* %809, [2 x float]** %95, align 8
  %810 = load [2 x float]*, [2 x float]** %79, align 8
  %811 = load i32, i32* %78, align 4
  %812 = sdiv i32 %811, 2
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [2 x float], [2 x float]* %810, i64 %813
  %815 = getelementptr inbounds [2 x float], [2 x float]* %814, i64 0, i64 0
  %816 = bitcast float* %815 to i8*
  %817 = bitcast i8* %816 to [2 x float]*
  store [2 x float]* %817, [2 x float]** %96, align 8
  br label %818

818:                                              ; preds = %804, %790
  store i32 0, i32* %86, align 4
  br label %819

819:                                              ; preds = %915, %818
  %820 = load i32, i32* %86, align 4
  %821 = load i32, i32* %78, align 4
  %822 = sdiv i32 %821, 2
  %823 = icmp slt i32 %820, %822
  br i1 %823, label %824, label %918

824:                                              ; preds = %819
  %825 = load i32, i32* %86, align 4
  %826 = add nsw i32 %825, 2
  store i32 %826, i32* %87, align 4
  %827 = load [2 x float]*, [2 x float]** %95, align 8
  %828 = load i32, i32* %86, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds [2 x float], [2 x float]* %827, i64 %829
  %831 = getelementptr inbounds [2 x float], [2 x float]* %830, i64 0, i64 0
  store float* %831, float** %74, align 8
  %832 = load float*, float** %74, align 8
  %833 = bitcast float* %832 to <4 x float>*
  %834 = load <4 x float>, <4 x float>* %833, align 16
  store <4 x float> %834, <4 x float>* %107, align 16
  %835 = load [2 x float]*, [2 x float]** %96, align 8
  %836 = load i32, i32* %86, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds [2 x float], [2 x float]* %835, i64 %837
  %839 = getelementptr inbounds [2 x float], [2 x float]* %838, i64 0, i64 0
  store float* %839, float** %75, align 8
  %840 = load float*, float** %75, align 8
  %841 = bitcast float* %840 to <4 x float>*
  %842 = load <4 x float>, <4 x float>* %841, align 16
  store <4 x float> %842, <4 x float>* %108, align 16
  %843 = load <4 x float>, <4 x float>* %107, align 16
  %844 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %843, <4 x float>* %60, align 16
  store <4 x float> %844, <4 x float>* %61, align 16
  %845 = load <4 x float>, <4 x float>* %60, align 16
  %846 = load <4 x float>, <4 x float>* %61, align 16
  %847 = fadd <4 x float> %845, %846
  store <4 x float> %847, <4 x float>* %109, align 16
  %848 = load [2 x float]*, [2 x float]** %97, align 8
  %849 = load i32, i32* %86, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [2 x float], [2 x float]* %848, i64 %850
  %852 = getelementptr inbounds [2 x float], [2 x float]* %851, i64 0, i64 0
  %853 = load <4 x float>, <4 x float>* %109, align 16
  store float* %852, float** %40, align 8
  store <4 x float> %853, <4 x float>* %41, align 16
  %854 = load <4 x float>, <4 x float>* %41, align 16
  %855 = load float*, float** %40, align 8
  %856 = bitcast float* %855 to <4 x float>*
  store <4 x float> %854, <4 x float>* %856, align 16
  %857 = load <4 x float>, <4 x float>* %107, align 16
  %858 = load <4 x float>, <4 x float>* %108, align 16
  store <4 x float> %857, <4 x float>* %24, align 16
  store <4 x float> %858, <4 x float>* %25, align 16
  %859 = load <4 x float>, <4 x float>* %24, align 16
  %860 = load <4 x float>, <4 x float>* %25, align 16
  %861 = fsub <4 x float> %859, %860
  store <4 x float> %861, <4 x float>* %110, align 16
  %862 = load [2 x float]*, [2 x float]** %98, align 8
  %863 = load i32, i32* %86, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds [2 x float], [2 x float]* %862, i64 %864
  %866 = getelementptr inbounds [2 x float], [2 x float]* %865, i64 0, i64 0
  %867 = load <4 x float>, <4 x float>* %110, align 16
  store float* %866, float** %42, align 8
  store <4 x float> %867, <4 x float>* %43, align 16
  %868 = load <4 x float>, <4 x float>* %43, align 16
  %869 = load float*, float** %42, align 8
  %870 = bitcast float* %869 to <4 x float>*
  store <4 x float> %868, <4 x float>* %870, align 16
  %871 = load [2 x float]*, [2 x float]** %95, align 8
  %872 = load i32, i32* %87, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [2 x float], [2 x float]* %871, i64 %873
  %875 = getelementptr inbounds [2 x float], [2 x float]* %874, i64 0, i64 0
  store float* %875, float** %76, align 8
  %876 = load float*, float** %76, align 8
  %877 = bitcast float* %876 to <4 x float>*
  %878 = load <4 x float>, <4 x float>* %877, align 16
  store <4 x float> %878, <4 x float>* %111, align 16
  %879 = load [2 x float]*, [2 x float]** %96, align 8
  %880 = load i32, i32* %87, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [2 x float], [2 x float]* %879, i64 %881
  %883 = getelementptr inbounds [2 x float], [2 x float]* %882, i64 0, i64 0
  store float* %883, float** %77, align 8
  %884 = load float*, float** %77, align 8
  %885 = bitcast float* %884 to <4 x float>*
  %886 = load <4 x float>, <4 x float>* %885, align 16
  store <4 x float> %886, <4 x float>* %112, align 16
  %887 = load <4 x float>, <4 x float>* %111, align 16
  %888 = load <4 x float>, <4 x float>* %112, align 16
  store <4 x float> %887, <4 x float>* %62, align 16
  store <4 x float> %888, <4 x float>* %63, align 16
  %889 = load <4 x float>, <4 x float>* %62, align 16
  %890 = load <4 x float>, <4 x float>* %63, align 16
  %891 = fadd <4 x float> %889, %890
  store <4 x float> %891, <4 x float>* %113, align 16
  %892 = load [2 x float]*, [2 x float]** %97, align 8
  %893 = load i32, i32* %87, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds [2 x float], [2 x float]* %892, i64 %894
  %896 = getelementptr inbounds [2 x float], [2 x float]* %895, i64 0, i64 0
  %897 = load <4 x float>, <4 x float>* %113, align 16
  store float* %896, float** %44, align 8
  store <4 x float> %897, <4 x float>* %45, align 16
  %898 = load <4 x float>, <4 x float>* %45, align 16
  %899 = load float*, float** %44, align 8
  %900 = bitcast float* %899 to <4 x float>*
  store <4 x float> %898, <4 x float>* %900, align 16
  %901 = load <4 x float>, <4 x float>* %111, align 16
  %902 = load <4 x float>, <4 x float>* %112, align 16
  store <4 x float> %901, <4 x float>* %26, align 16
  store <4 x float> %902, <4 x float>* %27, align 16
  %903 = load <4 x float>, <4 x float>* %26, align 16
  %904 = load <4 x float>, <4 x float>* %27, align 16
  %905 = fsub <4 x float> %903, %904
  store <4 x float> %905, <4 x float>* %114, align 16
  %906 = load [2 x float]*, [2 x float]** %98, align 8
  %907 = load i32, i32* %87, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [2 x float], [2 x float]* %906, i64 %908
  %910 = getelementptr inbounds [2 x float], [2 x float]* %909, i64 0, i64 0
  %911 = load <4 x float>, <4 x float>* %114, align 16
  store float* %910, float** %46, align 8
  store <4 x float> %911, <4 x float>* %47, align 16
  %912 = load <4 x float>, <4 x float>* %47, align 16
  %913 = load float*, float** %46, align 8
  %914 = bitcast float* %913 to <4 x float>*
  store <4 x float> %912, <4 x float>* %914, align 16
  br label %915

915:                                              ; preds = %824
  %916 = load i32, i32* %86, align 4
  %917 = add nsw i32 %916, 4
  store i32 %917, i32* %86, align 4
  br label %819, !llvm.loop !16

918:                                              ; preds = %126, %314, %483, %819
  ret void
}

; Function Attrs: nounwind
declare dso_local double @log(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @cffti(i32 noundef %0, [2 x float]* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x float]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store [2 x float]* %1, [2 x float]** %4, align 8
  store float 0x400921FB60000000, float* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sdiv i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = load float, float* %9, align 4
  %13 = fpext float %12 to double
  %14 = fmul double 2.000000e+00, %13
  %15 = load i32, i32* %3, align 4
  %16 = sitofp i32 %15 to float
  %17 = fpext float %16 to double
  %18 = fdiv double %14, %17
  %19 = fptrunc double %18 to float
  store float %19, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %47, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %20
  %25 = load float, float* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sitofp i32 %26 to float
  %28 = fmul float %25, %27
  store float %28, float* %8, align 4
  %29 = load float, float* %8, align 4
  %30 = fpext float %29 to double
  %31 = call double @cos(double noundef %30) #5
  %32 = fptrunc double %31 to float
  %33 = load [2 x float]*, [2 x float]** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 %35
  %37 = getelementptr inbounds [2 x float], [2 x float]* %36, i64 0, i64 0
  store float %32, float* %37, align 4
  %38 = load float, float* %8, align 4
  %39 = fpext float %38 to double
  %40 = call double @sin(double noundef %39) #5
  %41 = fptrunc double %40 to float
  %42 = load [2 x float]*, [2 x float]** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x float], [2 x float]* %42, i64 %44
  %46 = getelementptr inbounds [2 x float], [2 x float]* %45, i64 0, i64 1
  store float %41, float* %46, align 4
  br label %47

47:                                               ; preds = %24
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %20, !llvm.loop !17

50:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @ggl(float* noundef %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store float* %0, float** %2, align 8
  store double 0x41DFFFFFFFC00000, double* %4, align 8
  %5 = load float*, float** %2, align 8
  %6 = load float, float* %5, align 4
  %7 = fpext float %6 to double
  store double %7, double* %3, align 8
  %8 = load double, double* %3, align 8
  %9 = fmul double 1.680700e+04, %8
  %10 = load double, double* %4, align 8
  %11 = call double @fmod(double noundef %9, double noundef %10) #5
  store double %11, double* %3, align 8
  %12 = load double, double* %3, align 8
  %13 = fptrunc double %12 to float
  %14 = load float*, float** %2, align 8
  store float %13, float* %14, align 4
  %15 = load double, double* %3, align 8
  %16 = fsub double %15, 1.000000e+00
  %17 = load double, double* %4, align 8
  %18 = fsub double %17, 1.000000e+00
  %19 = fdiv double %16, %18
  %20 = fptrunc double %19 to float
  ret float %20
}

; Function Attrs: nounwind
declare dso_local double @fmod(double noundef, double noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
