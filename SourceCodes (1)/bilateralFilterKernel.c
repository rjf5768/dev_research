; ModuleID = '/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/BilateralFiltering/bilateralFilterKernel.c'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/BilateralFiltering/bilateralFilterKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @bilateralFilterKernel(i32 noundef %0, i32 noundef %1, [128 x i32]* noundef %2, i32* noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [128 x i32]*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [128 x i32]* %2, [128 x i32]** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32, i32* %10, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %190, %5
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %193

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %186, %36
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %40, %41
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %189

44:                                               ; preds = %38
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %169, %44
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %172

49:                                               ; preds = %45
  store i32 0, i32* %19, align 4
  br label %50

50:                                               ; preds = %165, %49
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %168

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %18, align 4
  %58 = sub nsw i32 %56, %57
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %19, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sub nsw i32 %60, %63
  store i32 %64, i32* %17, align 4
  %65 = load [128 x i32]*, [128 x i32]** %8, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [128 x i32], [128 x i32]* %65, i64 %67
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [128 x i32], [128 x i32]* %68, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load [128 x i32]*, [128 x i32]** %8, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x i32], [128 x i32]* %73, i64 %75
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [128 x i32], [128 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load [128 x i32]*, [128 x i32]** %8, align 8
  %82 = load i32, i32* %16, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [128 x i32], [128 x i32]* %81, i64 %83
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [128 x i32], [128 x i32]* %84, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %80, %88
  %90 = sub nsw i32 %72, %89
  %91 = load [128 x i32]*, [128 x i32]** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [128 x i32], [128 x i32]* %91, i64 %93
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [128 x i32], [128 x i32]* %94, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %90, %98
  %100 = sub nsw i32 0, %99
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %101, 2.880000e+02
  %103 = call double @exp(double noundef %102) #3
  %104 = fdiv double %103, 0x408C463ABECCB2BB
  store double %104, double* %20, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %16, align 4
  %110 = sub nsw i32 %108, %109
  %111 = mul nsw i32 %107, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %17, align 4
  %117 = sub nsw i32 %115, %116
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %111, %118
  %120 = sitofp i32 %119 to double
  %121 = call double @sqrt(double noundef %120) #3
  %122 = fptrunc double %121 to float
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %126, %127
  %129 = mul nsw i32 %125, %128
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %17, align 4
  %132 = sub nsw i32 %130, %131
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %17, align 4
  %135 = sub nsw i32 %133, %134
  %136 = mul nsw i32 %132, %135
  %137 = add nsw i32 %129, %136
  %138 = sitofp i32 %137 to double
  %139 = call double @sqrt(double noundef %138) #3
  %140 = fptrunc double %139 to float
  %141 = fmul float %122, %140
  %142 = fneg float %141
  %143 = fpext float %142 to double
  %144 = fdiv double %143, 5.120000e+02
  %145 = call double @exp(double noundef %144) #3
  %146 = fdiv double %145, 0x409921FB54442D18
  store double %146, double* %21, align 8
  %147 = load double, double* %20, align 8
  %148 = load double, double* %21, align 8
  %149 = fmul double %147, %148
  store double %149, double* %22, align 8
  %150 = load double, double* %14, align 8
  %151 = load [128 x i32]*, [128 x i32]** %8, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [128 x i32], [128 x i32]* %151, i64 %153
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [128 x i32], [128 x i32]* %154, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sitofp i32 %158 to double
  %160 = load double, double* %22, align 8
  %161 = call double @llvm.fmuladd.f64(double %159, double %160, double %150)
  store double %161, double* %14, align 8
  %162 = load double, double* %15, align 8
  %163 = load double, double* %22, align 8
  %164 = fadd double %162, %163
  store double %164, double* %15, align 8
  br label %165

165:                                              ; preds = %54
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %19, align 4
  br label %50, !llvm.loop !4

168:                                              ; preds = %50
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %45, !llvm.loop !6

172:                                              ; preds = %45
  %173 = load double, double* %14, align 8
  %174 = load double, double* %15, align 8
  %175 = fdiv double %173, %174
  store double %175, double* %14, align 8
  %176 = load double, double* %14, align 8
  %177 = fptosi double %176 to i32
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = mul nsw i64 %180, %26
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %177, i32* %185, align 4
  br label %186

186:                                              ; preds = %172
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %13, align 4
  br label %38, !llvm.loop !7

189:                                              ; preds = %38
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %30, !llvm.loop !8

193:                                              ; preds = %30
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
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
