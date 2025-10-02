; ModuleID = './laplace.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/laplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 noundef %0, i32 noundef %1, i32 noundef %2, double* nocapture noundef readonly %3, %struct.hypre_Vector** nocapture noundef writeonly %4, %struct.hypre_Vector** nocapture noundef writeonly %5, %struct.hypre_Vector** nocapture noundef writeonly %6) #0 {
  %8 = mul nsw i32 %0, %1
  %9 = mul nsw i32 %8, %2
  %10 = add nsw i32 %9, 1
  %11 = call i8* @hypre_CAlloc(i32 noundef %10, i32 noundef 4) #2
  %12 = bitcast i8* %11 to i32*
  %13 = call i8* @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #2
  %14 = bitcast i8* %13 to double*
  %15 = call i8* @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #2
  %16 = bitcast i8* %15 to double*
  %17 = call i8* @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #2
  %18 = bitcast i8* %17 to double*
  br label %19

19:                                               ; preds = %28, %7
  %.01 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %20 = icmp slt i32 %.01, %9
  br i1 %20, label %21, label %30

21:                                               ; preds = %19
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds double, double* %16, i64 %22
  store double 0.000000e+00, double* %23, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds double, double* %18, i64 %24
  store double 0.000000e+00, double* %25, align 8
  %26 = zext i32 %.01 to i64
  %27 = getelementptr inbounds double, double* %14, i64 %26
  store double 1.000000e+00, double* %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = add nuw nsw i32 %.01, 1
  br label %19, !llvm.loop !4

30:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %99, %30
  %.07 = phi i32 [ 0, %30 ], [ %100, %99 ]
  %.04 = phi i32 [ 1, %30 ], [ %.15, %99 ]
  %32 = icmp slt i32 %.07, %2
  br i1 %32, label %33, label %101

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %96, %33
  %.09 = phi i32 [ 0, %33 ], [ %97, %96 ]
  %.15 = phi i32 [ %.04, %33 ], [ %.26, %96 ]
  %35 = icmp slt i32 %.09, %1
  br i1 %35, label %36, label %98

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %92, %36
  %.011 = phi i32 [ 0, %36 ], [ %94, %92 ]
  %.26 = phi i32 [ %.15, %36 ], [ %93, %92 ]
  %38 = icmp slt i32 %.011, %0
  br i1 %38, label %39, label %95

39:                                               ; preds = %37
  %40 = add nsw i32 %.26, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %12, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %.26 to i64
  %45 = getelementptr inbounds i32, i32* %12, i64 %44
  store i32 %43, i32* %45, align 4
  %46 = sext i32 %.26 to i64
  %47 = getelementptr inbounds i32, i32* %12, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %.not15 = icmp eq i32 %.07, 0
  br i1 %.not15, label %55, label %50

50:                                               ; preds = %39
  %51 = sext i32 %.26 to i64
  %52 = getelementptr inbounds i32, i32* %12, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %39
  %.not16 = icmp eq i32 %.09, 0
  br i1 %.not16, label %61, label %56

56:                                               ; preds = %55
  %57 = sext i32 %.26 to i64
  %58 = getelementptr inbounds i32, i32* %12, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %55
  %.not17 = icmp eq i32 %.011, 0
  br i1 %.not17, label %67, label %62

62:                                               ; preds = %61
  %63 = sext i32 %.26 to i64
  %64 = getelementptr inbounds i32, i32* %12, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = add nuw nsw i32 %.011, 1
  %69 = icmp slt i32 %68, %0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = sext i32 %.26 to i64
  %72 = getelementptr inbounds i32, i32* %12, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %70, %67
  %76 = add nuw nsw i32 %.09, 1
  %77 = icmp slt i32 %76, %1
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = sext i32 %.26 to i64
  %80 = getelementptr inbounds i32, i32* %12, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %75
  %84 = add nuw nsw i32 %.07, 1
  %85 = icmp slt i32 %84, %2
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = sext i32 %.26 to i64
  %88 = getelementptr inbounds i32, i32* %12, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91
  %93 = add nsw i32 %.26, 1
  %94 = add nuw nsw i32 %.011, 1
  br label %37, !llvm.loop !6

95:                                               ; preds = %37
  br label %96

96:                                               ; preds = %95
  %97 = add nuw nsw i32 %.09, 1
  br label %34, !llvm.loop !7

98:                                               ; preds = %34
  br label %99

99:                                               ; preds = %98
  %100 = add nuw nsw i32 %.07, 1
  br label %31, !llvm.loop !8

101:                                              ; preds = %31
  %102 = sext i32 %9 to i64
  %103 = getelementptr inbounds i32, i32* %12, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @hypre_CAlloc(i32 noundef %104, i32 noundef 4) #2
  %106 = bitcast i8* %105 to i32*
  %107 = sext i32 %9 to i64
  %108 = getelementptr inbounds i32, i32* %12, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @hypre_CAlloc(i32 noundef %109, i32 noundef 8) #2
  %111 = bitcast i8* %110 to double*
  br label %112

112:                                              ; preds = %202, %101
  %.18 = phi i32 [ 0, %101 ], [ %203, %202 ]
  %.3 = phi i32 [ 0, %101 ], [ %.4, %202 ]
  %.02 = phi i32 [ 0, %101 ], [ %.13, %202 ]
  %113 = icmp slt i32 %.18, %2
  br i1 %113, label %114, label %204

114:                                              ; preds = %112
  br label %115

115:                                              ; preds = %199, %114
  %.110 = phi i32 [ 0, %114 ], [ %200, %199 ]
  %.4 = phi i32 [ %.3, %114 ], [ %.5, %199 ]
  %.13 = phi i32 [ %.02, %114 ], [ %.2, %199 ]
  %116 = icmp slt i32 %.110, %1
  br i1 %116, label %117, label %201

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %195, %117
  %.112 = phi i32 [ 0, %117 ], [ %197, %195 ]
  %.5 = phi i32 [ %.4, %117 ], [ %.11, %195 ]
  %.2 = phi i32 [ %.13, %117 ], [ %196, %195 ]
  %119 = icmp slt i32 %.112, %0
  br i1 %119, label %120, label %198

120:                                              ; preds = %118
  %121 = sext i32 %.5 to i64
  %122 = getelementptr inbounds i32, i32* %106, i64 %121
  store i32 %.2, i32* %122, align 4
  %123 = load double, double* %3, align 8
  %124 = add nsw i32 %.5, 1
  %125 = sext i32 %.5 to i64
  %126 = getelementptr inbounds double, double* %111, i64 %125
  store double %123, double* %126, align 8
  %.not = icmp eq i32 %.18, 0
  br i1 %.not, label %137, label %127

127:                                              ; preds = %120
  %128 = mul nsw i32 %0, %1
  %129 = sub nsw i32 %.2, %128
  %130 = sext i32 %124 to i64
  %131 = getelementptr inbounds i32, i32* %106, i64 %130
  store i32 %129, i32* %131, align 4
  %132 = getelementptr inbounds double, double* %3, i64 3
  %133 = load double, double* %132, align 8
  %134 = add nsw i32 %.5, 2
  %135 = sext i32 %124 to i64
  %136 = getelementptr inbounds double, double* %111, i64 %135
  store double %133, double* %136, align 8
  br label %137

137:                                              ; preds = %127, %120
  %.6 = phi i32 [ %134, %127 ], [ %124, %120 ]
  %.not13 = icmp eq i32 %.110, 0
  br i1 %.not13, label %147, label %138

138:                                              ; preds = %137
  %139 = sub nsw i32 %.2, %0
  %140 = sext i32 %.6 to i64
  %141 = getelementptr inbounds i32, i32* %106, i64 %140
  store i32 %139, i32* %141, align 4
  %142 = getelementptr inbounds double, double* %3, i64 2
  %143 = load double, double* %142, align 8
  %144 = add nsw i32 %.6, 1
  %145 = sext i32 %.6 to i64
  %146 = getelementptr inbounds double, double* %111, i64 %145
  store double %143, double* %146, align 8
  br label %147

147:                                              ; preds = %138, %137
  %.7 = phi i32 [ %144, %138 ], [ %.6, %137 ]
  %.not14 = icmp eq i32 %.112, 0
  br i1 %.not14, label %157, label %148

148:                                              ; preds = %147
  %149 = add nsw i32 %.2, -1
  %150 = sext i32 %.7 to i64
  %151 = getelementptr inbounds i32, i32* %106, i64 %150
  store i32 %149, i32* %151, align 4
  %152 = getelementptr inbounds double, double* %3, i64 1
  %153 = load double, double* %152, align 8
  %154 = add nsw i32 %.7, 1
  %155 = sext i32 %.7 to i64
  %156 = getelementptr inbounds double, double* %111, i64 %155
  store double %153, double* %156, align 8
  br label %157

157:                                              ; preds = %148, %147
  %.8 = phi i32 [ %154, %148 ], [ %.7, %147 ]
  %158 = add nuw nsw i32 %.112, 1
  %159 = icmp slt i32 %158, %0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = add nsw i32 %.2, 1
  %162 = sext i32 %.8 to i64
  %163 = getelementptr inbounds i32, i32* %106, i64 %162
  store i32 %161, i32* %163, align 4
  %164 = getelementptr inbounds double, double* %3, i64 1
  %165 = load double, double* %164, align 8
  %166 = add nsw i32 %.8, 1
  %167 = sext i32 %.8 to i64
  %168 = getelementptr inbounds double, double* %111, i64 %167
  store double %165, double* %168, align 8
  br label %169

169:                                              ; preds = %160, %157
  %.9 = phi i32 [ %166, %160 ], [ %.8, %157 ]
  %170 = add nuw nsw i32 %.110, 1
  %171 = icmp slt i32 %170, %1
  br i1 %171, label %172, label %181

172:                                              ; preds = %169
  %173 = add nsw i32 %.2, %0
  %174 = sext i32 %.9 to i64
  %175 = getelementptr inbounds i32, i32* %106, i64 %174
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds double, double* %3, i64 2
  %177 = load double, double* %176, align 8
  %178 = add nsw i32 %.9, 1
  %179 = sext i32 %.9 to i64
  %180 = getelementptr inbounds double, double* %111, i64 %179
  store double %177, double* %180, align 8
  br label %181

181:                                              ; preds = %172, %169
  %.10 = phi i32 [ %178, %172 ], [ %.9, %169 ]
  %182 = add nuw nsw i32 %.18, 1
  %183 = icmp slt i32 %182, %2
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = mul nsw i32 %0, %1
  %186 = add nsw i32 %.2, %185
  %187 = sext i32 %.10 to i64
  %188 = getelementptr inbounds i32, i32* %106, i64 %187
  store i32 %186, i32* %188, align 4
  %189 = getelementptr inbounds double, double* %3, i64 3
  %190 = load double, double* %189, align 8
  %191 = add nsw i32 %.10, 1
  %192 = sext i32 %.10 to i64
  %193 = getelementptr inbounds double, double* %111, i64 %192
  store double %190, double* %193, align 8
  br label %194

194:                                              ; preds = %184, %181
  %.11 = phi i32 [ %191, %184 ], [ %.10, %181 ]
  br label %195

195:                                              ; preds = %194
  %196 = add nsw i32 %.2, 1
  %197 = add nuw nsw i32 %.112, 1
  br label %118, !llvm.loop !9

198:                                              ; preds = %118
  br label %199

199:                                              ; preds = %198
  %200 = add nuw nsw i32 %.110, 1
  br label %115, !llvm.loop !10

201:                                              ; preds = %115
  br label %202

202:                                              ; preds = %201
  %203 = add nuw nsw i32 %.18, 1
  br label %112, !llvm.loop !11

204:                                              ; preds = %112
  %205 = sext i32 %9 to i64
  %206 = getelementptr inbounds i32, i32* %12, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %9, i32 noundef %9, i32 noundef %207) #2
  %209 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %9) #2
  %210 = bitcast %struct.hypre_Vector* %209 to i8**
  store i8* %13, i8** %210, align 8
  %211 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %9) #2
  %212 = bitcast %struct.hypre_Vector* %211 to i8**
  store i8* %15, i8** %212, align 8
  br label %213

213:                                              ; preds = %236, %204
  %.1 = phi i32 [ 0, %204 ], [ %237, %236 ]
  %214 = icmp slt i32 %.1, %9
  br i1 %214, label %215, label %238

215:                                              ; preds = %213
  %216 = zext i32 %.1 to i64
  %217 = getelementptr inbounds i32, i32* %12, i64 %216
  %218 = load i32, i32* %217, align 4
  br label %219

219:                                              ; preds = %233, %215
  %.0 = phi i32 [ %218, %215 ], [ %234, %233 ]
  %220 = add nuw nsw i32 %.1, 1
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %12, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %.0, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %219
  %226 = sext i32 %.0 to i64
  %227 = getelementptr inbounds double, double* %111, i64 %226
  %228 = load double, double* %227, align 8
  %229 = zext i32 %.1 to i64
  %230 = getelementptr inbounds double, double* %18, i64 %229
  %231 = load double, double* %230, align 8
  %232 = fadd double %231, %228
  store double %232, double* %230, align 8
  br label %233

233:                                              ; preds = %225
  %234 = add nsw i32 %.0, 1
  br label %219, !llvm.loop !12

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235
  %237 = add nuw nsw i32 %.1, 1
  br label %213, !llvm.loop !13

238:                                              ; preds = %213
  %239 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef %9) #2
  %240 = bitcast %struct.hypre_Vector* %239 to i8**
  store i8* %17, i8** %240, align 8
  %241 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %208, i64 0, i32 1
  %242 = bitcast i32** %241 to i8**
  store i8* %11, i8** %242, align 8
  %243 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %208, i64 0, i32 2
  %244 = bitcast i32** %243 to i8**
  store i8* %105, i8** %244, align 8
  %245 = bitcast %struct.hypre_CSRMatrix* %208 to i8**
  store i8* %110, i8** %245, align 8
  store %struct.hypre_Vector* %209, %struct.hypre_Vector** %4, align 8
  store %struct.hypre_Vector* %211, %struct.hypre_Vector** %5, align 8
  store %struct.hypre_Vector* %239, %struct.hypre_Vector** %6, align 8
  ret %struct.hypre_CSRMatrix* %208
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

declare dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef, i32 noundef, i32 noundef) #1

declare dso_local %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
