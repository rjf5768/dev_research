; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/LU.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/SciMark2-C/LU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @LU_num_flops(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sitofp i32 %4 to double
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fmul double 2.000000e+00, %6
  %8 = load double, double* %3, align 8
  %9 = fmul double %7, %8
  %10 = load double, double* %3, align 8
  %11 = fmul double %9, %10
  %12 = fdiv double %11, 3.000000e+00
  ret double %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LU_copy_matrix(i32 noundef %0, i32 noundef %1, double** noundef %2, double** noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double** %2, double*** %7, align 8
  store double** %3, double*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load double**, double*** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double*, double** %21, i64 %23
  %25 = load double*, double** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load double**, double*** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %29, double* %37, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %16, !llvm.loop !4

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %11, !llvm.loop !6

45:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LU_factor(i32 noundef %0, i32 noundef %1, double** noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double** %2, double*** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %212, %31
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %215

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  %39 = load double**, double*** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = call double @llvm.fabs.f64(double %47)
  store double %48, double* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %73, %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load double**, double*** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double*, double** %56, i64 %58
  %60 = load double*, double** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  store double %65, double* %15, align 8
  %66 = load double, double* %15, align 8
  %67 = load double, double* %14, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  %71 = load double, double* %15, align 8
  store double %71, double* %14, align 8
  br label %72

72:                                               ; preds = %69, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %51, !llvm.loop !7

76:                                               ; preds = %51
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load double**, double*** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %90, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %216

93:                                               ; preds = %76
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load double**, double*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double*, double** %98, i64 %100
  %102 = load double*, double** %101, align 8
  store double* %102, double** %16, align 8
  %103 = load double**, double*** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double*, double** %103, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = load double**, double*** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double*, double** %108, i64 %110
  store double* %107, double** %111, align 8
  %112 = load double*, double** %16, align 8
  %113 = load double**, double*** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double*, double** %113, i64 %115
  store double* %112, double** %116, align 8
  br label %117

117:                                              ; preds = %97, %93
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %117
  %123 = load double**, double*** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double*, double** %123, i64 %125
  %127 = load double*, double** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fdiv double 1.000000e+00, %131
  store double %132, double* %17, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %151, %122
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load double, double* %17, align 8
  %141 = load double**, double*** %8, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double*, double** %141, i64 %143
  %145 = load double*, double** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, double* %145, i64 %147
  %149 = load double, double* %148, align 8
  %150 = fmul double %149, %140
  store double %150, double* %148, align 8
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %135, !llvm.loop !8

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %117
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %211

160:                                              ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %207, %160
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %210

167:                                              ; preds = %163
  %168 = load double**, double*** %8, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double*, double** %168, i64 %170
  %172 = load double*, double** %171, align 8
  store double* %172, double** %20, align 8
  %173 = load double**, double*** %8, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double*, double** %173, i64 %175
  %177 = load double*, double** %176, align 8
  store double* %177, double** %21, align 8
  %178 = load double*, double** %20, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  store double %182, double* %22, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %23, align 4
  br label %185

185:                                              ; preds = %203, %167
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load double, double* %22, align 8
  %191 = load double*, double** %21, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = load double*, double** %20, align 8
  %197 = load i32, i32* %23, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds double, double* %196, i64 %198
  %200 = load double, double* %199, align 8
  %201 = fneg double %190
  %202 = call double @llvm.fmuladd.f64(double %201, double %195, double %200)
  store double %202, double* %199, align 8
  br label %203

203:                                              ; preds = %189
  %204 = load i32, i32* %23, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %23, align 4
  br label %185, !llvm.loop !9

206:                                              ; preds = %185
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %163, !llvm.loop !10

210:                                              ; preds = %163
  br label %211

211:                                              ; preds = %210, %155
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %33, !llvm.loop !11

215:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %215, %92
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }

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
