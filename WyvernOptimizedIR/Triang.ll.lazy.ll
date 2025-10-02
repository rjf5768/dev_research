; ModuleID = './Triang.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/05-eks/Triang.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local double @norm(double** nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %7, %4
  %.01 = phi double [ 0.000000e+00, %4 ], [ %20, %7 ]
  %.0 = phi i32 [ %2, %4 ], [ %21, %7 ]
  %.not = icmp sgt i32 %.0, %3
  br i1 %.not, label %22, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds double*, double** %0, i64 %8
  %10 = load double*, double** %9, align 8
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds double, double* %10, i64 %11
  %13 = load double, double* %12, align 8
  %14 = sext i32 %.0 to i64
  %15 = getelementptr inbounds double*, double** %0, i64 %14
  %16 = load double*, double** %15, align 8
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds double, double* %16, i64 %17
  %19 = load double, double* %18, align 8
  %20 = call double @llvm.fmuladd.f64(double %13, double %19, double %.01)
  %21 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !4

22:                                               ; preds = %5
  %23 = call double @sqrt(double noundef %.01) #5
  ret double %23
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @House(double** nocapture noundef readonly %0, double* nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = call double @norm(double** noundef %0, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  %7 = sext i32 %3 to i64
  %8 = getelementptr inbounds double*, double** %0, i64 %7
  %9 = load double*, double** %8, align 8
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds double, double* %9, i64 %10
  %12 = load double, double* %11, align 8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds double*, double** %0, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = sext i32 %2 to i64
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call i32 @sign(double noundef %18) #5
  %20 = sitofp i32 %19 to double
  %21 = call double @llvm.fmuladd.f64(double %20, double %6, double %12)
  %22 = fdiv double 1.000000e+00, %21
  br label %23

23:                                               ; preds = %34, %5
  %.0.in = phi i32 [ %3, %5 ], [ %.0, %34 ]
  %.0 = add nsw i32 %.0.in, 1
  %.not.not = icmp slt i32 %.0.in, %4
  br i1 %.not.not, label %24, label %35

24:                                               ; preds = %23
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds double*, double** %0, i64 %25
  %27 = load double*, double** %26, align 8
  %28 = sext i32 %2 to i64
  %29 = getelementptr inbounds double, double* %27, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, %22
  %32 = sext i32 %.0 to i64
  %33 = getelementptr inbounds double, double* %1, i64 %32
  store double %31, double* %33, align 8
  br label %34

34:                                               ; preds = %24
  br label %23, !llvm.loop !6

35:                                               ; preds = %23
  %36 = sext i32 %3 to i64
  %37 = getelementptr inbounds double, double* %1, i64 %36
  store double 1.000000e+00, double* %37, align 8
  ret void
}

declare dso_local i32 @sign(double noundef) #3

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local double @xty(double* nocapture noundef readonly %0, double* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #4 {
  br label %5

5:                                                ; preds = %7, %4
  %.01 = phi double [ 0.000000e+00, %4 ], [ %14, %7 ]
  %.0 = phi i32 [ %2, %4 ], [ %15, %7 ]
  %.not = icmp sgt i32 %.0, %3
  br i1 %.not, label %16, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  %8 = sext i32 %.0 to i64
  %9 = getelementptr inbounds double, double* %0, i64 %8
  %10 = load double, double* %9, align 8
  %11 = sext i32 %.0 to i64
  %12 = getelementptr inbounds double, double* %1, i64 %11
  %13 = load double, double* %12, align 8
  %14 = call double @llvm.fmuladd.f64(double %10, double %13, double %.01)
  %15 = add nsw i32 %.0, 1
  br label %5, !llvm.loop !7

16:                                               ; preds = %5
  ret double %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @Trianglelise(double** noundef readonly %0, i32 noundef %1) #0 {
  %3 = call double** @newMatrix() #5
  %4 = call double** @newIdMatrix() #5
  %5 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #5
  %6 = bitcast i8* %5 to double*
  %7 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #5
  %8 = bitcast i8* %7 to double*
  %9 = call noalias dereferenceable_or_null(408) i8* @malloc(i64 noundef 408) #5
  %10 = bitcast i8* %9 to double*
  %11 = icmp slt i32 %1, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %193

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %190, %13
  %.06 = phi i32 [ 0, %13 ], [ %191, %190 ]
  %.02 = phi i32 [ %1, %13 ], [ %.13, %190 ]
  %15 = icmp ult i32 %.06, 49
  br i1 %15, label %16, label %192

16:                                               ; preds = %14
  %17 = add nsw i32 %.06, %.02
  %18 = add nsw i32 %17, %1
  %19 = icmp slt i32 %18, 50
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = add nsw i32 %.06, %.02
  %22 = add nsw i32 %21, %1
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32 [ %22, %20 ], [ 50, %23 ]
  %26 = add nuw nsw i32 %.06, 1
  call void @House(double** noundef %0, double* noundef %6, i32 noundef %.06, i32 noundef %26, i32 noundef %25)
  %27 = add nuw nsw i32 %.06, 1
  %28 = call double @xty(double* noundef %6, double* noundef %6, i32 noundef %27, i32 noundef %25)
  %29 = fdiv double 1.000000e+00, %28
  br label %30

30:                                               ; preds = %41, %24
  %.01 = phi i32 [ %.06, %24 ], [ %42, %41 ]
  %.not = icmp sgt i32 %.01, %25
  br i1 %.not, label %43, label %31

31:                                               ; preds = %30
  %32 = zext i32 %.01 to i64
  %33 = getelementptr inbounds double*, double** %0, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = add nuw nsw i32 %.06, 1
  %36 = call double @xty(double* noundef %34, double* noundef %6, i32 noundef %35, i32 noundef %25)
  %37 = fmul double %36, 2.000000e+00
  %38 = fmul double %37, %29
  %39 = zext i32 %.01 to i64
  %40 = getelementptr inbounds double, double* %10, i64 %39
  store double %38, double* %40, align 8
  br label %41

41:                                               ; preds = %31
  %42 = add nuw nsw i32 %.01, 1
  br label %30, !llvm.loop !8

43:                                               ; preds = %30
  %44 = add nuw nsw i32 %.06, 1
  %45 = call double @xty(double* noundef %10, double* noundef %6, i32 noundef %44, i32 noundef %25)
  br label %46

46:                                               ; preds = %59, %43
  %.1.in = phi i32 [ %.06, %43 ], [ %.1, %59 ]
  %.1 = add nuw nsw i32 %.1.in, 1
  %.not7.not = icmp slt i32 %.1.in, %25
  br i1 %.not7.not, label %47, label %60

47:                                               ; preds = %46
  %48 = zext i32 %.1 to i64
  %49 = getelementptr inbounds double, double* %10, i64 %48
  %50 = load double, double* %49, align 8
  %51 = zext i32 %.1 to i64
  %52 = getelementptr inbounds double, double* %6, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fneg double %45
  %55 = fmul double %29, %54
  %56 = call double @llvm.fmuladd.f64(double %55, double %53, double %50)
  %57 = zext i32 %.1 to i64
  %58 = getelementptr inbounds double, double* %8, i64 %57
  store double %56, double* %58, align 8
  br label %59

59:                                               ; preds = %47
  br label %46, !llvm.loop !9

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %100, %60
  %.2.in = phi i32 [ %.06, %60 ], [ %.2, %100 ]
  %.2 = add nuw nsw i32 %.2.in, 1
  %.not8.not = icmp slt i32 %.2.in, %25
  br i1 %.not8.not, label %62, label %101

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %97, %62
  %.04 = phi i32 [ %.2, %62 ], [ %98, %97 ]
  %.not11 = icmp sgt i32 %.04, %25
  br i1 %.not11, label %99, label %64

64:                                               ; preds = %63
  %65 = zext i32 %.2 to i64
  %66 = getelementptr inbounds double, double* %6, i64 %65
  %67 = load double, double* %66, align 8
  %68 = zext i32 %.04 to i64
  %69 = getelementptr inbounds double, double* %8, i64 %68
  %70 = load double, double* %69, align 8
  %71 = zext i32 %.2 to i64
  %72 = getelementptr inbounds double, double* %8, i64 %71
  %73 = load double, double* %72, align 8
  %74 = zext i32 %.04 to i64
  %75 = getelementptr inbounds double, double* %6, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fmul double %73, %76
  %78 = call double @llvm.fmuladd.f64(double %67, double %70, double %77)
  %79 = zext i32 %.2 to i64
  %80 = getelementptr inbounds double*, double** %0, i64 %79
  %81 = load double*, double** %80, align 8
  %82 = zext i32 %.04 to i64
  %83 = getelementptr inbounds double, double* %81, i64 %82
  %84 = load double, double* %83, align 8
  %85 = fsub double %84, %78
  store double %85, double* %83, align 8
  %86 = zext i32 %.2 to i64
  %87 = getelementptr inbounds double*, double** %0, i64 %86
  %88 = load double*, double** %87, align 8
  %89 = zext i32 %.04 to i64
  %90 = getelementptr inbounds double, double* %88, i64 %89
  %91 = load double, double* %90, align 8
  %92 = zext i32 %.04 to i64
  %93 = getelementptr inbounds double*, double** %0, i64 %92
  %94 = load double*, double** %93, align 8
  %95 = zext i32 %.2 to i64
  %96 = getelementptr inbounds double, double* %94, i64 %95
  store double %91, double* %96, align 8
  br label %97

97:                                               ; preds = %64
  %98 = add nuw nsw i32 %.04, 1
  br label %63, !llvm.loop !10

99:                                               ; preds = %63
  br label %100

100:                                              ; preds = %99
  br label %61, !llvm.loop !11

101:                                              ; preds = %61
  %102 = zext i32 %.06 to i64
  %103 = getelementptr inbounds double*, double** %0, i64 %102
  %104 = load double*, double** %103, align 8
  %105 = add nuw nsw i32 %.06, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = zext i32 %.06 to i64
  %110 = getelementptr inbounds double, double* %10, i64 %109
  %111 = load double, double* %110, align 8
  %112 = fsub double %108, %111
  %113 = zext i32 %.06 to i64
  %114 = getelementptr inbounds double*, double** %0, i64 %113
  %115 = load double*, double** %114, align 8
  %116 = add nuw nsw i32 %.06, 1
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  store double %112, double* %118, align 8
  %119 = add nuw nsw i32 %.06, 1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds double*, double** %0, i64 %120
  %122 = load double*, double** %121, align 8
  %123 = zext i32 %.06 to i64
  %124 = getelementptr inbounds double, double* %122, i64 %123
  store double %112, double* %124, align 8
  %125 = add nuw nsw i32 %.06, 2
  br label %126

126:                                              ; preds = %138, %101
  %.3 = phi i32 [ %125, %101 ], [ %139, %138 ]
  %.not9 = icmp sgt i32 %.3, %25
  br i1 %.not9, label %140, label %127

127:                                              ; preds = %126
  %128 = zext i32 %.3 to i64
  %129 = getelementptr inbounds double*, double** %0, i64 %128
  %130 = load double*, double** %129, align 8
  %131 = zext i32 %.06 to i64
  %132 = getelementptr inbounds double, double* %130, i64 %131
  store double 0.000000e+00, double* %132, align 8
  %133 = zext i32 %.06 to i64
  %134 = getelementptr inbounds double*, double** %0, i64 %133
  %135 = load double*, double** %134, align 8
  %136 = zext i32 %.3 to i64
  %137 = getelementptr inbounds double, double* %135, i64 %136
  store double 0.000000e+00, double* %137, align 8
  br label %138

138:                                              ; preds = %127
  %139 = add nuw nsw i32 %.3, 1
  br label %126, !llvm.loop !12

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %153, %140
  %.4 = phi i32 [ 0, %140 ], [ %154, %153 ]
  %142 = icmp ult i32 %.4, 51
  br i1 %142, label %143, label %155

143:                                              ; preds = %141
  %144 = fmul double %29, 2.000000e+00
  %145 = zext i32 %.4 to i64
  %146 = getelementptr inbounds double*, double** %4, i64 %145
  %147 = load double*, double** %146, align 8
  %148 = add nuw nsw i32 %.06, 1
  %149 = call double @xty(double* noundef %147, double* noundef %6, i32 noundef %148, i32 noundef %25)
  %150 = fmul double %144, %149
  %151 = zext i32 %.4 to i64
  %152 = getelementptr inbounds double, double* %8, i64 %151
  store double %150, double* %152, align 8
  br label %153

153:                                              ; preds = %143
  %154 = add nuw nsw i32 %.4, 1
  br label %141, !llvm.loop !13

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %177, %155
  %.5 = phi i32 [ 0, %155 ], [ %178, %177 ]
  %157 = icmp ult i32 %.5, 51
  br i1 %157, label %158, label %179

158:                                              ; preds = %156
  br label %159

159:                                              ; preds = %175, %158
  %.15.in = phi i32 [ %.06, %158 ], [ %.15, %175 ]
  %.15 = add nuw nsw i32 %.15.in, 1
  %.not10.not = icmp slt i32 %.15.in, %25
  br i1 %.not10.not, label %160, label %176

160:                                              ; preds = %159
  %161 = zext i32 %.5 to i64
  %162 = getelementptr inbounds double, double* %8, i64 %161
  %163 = load double, double* %162, align 8
  %164 = zext i32 %.15 to i64
  %165 = getelementptr inbounds double, double* %6, i64 %164
  %166 = load double, double* %165, align 8
  %167 = zext i32 %.5 to i64
  %168 = getelementptr inbounds double*, double** %4, i64 %167
  %169 = load double*, double** %168, align 8
  %170 = zext i32 %.15 to i64
  %171 = getelementptr inbounds double, double* %169, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fneg double %163
  %174 = call double @llvm.fmuladd.f64(double %173, double %166, double %172)
  store double %174, double* %171, align 8
  br label %175

175:                                              ; preds = %160
  br label %159, !llvm.loop !14

176:                                              ; preds = %159
  br label %177

177:                                              ; preds = %176
  %178 = add nuw nsw i32 %.5, 1
  br label %156, !llvm.loop !15

179:                                              ; preds = %156
  %180 = add nsw i32 %.06, %.02
  %181 = add nsw i32 %1, -1
  %182 = add nsw i32 %180, %181
  %183 = icmp slt i32 %182, 50
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = add nsw i32 %1, -1
  %186 = add nsw i32 %.02, %185
  br label %189

187:                                              ; preds = %179
  %188 = sub nsw i32 49, %.06
  br label %189

189:                                              ; preds = %187, %184
  %.13 = phi i32 [ %186, %184 ], [ %188, %187 ]
  br label %190

190:                                              ; preds = %189
  %191 = add nuw nsw i32 %.06, 1
  br label %14, !llvm.loop !16

192:                                              ; preds = %14
  call void @free(i8* noundef %5) #5
  call void @free(i8* noundef %7) #5
  call void @free(i8* noundef %9) #5
  br label %193

193:                                              ; preds = %192, %12
  %.0 = phi double** [ %0, %12 ], [ %4, %192 ]
  ret double** %.0
}

declare dso_local double** @newMatrix() #3

declare dso_local double** @newIdMatrix() #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
