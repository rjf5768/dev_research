; ModuleID = './dbisect.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/04-bisect/dbisect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [40 x i8] c"bisect: Couldn't allocate memory for wu\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local i32 @sturm(i32 noundef %0, double* nocapture noundef readonly %1, double* nocapture noundef readonly %2, double* nocapture noundef readonly %3, double noundef %4) #0 {
  br label %6

6:                                                ; preds = %36, %5
  %.03 = phi i32 [ 0, %5 ], [ %37, %36 ]
  %.01 = phi i32 [ 0, %5 ], [ %.12, %36 ]
  %.0 = phi double [ 1.000000e+00, %5 ], [ %.1, %36 ]
  %7 = icmp slt i32 %.03, %0
  br i1 %7, label %8, label %38

8:                                                ; preds = %6
  %9 = fcmp une double %.0, 0.000000e+00
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = zext i32 %.03 to i64
  %12 = getelementptr inbounds double, double* %1, i64 %11
  %13 = load double, double* %12, align 8
  %14 = fsub double %13, %4
  %15 = zext i32 %.03 to i64
  %16 = getelementptr inbounds double, double* %3, i64 %15
  %17 = load double, double* %16, align 8
  %18 = fdiv double %17, %.0
  %19 = fsub double %14, %18
  br label %31

20:                                               ; preds = %8
  %21 = zext i32 %.03 to i64
  %22 = getelementptr inbounds double, double* %1, i64 %21
  %23 = load double, double* %22, align 8
  %24 = fsub double %23, %4
  %25 = zext i32 %.03 to i64
  %26 = getelementptr inbounds double, double* %2, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call double @llvm.fabs.f64(double %27)
  %29 = fmul double %28, 0x4330000000000000
  %30 = fsub double %24, %29
  br label %31

31:                                               ; preds = %20, %10
  %.1 = phi double [ %19, %10 ], [ %30, %20 ]
  %32 = fcmp olt double %.1, 0.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %31
  %34 = add nsw i32 %.01, 1
  br label %35

35:                                               ; preds = %33, %31
  %.12 = phi i32 [ %34, %33 ], [ %.01, %31 ]
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.03, 1
  br label %6, !llvm.loop !4

38:                                               ; preds = %6
  ret i32 %.01
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dbisect(double* nocapture noundef readonly %0, double* nocapture noundef %1, double* nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, double noundef %6, double* nocapture noundef %7, i32* nocapture noundef %8, double* nocapture noundef %9) #2 {
  store double 0.000000e+00, double* %1, align 8
  store double 0.000000e+00, double* %2, align 8
  %11 = add nsw i32 %3, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %0, i64 %12
  %14 = load double, double* %13, align 8
  %15 = add nsw i32 %3, -1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %1, i64 %16
  %18 = load double, double* %17, align 8
  %19 = call double @llvm.fabs.f64(double %18)
  %20 = call double @llvm.fmuladd.f64(double %19, double -1.010000e+00, double %14)
  %21 = add nsw i32 %3, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = add nsw i32 %3, -1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %1, i64 %26
  %28 = load double, double* %27, align 8
  %29 = call double @llvm.fabs.f64(double %28)
  %30 = call double @llvm.fmuladd.f64(double %29, double 1.010000e+00, double %24)
  %31 = add nsw i32 %3, -2
  br label %32

32:                                               ; preds = %68, %10
  %.012 = phi i32 [ %31, %10 ], [ %69, %68 ]
  %.09 = phi double [ %20, %10 ], [ %.110, %68 ]
  %.07 = phi double [ %30, %10 ], [ %.18, %68 ]
  %33 = icmp sgt i32 %.012, -1
  br i1 %33, label %34, label %70

34:                                               ; preds = %32
  %35 = sext i32 %.012 to i64
  %36 = getelementptr inbounds double, double* %1, i64 %35
  %37 = load double, double* %36, align 8
  %38 = call double @llvm.fabs.f64(double %37)
  %39 = add nsw i32 %.012, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %1, i64 %40
  %42 = load double, double* %41, align 8
  %43 = call double @llvm.fabs.f64(double %42)
  %44 = fadd double %38, %43
  %45 = fmul double %44, 1.010000e+00
  %46 = sext i32 %.012 to i64
  %47 = getelementptr inbounds double, double* %0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %45
  %50 = fcmp ogt double %49, %.07
  br i1 %50, label %51, label %56

51:                                               ; preds = %34
  %52 = sext i32 %.012 to i64
  %53 = getelementptr inbounds double, double* %0, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fadd double %54, %45
  br label %56

56:                                               ; preds = %51, %34
  %.18 = phi double [ %55, %51 ], [ %.07, %34 ]
  %57 = sext i32 %.012 to i64
  %58 = getelementptr inbounds double, double* %0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = fsub double %59, %45
  %61 = fcmp olt double %60, %.09
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = sext i32 %.012 to i64
  %64 = getelementptr inbounds double, double* %0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fsub double %65, %45
  br label %67

67:                                               ; preds = %62, %56
  %.110 = phi double [ %66, %62 ], [ %.09, %56 ]
  br label %68

68:                                               ; preds = %67
  %69 = add nsw i32 %.012, -1
  br label %32, !llvm.loop !6

70:                                               ; preds = %32
  %71 = fadd double %.09, %.07
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %76

74:                                               ; preds = %70
  %75 = fneg double %.09
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi double [ %.07, %73 ], [ %75, %74 ]
  %78 = fmul double %77, 0x3CB0000000000000
  store double %78, double* %7, align 8
  %79 = fcmp ugt double %6, 0.000000e+00
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load double, double* %7, align 8
  br label %82

82:                                               ; preds = %80, %76
  %.011 = phi double [ %81, %80 ], [ %6, %76 ]
  %83 = load double, double* %7, align 8
  %84 = fmul double %83, 7.000000e+00
  %85 = call double @llvm.fmuladd.f64(double %.011, double 5.000000e-01, double %84)
  store double %85, double* %7, align 8
  %86 = add nsw i32 %3, 1
  %87 = sext i32 %86 to i64
  %88 = call noalias i8* @calloc(i64 noundef %87, i64 noundef 8) #7
  %89 = bitcast i8* %88 to double*
  %90 = icmp eq i8* %88, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = call i64 @fwrite(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %92) #8
  call void @exit(i32 noundef 1) #9
  unreachable

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %101, %94
  %.113 = phi i32 [ %5, %94 ], [ %102, %101 ]
  %.not = icmp slt i32 %.113, %4
  br i1 %.not, label %103, label %96

96:                                               ; preds = %95
  %97 = sext i32 %.113 to i64
  %98 = getelementptr inbounds double, double* %9, i64 %97
  store double %.07, double* %98, align 8
  %99 = sext i32 %.113 to i64
  %100 = getelementptr inbounds double, double* %89, i64 %99
  store double %.09, double* %100, align 8
  br label %101

101:                                              ; preds = %96
  %102 = add nsw i32 %.113, -1
  br label %95, !llvm.loop !7

103:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %168, %103
  %.06 = phi i32 [ %5, %103 ], [ %169, %168 ]
  %.0 = phi double [ %.07, %103 ], [ %.2, %168 ]
  %.not16 = icmp slt i32 %.06, %4
  br i1 %.not16, label %170, label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %117, %105
  %.214 = phi i32 [ %.06, %105 ], [ %118, %117 ]
  %.not17 = icmp slt i32 %.214, %4
  br i1 %.not17, label %.loopexit, label %107

107:                                              ; preds = %106
  %108 = sext i32 %.214 to i64
  %109 = getelementptr inbounds double, double* %89, i64 %108
  %110 = load double, double* %109, align 8
  %111 = fcmp olt double %.09, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = sext i32 %.214 to i64
  %114 = getelementptr inbounds double, double* %89, i64 %113
  %115 = load double, double* %114, align 8
  br label %119

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116
  %118 = add nsw i32 %.214, -1
  br label %106, !llvm.loop !8

.loopexit:                                        ; preds = %106
  br label %119

119:                                              ; preds = %.loopexit, %112
  %.01 = phi double [ %115, %112 ], [ %.09, %.loopexit ]
  %120 = sext i32 %.06 to i64
  %121 = getelementptr inbounds double, double* %9, i64 %120
  %122 = load double, double* %121, align 8
  %123 = fcmp ogt double %.0, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = sext i32 %.06 to i64
  %126 = getelementptr inbounds double, double* %9, i64 %125
  %127 = load double, double* %126, align 8
  br label %128

128:                                              ; preds = %124, %119
  %.1 = phi double [ %127, %124 ], [ %.0, %119 ]
  %129 = fadd double %.01, %.1
  br label %130

130:                                              ; preds = %161, %128
  %.05.in = phi double [ %129, %128 ], [ %162, %161 ]
  %.12 = phi double [ %.01, %128 ], [ %.34, %161 ]
  %.2 = phi double [ %.1, %128 ], [ %.3, %161 ]
  %.05 = fmul double %.05.in, 5.000000e-01
  %131 = fsub double %.2, %.12
  %132 = call double @llvm.fabs.f64(double %.12)
  %133 = call double @llvm.fabs.f64(double %.2)
  %134 = fadd double %132, %133
  %135 = call double @llvm.fmuladd.f64(double %134, double 0x3CC0000000000000, double %.011)
  %136 = fcmp ogt double %131, %135
  br i1 %136, label %137, label %163

137:                                              ; preds = %130
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  %140 = call i32 @sturm(i32 noundef %3, double* noundef %0, double* noundef nonnull %1, double* noundef nonnull %2, double noundef %.05)
  %141 = icmp slt i32 %140, %.06
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = icmp slt i32 %140, %4
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = sext i32 %4 to i64
  %146 = getelementptr inbounds double, double* %89, i64 %145
  store double %.05, double* %146, align 8
  br label %159

147:                                              ; preds = %142
  %148 = add nsw i32 %140, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %89, i64 %149
  store double %.05, double* %150, align 8
  %151 = sext i32 %140 to i64
  %152 = getelementptr inbounds double, double* %9, i64 %151
  %153 = load double, double* %152, align 8
  %154 = fcmp ogt double %153, %.05
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = sext i32 %140 to i64
  %157 = getelementptr inbounds double, double* %9, i64 %156
  store double %.05, double* %157, align 8
  br label %158

158:                                              ; preds = %155, %147
  br label %159

159:                                              ; preds = %158, %144
  br label %161

160:                                              ; preds = %137
  br label %161

161:                                              ; preds = %160, %159
  %.34 = phi double [ %.05, %159 ], [ %.12, %160 ]
  %.3 = phi double [ %.2, %159 ], [ %.05, %160 ]
  %162 = fadd double %.34, %.3
  br label %130, !llvm.loop !9

163:                                              ; preds = %130
  %164 = fadd double %.12, %.2
  %165 = fmul double %164, 5.000000e-01
  %166 = sext i32 %.06 to i64
  %167 = getelementptr inbounds double, double* %9, i64 %166
  store double %165, double* %167, align 8
  br label %168

168:                                              ; preds = %163
  %169 = add nsw i32 %.06, -1
  br label %104, !llvm.loop !10

170:                                              ; preds = %104
  call void @free(i8* noundef %88) #7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #3

declare dso_local i32 @fputs(i8* noundef, %struct._IO_FILE* noundef) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind }

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
