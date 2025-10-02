; ModuleID = './orderedDitherKernel.ll'
source_filename = "/project/test/llvm-test-suite/MicroBenchmarks/ImageProcessing/Dither/orderedDitherKernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.orderedDitherKernel.dither = private unnamed_addr constant [2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 3, i32 1]], align 16
@__const.orderedDitherKernel.dither.1 = private unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 6, i32 8, i32 4], [3 x i32] [i32 1, i32 0, i32 3], [3 x i32] [i32 5, i32 2, i32 7]], align 16
@__const.orderedDitherKernel.dither.2 = private unnamed_addr constant [4 x [4 x i32]] [[4 x i32] [i32 0, i32 8, i32 2, i32 10], [4 x i32] [i32 12, i32 4, i32 14, i32 6], [4 x i32] [i32 3, i32 11, i32 1, i32 9], [4 x i32] [i32 15, i32 7, i32 13, i32 5]], align 16
@__const.orderedDitherKernel.dither.3 = private unnamed_addr constant [8 x [8 x i32]] [[8 x i32] [i32 0, i32 48, i32 12, i32 60, i32 3, i32 51, i32 15, i32 63], [8 x i32] [i32 32, i32 16, i32 44, i32 28, i32 35, i32 19, i32 47, i32 31], [8 x i32] [i32 8, i32 56, i32 4, i32 52, i32 11, i32 59, i32 7, i32 55], [8 x i32] [i32 40, i32 24, i32 36, i32 20, i32 43, i32 27, i32 39, i32 23], [8 x i32] [i32 2, i32 50, i32 14, i32 62, i32 1, i32 49, i32 13, i32 61], [8 x i32] [i32 34, i32 18, i32 46, i32 30, i32 33, i32 17, i32 45, i32 29], [8 x i32] [i32 10, i32 58, i32 6, i32 54, i32 9, i32 57, i32 5, i32 53], [8 x i32] [i32 42, i32 26, i32 38, i32 22, i32 41, i32 25, i32 37, i32 21]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @orderedDitherKernel(i32 noundef %0, i32 noundef %1, [512 x i32]* nocapture noundef readonly %2, i32* nocapture noundef %3, i32* nocapture noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = zext i32 %1 to i64
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %32, %7
  %.08 = phi i32 [ 0, %7 ], [ %33, %32 ]
  %11 = icmp slt i32 %.08, %0
  br i1 %11, label %12, label %34

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %29, %12
  %.09 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %14 = icmp slt i32 %.09, %1
  br i1 %14, label %15, label %31

15:                                               ; preds = %13
  %16 = zext i32 %.08 to i64
  %17 = zext i32 %.09 to i64
  %18 = getelementptr inbounds [512 x i32], [512 x i32]* %2, i64 %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 2.550000e+02
  %square = fmul double %21, %21
  %22 = fmul double %square, 2.550000e+02
  %23 = fptosi double %22 to i32
  %24 = zext i32 %.08 to i64
  %25 = mul nuw nsw i64 %24, %9
  %26 = getelementptr inbounds i32, i32* %4, i64 %25
  %27 = zext i32 %.09 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %23, i32* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = add nuw nsw i32 %.09, 1
  br label %13, !llvm.loop !4

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = add nuw nsw i32 %.08, 1
  br label %10, !llvm.loop !6

34:                                               ; preds = %10
  %35 = sdiv i32 256, %5
  br label %36

36:                                               ; preds = %57, %34
  %.010 = phi i32 [ 0, %34 ], [ %58, %57 ]
  %37 = icmp slt i32 %.010, %0
  br i1 %37, label %38, label %59

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %54, %38
  %.011 = phi i32 [ 0, %38 ], [ %55, %54 ]
  %40 = icmp slt i32 %.011, %1
  br i1 %40, label %41, label %56

41:                                               ; preds = %39
  %42 = zext i32 %.010 to i64
  %43 = mul nuw nsw i64 %42, %9
  %44 = getelementptr inbounds i32, i32* %4, i64 %43
  %45 = zext i32 %.011 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, %35
  %49 = zext i32 %.010 to i64
  %50 = mul nuw nsw i64 %49, %8
  %51 = getelementptr inbounds i32, i32* %3, i64 %50
  %52 = zext i32 %.011 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 %48, i32* %53, align 4
  br label %54

54:                                               ; preds = %41
  %55 = add nuw nsw i32 %.011, 1
  br label %39, !llvm.loop !7

56:                                               ; preds = %39
  br label %57

57:                                               ; preds = %56
  %58 = add nuw nsw i32 %.010, 1
  br label %36, !llvm.loop !8

59:                                               ; preds = %36
  %60 = icmp eq i32 %6, 2
  br i1 %60, label %61, label %93

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %90, %61
  %.07 = phi i32 [ 0, %61 ], [ %91, %90 ]
  %63 = icmp slt i32 %.07, %0
  br i1 %63, label %64, label %92

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %87, %64
  %.06 = phi i32 [ 0, %64 ], [ %88, %87 ]
  %66 = icmp slt i32 %.06, %1
  br i1 %66, label %67, label %89

67:                                               ; preds = %65
  %68 = srem i32 %.06, %6
  %69 = srem i32 %.07, %6
  %70 = zext i32 %.07 to i64
  %71 = mul nuw nsw i64 %70, %8
  %72 = getelementptr inbounds i32, i32* %3, i64 %71
  %73 = zext i32 %.06 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = zext i32 %68 to i64
  %77 = zext i32 %69 to i64
  %78 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* @__const.orderedDitherKernel.dither, i64 0, i64 %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %75, %79
  %81 = select i1 %80, i32 255, i32 0
  %82 = zext i32 %.07 to i64
  %83 = mul nuw nsw i64 %82, %8
  %84 = getelementptr inbounds i32, i32* %3, i64 %83
  %85 = zext i32 %.06 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %67
  %88 = add nuw nsw i32 %.06, 1
  br label %65, !llvm.loop !9

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89
  %91 = add nuw nsw i32 %.07, 1
  br label %62, !llvm.loop !10

92:                                               ; preds = %62
  br label %198

93:                                               ; preds = %59
  %94 = icmp eq i32 %6, 3
  br i1 %94, label %95, label %127

95:                                               ; preds = %93
  br label %96

96:                                               ; preds = %124, %95
  %.05 = phi i32 [ 0, %95 ], [ %125, %124 ]
  %97 = icmp slt i32 %.05, %0
  br i1 %97, label %98, label %126

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %121, %98
  %.04 = phi i32 [ 0, %98 ], [ %122, %121 ]
  %100 = icmp slt i32 %.04, %1
  br i1 %100, label %101, label %123

101:                                              ; preds = %99
  %102 = srem i32 %.04, %6
  %103 = srem i32 %.05, %6
  %104 = zext i32 %.05 to i64
  %105 = mul nuw nsw i64 %104, %8
  %106 = getelementptr inbounds i32, i32* %3, i64 %105
  %107 = zext i32 %.04 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = zext i32 %102 to i64
  %111 = zext i32 %103 to i64
  %112 = getelementptr inbounds [3 x [3 x i32]], [3 x [3 x i32]]* @__const.orderedDitherKernel.dither.1, i64 0, i64 %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %109, %113
  %115 = select i1 %114, i32 255, i32 0
  %116 = zext i32 %.05 to i64
  %117 = mul nuw nsw i64 %116, %8
  %118 = getelementptr inbounds i32, i32* %3, i64 %117
  %119 = zext i32 %.04 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %101
  %122 = add nuw nsw i32 %.04, 1
  br label %99, !llvm.loop !11

123:                                              ; preds = %99
  br label %124

124:                                              ; preds = %123
  %125 = add nuw nsw i32 %.05, 1
  br label %96, !llvm.loop !12

126:                                              ; preds = %96
  br label %197

127:                                              ; preds = %93
  %128 = icmp eq i32 %6, 4
  br i1 %128, label %129, label %161

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %158, %129
  %.03 = phi i32 [ 0, %129 ], [ %159, %158 ]
  %131 = icmp slt i32 %.03, %0
  br i1 %131, label %132, label %160

132:                                              ; preds = %130
  br label %133

133:                                              ; preds = %155, %132
  %.02 = phi i32 [ 0, %132 ], [ %156, %155 ]
  %134 = icmp slt i32 %.02, %1
  br i1 %134, label %135, label %157

135:                                              ; preds = %133
  %136 = srem i32 %.02, %6
  %137 = srem i32 %.03, %6
  %138 = zext i32 %.03 to i64
  %139 = mul nuw nsw i64 %138, %8
  %140 = getelementptr inbounds i32, i32* %3, i64 %139
  %141 = zext i32 %.02 to i64
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %136 to i64
  %145 = zext i32 %137 to i64
  %146 = getelementptr inbounds [4 x [4 x i32]], [4 x [4 x i32]]* @__const.orderedDitherKernel.dither.2, i64 0, i64 %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp sgt i32 %143, %147
  %149 = select i1 %148, i32 255, i32 0
  %150 = zext i32 %.03 to i64
  %151 = mul nuw nsw i64 %150, %8
  %152 = getelementptr inbounds i32, i32* %3, i64 %151
  %153 = zext i32 %.02 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %149, i32* %154, align 4
  br label %155

155:                                              ; preds = %135
  %156 = add nuw nsw i32 %.02, 1
  br label %133, !llvm.loop !13

157:                                              ; preds = %133
  br label %158

158:                                              ; preds = %157
  %159 = add nuw nsw i32 %.03, 1
  br label %130, !llvm.loop !14

160:                                              ; preds = %130
  br label %196

161:                                              ; preds = %127
  %162 = icmp eq i32 %6, 8
  br i1 %162, label %163, label %195

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %192, %163
  %.01 = phi i32 [ 0, %163 ], [ %193, %192 ]
  %165 = icmp slt i32 %.01, %0
  br i1 %165, label %166, label %194

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %189, %166
  %.0 = phi i32 [ 0, %166 ], [ %190, %189 ]
  %168 = icmp slt i32 %.0, %1
  br i1 %168, label %169, label %191

169:                                              ; preds = %167
  %170 = srem i32 %.0, %6
  %171 = srem i32 %.01, %6
  %172 = zext i32 %.01 to i64
  %173 = mul nuw nsw i64 %172, %8
  %174 = getelementptr inbounds i32, i32* %3, i64 %173
  %175 = zext i32 %.0 to i64
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = zext i32 %170 to i64
  %179 = zext i32 %171 to i64
  %180 = getelementptr inbounds [8 x [8 x i32]], [8 x [8 x i32]]* @__const.orderedDitherKernel.dither.3, i64 0, i64 %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp sgt i32 %177, %181
  %183 = select i1 %182, i32 255, i32 0
  %184 = zext i32 %.01 to i64
  %185 = mul nuw nsw i64 %184, %8
  %186 = getelementptr inbounds i32, i32* %3, i64 %185
  %187 = zext i32 %.0 to i64
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %183, i32* %188, align 4
  br label %189

189:                                              ; preds = %169
  %190 = add nuw nsw i32 %.0, 1
  br label %167, !llvm.loop !15

191:                                              ; preds = %167
  br label %192

192:                                              ; preds = %191
  %193 = add nuw nsw i32 %.01, 1
  br label %164, !llvm.loop !16

194:                                              ; preds = %164
  br label %195

195:                                              ; preds = %194, %161
  br label %196

196:                                              ; preds = %195, %160
  br label %197

197:                                              ; preds = %196, %126
  br label %198

198:                                              ; preds = %197, %92
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double noundef, double noundef) #1

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly mustprogress nofree nounwind willreturn }

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
