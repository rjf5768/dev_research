; ModuleID = './buster.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/buster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bustbox = type { i32, i32 }

@A = external dso_local global %struct.bustbox*, align 8
@R = external dso_local global %struct.bustbox*, align 8

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @buster() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca [2 x i32], align 4
  %3 = alloca [2 x i32], align 4
  br label %4

4:                                                ; preds = %20, %0
  %.010 = phi i32 [ 1000000000, %0 ], [ %.111, %20 ]
  %.0 = phi i32 [ 1, %0 ], [ %21, %20 ]
  %5 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %6 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %5, i64 0, i32 0
  %7 = load i32, i32* %6, align 4
  %.not = icmp sgt i32 %.0, %7
  br i1 %.not, label %22, label %8

8:                                                ; preds = %4
  %9 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %9, i64 %10, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, %.010
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %15, i64 %16, i32 1
  %18 = load i32, i32* %17, align 4
  br label %19

19:                                               ; preds = %14, %8
  %.111 = phi i32 [ %18, %14 ], [ %.010, %8 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %46, %22
  %.015 = phi i32 [ undef, %22 ], [ %.217, %46 ]
  %.01 = phi i32 [ 1000000000, %22 ], [ %.23, %46 ]
  %.1 = phi i32 [ 1, %22 ], [ %47, %46 ]
  %24 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %25 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %24, i64 0, i32 0
  %26 = load i32, i32* %25, align 4
  %.not27 = icmp sgt i32 %.1, %26
  br i1 %.not27, label %48, label %27

27:                                               ; preds = %23
  %28 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %28, i64 %29, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, %.010
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %35 = zext i32 %.1 to i64
  %36 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %34, i64 %35, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, %.01
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %40, i64 %41, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %39, %33
  %.116 = phi i32 [ %.1, %39 ], [ %.015, %33 ]
  %.12 = phi i32 [ %43, %39 ], [ %.01, %33 ]
  br label %45

45:                                               ; preds = %44, %27
  %.217 = phi i32 [ %.116, %44 ], [ %.015, %27 ]
  %.23 = phi i32 [ %.12, %44 ], [ %.01, %27 ]
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !6

48:                                               ; preds = %23
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %.01, i32* %49, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %.010, i32* %50, align 4
  br label %51

51:                                               ; preds = %77, %48
  %.34 = phi i32 [ 1000000000, %48 ], [ %.67, %77 ]
  %.2 = phi i32 [ 1, %48 ], [ %78, %77 ]
  %52 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %53 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %52, i64 0, i32 0
  %54 = load i32, i32* %53, align 4
  %.not28 = icmp sgt i32 %.2, %54
  br i1 %.not28, label %79, label %55

55:                                               ; preds = %51
  %56 = icmp eq i32 %.2, %.015
  br i1 %56, label %57, label %58

57:                                               ; preds = %55
  br label %77

58:                                               ; preds = %55
  %59 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %60 = zext i32 %.2 to i64
  %61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %60, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, %.010
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %66 = zext i32 %.2 to i64
  %67 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %65, i64 %66, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %68, %.34
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %72 = zext i32 %.2 to i64
  %73 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %71, i64 %72, i32 0
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %70, %64
  %.45 = phi i32 [ %74, %70 ], [ %.34, %64 ]
  br label %76

76:                                               ; preds = %75, %58
  %.56 = phi i32 [ %.45, %75 ], [ %.34, %58 ]
  br label %77

77:                                               ; preds = %76, %57
  %.67 = phi i32 [ %.34, %57 ], [ %.56, %76 ]
  %78 = add nuw nsw i32 %.2, 1
  br label %51, !llvm.loop !7

79:                                               ; preds = %51
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  store i32 %.34, i32* %80, align 4
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  store i32 %.010, i32* %81, align 4
  br label %82

82:                                               ; preds = %107, %79
  %.212 = phi i32 [ 1000000000, %79 ], [ %.414, %107 ]
  %.3 = phi i32 [ 1, %79 ], [ %108, %107 ]
  %83 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %84 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %83, i64 0, i32 0
  %85 = load i32, i32* %84, align 4
  %.not29 = icmp sgt i32 %.3, %85
  br i1 %.not29, label %109, label %86

86:                                               ; preds = %82
  %87 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %88 = zext i32 %.3 to i64
  %89 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %87, i64 %88, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %107

95:                                               ; preds = %86
  %96 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %97 = zext i32 %.3 to i64
  %98 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %96, i64 %97, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, %.212
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %103 = zext i32 %.3 to i64
  %104 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %102, i64 %103, i32 1
  %105 = load i32, i32* %104, align 4
  br label %106

106:                                              ; preds = %101, %95
  %.313 = phi i32 [ %105, %101 ], [ %.212, %95 ]
  br label %107

107:                                              ; preds = %106, %94
  %.414 = phi i32 [ %.212, %94 ], [ %.313, %106 ]
  %108 = add nuw nsw i32 %.3, 1
  br label %82, !llvm.loop !8

109:                                              ; preds = %82
  br label %110

110:                                              ; preds = %150, %109
  %.78 = phi i32 [ 1000000000, %109 ], [ %.10, %150 ]
  %.4 = phi i32 [ 1, %109 ], [ %151, %150 ]
  %111 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %112 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %111, i64 0, i32 0
  %113 = load i32, i32* %112, align 4
  %.not30 = icmp sgt i32 %.4, %113
  br i1 %.not30, label %152, label %114

114:                                              ; preds = %110
  %115 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %116 = zext i32 %.4 to i64
  %117 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %115, i64 %116, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, %.212
  br i1 %119, label %120, label %149

120:                                              ; preds = %114
  %121 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %122 = zext i32 %.4 to i64
  %123 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %121, i64 %122, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %136, label %128

128:                                              ; preds = %120
  %129 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %130 = zext i32 %.4 to i64
  %131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %129, i64 %130, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sgt i32 %132, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %128, %120
  br label %150

137:                                              ; preds = %128
  %138 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %139 = zext i32 %.4 to i64
  %140 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 %139, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %141, %.78
  br i1 %142, label %143, label %148

143:                                              ; preds = %137
  %144 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %145 = zext i32 %.4 to i64
  %146 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %144, i64 %145, i32 0
  %147 = load i32, i32* %146, align 4
  br label %148

148:                                              ; preds = %143, %137
  %.89 = phi i32 [ %147, %143 ], [ %.78, %137 ]
  br label %149

149:                                              ; preds = %148, %114
  %.9 = phi i32 [ %.89, %148 ], [ %.78, %114 ]
  br label %150

150:                                              ; preds = %149, %136
  %.10 = phi i32 [ %.78, %136 ], [ %.9, %149 ]
  %151 = add nuw nsw i32 %.4, 1
  br label %110, !llvm.loop !9

152:                                              ; preds = %110
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  store i32 %.78, i32* %153, align 4
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  store i32 %.212, i32* %154, align 4
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %158 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %157, i64 1, i32 0
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %157, i64 1, i32 1
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %165 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %164, i64 2, i32 0
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %164, i64 2, i32 1
  store i32 %167, i32* %168, align 4
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %172 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %171, i64 3, i32 0
  store i32 %170, i32* %172, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %171, i64 3, i32 1
  store i32 %174, i32* %175, align 4
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %179 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %178, i64 4, i32 0
  store i32 %177, i32* %179, align 4
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %178, i64 4, i32 1
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %225, %152
  %.5 = phi i32 [ 1, %152 ], [ %226, %225 ]
  %184 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %185 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %184, i64 0, i32 0
  %186 = load i32, i32* %185, align 4
  %.not31 = icmp sgt i32 %.5, %186
  br i1 %.not31, label %.loopexit22, label %187

187:                                              ; preds = %183
  %188 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %189 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %188, i64 1, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %192 = zext i32 %.5 to i64
  %193 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %191, i64 %192, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %190, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %187
  %197 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %198 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %197, i64 1, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %201 = zext i32 %.5 to i64
  %202 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %200, i64 %201, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp eq i32 %199, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %196
  %206 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %207 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %206, i64 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %206, i64 %209, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = zext i32 %.5 to i64
  %213 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %206, i64 %212, i32 0
  store i32 %211, i32* %213, align 4
  %214 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %215 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %214, i64 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, -1
  store i32 %217, i32* %215, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %214, i64 %218, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %222 = zext i32 %.5 to i64
  %223 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %221, i64 %222, i32 1
  store i32 %220, i32* %223, align 4
  br label %227

224:                                              ; preds = %196, %187
  br label %225

225:                                              ; preds = %224
  %226 = add nuw nsw i32 %.5, 1
  br label %183, !llvm.loop !10

.loopexit22:                                      ; preds = %183
  br label %227

227:                                              ; preds = %.loopexit22, %205
  br label %228

228:                                              ; preds = %270, %227
  %.6 = phi i32 [ 1, %227 ], [ %271, %270 ]
  %229 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %230 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %229, i64 0, i32 0
  %231 = load i32, i32* %230, align 4
  %.not32 = icmp sgt i32 %.6, %231
  br i1 %.not32, label %.loopexit21, label %232

232:                                              ; preds = %228
  %233 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %234 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %233, i64 4, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %237 = zext i32 %.6 to i64
  %238 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %236, i64 %237, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp eq i32 %235, %239
  br i1 %240, label %241, label %269

241:                                              ; preds = %232
  %242 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %243 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %242, i64 4, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %246 = zext i32 %.6 to i64
  %247 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %245, i64 %246, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %244, %248
  br i1 %249, label %250, label %269

250:                                              ; preds = %241
  %251 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %252 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 %254, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = zext i32 %.6 to i64
  %258 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %251, i64 %257, i32 0
  store i32 %256, i32* %258, align 4
  %259 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %260 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %259, i64 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %260, align 4
  %263 = sext i32 %261 to i64
  %264 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %259, i64 %263, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %267 = zext i32 %.6 to i64
  %268 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %266, i64 %267, i32 1
  store i32 %265, i32* %268, align 4
  br label %272

269:                                              ; preds = %241, %232
  br label %270

270:                                              ; preds = %269
  %271 = add nuw nsw i32 %.6, 1
  br label %228, !llvm.loop !11

.loopexit21:                                      ; preds = %228
  br label %272

272:                                              ; preds = %.loopexit21, %250
  br label %273

273:                                              ; preds = %315, %272
  %.7 = phi i32 [ 1, %272 ], [ %316, %315 ]
  %274 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %275 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %274, i64 0, i32 0
  %276 = load i32, i32* %275, align 4
  %.not33 = icmp sgt i32 %.7, %276
  br i1 %.not33, label %.loopexit20, label %277

277:                                              ; preds = %273
  %278 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %279 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %278, i64 2, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %282 = zext i32 %.7 to i64
  %283 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %281, i64 %282, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %280, %284
  br i1 %285, label %286, label %314

286:                                              ; preds = %277
  %287 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %288 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %287, i64 2, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %291 = zext i32 %.7 to i64
  %292 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %290, i64 %291, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp eq i32 %289, %293
  br i1 %294, label %295, label %314

295:                                              ; preds = %286
  %296 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %297 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %296, i64 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %296, i64 %299, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %.7 to i64
  %303 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %296, i64 %302, i32 0
  store i32 %301, i32* %303, align 4
  %304 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %305 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %304, i64 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %305, align 4
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %304, i64 %308, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %312 = zext i32 %.7 to i64
  %313 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %311, i64 %312, i32 1
  store i32 %310, i32* %313, align 4
  br label %317

314:                                              ; preds = %286, %277
  br label %315

315:                                              ; preds = %314
  %316 = add nuw nsw i32 %.7, 1
  br label %273, !llvm.loop !12

.loopexit20:                                      ; preds = %273
  br label %317

317:                                              ; preds = %.loopexit20, %295
  br i1 %.not33, label %318, label %336

318:                                              ; preds = %317
  %319 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %320 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %319, i64 2, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %323 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %322, i64 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %322, i64 %326, i32 0
  store i32 %321, i32* %327, align 4
  %328 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %329 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %328, i64 2, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %332 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %331, i64 0, i32 0
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %331, i64 %334, i32 1
  store i32 %330, i32* %335, align 4
  br label %336

336:                                              ; preds = %318, %317
  br label %337

337:                                              ; preds = %379, %336
  %.8 = phi i32 [ 1, %336 ], [ %380, %379 ]
  %338 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %339 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %338, i64 0, i32 0
  %340 = load i32, i32* %339, align 4
  %.not34 = icmp sgt i32 %.8, %340
  br i1 %.not34, label %.loopexit, label %341

341:                                              ; preds = %337
  %342 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %343 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %342, i64 3, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %346 = zext i32 %.8 to i64
  %347 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %345, i64 %346, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %344, %348
  br i1 %349, label %350, label %378

350:                                              ; preds = %341
  %351 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %352 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %351, i64 3, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %355 = zext i32 %.8 to i64
  %356 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %354, i64 %355, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %353, %357
  br i1 %358, label %359, label %378

359:                                              ; preds = %350
  %360 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %361 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %360, i64 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %360, i64 %363, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = zext i32 %.8 to i64
  %367 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %360, i64 %366, i32 0
  store i32 %365, i32* %367, align 4
  %368 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %369 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %368, i64 0, i32 0
  %370 = load i32, i32* %369, align 4
  %371 = add nsw i32 %370, -1
  store i32 %371, i32* %369, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %368, i64 %372, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %376 = zext i32 %.8 to i64
  %377 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %375, i64 %376, i32 1
  store i32 %374, i32* %377, align 4
  br label %381

378:                                              ; preds = %350, %341
  br label %379

379:                                              ; preds = %378
  %380 = add nuw nsw i32 %.8, 1
  br label %337, !llvm.loop !13

.loopexit:                                        ; preds = %337
  br label %381

381:                                              ; preds = %.loopexit, %359
  br i1 %.not34, label %382, label %400

382:                                              ; preds = %381
  %383 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %384 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %383, i64 3, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %387 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %386, i64 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %386, i64 %390, i32 0
  store i32 %385, i32* %391, align 4
  %392 = load %struct.bustbox*, %struct.bustbox** @R, align 8
  %393 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %392, i64 3, i32 1
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.bustbox*, %struct.bustbox** @A, align 8
  %396 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %395, i64 0, i32 0
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %395, i64 %398, i32 1
  store i32 %394, i32* %399, align 4
  br label %400

400:                                              ; preds = %382, %381
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
