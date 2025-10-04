; ModuleID = '/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.stepfft.c'
source_filename = "/project/test/llvm-test-suite/SingleSource/UnitTests/Vector/SSE/sse.stepfft.c"
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
  %7 = alloca float, align 4
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
  store float 3.310000e+02, float* %7, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %203, %0
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %206

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
  %28 = call float @ggl(float* noundef %7)
  store float %28, float* %11, align 4
  %29 = call float @ggl(float* noundef %7)
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
  br i1 %82, label %83, label %164

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
  store float %94, float* %9, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %151, %83
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 2048
  br i1 %97, label %98, label %154

98:                                               ; preds = %95
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [2048 x float], [2048 x float]* @z, i64 0, i64 %100
  %102 = load float, float* %101, align 4
  %103 = load float, float* %9, align 4
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
  %114 = load float, float* %9, align 4
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
  %126 = load float, float* %9, align 4
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
  %139 = load float, float* %9, align 4
  %140 = load i32, i32* %3, align 4
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2048 x float], [2048 x float]* @x, i64 0, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fneg float %139
  %146 = call float @llvm.fmuladd.f32(float %145, float %144, float %138)
  %147 = fmul float %133, %146
  %148 = call float @llvm.fmuladd.f32(float %109, float %120, float %147)
  %149 = load float, float* %8, align 4
  %150 = fadd float %149, %148
  store float %150, float* %8, align 4
  br label %151

151:                                              ; preds = %98
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, 2
  store i32 %153, i32* %3, align 4
  br label %95, !llvm.loop !7

154:                                              ; preds = %95
  %155 = load float, float* %9, align 4
  %156 = load float, float* %8, align 4
  %157 = fmul float %155, %156
  %158 = fpext float %157 to double
  %159 = call double @sqrt(double noundef %158) #5
  %160 = fptrunc double %159 to float
  store float %160, float* %8, align 4
  %161 = load float, float* %8, align 4
  %162 = fpext float %161 to double
  %163 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 noundef 1024, double noundef %162)
  store i32 0, i32* %2, align 4
  br label %202

164:                                              ; preds = %79
  store i32 0, i32* %16, align 4
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %175, %164
  %166 = load i32, i32* %5, align 4
  %167 = icmp slt i32 %166, 20000
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  store float 1.000000e+00, float* %10, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load float, float* %10, align 4
  %171 = fpext float %170 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %169, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %171)
  store float -1.000000e+00, float* %10, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load float, float* %10, align 4
  %174 = fpext float %173 to double
  call void (i32, float*, float*, float*, double, ...) bitcast (void (i32, [2 x float]*, [2 x float]*, [2 x float]*, double)* @cfft2 to void (i32, float*, float*, float*, double, ...)*)(i32 noundef %172, float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @y, i64 0, i64 0), float* noundef getelementptr inbounds ([2048 x float], [2048 x float]* @x, i64 0, i64 0), float* noundef getelementptr inbounds ([1024 x float], [1024 x float]* @w, i64 0, i64 0), double noundef %174)
  br label %175

175:                                              ; preds = %168
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  br label %165, !llvm.loop !8

178:                                              ; preds = %165
  %179 = load i32, i32* %6, align 4
  %180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 noundef %179)
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %198, %178
  %182 = load i32, i32* %3, align 4
  %183 = icmp slt i32 %182, 1024
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [1024 x float], [1024 x float]* @w, i64 0, i64 %186
  %188 = load float, float* %187, align 4
  %189 = fpext float %188 to double
  %190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double noundef %189)
  %191 = load i32, i32* %16, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %16, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp eq i32 %193, 4
  br i1 %194, label %195, label %197

195:                                              ; preds = %184
  %196 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %197

197:                                              ; preds = %195, %184
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %3, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %3, align 4
  br label %181, !llvm.loop !9

201:                                              ; preds = %181
  br label %202

202:                                              ; preds = %201, %154
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %4, align 4
  br label %17, !llvm.loop !10

206:                                              ; preds = %17
  ret i32 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @cfft2(i32 noundef %0, [2 x float]* noundef %1, [2 x float]* noundef %2, [2 x float]* noundef %3, double noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca [2 x float]*, align 8
  %8 = alloca [2 x float]*, align 8
  %9 = alloca [2 x float]*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = fptrunc double %4 to float
  store i32 %0, i32* %6, align 4
  store [2 x float]* %1, [2 x float]** %7, align 8
  store [2 x float]* %2, [2 x float]** %8, align 8
  store [2 x float]* %3, [2 x float]** %9, align 8
  store float %16, float* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sitofp i32 %17 to float
  %19 = fpext float %18 to double
  %20 = call double @log(double noundef %19) #5
  %21 = call double @log(double noundef 1.990000e+00) #5
  %22 = fdiv double %20, %21
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load [2 x float]*, [2 x float]** %7, align 8
  %27 = getelementptr inbounds [2 x float], [2 x float]* %26, i64 0
  %28 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 0
  %29 = load [2 x float]*, [2 x float]** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x float], [2 x float]* %29, i64 %32
  %34 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 0
  %35 = load [2 x float]*, [2 x float]** %8, align 8
  %36 = getelementptr inbounds [2 x float], [2 x float]* %35, i64 0
  %37 = getelementptr inbounds [2 x float], [2 x float]* %36, i64 0, i64 0
  %38 = load [2 x float]*, [2 x float]** %8, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x float], [2 x float]* %38, i64 %40
  %42 = getelementptr inbounds [2 x float], [2 x float]* %41, i64 0, i64 0
  %43 = load [2 x float]*, [2 x float]** %9, align 8
  %44 = load float, float* %10, align 4
  %45 = fpext float %44 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 noundef %24, i32 noundef %25, float* noundef %28, float* noundef %34, float* noundef %37, float* noundef %42, [2 x float]* noundef %43, double noundef %45)
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %103, %5
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sub nsw i32 %48, 2
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %106

51:                                               ; preds = %46
  %52 = load i32, i32* %14, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load [2 x float]*, [2 x float]** %8, align 8
  %60 = getelementptr inbounds [2 x float], [2 x float]* %59, i64 0
  %61 = getelementptr inbounds [2 x float], [2 x float]* %60, i64 0, i64 0
  %62 = load [2 x float]*, [2 x float]** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sdiv i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x float], [2 x float]* %62, i64 %65
  %67 = getelementptr inbounds [2 x float], [2 x float]* %66, i64 0, i64 0
  %68 = load [2 x float]*, [2 x float]** %7, align 8
  %69 = getelementptr inbounds [2 x float], [2 x float]* %68, i64 0
  %70 = getelementptr inbounds [2 x float], [2 x float]* %69, i64 0, i64 0
  %71 = load [2 x float]*, [2 x float]** %7, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x float], [2 x float]* %71, i64 %73
  %75 = getelementptr inbounds [2 x float], [2 x float]* %74, i64 0, i64 0
  %76 = load [2 x float]*, [2 x float]** %9, align 8
  %77 = load float, float* %10, align 4
  %78 = fpext float %77 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 noundef %57, i32 noundef %58, float* noundef %61, float* noundef %67, float* noundef %70, float* noundef %75, [2 x float]* noundef %76, double noundef %78)
  store i32 0, i32* %15, align 4
  br label %102

79:                                               ; preds = %51
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load [2 x float]*, [2 x float]** %7, align 8
  %83 = getelementptr inbounds [2 x float], [2 x float]* %82, i64 0
  %84 = getelementptr inbounds [2 x float], [2 x float]* %83, i64 0, i64 0
  %85 = load [2 x float]*, [2 x float]** %7, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %86, 2
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x float], [2 x float]* %85, i64 %88
  %90 = getelementptr inbounds [2 x float], [2 x float]* %89, i64 0, i64 0
  %91 = load [2 x float]*, [2 x float]** %8, align 8
  %92 = getelementptr inbounds [2 x float], [2 x float]* %91, i64 0
  %93 = getelementptr inbounds [2 x float], [2 x float]* %92, i64 0, i64 0
  %94 = load [2 x float]*, [2 x float]** %8, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x float], [2 x float]* %94, i64 %96
  %98 = getelementptr inbounds [2 x float], [2 x float]* %97, i64 0, i64 0
  %99 = load [2 x float]*, [2 x float]** %9, align 8
  %100 = load float, float* %10, align 4
  %101 = fpext float %100 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 noundef %80, i32 noundef %81, float* noundef %84, float* noundef %90, float* noundef %93, float* noundef %98, [2 x float]* noundef %99, double noundef %101)
  store i32 1, i32* %15, align 4
  br label %102

102:                                              ; preds = %79, %56
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %46, !llvm.loop !11

106:                                              ; preds = %46
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load [2 x float]*, [2 x float]** %8, align 8
  %112 = load [2 x float]*, [2 x float]** %7, align 8
  call void @ccopy(i32 noundef %110, [2 x float]* noundef %111, [2 x float]* noundef %112)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %6, align 4
  %115 = sdiv i32 %114, 2
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load [2 x float]*, [2 x float]** %7, align 8
  %119 = getelementptr inbounds [2 x float], [2 x float]* %118, i64 0
  %120 = getelementptr inbounds [2 x float], [2 x float]* %119, i64 0, i64 0
  %121 = load [2 x float]*, [2 x float]** %7, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sdiv i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x float], [2 x float]* %121, i64 %124
  %126 = getelementptr inbounds [2 x float], [2 x float]* %125, i64 0, i64 0
  %127 = load [2 x float]*, [2 x float]** %8, align 8
  %128 = getelementptr inbounds [2 x float], [2 x float]* %127, i64 0
  %129 = getelementptr inbounds [2 x float], [2 x float]* %128, i64 0, i64 0
  %130 = load [2 x float]*, [2 x float]** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x float], [2 x float]* %130, i64 %132
  %134 = getelementptr inbounds [2 x float], [2 x float]* %133, i64 0, i64 0
  %135 = load [2 x float]*, [2 x float]** %9, align 8
  %136 = load float, float* %10, align 4
  %137 = fpext float %136 to double
  call void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...) bitcast (void (i32, i32, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, [2 x float]*, double)* @step to void (i32, i32, float*, float*, float*, float*, [2 x float]*, double, ...)*)(i32 noundef %116, i32 noundef %117, float* noundef %120, float* noundef %126, float* noundef %129, float* noundef %134, [2 x float]* noundef %135, double noundef %137)
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
  br label %20, !llvm.loop !12

50:                                               ; preds = %20
  ret void
}

; Function Attrs: nounwind
declare dso_local double @cos(double noundef) #2

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @ccopy(i32 noundef %0, [2 x float]* noundef %1, [2 x float]* noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [2 x float]*, align 8
  %6 = alloca [2 x float]*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store [2 x float]* %1, [2 x float]** %5, align 8
  store [2 x float]* %2, [2 x float]** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %35, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load [2 x float]*, [2 x float]** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x float], [2 x float]* %13, i64 %15
  %17 = getelementptr inbounds [2 x float], [2 x float]* %16, i64 0, i64 0
  %18 = load float, float* %17, align 4
  %19 = load [2 x float]*, [2 x float]** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [2 x float], [2 x float]* %19, i64 %21
  %23 = getelementptr inbounds [2 x float], [2 x float]* %22, i64 0, i64 0
  store float %18, float* %23, align 4
  %24 = load [2 x float]*, [2 x float]** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x float], [2 x float]* %24, i64 %26
  %28 = getelementptr inbounds [2 x float], [2 x float]* %27, i64 0, i64 1
  %29 = load float, float* %28, align 4
  %30 = load [2 x float]*, [2 x float]** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x float], [2 x float]* %30, i64 %32
  %34 = getelementptr inbounds [2 x float], [2 x float]* %33, i64 0, i64 1
  store float %29, float* %34, align 4
  br label %35

35:                                               ; preds = %12
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %8, !llvm.loop !13

38:                                               ; preds = %8
  ret void
}

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

; Function Attrs: noinline nounwind uwtable
define dso_local void @step(i32 noundef %0, i32 noundef %1, [2 x float]* noundef %2, [2 x float]* noundef %3, [2 x float]* noundef %4, [2 x float]* noundef %5, [2 x float]* noundef %6, double noundef %7) #4 {
  %9 = alloca <4 x float>, align 16
  %10 = alloca <4 x float>, align 16
  %11 = alloca <4 x float>, align 16
  %12 = alloca <4 x float>, align 16
  %13 = alloca <4 x float>, align 16
  %14 = alloca <4 x float>, align 16
  %15 = alloca float*, align 8
  %16 = alloca <4 x float>, align 16
  %17 = alloca float*, align 8
  %18 = alloca <4 x float>, align 16
  %19 = alloca <4 x float>, align 16
  %20 = alloca <4 x float>, align 16
  %21 = alloca <4 x float>, align 16
  %22 = alloca <4 x float>, align 16
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x float]*, align 8
  %30 = alloca [2 x float]*, align 8
  %31 = alloca [2 x float]*, align 8
  %32 = alloca [2 x float]*, align 8
  %33 = alloca [2 x float]*, align 8
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca [4 x float], align 16
  %46 = alloca [4 x float], align 16
  %47 = alloca <4 x float>, align 16
  %48 = alloca <4 x float>, align 16
  %49 = alloca <4 x float>, align 16
  %50 = alloca <4 x float>, align 16
  %51 = alloca <4 x float>, align 16
  %52 = alloca <4 x float>, align 16
  %53 = alloca <4 x float>, align 16
  %54 = alloca <4 x float>, align 16
  %55 = fptrunc double %7 to float
  store i32 %0, i32* %27, align 4
  store i32 %1, i32* %28, align 4
  store [2 x float]* %2, [2 x float]** %29, align 8
  store [2 x float]* %3, [2 x float]** %30, align 8
  store [2 x float]* %4, [2 x float]** %31, align 8
  store [2 x float]* %5, [2 x float]** %32, align 8
  store [2 x float]* %6, [2 x float]** %33, align 8
  store float %55, float* %34, align 4
  %56 = load i32, i32* %28, align 4
  %57 = mul nsw i32 2, %56
  store i32 %57, i32* %41, align 4
  %58 = load i32, i32* %27, align 4
  %59 = load i32, i32* %41, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %40, align 4
  store i32 0, i32* %35, align 4
  br label %61

61:                                               ; preds = %308, %8
  %62 = load i32, i32* %35, align 4
  %63 = load i32, i32* %40, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %311

65:                                               ; preds = %61
  %66 = load i32, i32* %35, align 4
  %67 = load i32, i32* %28, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %38, align 4
  %69 = load i32, i32* %35, align 4
  %70 = load i32, i32* %41, align 4
  %71 = mul nsw i32 %69, %70
  store i32 %71, i32* %37, align 4
  %72 = load [2 x float]*, [2 x float]** %33, align 8
  %73 = load i32, i32* %38, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [2 x float], [2 x float]* %72, i64 %74
  %76 = getelementptr inbounds [2 x float], [2 x float]* %75, i64 0, i64 0
  %77 = load float, float* %76, align 4
  store float %77, float* %43, align 4
  %78 = load [2 x float]*, [2 x float]** %33, align 8
  %79 = load i32, i32* %38, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x float], [2 x float]* %78, i64 %80
  %82 = getelementptr inbounds [2 x float], [2 x float]* %81, i64 0, i64 1
  %83 = load float, float* %82, align 4
  store float %83, float* %44, align 4
  %84 = load float, float* %34, align 4
  %85 = fpext float %84 to double
  %86 = fcmp olt double %85, 0.000000e+00
  br i1 %86, label %87, label %90

87:                                               ; preds = %65
  %88 = load float, float* %44, align 4
  %89 = fneg float %88
  store float %89, float* %44, align 4
  br label %90

90:                                               ; preds = %87, %65
  %91 = load i32, i32* %28, align 4
  %92 = icmp slt i32 %91, 2
  br i1 %92, label %93, label %201

93:                                               ; preds = %90
  %94 = load float, float* %43, align 4
  %95 = load [2 x float]*, [2 x float]** %29, align 8
  %96 = load i32, i32* %38, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x float], [2 x float]* %95, i64 %97
  %99 = getelementptr inbounds [2 x float], [2 x float]* %98, i64 0, i64 0
  %100 = load float, float* %99, align 4
  %101 = load [2 x float]*, [2 x float]** %30, align 8
  %102 = load i32, i32* %38, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x float], [2 x float]* %101, i64 %103
  %105 = getelementptr inbounds [2 x float], [2 x float]* %104, i64 0, i64 0
  %106 = load float, float* %105, align 4
  %107 = fsub float %100, %106
  %108 = load float, float* %44, align 4
  %109 = load [2 x float]*, [2 x float]** %29, align 8
  %110 = load i32, i32* %38, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [2 x float], [2 x float]* %109, i64 %111
  %113 = getelementptr inbounds [2 x float], [2 x float]* %112, i64 0, i64 1
  %114 = load float, float* %113, align 4
  %115 = load [2 x float]*, [2 x float]** %30, align 8
  %116 = load i32, i32* %38, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x float], [2 x float]* %115, i64 %117
  %119 = getelementptr inbounds [2 x float], [2 x float]* %118, i64 0, i64 1
  %120 = load float, float* %119, align 4
  %121 = fsub float %114, %120
  %122 = fmul float %108, %121
  %123 = fneg float %122
  %124 = call float @llvm.fmuladd.f32(float %94, float %107, float %123)
  %125 = load [2 x float]*, [2 x float]** %32, align 8
  %126 = load i32, i32* %37, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [2 x float], [2 x float]* %125, i64 %127
  %129 = getelementptr inbounds [2 x float], [2 x float]* %128, i64 0, i64 0
  store float %124, float* %129, align 4
  %130 = load float, float* %44, align 4
  %131 = load [2 x float]*, [2 x float]** %29, align 8
  %132 = load i32, i32* %38, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x float], [2 x float]* %131, i64 %133
  %135 = getelementptr inbounds [2 x float], [2 x float]* %134, i64 0, i64 0
  %136 = load float, float* %135, align 4
  %137 = load [2 x float]*, [2 x float]** %30, align 8
  %138 = load i32, i32* %38, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [2 x float], [2 x float]* %137, i64 %139
  %141 = getelementptr inbounds [2 x float], [2 x float]* %140, i64 0, i64 0
  %142 = load float, float* %141, align 4
  %143 = fsub float %136, %142
  %144 = load float, float* %43, align 4
  %145 = load [2 x float]*, [2 x float]** %29, align 8
  %146 = load i32, i32* %38, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2 x float], [2 x float]* %145, i64 %147
  %149 = getelementptr inbounds [2 x float], [2 x float]* %148, i64 0, i64 1
  %150 = load float, float* %149, align 4
  %151 = load [2 x float]*, [2 x float]** %30, align 8
  %152 = load i32, i32* %38, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x float], [2 x float]* %151, i64 %153
  %155 = getelementptr inbounds [2 x float], [2 x float]* %154, i64 0, i64 1
  %156 = load float, float* %155, align 4
  %157 = fsub float %150, %156
  %158 = fmul float %144, %157
  %159 = call float @llvm.fmuladd.f32(float %130, float %143, float %158)
  %160 = load [2 x float]*, [2 x float]** %32, align 8
  %161 = load i32, i32* %37, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [2 x float], [2 x float]* %160, i64 %162
  %164 = getelementptr inbounds [2 x float], [2 x float]* %163, i64 0, i64 1
  store float %159, float* %164, align 4
  %165 = load [2 x float]*, [2 x float]** %29, align 8
  %166 = load i32, i32* %38, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [2 x float], [2 x float]* %165, i64 %167
  %169 = getelementptr inbounds [2 x float], [2 x float]* %168, i64 0, i64 0
  %170 = load float, float* %169, align 4
  %171 = load [2 x float]*, [2 x float]** %30, align 8
  %172 = load i32, i32* %38, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [2 x float], [2 x float]* %171, i64 %173
  %175 = getelementptr inbounds [2 x float], [2 x float]* %174, i64 0, i64 0
  %176 = load float, float* %175, align 4
  %177 = fadd float %170, %176
  %178 = load [2 x float]*, [2 x float]** %31, align 8
  %179 = load i32, i32* %37, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x float], [2 x float]* %178, i64 %180
  %182 = getelementptr inbounds [2 x float], [2 x float]* %181, i64 0, i64 0
  store float %177, float* %182, align 4
  %183 = load [2 x float]*, [2 x float]** %29, align 8
  %184 = load i32, i32* %38, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x float], [2 x float]* %183, i64 %185
  %187 = getelementptr inbounds [2 x float], [2 x float]* %186, i64 0, i64 1
  %188 = load float, float* %187, align 4
  %189 = load [2 x float]*, [2 x float]** %30, align 8
  %190 = load i32, i32* %38, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [2 x float], [2 x float]* %189, i64 %191
  %193 = getelementptr inbounds [2 x float], [2 x float]* %192, i64 0, i64 1
  %194 = load float, float* %193, align 4
  %195 = fadd float %188, %194
  %196 = load [2 x float]*, [2 x float]** %31, align 8
  %197 = load i32, i32* %37, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x float], [2 x float]* %196, i64 %198
  %200 = getelementptr inbounds [2 x float], [2 x float]* %199, i64 0, i64 1
  store float %195, float* %200, align 4
  br label %307

201:                                              ; preds = %90
  %202 = load float, float* %43, align 4
  %203 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 0
  store float %202, float* %203, align 16
  %204 = load float, float* %43, align 4
  %205 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 1
  store float %204, float* %205, align 4
  %206 = load float, float* %43, align 4
  %207 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 2
  store float %206, float* %207, align 8
  %208 = load float, float* %43, align 4
  %209 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 3
  store float %208, float* %209, align 4
  %210 = load float, float* %44, align 4
  %211 = fneg float %210
  %212 = getelementptr inbounds [4 x float], [4 x float]* %46, i64 0, i64 0
  store float %211, float* %212, align 16
  %213 = load float, float* %44, align 4
  %214 = getelementptr inbounds [4 x float], [4 x float]* %46, i64 0, i64 1
  store float %213, float* %214, align 4
  %215 = load float, float* %44, align 4
  %216 = fneg float %215
  %217 = getelementptr inbounds [4 x float], [4 x float]* %46, i64 0, i64 2
  store float %216, float* %217, align 8
  %218 = load float, float* %44, align 4
  %219 = getelementptr inbounds [4 x float], [4 x float]* %46, i64 0, i64 3
  store float %218, float* %219, align 4
  %220 = getelementptr inbounds [4 x float], [4 x float]* %45, i64 0, i64 0
  store float* %220, float** %23, align 8
  %221 = load float*, float** %23, align 8
  %222 = bitcast float* %221 to <4 x float>*
  %223 = load <4 x float>, <4 x float>* %222, align 16
  store <4 x float> %223, <4 x float>* %53, align 16
  %224 = getelementptr inbounds [4 x float], [4 x float]* %46, i64 0, i64 0
  store float* %224, float** %24, align 8
  %225 = load float*, float** %24, align 8
  %226 = bitcast float* %225 to <4 x float>*
  %227 = load <4 x float>, <4 x float>* %226, align 16
  store <4 x float> %227, <4 x float>* %54, align 16
  store i32 0, i32* %36, align 4
  br label %228

228:                                              ; preds = %303, %201
  %229 = load i32, i32* %36, align 4
  %230 = load i32, i32* %28, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %306

232:                                              ; preds = %228
  %233 = load [2 x float]*, [2 x float]** %29, align 8
  %234 = load i32, i32* %38, align 4
  %235 = load i32, i32* %36, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x float], [2 x float]* %233, i64 %237
  %239 = getelementptr inbounds [2 x float], [2 x float]* %238, i64 0, i64 0
  store float* %239, float** %25, align 8
  %240 = load float*, float** %25, align 8
  %241 = bitcast float* %240 to <4 x float>*
  %242 = load <4 x float>, <4 x float>* %241, align 16
  store <4 x float> %242, <4 x float>* %47, align 16
  %243 = load [2 x float]*, [2 x float]** %30, align 8
  %244 = load i32, i32* %38, align 4
  %245 = load i32, i32* %36, align 4
  %246 = add nsw i32 %244, %245
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [2 x float], [2 x float]* %243, i64 %247
  %249 = getelementptr inbounds [2 x float], [2 x float]* %248, i64 0, i64 0
  store float* %249, float** %26, align 8
  %250 = load float*, float** %26, align 8
  %251 = bitcast float* %250 to <4 x float>*
  %252 = load <4 x float>, <4 x float>* %251, align 16
  store <4 x float> %252, <4 x float>* %48, align 16
  %253 = load <4 x float>, <4 x float>* %47, align 16
  %254 = load <4 x float>, <4 x float>* %48, align 16
  store <4 x float> %253, <4 x float>* %19, align 16
  store <4 x float> %254, <4 x float>* %20, align 16
  %255 = load <4 x float>, <4 x float>* %19, align 16
  %256 = load <4 x float>, <4 x float>* %20, align 16
  %257 = fadd <4 x float> %255, %256
  store <4 x float> %257, <4 x float>* %49, align 16
  %258 = load [2 x float]*, [2 x float]** %31, align 8
  %259 = load i32, i32* %37, align 4
  %260 = load i32, i32* %36, align 4
  %261 = add nsw i32 %259, %260
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [2 x float], [2 x float]* %258, i64 %262
  %264 = getelementptr inbounds [2 x float], [2 x float]* %263, i64 0, i64 0
  %265 = load <4 x float>, <4 x float>* %49, align 16
  store float* %264, float** %15, align 8
  store <4 x float> %265, <4 x float>* %16, align 16
  %266 = load <4 x float>, <4 x float>* %16, align 16
  %267 = load float*, float** %15, align 8
  %268 = bitcast float* %267 to <4 x float>*
  store <4 x float> %266, <4 x float>* %268, align 16
  %269 = load <4 x float>, <4 x float>* %47, align 16
  %270 = load <4 x float>, <4 x float>* %48, align 16
  store <4 x float> %269, <4 x float>* %13, align 16
  store <4 x float> %270, <4 x float>* %14, align 16
  %271 = load <4 x float>, <4 x float>* %13, align 16
  %272 = load <4 x float>, <4 x float>* %14, align 16
  %273 = fsub <4 x float> %271, %272
  store <4 x float> %273, <4 x float>* %50, align 16
  %274 = load <4 x float>, <4 x float>* %50, align 16
  %275 = load <4 x float>, <4 x float>* %50, align 16
  %276 = shufflevector <4 x float> %274, <4 x float> %275, <4 x i32> <i32 1, i32 0, i32 7, i32 6>
  store <4 x float> %276, <4 x float>* %51, align 16
  %277 = load <4 x float>, <4 x float>* %53, align 16
  %278 = load <4 x float>, <4 x float>* %50, align 16
  store <4 x float> %277, <4 x float>* %9, align 16
  store <4 x float> %278, <4 x float>* %10, align 16
  %279 = load <4 x float>, <4 x float>* %9, align 16
  %280 = load <4 x float>, <4 x float>* %10, align 16
  %281 = fmul <4 x float> %279, %280
  store <4 x float> %281, <4 x float>* %47, align 16
  %282 = load <4 x float>, <4 x float>* %54, align 16
  %283 = load <4 x float>, <4 x float>* %51, align 16
  store <4 x float> %282, <4 x float>* %11, align 16
  store <4 x float> %283, <4 x float>* %12, align 16
  %284 = load <4 x float>, <4 x float>* %11, align 16
  %285 = load <4 x float>, <4 x float>* %12, align 16
  %286 = fmul <4 x float> %284, %285
  store <4 x float> %286, <4 x float>* %48, align 16
  %287 = load <4 x float>, <4 x float>* %47, align 16
  %288 = load <4 x float>, <4 x float>* %48, align 16
  store <4 x float> %287, <4 x float>* %21, align 16
  store <4 x float> %288, <4 x float>* %22, align 16
  %289 = load <4 x float>, <4 x float>* %21, align 16
  %290 = load <4 x float>, <4 x float>* %22, align 16
  %291 = fadd <4 x float> %289, %290
  store <4 x float> %291, <4 x float>* %49, align 16
  %292 = load [2 x float]*, [2 x float]** %32, align 8
  %293 = load i32, i32* %37, align 4
  %294 = load i32, i32* %36, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [2 x float], [2 x float]* %292, i64 %296
  %298 = getelementptr inbounds [2 x float], [2 x float]* %297, i64 0, i64 0
  %299 = load <4 x float>, <4 x float>* %49, align 16
  store float* %298, float** %17, align 8
  store <4 x float> %299, <4 x float>* %18, align 16
  %300 = load <4 x float>, <4 x float>* %18, align 16
  %301 = load float*, float** %17, align 8
  %302 = bitcast float* %301 to <4 x float>*
  store <4 x float> %300, <4 x float>* %302, align 16
  br label %303

303:                                              ; preds = %232
  %304 = load i32, i32* %36, align 4
  %305 = add nsw i32 %304, 2
  store i32 %305, i32* %36, align 4
  br label %228, !llvm.loop !14

306:                                              ; preds = %228
  br label %307

307:                                              ; preds = %306, %93
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %35, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %35, align 4
  br label %61, !llvm.loop !15

311:                                              ; preds = %61
  ret void
}

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
