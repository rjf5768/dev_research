; ModuleID = './Crystal_div.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/CrystalMk/Crystal_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local void @Crystal_div(i32 noundef %0, double noundef %1, double* nocapture noundef readonly %2, double* nocapture noundef readonly %3, double* nocapture noundef %4, double* nocapture noundef readonly %5, double* nocapture noundef writeonly %6, double* nocapture noundef %7, double* nocapture noundef readonly %8, double* nocapture noundef writeonly %9) #0 {
  %11 = alloca [12 x double], align 16
  %12 = alloca [12 x double], align 16
  %13 = alloca [12 x double], align 16
  %14 = alloca [12 x double], align 16
  %15 = alloca [12 x double], align 16
  br label %16

16:                                               ; preds = %27, %10
  %.01 = phi i32 [ 0, %10 ], [ %28, %27 ]
  %17 = icmp slt i32 %.01, %0
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds [12 x double], [12 x double]* %12, i64 0, i64 %19
  store double 1.000000e+00, double* %20, align 8
  %21 = sitofp i32 %.01 to double
  %22 = fmul double %21, 2.000000e-01
  %23 = fdiv double %22, 1.200000e+01
  %24 = fadd double %23, 9.000000e-01
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds [12 x double], [12 x double]* %13, i64 0, i64 %25
  store double %24, double* %26, align 8
  br label %27

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !4

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %43, %29
  %.12 = phi i32 [ 0, %29 ], [ %44, %43 ]
  %31 = icmp slt i32 %.12, %0
  br i1 %31, label %32, label %45

32:                                               ; preds = %30
  %33 = zext i32 %.12 to i64
  %34 = getelementptr inbounds double, double* %2, i64 %33
  %35 = load double, double* %34, align 8
  %36 = zext i32 %.12 to i64
  %37 = getelementptr inbounds [12 x double], [12 x double]* %12, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = call double @llvm.fmuladd.f64(double %35, double %38, double 0x3EB0C6F7A0B5ED8D)
  %40 = fdiv double 1.000000e+00, %39
  %41 = zext i32 %.12 to i64
  %42 = getelementptr inbounds [12 x double], [12 x double]* %11, i64 0, i64 %41
  store double %40, double* %42, align 8
  br label %43

43:                                               ; preds = %32
  %44 = add nuw nsw i32 %.12, 1
  br label %30, !llvm.loop !6

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %93, %45
  %.2 = phi i32 [ 0, %45 ], [ %94, %93 ]
  %47 = icmp slt i32 %.2, %0
  br i1 %47, label %48, label %95

48:                                               ; preds = %46
  %49 = zext i32 %.2 to i64
  %50 = getelementptr inbounds [12 x double], [12 x double]* %13, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fmul double %51, 3.000000e+01
  %53 = zext i32 %.2 to i64
  %54 = getelementptr inbounds [12 x double], [12 x double]* %12, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = fmul double %52, %55
  %57 = zext i32 %.2 to i64
  %58 = getelementptr inbounds double, double* %4, i64 %57
  store double %56, double* %58, align 8
  br label %59

59:                                               ; preds = %72, %48
  %.0 = phi i32 [ 0, %48 ], [ %73, %72 ]
  %60 = icmp slt i32 %.0, %0
  br i1 %60, label %61, label %74

61:                                               ; preds = %59
  %62 = fmul double %1, 1.200000e+00
  %63 = zext i32 %.2 to i64
  %64 = getelementptr inbounds [12 x double], [12 x double]* %13, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fmul double %62, %65
  %67 = zext i32 %.2 to i64
  %68 = mul nuw nsw i64 %67, 12
  %69 = getelementptr inbounds double, double* %7, i64 %68
  %70 = zext i32 %.0 to i64
  %71 = getelementptr inbounds double, double* %69, i64 %70
  store double %66, double* %71, align 8
  br label %72

72:                                               ; preds = %61
  %73 = add nuw nsw i32 %.0, 1
  br label %59, !llvm.loop !7

74:                                               ; preds = %59
  %75 = zext i32 %.2 to i64
  %76 = getelementptr inbounds double, double* %4, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fmul double %77, 1.000000e-02
  %79 = zext i32 %.2 to i64
  %80 = getelementptr inbounds [12 x double], [12 x double]* %12, i64 0, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %78, %81
  %83 = zext i32 %.2 to i64
  %84 = getelementptr inbounds [12 x double], [12 x double]* %11, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = zext i32 %.2 to i64
  %87 = mul nuw nsw i64 %86, 12
  %88 = getelementptr inbounds double, double* %7, i64 %87
  %89 = zext i32 %.2 to i64
  %90 = getelementptr inbounds double, double* %88, i64 %89
  %91 = load double, double* %90, align 8
  %92 = call double @llvm.fmuladd.f64(double %82, double %85, double %91)
  store double %92, double* %90, align 8
  br label %93

93:                                               ; preds = %74
  %94 = add nuw nsw i32 %.2, 1
  br label %46, !llvm.loop !8

95:                                               ; preds = %46
  br label %96

96:                                               ; preds = %108, %95
  %.3 = phi i32 [ 0, %95 ], [ %109, %108 ]
  %97 = icmp slt i32 %.3, %0
  br i1 %97, label %98, label %110

98:                                               ; preds = %96
  %99 = zext i32 %.3 to i64
  %100 = mul nuw nsw i64 %99, 12
  %101 = getelementptr inbounds double, double* %7, i64 %100
  %102 = zext i32 %.3 to i64
  %103 = getelementptr inbounds double, double* %101, i64 %102
  %104 = load double, double* %103, align 8
  %105 = fdiv double 1.000000e+00, %104
  %106 = zext i32 %.3 to i64
  %107 = getelementptr inbounds [12 x double], [12 x double]* %11, i64 0, i64 %106
  store double %105, double* %107, align 8
  br label %108

108:                                              ; preds = %98
  %109 = add nuw nsw i32 %.3, 1
  br label %96, !llvm.loop !9

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %173, %110
  %.4 = phi i32 [ 0, %110 ], [ %174, %173 ]
  %112 = icmp slt i32 %.4, %0
  br i1 %112, label %113, label %175

113:                                              ; preds = %111
  %114 = zext i32 %.4 to i64
  %115 = getelementptr inbounds double, double* %4, i64 %114
  %116 = load double, double* %115, align 8
  %117 = zext i32 %.4 to i64
  %118 = getelementptr inbounds [12 x double], [12 x double]* %14, i64 0, i64 %117
  store double %116, double* %118, align 8
  br label %119

119:                                              ; preds = %152, %113
  %.1 = phi i32 [ 0, %113 ], [ %153, %152 ]
  %120 = icmp slt i32 %.1, %0
  br i1 %120, label %121, label %154

121:                                              ; preds = %119
  %122 = zext i32 %.4 to i64
  %123 = mul nuw nsw i64 %122, 12
  %124 = getelementptr inbounds double, double* %8, i64 %123
  %125 = zext i32 %.1 to i64
  %126 = getelementptr inbounds double, double* %124, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fmul double %127, %1
  %129 = zext i32 %.1 to i64
  %130 = getelementptr inbounds double, double* %3, i64 %129
  %131 = load double, double* %130, align 8
  %132 = zext i32 %.4 to i64
  %133 = getelementptr inbounds [12 x double], [12 x double]* %14, i64 0, i64 %132
  %134 = load double, double* %133, align 8
  %135 = call double @llvm.fmuladd.f64(double %128, double %131, double %134)
  store double %135, double* %133, align 8
  %136 = zext i32 %.4 to i64
  %137 = mul nuw nsw i64 %136, 12
  %138 = getelementptr inbounds double, double* %7, i64 %137
  %139 = zext i32 %.1 to i64
  %140 = getelementptr inbounds double, double* %138, i64 %139
  %141 = load double, double* %140, align 8
  %142 = fsub double %141, %128
  %143 = zext i32 %.4 to i64
  %144 = getelementptr inbounds [12 x double], [12 x double]* %11, i64 0, i64 %143
  %145 = load double, double* %144, align 8
  %146 = fmul double %142, %145
  %147 = zext i32 %.4 to i64
  %148 = mul nuw nsw i64 %147, 12
  %149 = getelementptr inbounds double, double* %9, i64 %148
  %150 = zext i32 %.1 to i64
  %151 = getelementptr inbounds double, double* %149, i64 %150
  store double %146, double* %151, align 8
  br label %152

152:                                              ; preds = %121
  %153 = add nuw nsw i32 %.1, 1
  br label %119, !llvm.loop !10

154:                                              ; preds = %119
  %155 = zext i32 %.4 to i64
  %156 = getelementptr inbounds [12 x double], [12 x double]* %14, i64 0, i64 %155
  %157 = load double, double* %156, align 8
  %158 = zext i32 %.4 to i64
  %159 = getelementptr inbounds double, double* %5, i64 %158
  %160 = load double, double* %159, align 8
  %161 = fsub double %157, %160
  %162 = zext i32 %.4 to i64
  %163 = getelementptr inbounds [12 x double], [12 x double]* %15, i64 0, i64 %162
  store double %161, double* %163, align 8
  %164 = zext i32 %.4 to i64
  %165 = getelementptr inbounds [12 x double], [12 x double]* %15, i64 0, i64 %164
  %166 = load double, double* %165, align 8
  %167 = zext i32 %.4 to i64
  %168 = getelementptr inbounds [12 x double], [12 x double]* %11, i64 0, i64 %167
  %169 = load double, double* %168, align 8
  %170 = fmul double %166, %169
  %171 = zext i32 %.4 to i64
  %172 = getelementptr inbounds double, double* %6, i64 %171
  store double %170, double* %172, align 8
  br label %173

173:                                              ; preds = %154
  %174 = add nuw nsw i32 %.4, 1
  br label %111, !llvm.loop !11

175:                                              ; preds = %111
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
