; ModuleID = './makebins.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makebins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"numBinsX automatically set to:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"numBinsY automatically set to:%d\0A\00", align 1
@blockarray = external dso_local global i32***, align 8
@numcells = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @makebins(i32 noundef %0) #0 {
  %2 = sitofp i32 %0 to double
  br label %3

3:                                                ; preds = %29, %1
  %.08 = phi i32 [ 1, %1 ], [ %30, %29 ]
  %.01 = phi double [ undef, %1 ], [ %.23, %29 ]
  %4 = icmp slt i32 %.08, 20
  br i1 %4, label %5, label %31

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %26, %5
  %.07 = phi i32 [ 0, %5 ], [ %27, %26 ]
  %.12 = phi double [ %.01, %5 ], [ %12, %26 ]
  %7 = icmp ult i32 %.07, 100
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %6
  %9 = sitofp i32 %.08 to double
  %10 = sitofp i32 %.07 to double
  %11 = fdiv double %10, 1.000000e+02
  %12 = fadd double %11, %9
  %13 = call double @pow(double noundef %12, double noundef 4.000000e+00) #4
  %14 = call double @sqrt(double noundef %2) #4
  %15 = call double @llvm.fmuladd.f64(double %14, double 2.000000e+00, double 2.000000e+00)
  %16 = call double @pow(double noundef %12, double noundef 3.000000e+00) #4
  %17 = fneg double %15
  %18 = call double @llvm.fmuladd.f64(double %17, double %16, double %13)
  %19 = call double @sqrt(double noundef %2) #4
  %20 = call double @llvm.fmuladd.f64(double %19, double 2.000000e+00, double 1.000000e+00)
  %square = fmul double %12, %12
  %21 = call double @llvm.fmuladd.f64(double %20, double %square, double %18)
  %22 = fadd double %21, %2
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %25

24:                                               ; preds = %8
  br label %28

25:                                               ; preds = %8
  br label %26

26:                                               ; preds = %25
  %27 = add nuw nsw i32 %.07, 1
  br label %6, !llvm.loop !4

.loopexit:                                        ; preds = %6
  br label %28

28:                                               ; preds = %.loopexit, %24
  %.19 = phi i32 [ 20, %24 ], [ %.08, %.loopexit ]
  %.23 = phi double [ %12, %24 ], [ %.12, %.loopexit ]
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.19, 1
  br label %3, !llvm.loop !6

31:                                               ; preds = %3
  %32 = fptosi double %.01 to i32
  %33 = add nsw i32 %32, 1
  %34 = fptosi double %.01 to i32
  %35 = add nsw i32 %34, 1
  %36 = add nsw i32 %33, %35
  %37 = add i32 %33, %34
  %38 = add i32 %32, %34
  br label %39

39:                                               ; preds = %61, %31
  %.027 = phi i32 [ undef, %31 ], [ %.229, %61 ]
  %.024 = phi i32 [ 100, %31 ], [ %.226, %61 ]
  %.04 = phi i32 [ 1, %31 ], [ %62, %61 ]
  %.0 = phi i32 [ 32000, %31 ], [ %.2, %61 ]
  %.not = icmp sgt i32 %.04, %33
  br i1 %.not, label %63, label %40

40:                                               ; preds = %39
  %41 = sub nsw i32 %36, %.04
  %42 = mul nsw i32 %.04, %41
  %43 = sitofp i32 %42 to double
  %44 = call double @llvm.fmuladd.f64(double %.01, double %.01, double -5.000000e-01)
  %45 = fcmp ogt double %44, %43
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %40
  %48 = mul nsw i32 %.04, %41
  %49 = sitofp i32 %48 to double
  %50 = fneg double %.01
  %51 = call double @llvm.fmuladd.f64(double %50, double %.01, double %49)
  %52 = sitofp i32 %.0 to double
  %53 = fcmp olt double %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = mul nsw i32 %.04, %41
  %56 = sitofp i32 %55 to double
  %57 = fneg double %.01
  %58 = call double @llvm.fmuladd.f64(double %57, double %.01, double %56)
  %59 = fptosi double %58 to i32
  br label %60

60:                                               ; preds = %54, %47
  %.128 = phi i32 [ %41, %54 ], [ %.027, %47 ]
  %.125 = phi i32 [ %.04, %54 ], [ %.024, %47 ]
  %.1 = phi i32 [ %59, %54 ], [ %.0, %47 ]
  br label %61

61:                                               ; preds = %60, %46
  %.229 = phi i32 [ %.027, %46 ], [ %.128, %60 ]
  %.226 = phi i32 [ %.024, %46 ], [ %.125, %60 ]
  %.2 = phi i32 [ %.0, %46 ], [ %.1, %60 ]
  %62 = add nuw nsw i32 %.04, 1
  br label %39, !llvm.loop !7

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %86, %63
  %.033 = phi i32 [ undef, %63 ], [ %.235, %86 ]
  %.030 = phi i32 [ 100, %63 ], [ %.232, %86 ]
  %.15 = phi i32 [ 1, %63 ], [ %87, %86 ]
  %.3 = phi i32 [ 32000, %63 ], [ %.5, %86 ]
  %.not45 = icmp sgt i32 %.15, %33
  br i1 %.not45, label %88, label %65

65:                                               ; preds = %64
  %66 = sub nsw i32 %37, %.15
  %67 = mul nsw i32 %.15, %66
  %68 = sitofp i32 %67 to double
  %69 = call double @llvm.fmuladd.f64(double %.01, double %.01, double -5.000000e-01)
  %70 = fcmp ogt double %69, %68
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %86

72:                                               ; preds = %65
  %73 = mul nsw i32 %.15, %66
  %74 = sitofp i32 %73 to double
  %75 = fneg double %.01
  %76 = call double @llvm.fmuladd.f64(double %75, double %.01, double %74)
  %77 = sitofp i32 %.3 to double
  %78 = fcmp olt double %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = mul nsw i32 %.15, %66
  %81 = sitofp i32 %80 to double
  %82 = fneg double %.01
  %83 = call double @llvm.fmuladd.f64(double %82, double %.01, double %81)
  %84 = fptosi double %83 to i32
  br label %85

85:                                               ; preds = %79, %72
  %.134 = phi i32 [ %66, %79 ], [ %.033, %72 ]
  %.131 = phi i32 [ %.15, %79 ], [ %.030, %72 ]
  %.4 = phi i32 [ %84, %79 ], [ %.3, %72 ]
  br label %86

86:                                               ; preds = %85, %71
  %.235 = phi i32 [ %.033, %71 ], [ %.134, %85 ]
  %.232 = phi i32 [ %.030, %71 ], [ %.131, %85 ]
  %.5 = phi i32 [ %.3, %71 ], [ %.4, %85 ]
  %87 = add nuw nsw i32 %.15, 1
  br label %64, !llvm.loop !8

88:                                               ; preds = %64
  br label %89

89:                                               ; preds = %111, %88
  %.041 = phi i32 [ undef, %88 ], [ %.243, %111 ]
  %.038 = phi i32 [ 100, %88 ], [ %.240, %111 ]
  %.26 = phi i32 [ 1, %88 ], [ %112, %111 ]
  %.6 = phi i32 [ 32000, %88 ], [ %.8, %111 ]
  %.not46 = icmp sgt i32 %.26, %33
  br i1 %.not46, label %113, label %90

90:                                               ; preds = %89
  %91 = sub nsw i32 %38, %.26
  %92 = mul nsw i32 %.26, %91
  %93 = sitofp i32 %92 to double
  %94 = call double @llvm.fmuladd.f64(double %.01, double %.01, double -5.000000e-01)
  %95 = fcmp ogt double %94, %93
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %111

97:                                               ; preds = %90
  %98 = mul nsw i32 %.26, %91
  %99 = sitofp i32 %98 to double
  %100 = fneg double %.01
  %101 = call double @llvm.fmuladd.f64(double %100, double %.01, double %99)
  %102 = sitofp i32 %.6 to double
  %103 = fcmp olt double %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = mul nsw i32 %.26, %91
  %106 = sitofp i32 %105 to double
  %107 = fneg double %.01
  %108 = call double @llvm.fmuladd.f64(double %107, double %.01, double %106)
  %109 = fptosi double %108 to i32
  br label %110

110:                                              ; preds = %104, %97
  %.142 = phi i32 [ %91, %104 ], [ %.041, %97 ]
  %.139 = phi i32 [ %.26, %104 ], [ %.038, %97 ]
  %.7 = phi i32 [ %109, %104 ], [ %.6, %97 ]
  br label %111

111:                                              ; preds = %110, %96
  %.243 = phi i32 [ %.041, %96 ], [ %.142, %110 ]
  %.240 = phi i32 [ %.038, %96 ], [ %.139, %110 ]
  %.8 = phi i32 [ %.6, %96 ], [ %.7, %110 ]
  %112 = add nuw nsw i32 %.26, 1
  br label %89, !llvm.loop !9

113:                                              ; preds = %89
  %114 = icmp slt i32 %.030, 100
  br i1 %114, label %115, label %123

115:                                              ; preds = %113
  %116 = icmp slt i32 %.024, 100
  br i1 %116, label %117, label %123

117:                                              ; preds = %115
  %118 = mul nsw i32 %.030, %.033
  %119 = mul nsw i32 %.024, %.027
  %.not50 = icmp sgt i32 %118, %119
  br i1 %.not50, label %121, label %120

120:                                              ; preds = %117
  br label %122

121:                                              ; preds = %117
  br label %122

122:                                              ; preds = %121, %120
  %.017 = phi i32 [ %.033, %120 ], [ %.027, %121 ]
  %.010 = phi i32 [ %.030, %120 ], [ %.024, %121 ]
  br label %131

123:                                              ; preds = %115, %113
  %124 = icmp slt i32 %.024, 100
  br i1 %124, label %125, label %126

125:                                              ; preds = %123
  br label %130

126:                                              ; preds = %123
  %127 = icmp slt i32 %.030, 100
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128, %126
  %.118 = phi i32 [ %.033, %128 ], [ %35, %126 ]
  %.111 = phi i32 [ %.030, %128 ], [ %33, %126 ]
  br label %130

130:                                              ; preds = %129, %125
  %.219 = phi i32 [ %.027, %125 ], [ %.118, %129 ]
  %.212 = phi i32 [ %.024, %125 ], [ %.111, %129 ]
  br label %131

131:                                              ; preds = %130, %122
  %.320 = phi i32 [ %.017, %122 ], [ %.219, %130 ]
  %.313 = phi i32 [ %.010, %122 ], [ %.212, %130 ]
  %132 = icmp slt i32 %.030, 100
  br i1 %132, label %135, label %133

133:                                              ; preds = %131
  %134 = icmp slt i32 %.024, 100
  br i1 %134, label %135, label %143

135:                                              ; preds = %133, %131
  %136 = icmp slt i32 %.038, 100
  br i1 %136, label %137, label %142

137:                                              ; preds = %135
  %138 = mul nsw i32 %.313, %.320
  %139 = mul nsw i32 %.038, %.041
  %.not49 = icmp slt i32 %138, %139
  br i1 %.not49, label %141, label %140

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %140, %137
  %.421 = phi i32 [ %.041, %140 ], [ %.320, %137 ]
  %.414 = phi i32 [ %.038, %140 ], [ %.313, %137 ]
  br label %142

142:                                              ; preds = %141, %135
  %.522 = phi i32 [ %.421, %141 ], [ %.320, %135 ]
  %.515 = phi i32 [ %.414, %141 ], [ %.313, %135 ]
  br label %144

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %142
  %.623 = phi i32 [ %.522, %142 ], [ %.041, %143 ]
  %.616 = phi i32 [ %.515, %142 ], [ %.038, %143 ]
  store i32 %.616, i32* @numBinsX, align 4
  store i32 %.623, i32* @numBinsY, align 4
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %145, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 noundef %.616) #4
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %148 = load i32, i32* @numBinsY, align 4
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %147, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 noundef %148) #4
  %150 = load i32, i32* @numBinsX, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = shl nsw i64 %152, 3
  %154 = call noalias i8* @malloc(i64 noundef %153) #4
  store i8* %154, i8** bitcast (i32**** @blockarray to i8**), align 8
  br label %155

155:                                              ; preds = %185, %144
  %.037 = phi i32 [ 0, %144 ], [ %186, %185 ]
  %156 = load i32, i32* @numBinsX, align 4
  %.not47 = icmp sgt i32 %.037, %156
  br i1 %.not47, label %187, label %157

157:                                              ; preds = %155
  %158 = load i32, i32* @numBinsY, align 4
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = shl nsw i64 %160, 3
  %162 = call noalias i8* @malloc(i64 noundef %161) #4
  %163 = load i32***, i32**** @blockarray, align 8
  %164 = zext i32 %.037 to i64
  %165 = getelementptr inbounds i32**, i32*** %163, i64 %164
  %166 = bitcast i32*** %165 to i8**
  store i8* %162, i8** %166, align 8
  br label %167

167:                                              ; preds = %182, %157
  %.036 = phi i32 [ 0, %157 ], [ %183, %182 ]
  %168 = load i32, i32* @numBinsY, align 4
  %.not48 = icmp sgt i32 %.036, %168
  br i1 %.not48, label %184, label %169

169:                                              ; preds = %167
  %170 = load i32, i32* @numcells, align 4
  %171 = add nsw i32 %170, 5
  %172 = sext i32 %171 to i64
  %173 = shl nsw i64 %172, 2
  %174 = call noalias i8* @malloc(i64 noundef %173) #4
  %175 = load i32***, i32**** @blockarray, align 8
  %176 = zext i32 %.037 to i64
  %177 = getelementptr inbounds i32**, i32*** %175, i64 %176
  %178 = load i32**, i32*** %177, align 8
  %179 = zext i32 %.036 to i64
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  %181 = bitcast i32** %180 to i8**
  store i8* %174, i8** %181, align 8
  br label %182

182:                                              ; preds = %169
  %183 = add nuw nsw i32 %.036, 1
  br label %167, !llvm.loop !10

184:                                              ; preds = %167
  br label %185

185:                                              ; preds = %184
  %186 = add nuw nsw i32 %.037, 1
  br label %155, !llvm.loop !11

187:                                              ; preds = %155
  %188 = load i32***, i32**** @blockarray, align 8
  %189 = load i32**, i32*** %188, align 8
  %190 = load i32*, i32** %189, align 8
  store i32* %190, i32** @bucket, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double noundef) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
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
