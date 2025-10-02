; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/FFT.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/FFT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @FFT_num_flops(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to double
  store double %6, double* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @int_log2(i32 noundef %7)
  %9 = sitofp i32 %8 to double
  store double %9, double* %4, align 8
  %10 = load double, double* %3, align 8
  %11 = call double @llvm.fmuladd.f64(double 5.000000e+00, double %10, double -2.000000e+00)
  %12 = load double, double* %4, align 8
  %13 = load double, double* %3, align 8
  %14 = fadd double %13, 1.000000e+00
  %15 = fmul double 2.000000e+00, %14
  %16 = call double @llvm.fmuladd.f64(double %11, double %12, double %15)
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_log2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 noundef %21)
  call void @exit(i32 noundef 1) #5
  unreachable

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_bitreverse(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %90, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %22
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  store double %37, double* %12, align 8
  %38 = load double*, double** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %38, i64 %41
  %43 = load double, double* %42, align 8
  store double %43, double* %13, align 8
  %44 = load double*, double** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  store double %48, double* %52, align 8
  %53 = load double*, double** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %53, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load double*, double** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  store double %58, double* %63, align 8
  %64 = load double, double* %12, align 8
  %65 = load double*, double** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  store double %64, double* %68, align 8
  %69 = load double, double* %13, align 8
  %70 = load double*, double** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  store double %69, double* %74, align 8
  br label %75

75:                                               ; preds = %32, %22
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %76, !llvm.loop !6

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %18, !llvm.loop !7

93:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_transform(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load double*, double** %4, align 8
  call void @FFT_transform_internal(i32 noundef %5, double* noundef %6, i32 noundef -1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FFT_transform_internal(i32 noundef %0, double* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %251

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @int_log2(i32 noundef %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %251

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load double*, double** %5, align 8
  call void @FFT_bitreverse(i32 noundef %43, double* noundef %44)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %246, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %251

49:                                               ; preds = %45
  store double 1.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sitofp i32 %50 to double
  %52 = fmul double 2.000000e+00, %51
  %53 = fmul double %52, 0x400921FB54442D18
  %54 = load i32, i32* %10, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 2.000000e+00, %55
  %57 = fdiv double %53, %56
  store double %57, double* %15, align 8
  %58 = load double, double* %15, align 8
  %59 = call double @sin(double noundef %58) #6
  store double %59, double* %16, align 8
  %60 = load double, double* %15, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = call double @sin(double noundef %61) #6
  store double %62, double* %17, align 8
  %63 = load double, double* %17, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = load double, double* %17, align 8
  %66 = fmul double %64, %65
  store double %66, double* %18, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %128, %49
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 2, %72
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 2, %76
  store i32 %77, i32* %20, align 4
  %78 = load double*, double** %5, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  store double %82, double* %21, align 8
  %83 = load double*, double** %5, align 8
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  %88 = load double, double* %87, align 8
  store double %88, double* %22, align 8
  %89 = load double*, double** %5, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double, double* %21, align 8
  %95 = fsub double %93, %94
  %96 = load double*, double** %5, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  store double %95, double* %99, align 8
  %100 = load double*, double** %5, align 8
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double, double* %22, align 8
  %107 = fsub double %105, %106
  %108 = load double*, double** %5, align 8
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %108, i64 %111
  store double %107, double* %112, align 8
  %113 = load double, double* %21, align 8
  %114 = load double*, double** %5, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %113
  store double %119, double* %117, align 8
  %120 = load double, double* %22, align 8
  %121 = load double*, double** %5, align 8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %121, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fadd double %126, %120
  store double %127, double* %125, align 8
  br label %128

128:                                              ; preds = %71
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 2, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %67, !llvm.loop !8

133:                                              ; preds = %67
  store i32 1, i32* %13, align 4
  br label %134

134:                                              ; preds = %242, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %245

138:                                              ; preds = %134
  %139 = load double, double* %11, align 8
  %140 = load double, double* %16, align 8
  %141 = load double, double* %12, align 8
  %142 = fneg double %140
  %143 = call double @llvm.fmuladd.f64(double %142, double %141, double %139)
  %144 = load double, double* %18, align 8
  %145 = load double, double* %11, align 8
  %146 = fneg double %144
  %147 = call double @llvm.fmuladd.f64(double %146, double %145, double %143)
  store double %147, double* %23, align 8
  %148 = load double, double* %12, align 8
  %149 = load double, double* %16, align 8
  %150 = load double, double* %11, align 8
  %151 = call double @llvm.fmuladd.f64(double %149, double %150, double %148)
  %152 = load double, double* %18, align 8
  %153 = load double, double* %12, align 8
  %154 = fneg double %152
  %155 = call double @llvm.fmuladd.f64(double %154, double %153, double %151)
  store double %155, double* %24, align 8
  %156 = load double, double* %23, align 8
  store double %156, double* %11, align 8
  %157 = load double, double* %24, align 8
  store double %157, double* %12, align 8
  store i32 0, i32* %14, align 4
  br label %158

158:                                              ; preds = %236, %138
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %241

162:                                              ; preds = %158
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  %166 = mul nsw i32 2, %165
  store i32 %166, i32* %25, align 4
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %169, %170
  %172 = mul nsw i32 2, %171
  store i32 %172, i32* %26, align 4
  %173 = load double*, double** %5, align 8
  %174 = load i32, i32* %26, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double, double* %173, i64 %175
  %177 = load double, double* %176, align 8
  store double %177, double* %27, align 8
  %178 = load double*, double** %5, align 8
  %179 = load i32, i32* %26, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %178, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %28, align 8
  %184 = load double, double* %11, align 8
  %185 = load double, double* %27, align 8
  %186 = load double, double* %12, align 8
  %187 = load double, double* %28, align 8
  %188 = fmul double %186, %187
  %189 = fneg double %188
  %190 = call double @llvm.fmuladd.f64(double %184, double %185, double %189)
  store double %190, double* %29, align 8
  %191 = load double, double* %11, align 8
  %192 = load double, double* %28, align 8
  %193 = load double, double* %12, align 8
  %194 = load double, double* %27, align 8
  %195 = fmul double %193, %194
  %196 = call double @llvm.fmuladd.f64(double %191, double %192, double %195)
  store double %196, double* %30, align 8
  %197 = load double*, double** %5, align 8
  %198 = load i32, i32* %25, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, double* %197, i64 %199
  %201 = load double, double* %200, align 8
  %202 = load double, double* %29, align 8
  %203 = fsub double %201, %202
  %204 = load double*, double** %5, align 8
  %205 = load i32, i32* %26, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  store double %203, double* %207, align 8
  %208 = load double*, double** %5, align 8
  %209 = load i32, i32* %25, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %208, i64 %211
  %213 = load double, double* %212, align 8
  %214 = load double, double* %30, align 8
  %215 = fsub double %213, %214
  %216 = load double*, double** %5, align 8
  %217 = load i32, i32* %26, align 4
  %218 = add nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds double, double* %216, i64 %219
  store double %215, double* %220, align 8
  %221 = load double, double* %29, align 8
  %222 = load double*, double** %5, align 8
  %223 = load i32, i32* %25, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fadd double %226, %221
  store double %227, double* %225, align 8
  %228 = load double, double* %30, align 8
  %229 = load double*, double** %5, align 8
  %230 = load i32, i32* %25, align 4
  %231 = add nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %229, i64 %232
  %234 = load double, double* %233, align 8
  %235 = fadd double %234, %228
  store double %235, double* %233, align 8
  br label %236

236:                                              ; preds = %162
  %237 = load i32, i32* %10, align 4
  %238 = mul nsw i32 2, %237
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %14, align 4
  br label %158, !llvm.loop !9

241:                                              ; preds = %158
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %134, !llvm.loop !10

245:                                              ; preds = %134
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %8, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %8, align 4
  %249 = load i32, i32* %10, align 4
  %250 = mul nsw i32 %249, 2
  store i32 %250, i32* %10, align 4
  br label %45, !llvm.loop !11

251:                                              ; preds = %35, %41, %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_inverse(i32 noundef %0, double* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load double*, double** %4, align 8
  call void @FFT_transform_internal(i32 noundef %10, double* noundef %11, i32 noundef 1)
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double 1.000000e+00, %13
  store double %14, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load double, double* %6, align 8
  %21 = load double*, double** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %20
  store double %26, double* %24, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %15, !llvm.loop !12

30:                                               ; preds = %15
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: nounwind
declare dso_local double @sin(double noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

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
