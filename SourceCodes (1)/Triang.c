; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Triang.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Triang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @norm(double** noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca double**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double** %0, double*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %37, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load double**, double*** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double*, double** %17, i64 %19
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double**, double*** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %9, align 8
  %36 = call double @llvm.fmuladd.f64(double %25, double %34, double %35)
  store double %36, double* %9, align 8
  br label %37

37:                                               ; preds = %16
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %12, !llvm.loop !4

40:                                               ; preds = %12
  %41 = load double, double* %9, align 8
  %42 = call double @sqrt(double noundef %41) #4
  ret double %42
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @House(double** noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca double**, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store double** %0, double*** %6, align 8
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load double**, double*** %6, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call double @norm(double** noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  store double %18, double* %11, align 8
  %19 = load double**, double*** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double*, double** %19, i64 %21
  %23 = load double*, double** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load double**, double*** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double*, double** %28, i64 %30
  %32 = load double*, double** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = call i32 @sign(double noundef %36)
  %38 = sitofp i32 %37 to double
  %39 = load double, double* %11, align 8
  %40 = call double @llvm.fmuladd.f64(double %38, double %39, double %27)
  %41 = fdiv double 1.000000e+00, %40
  store double %41, double* %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %64, %5
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load double**, double*** %6, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double*, double** %49, i64 %51
  %53 = load double*, double** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double, double* %12, align 8
  %59 = fmul double %57, %58
  %60 = load double*, double** %7, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %59, double* %63, align 8
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %44, !llvm.loop !6

67:                                               ; preds = %44
  %68 = load double*, double** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  store double 1.000000e+00, double* %71, align 8
  ret void
}

declare dso_local i32 @sign(double noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local double @xty(double* noundef %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  %11 = load i32, i32* %7, align 4
  store i32 %11, i32* %10, align 4
  br label %12

12:                                               ; preds = %29, %4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %12
  %17 = load double*, double** %5, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double, double* %17, i64 %19
  %21 = load double, double* %20, align 8
  %22 = load double*, double** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %9, align 8
  %28 = call double @llvm.fmuladd.f64(double %21, double %26, double %27)
  store double %28, double* %9, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %12, !llvm.loop !7

32:                                               ; preds = %12
  %33 = load double, double* %9, align 8
  ret double %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Trianglelise(double** noundef %0, i32 noundef %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca double**, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = call double** @newMatrix()
  store double** %19, double*** %7, align 8
  %20 = call double** @newIdMatrix()
  store double** %20, double*** %6, align 8
  %21 = call noalias i8* @malloc(i64 noundef 408) #4
  %22 = bitcast i8* %21 to double*
  store double* %22, double** %11, align 8
  %23 = call noalias i8* @malloc(i64 noundef 408) #4
  %24 = bitcast i8* %23 to double*
  store double* %24, double** %12, align 8
  %25 = call noalias i8* @malloc(i64 noundef 408) #4
  %26 = bitcast i8* %25 to double*
  store double* %26, double** %13, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load double**, double*** %4, align 8
  store double** %30, double*** %3, align 8
  br label %352

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %341, %31
  %34 = load i32, i32* %14, align 4
  %35 = icmp slt i32 %34, 49
  br i1 %35, label %36, label %344

36:                                               ; preds = %33
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %39, %40
  %42 = icmp slt i32 %41, 50
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %46, %47
  br label %50

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %43
  %51 = phi i32 [ %48, %43 ], [ 50, %49 ]
  store i32 %51, i32* %18, align 4
  %52 = load double**, double*** %4, align 8
  %53 = load double*, double** %11, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %18, align 4
  call void @House(double** noundef %52, double* noundef %53, i32 noundef %54, i32 noundef %56, i32 noundef %57)
  %58 = load double*, double** %11, align 8
  %59 = load double*, double** %11, align 8
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %18, align 4
  %63 = call double @xty(double* noundef %58, double* noundef %59, i32 noundef %61, i32 noundef %62)
  %64 = fdiv double 1.000000e+00, %63
  store double %64, double* %10, align 8
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %88, %50
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load double**, double*** %4, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double*, double** %71, i64 %73
  %75 = load double*, double** %74, align 8
  %76 = load double*, double** %11, align 8
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %18, align 4
  %80 = call double @xty(double* noundef %75, double* noundef %76, i32 noundef %78, i32 noundef %79)
  %81 = fmul double 2.000000e+00, %80
  %82 = load double, double* %10, align 8
  %83 = fmul double %81, %82
  %84 = load double*, double** %13, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  store double %83, double* %87, align 8
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %66, !llvm.loop !8

91:                                               ; preds = %66
  %92 = load double*, double** %13, align 8
  %93 = load double*, double** %11, align 8
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  %96 = load i32, i32* %18, align 4
  %97 = call double @xty(double* noundef %92, double* noundef %93, i32 noundef %95, i32 noundef %96)
  %98 = load double, double* %10, align 8
  %99 = fmul double %97, %98
  store double %99, double* %9, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %17, align 4
  br label %102

102:                                              ; preds = %124, %91
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp sle i32 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load double*, double** %13, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = load double, double* %9, align 8
  %113 = load double*, double** %11, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = fneg double %112
  %119 = call double @llvm.fmuladd.f64(double %118, double %117, double %111)
  %120 = load double*, double** %12, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds double, double* %120, i64 %122
  store double %119, double* %123, align 8
  br label %124

124:                                              ; preds = %106
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  br label %102, !llvm.loop !9

127:                                              ; preds = %102
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %194, %127
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %197

134:                                              ; preds = %130
  %135 = load i32, i32* %17, align 4
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %190, %134
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %18, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %193

140:                                              ; preds = %136
  %141 = load double*, double** %11, align 8
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = load double*, double** %12, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = load double*, double** %12, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = load double*, double** %11, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds double, double* %156, i64 %158
  %160 = load double, double* %159, align 8
  %161 = fmul double %155, %160
  %162 = call double @llvm.fmuladd.f64(double %145, double %150, double %161)
  %163 = load double**, double*** %4, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double*, double** %163, i64 %165
  %167 = load double*, double** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds double, double* %167, i64 %169
  %171 = load double, double* %170, align 8
  %172 = fsub double %171, %162
  store double %172, double* %170, align 8
  %173 = load double**, double*** %4, align 8
  %174 = load i32, i32* %17, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double*, double** %173, i64 %175
  %177 = load double*, double** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = load double**, double*** %4, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds double*, double** %182, i64 %184
  %186 = load double*, double** %185, align 8
  %187 = load i32, i32* %17, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds double, double* %186, i64 %188
  store double %181, double* %189, align 8
  br label %190

190:                                              ; preds = %140
  %191 = load i32, i32* %15, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %15, align 4
  br label %136, !llvm.loop !10

193:                                              ; preds = %136
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  br label %130, !llvm.loop !11

197:                                              ; preds = %130
  %198 = load double**, double*** %4, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double*, double** %198, i64 %200
  %202 = load double*, double** %201, align 8
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds double, double* %202, i64 %205
  %207 = load double, double* %206, align 8
  %208 = load double*, double** %13, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds double, double* %208, i64 %210
  %212 = load double, double* %211, align 8
  %213 = fsub double %207, %212
  %214 = load double**, double*** %4, align 8
  %215 = load i32, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds double*, double** %214, i64 %216
  %218 = load double*, double** %217, align 8
  %219 = load i32, i32* %14, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %218, i64 %221
  store double %213, double* %222, align 8
  %223 = load double**, double*** %4, align 8
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double*, double** %223, i64 %226
  %228 = load double*, double** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds double, double* %228, i64 %230
  store double %213, double* %231, align 8
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 2
  store i32 %233, i32* %17, align 4
  br label %234

234:                                              ; preds = %255, %197
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp sle i32 %235, %236
  br i1 %237, label %238, label %258

238:                                              ; preds = %234
  %239 = load double**, double*** %4, align 8
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds double*, double** %239, i64 %241
  %243 = load double*, double** %242, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  store double 0.000000e+00, double* %246, align 8
  %247 = load double**, double*** %4, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double*, double** %247, i64 %249
  %251 = load double*, double** %250, align 8
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds double, double* %251, i64 %253
  store double 0.000000e+00, double* %254, align 8
  br label %255

255:                                              ; preds = %238
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %17, align 4
  br label %234, !llvm.loop !12

258:                                              ; preds = %234
  store i32 0, i32* %17, align 4
  br label %259

259:                                              ; preds = %280, %258
  %260 = load i32, i32* %17, align 4
  %261 = icmp slt i32 %260, 51
  br i1 %261, label %262, label %283

262:                                              ; preds = %259
  %263 = load double, double* %10, align 8
  %264 = fmul double 2.000000e+00, %263
  %265 = load double**, double*** %6, align 8
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds double*, double** %265, i64 %267
  %269 = load double*, double** %268, align 8
  %270 = load double*, double** %11, align 8
  %271 = load i32, i32* %14, align 4
  %272 = add nsw i32 %271, 1
  %273 = load i32, i32* %18, align 4
  %274 = call double @xty(double* noundef %269, double* noundef %270, i32 noundef %272, i32 noundef %273)
  %275 = fmul double %264, %274
  %276 = load double*, double** %12, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds double, double* %276, i64 %278
  store double %275, double* %279, align 8
  br label %280

280:                                              ; preds = %262
  %281 = load i32, i32* %17, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %17, align 4
  br label %259, !llvm.loop !13

283:                                              ; preds = %259
  store i32 0, i32* %17, align 4
  br label %284

284:                                              ; preds = %320, %283
  %285 = load i32, i32* %17, align 4
  %286 = icmp slt i32 %285, 51
  br i1 %286, label %287, label %323

287:                                              ; preds = %284
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %15, align 4
  br label %290

290:                                              ; preds = %316, %287
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %18, align 4
  %293 = icmp sle i32 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %290
  %295 = load double*, double** %12, align 8
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds double, double* %295, i64 %297
  %299 = load double, double* %298, align 8
  %300 = load double*, double** %11, align 8
  %301 = load i32, i32* %15, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds double, double* %300, i64 %302
  %304 = load double, double* %303, align 8
  %305 = load double**, double*** %6, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds double*, double** %305, i64 %307
  %309 = load double*, double** %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds double, double* %309, i64 %311
  %313 = load double, double* %312, align 8
  %314 = fneg double %299
  %315 = call double @llvm.fmuladd.f64(double %314, double %304, double %313)
  store double %315, double* %312, align 8
  br label %316

316:                                              ; preds = %294
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, 1
  store i32 %318, i32* %15, align 4
  br label %290, !llvm.loop !14

319:                                              ; preds = %290
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %17, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %17, align 4
  br label %284, !llvm.loop !15

323:                                              ; preds = %284
  %324 = load i32, i32* %14, align 4
  %325 = load i32, i32* %16, align 4
  %326 = add nsw i32 %324, %325
  %327 = load i32, i32* %5, align 4
  %328 = sub nsw i32 %327, 1
  %329 = add nsw i32 %326, %328
  %330 = icmp slt i32 %329, 50
  br i1 %330, label %331, label %336

331:                                              ; preds = %323
  %332 = load i32, i32* %5, align 4
  %333 = sub nsw i32 %332, 1
  %334 = load i32, i32* %16, align 4
  %335 = add nsw i32 %334, %333
  store i32 %335, i32* %16, align 4
  br label %340

336:                                              ; preds = %323
  %337 = load i32, i32* %14, align 4
  %338 = add nsw i32 %337, 1
  %339 = sub nsw i32 50, %338
  store i32 %339, i32* %16, align 4
  br label %340

340:                                              ; preds = %336, %331
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %14, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %14, align 4
  br label %33, !llvm.loop !16

344:                                              ; preds = %33
  %345 = load double*, double** %11, align 8
  %346 = bitcast double* %345 to i8*
  call void @free(i8* noundef %346) #4
  %347 = load double*, double** %12, align 8
  %348 = bitcast double* %347 to i8*
  call void @free(i8* noundef %348) #4
  %349 = load double*, double** %13, align 8
  %350 = bitcast double* %349 to i8*
  call void @free(i8* noundef %350) #4
  %351 = load double**, double*** %6, align 8
  store double** %351, double*** %3, align 8
  br label %352

352:                                              ; preds = %344, %29
  %353 = load double**, double*** %3, align 8
  ret double** %353
}

declare dso_local double** @newMatrix() #3

declare dso_local double** @newIdMatrix() #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !5}
