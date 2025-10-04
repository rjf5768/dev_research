; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/QRfact.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/QRfact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @Givens(double noundef %0, double noundef %1, double* noundef %2, double* noundef %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %10 = load double, double* %6, align 8
  %11 = fcmp oeq double %10, 0.000000e+00
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load double*, double** %8, align 8
  store double 1.000000e+00, double* %13, align 8
  %14 = load double*, double** %7, align 8
  store double 0.000000e+00, double* %14, align 8
  br label %54

15:                                               ; preds = %4
  %16 = load double, double* %6, align 8
  %17 = call double @llvm.fabs.f64(double %16)
  %18 = load double, double* %5, align 8
  %19 = call double @llvm.fabs.f64(double %18)
  %20 = fcmp ogt double %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load double, double* %5, align 8
  %23 = fneg double %22
  %24 = load double, double* %6, align 8
  %25 = fdiv double %23, %24
  store double %25, double* %9, align 8
  %26 = load double, double* %9, align 8
  %27 = load double, double* %9, align 8
  %28 = call double @llvm.fmuladd.f64(double %26, double %27, double 1.000000e+00)
  %29 = call double @sqrt(double noundef %28) #3
  %30 = fdiv double 1.000000e+00, %29
  %31 = load double*, double** %7, align 8
  store double %30, double* %31, align 8
  %32 = load double*, double** %7, align 8
  %33 = load double, double* %32, align 8
  %34 = load double, double* %9, align 8
  %35 = fmul double %33, %34
  %36 = load double*, double** %8, align 8
  store double %35, double* %36, align 8
  br label %53

37:                                               ; preds = %15
  %38 = load double, double* %6, align 8
  %39 = fneg double %38
  %40 = load double, double* %5, align 8
  %41 = fdiv double %39, %40
  store double %41, double* %9, align 8
  %42 = load double, double* %9, align 8
  %43 = load double, double* %9, align 8
  %44 = call double @llvm.fmuladd.f64(double %42, double %43, double 1.000000e+00)
  %45 = call double @sqrt(double noundef %44) #3
  %46 = fdiv double 1.000000e+00, %45
  %47 = load double*, double** %8, align 8
  store double %46, double* %47, align 8
  %48 = load double*, double** %8, align 8
  %49 = load double, double* %48, align 8
  %50 = load double, double* %9, align 8
  %51 = fmul double %49, %50
  %52 = load double*, double** %7, align 8
  store double %51, double* %52, align 8
  br label %53

53:                                               ; preds = %37, %21
  br label %54

54:                                               ; preds = %53, %12
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sign(double noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %8

8:                                                ; preds = %7, %6
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ApplyRGivens(double** noundef %0, double noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double** %0, double*** %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %65, %5
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 51
  br i1 %16, label %17, label %68

17:                                               ; preds = %14
  %18 = load double**, double*** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  store double %26, double* %12, align 8
  %27 = load double**, double*** %6, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double*, double** %27, i64 %29
  %31 = load double*, double** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  store double %35, double* %13, align 8
  %36 = load double, double* %8, align 8
  %37 = load double, double* %12, align 8
  %38 = load double, double* %7, align 8
  %39 = load double, double* %13, align 8
  %40 = fmul double %38, %39
  %41 = fneg double %40
  %42 = call double @llvm.fmuladd.f64(double %36, double %37, double %41)
  %43 = load double**, double*** %6, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double*, double** %43, i64 %45
  %47 = load double*, double** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %47, i64 %49
  store double %42, double* %50, align 8
  %51 = load double, double* %7, align 8
  %52 = load double, double* %12, align 8
  %53 = load double, double* %8, align 8
  %54 = load double, double* %13, align 8
  %55 = fmul double %53, %54
  %56 = call double @llvm.fmuladd.f64(double %51, double %52, double %55)
  %57 = load double**, double*** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double*, double** %57, i64 %59
  %61 = load double*, double** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %56, double* %64, align 8
  br label %65

65:                                               ; preds = %17
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %14, !llvm.loop !4

68:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @QRiterate(double** noundef %0, double** noundef %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store i32 1, i32* %27, align 4
  br label %32

32:                                               ; preds = %413, %2
  %33 = load i32, i32* %27, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %414

35:                                               ; preds = %32
  store i32 0, i32* %24, align 4
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i32, i32* %24, align 4
  %38 = icmp slt i32 %37, 50
  br i1 %38, label %39, label %99

39:                                               ; preds = %36
  %40 = load double**, double*** %4, align 8
  %41 = load i32, i32* %24, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double*, double** %40, i64 %43
  %45 = load double*, double** %44, align 8
  %46 = load i32, i32* %24, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = load double**, double*** %4, align 8
  %52 = load i32, i32* %24, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %51, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %24, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = call double @llvm.fabs.f64(double %59)
  %61 = load double**, double*** %4, align 8
  %62 = load i32, i32* %24, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double*, double** %61, i64 %64
  %66 = load double*, double** %65, align 8
  %67 = load i32, i32* %24, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %66, i64 %69
  %71 = load double, double* %70, align 8
  %72 = call double @llvm.fabs.f64(double %71)
  %73 = fadd double %60, %72
  %74 = fmul double %73, 1.000000e-10
  %75 = fcmp olt double %50, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %39
  %77 = load double**, double*** %4, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds double*, double** %77, i64 %79
  %81 = load double*, double** %80, align 8
  %82 = load i32, i32* %24, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  store double 0.000000e+00, double* %85, align 8
  %86 = load double**, double*** %4, align 8
  %87 = load i32, i32* %24, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double*, double** %86, i64 %89
  %91 = load double*, double** %90, align 8
  %92 = load i32, i32* %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  store double 0.000000e+00, double* %94, align 8
  br label %95

95:                                               ; preds = %76, %39
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %24, align 4
  br label %36, !llvm.loop !6

99:                                               ; preds = %36
  store i32 50, i32* %29, align 4
  br label %100

100:                                              ; preds = %117, %99
  %101 = load i32, i32* %29, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load double**, double*** %4, align 8
  %105 = load i32, i32* %29, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double*, double** %104, i64 %107
  %109 = load double*, double** %108, align 8
  %110 = load i32, i32* %29, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fcmp oeq double %113, 0.000000e+00
  br label %115

115:                                              ; preds = %103, %100
  %116 = phi i1 [ false, %100 ], [ %114, %103 ]
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = load i32, i32* %29, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %29, align 4
  br label %100, !llvm.loop !7

120:                                              ; preds = %115
  %121 = load i32, i32* %29, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %27, align 4
  br label %147

124:                                              ; preds = %120
  %125 = load i32, i32* %29, align 4
  store i32 %125, i32* %28, align 4
  br label %126

126:                                              ; preds = %143, %124
  %127 = load i32, i32* %28, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load double**, double*** %4, align 8
  %131 = load i32, i32* %28, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds double*, double** %130, i64 %133
  %135 = load double*, double** %134, align 8
  %136 = load i32, i32* %28, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds double, double* %135, i64 %137
  %139 = load double, double* %138, align 8
  %140 = fcmp une double %139, 0.000000e+00
  br label %141

141:                                              ; preds = %129, %126
  %142 = phi i1 [ false, %126 ], [ %140, %129 ]
  br i1 %142, label %143, label %146

143:                                              ; preds = %141
  %144 = load i32, i32* %28, align 4
  %145 = add nsw i32 %144, -1
  store i32 %145, i32* %28, align 4
  br label %126, !llvm.loop !8

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %123
  %148 = load i32, i32* %27, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  br label %414

151:                                              ; preds = %147
  %152 = load double**, double*** %4, align 8
  %153 = load i32, i32* %29, align 4
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double*, double** %152, i64 %155
  %157 = load double*, double** %156, align 8
  %158 = load i32, i32* %29, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %157, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load double**, double*** %4, align 8
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double*, double** %163, i64 %165
  %167 = load double*, double** %166, align 8
  %168 = load i32, i32* %29, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  %171 = load double, double* %170, align 8
  %172 = fsub double %162, %171
  %173 = fdiv double %172, 2.000000e+00
  store double %173, double* %18, align 8
  %174 = load double**, double*** %4, align 8
  %175 = load i32, i32* %29, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double*, double** %174, i64 %176
  %178 = load double*, double** %177, align 8
  %179 = load i32, i32* %29, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %178, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %8, align 8
  %184 = load double, double* %8, align 8
  %185 = load double, double* %8, align 8
  %186 = fmul double %184, %185
  store double %186, double* %8, align 8
  %187 = load double**, double*** %4, align 8
  %188 = load i32, i32* %29, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds double*, double** %187, i64 %189
  %191 = load double*, double** %190, align 8
  %192 = load i32, i32* %29, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = load double, double* %8, align 8
  %197 = load double, double* %18, align 8
  %198 = load double, double* %18, align 8
  %199 = call i32 @sign(double noundef %198)
  %200 = sitofp i32 %199 to double
  %201 = load double, double* %18, align 8
  %202 = load double, double* %18, align 8
  %203 = load double, double* %8, align 8
  %204 = call double @llvm.fmuladd.f64(double %201, double %202, double %203)
  %205 = call double @sqrt(double noundef %204) #3
  %206 = call double @llvm.fmuladd.f64(double %200, double %205, double %197)
  %207 = fdiv double %196, %206
  %208 = fsub double %195, %207
  store double %208, double* %19, align 8
  %209 = load double**, double*** %4, align 8
  %210 = load i32, i32* %28, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double*, double** %209, i64 %211
  %213 = load double*, double** %212, align 8
  %214 = load i32, i32* %28, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds double, double* %213, i64 %215
  %217 = load double, double* %216, align 8
  %218 = load double, double* %19, align 8
  %219 = fsub double %217, %218
  store double %219, double* %20, align 8
  %220 = load double**, double*** %4, align 8
  %221 = load i32, i32* %28, align 4
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double*, double** %220, i64 %223
  %225 = load double*, double** %224, align 8
  %226 = load i32, i32* %28, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds double, double* %225, i64 %227
  %229 = load double, double* %228, align 8
  store double %229, double* %21, align 8
  %230 = load i32, i32* %28, align 4
  store i32 %230, i32* %24, align 4
  br label %231

231:                                              ; preds = %410, %151
  %232 = load i32, i32* %24, align 4
  %233 = load i32, i32* %29, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %413

235:                                              ; preds = %231
  %236 = load double, double* %20, align 8
  %237 = load double, double* %21, align 8
  call void @Givens(double noundef %236, double noundef %237, double* noundef %7, double* noundef %6)
  %238 = load i32, i32* %24, align 4
  %239 = sub nsw i32 %238, 1
  %240 = load i32, i32* %28, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %235
  %243 = load i32, i32* %24, align 4
  %244 = sub nsw i32 %243, 1
  br label %247

245:                                              ; preds = %235
  %246 = load i32, i32* %28, align 4
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi i32 [ %244, %242 ], [ %246, %245 ]
  store i32 %248, i32* %30, align 4
  %249 = load i32, i32* %29, align 4
  %250 = load i32, i32* %24, align 4
  %251 = add nsw i32 %250, 2
  %252 = icmp slt i32 %249, %251
  br i1 %252, label %253, label %255

253:                                              ; preds = %247
  %254 = load i32, i32* %29, align 4
  br label %258

255:                                              ; preds = %247
  %256 = load i32, i32* %24, align 4
  %257 = add nsw i32 %256, 2
  br label %258

258:                                              ; preds = %255, %253
  %259 = phi i32 [ %254, %253 ], [ %257, %255 ]
  store i32 %259, i32* %31, align 4
  %260 = load i32, i32* %30, align 4
  store i32 %260, i32* %26, align 4
  br label %261

261:                                              ; preds = %315, %258
  %262 = load i32, i32* %26, align 4
  %263 = load i32, i32* %31, align 4
  %264 = icmp sle i32 %262, %263
  br i1 %264, label %265, label %318

265:                                              ; preds = %261
  %266 = load double**, double*** %4, align 8
  %267 = load i32, i32* %24, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double*, double** %266, i64 %268
  %270 = load double*, double** %269, align 8
  %271 = load i32, i32* %26, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %270, i64 %272
  %274 = load double, double* %273, align 8
  store double %274, double* %22, align 8
  %275 = load double**, double*** %4, align 8
  %276 = load i32, i32* %24, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double*, double** %275, i64 %278
  %280 = load double*, double** %279, align 8
  %281 = load i32, i32* %26, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %280, i64 %282
  %284 = load double, double* %283, align 8
  store double %284, double* %23, align 8
  %285 = load double, double* %6, align 8
  %286 = load double, double* %22, align 8
  %287 = load double, double* %7, align 8
  %288 = load double, double* %23, align 8
  %289 = fmul double %287, %288
  %290 = fneg double %289
  %291 = call double @llvm.fmuladd.f64(double %285, double %286, double %290)
  %292 = load double**, double*** %4, align 8
  %293 = load i32, i32* %24, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds double*, double** %292, i64 %294
  %296 = load double*, double** %295, align 8
  %297 = load i32, i32* %26, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds double, double* %296, i64 %298
  store double %291, double* %299, align 8
  %300 = load double, double* %7, align 8
  %301 = load double, double* %22, align 8
  %302 = load double, double* %6, align 8
  %303 = load double, double* %23, align 8
  %304 = fmul double %302, %303
  %305 = call double @llvm.fmuladd.f64(double %300, double %301, double %304)
  %306 = load double**, double*** %4, align 8
  %307 = load i32, i32* %24, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds double*, double** %306, i64 %309
  %311 = load double*, double** %310, align 8
  %312 = load i32, i32* %26, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds double, double* %311, i64 %313
  store double %305, double* %314, align 8
  br label %315

315:                                              ; preds = %265
  %316 = load i32, i32* %26, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %26, align 4
  br label %261, !llvm.loop !9

318:                                              ; preds = %261
  %319 = load i32, i32* %30, align 4
  store i32 %319, i32* %26, align 4
  br label %320

320:                                              ; preds = %374, %318
  %321 = load i32, i32* %26, align 4
  %322 = load i32, i32* %31, align 4
  %323 = icmp sle i32 %321, %322
  br i1 %323, label %324, label %377

324:                                              ; preds = %320
  %325 = load double**, double*** %4, align 8
  %326 = load i32, i32* %26, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double*, double** %325, i64 %327
  %329 = load double*, double** %328, align 8
  %330 = load i32, i32* %24, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds double, double* %329, i64 %331
  %333 = load double, double* %332, align 8
  store double %333, double* %22, align 8
  %334 = load double**, double*** %4, align 8
  %335 = load i32, i32* %26, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds double*, double** %334, i64 %336
  %338 = load double*, double** %337, align 8
  %339 = load i32, i32* %24, align 4
  %340 = add nsw i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %338, i64 %341
  %343 = load double, double* %342, align 8
  store double %343, double* %23, align 8
  %344 = load double, double* %6, align 8
  %345 = load double, double* %22, align 8
  %346 = load double, double* %7, align 8
  %347 = load double, double* %23, align 8
  %348 = fmul double %346, %347
  %349 = fneg double %348
  %350 = call double @llvm.fmuladd.f64(double %344, double %345, double %349)
  %351 = load double**, double*** %4, align 8
  %352 = load i32, i32* %26, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double*, double** %351, i64 %353
  %355 = load double*, double** %354, align 8
  %356 = load i32, i32* %24, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  store double %350, double* %358, align 8
  %359 = load double, double* %7, align 8
  %360 = load double, double* %22, align 8
  %361 = load double, double* %6, align 8
  %362 = load double, double* %23, align 8
  %363 = fmul double %361, %362
  %364 = call double @llvm.fmuladd.f64(double %359, double %360, double %363)
  %365 = load double**, double*** %4, align 8
  %366 = load i32, i32* %26, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds double*, double** %365, i64 %367
  %369 = load double*, double** %368, align 8
  %370 = load i32, i32* %24, align 4
  %371 = add nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds double, double* %369, i64 %372
  store double %364, double* %373, align 8
  br label %374

374:                                              ; preds = %324
  %375 = load i32, i32* %26, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %26, align 4
  br label %320, !llvm.loop !10

377:                                              ; preds = %320
  %378 = load double**, double*** %5, align 8
  %379 = load double, double* %7, align 8
  %380 = load double, double* %6, align 8
  %381 = load i32, i32* %24, align 4
  %382 = load i32, i32* %24, align 4
  %383 = add nsw i32 %382, 1
  call void @ApplyRGivens(double** noundef %378, double noundef %379, double noundef %380, i32 noundef %381, i32 noundef %383)
  %384 = load i32, i32* %24, align 4
  %385 = load i32, i32* %29, align 4
  %386 = sub nsw i32 %385, 1
  %387 = icmp slt i32 %384, %386
  br i1 %387, label %388, label %409

388:                                              ; preds = %377
  %389 = load double**, double*** %4, align 8
  %390 = load i32, i32* %24, align 4
  %391 = add nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double*, double** %389, i64 %392
  %394 = load double*, double** %393, align 8
  %395 = load i32, i32* %24, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %394, i64 %396
  %398 = load double, double* %397, align 8
  store double %398, double* %20, align 8
  %399 = load double**, double*** %4, align 8
  %400 = load i32, i32* %24, align 4
  %401 = add nsw i32 %400, 2
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds double*, double** %399, i64 %402
  %404 = load double*, double** %403, align 8
  %405 = load i32, i32* %24, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds double, double* %404, i64 %406
  %408 = load double, double* %407, align 8
  store double %408, double* %21, align 8
  br label %409

409:                                              ; preds = %388, %377
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %24, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %24, align 4
  br label %231, !llvm.loop !11

413:                                              ; preds = %231
  br label %32, !llvm.loop !12

414:                                              ; preds = %150, %32
  %415 = load double**, double*** %3, align 8
  ret double** %415
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
