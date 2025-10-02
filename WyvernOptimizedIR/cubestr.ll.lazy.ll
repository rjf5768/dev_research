; ModuleID = './cubestr.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cubestr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.cdata_struct = type { i32*, i32*, i32*, i32*, i32, i32, i32 }

@cube = external dso_local global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [42 x i8] c"cube size is silly, error in .i/.o or .mv\00", align 1
@cdata = external dso_local global %struct.cdata_struct, align 8
@temp_cube_save = external dso_local global %struct.cube_struct, align 8
@temp_cdata_save = external dso_local global %struct.cdata_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @cube_setup() #0 {
  %1 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %3, %0
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0)) #4
  br label %8

8:                                                ; preds = %7, %3
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 17), align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %15 = add nsw i32 %14, -1
  br label %17

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16, %13
  %18 = phi i32 [ %15, %13 ], [ -1, %16 ]
  store i32 %18, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 18), align 4
  store i32 0, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %20 = sext i32 %19 to i64
  %21 = shl nsw i64 %20, 2
  %22 = call i8* @malloc(i64 noundef %21) #4
  store i8* %22, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3) to i8**), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = call i8* @malloc(i64 noundef %25) #4
  store i8* %26, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4) to i8**), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 2
  %30 = call i8* @malloc(i64 noundef %29) #4
  store i8* %30, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6) to i8**), align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = call i8* @malloc(i64 noundef %33) #4
  store i8* %34, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7) to i8**), align 8
  br label %35

35:                                               ; preds = %87, %17
  %.01 = phi i32 [ 0, %17 ], [ %88, %87 ]
  %36 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %37 = icmp slt i32 %.01, %36
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %40 = icmp slt i32 %.01, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %43 = zext i32 %.01 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 2, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %47 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %48 = zext i32 %.01 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %51 = ashr i32 %50, 5
  %52 = add nsw i32 %51, 1
  %53 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  %54 = zext i32 %.01 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %57 = zext i32 %.01 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %45
  %62 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %63 = zext i32 %.01 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  br label %72

66:                                               ; preds = %45
  %67 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  %68 = zext i32 %.01 to i64
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 0, %70
  br label %72

72:                                               ; preds = %66, %61
  %73 = phi i32 [ %65, %61 ], [ %71, %66 ]
  %74 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %76 = add nsw i32 %75, -1
  %77 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %78 = zext i32 %.01 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %81 = add nsw i32 %80, -1
  %82 = ashr i32 %81, 5
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  %85 = zext i32 %.01 to i64
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %72
  %88 = add nuw nsw i32 %.01, 1
  br label %35, !llvm.loop !4

89:                                               ; preds = %35
  %90 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %91 = sext i32 %90 to i64
  %92 = shl nsw i64 %91, 3
  %93 = call i8* @malloc(i64 noundef %92) #4
  store i8* %93, i8** bitcast (i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10) to i8**), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 2
  %97 = call i8* @malloc(i64 noundef %96) #4
  store i8* %97, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16) to i8**), align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %99 = icmp slt i32 %98, 33
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  br label %106

101:                                              ; preds = %89
  %102 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %103 = add nsw i32 %102, -1
  %104 = ashr i32 %103, 5
  %105 = add nsw i32 %104, 2
  %phi.cast = sext i32 %105 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %106

106:                                              ; preds = %101, %100
  %107 = phi i64 [ 8, %100 ], [ %phi.bo, %101 ]
  %108 = call i8* @malloc(i64 noundef %107) #4
  %109 = bitcast i8* %108 to i32*
  %110 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %111 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %109, i32 noundef %110) #4
  store i32* %111, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %112 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %113 = icmp slt i32 %112, 33
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %120

115:                                              ; preds = %106
  %116 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %117 = add nsw i32 %116, -1
  %118 = ashr i32 %117, 5
  %119 = add nsw i32 %118, 2
  %phi.cast5 = sext i32 %119 to i64
  %phi.bo6 = shl nsw i64 %phi.cast5, 2
  br label %120

120:                                              ; preds = %115, %114
  %121 = phi i64 [ 8, %114 ], [ %phi.bo6, %115 ]
  %122 = call i8* @malloc(i64 noundef %121) #4
  %123 = bitcast i8* %122 to i32*
  %124 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %125 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %123, i32 noundef %124) #4
  store i32* %125, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  br label %126

126:                                              ; preds = %227, %120
  %.12 = phi i32 [ 0, %120 ], [ %228, %227 ]
  %127 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %128 = icmp slt i32 %.12, %127
  br i1 %128, label %129, label %229

129:                                              ; preds = %126
  %130 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %131 = icmp slt i32 %130, 33
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %138

133:                                              ; preds = %129
  %134 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %135 = add nsw i32 %134, -1
  %136 = ashr i32 %135, 5
  %137 = add nsw i32 %136, 2
  br label %138

138:                                              ; preds = %133, %132
  %139 = phi i32 [ 2, %132 ], [ %137, %133 ]
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 2
  %142 = call i8* @malloc(i64 noundef %141) #4
  %143 = bitcast i8* %142 to i32*
  %144 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %145 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %143, i32 noundef %144) #4
  %146 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %147 = zext i32 %.12 to i64
  %148 = getelementptr inbounds i32*, i32** %146, i64 %147
  store i32* %145, i32** %148, align 8
  %149 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %150 = zext i32 %.12 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  br label %153

153:                                              ; preds = %167, %138
  %.0 = phi i32 [ %152, %138 ], [ %168, %167 ]
  %154 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %155 = zext i32 %.12 to i64
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %.not = icmp sgt i32 %.0, %157
  br i1 %.not, label %169, label %158

158:                                              ; preds = %153
  %159 = and i32 %.0, 31
  %160 = shl i32 1, %159
  %161 = ashr i32 %.0, 5
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %145, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %160
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %158
  %168 = add nsw i32 %.0, 1
  br label %153, !llvm.loop !6

169:                                              ; preds = %153
  %170 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %171 = icmp slt i32 %.12, %170
  br i1 %171, label %172, label %199

172:                                              ; preds = %169
  %173 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 1023
  %176 = and i32 %174, -1024
  store i32 %176, i32* %173, align 4
  %177 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %192, %172
  %.04 = phi i32 [ %175, %172 ], [ %193, %192 ]
  %181 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %182 = sext i32 %.04 to i64
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %.04 to i64
  %186 = getelementptr inbounds i32, i32* %145, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %184, %187
  %189 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %190 = sext i32 %.04 to i64
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  store i32 %188, i32* %191, align 4
  br label %192

192:                                              ; preds = %180
  %193 = add nsw i32 %.04, -1
  %194 = icmp sgt i32 %.04, 1
  br i1 %194, label %180, label %195, !llvm.loop !7

195:                                              ; preds = %192
  %196 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %197 = zext i32 %.12 to i64
  %198 = getelementptr inbounds i32, i32* %196, i64 %197
  store i32 0, i32* %198, align 4
  br label %226

199:                                              ; preds = %169
  %200 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 1023
  %203 = and i32 %201, -1024
  store i32 %203, i32* %200, align 4
  %204 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %219, %199
  %.03 = phi i32 [ %202, %199 ], [ %220, %219 ]
  %208 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  %209 = sext i32 %.03 to i64
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %.03 to i64
  %213 = getelementptr inbounds i32, i32* %145, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %211, %214
  %216 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  %217 = sext i32 %.03 to i64
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %207
  %220 = add nsw i32 %.03, -1
  %221 = icmp sgt i32 %.03, 1
  br i1 %221, label %207, label %222, !llvm.loop !8

222:                                              ; preds = %219
  %223 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %224 = zext i32 %.12 to i64
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32 1, i32* %225, align 4
  br label %226

226:                                              ; preds = %222, %195
  br label %227

227:                                              ; preds = %226
  %228 = add nuw nsw i32 %.12, 1
  br label %126, !llvm.loop !9

229:                                              ; preds = %126
  %230 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 -1, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 15), align 4
  br label %245

233:                                              ; preds = %229
  %234 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 2), align 8
  %236 = add nsw i32 %235, -1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 15), align 4
  %240 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, 1431655765
  store i32 %244, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 14), align 8
  br label %245

245:                                              ; preds = %233, %232
  %246 = call dereferenceable_or_null(80) i8* @malloc(i64 noundef 80) #4
  store i8* %246, i8** bitcast (i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11) to i8**), align 8
  br label %247

247:                                              ; preds = %269, %245
  %.1 = phi i32 [ 0, %245 ], [ %270, %269 ]
  %248 = icmp ult i32 %.1, 10
  br i1 %248, label %249, label %271

249:                                              ; preds = %247
  %250 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %251 = icmp slt i32 %250, 33
  br i1 %251, label %252, label %253

252:                                              ; preds = %249
  br label %258

253:                                              ; preds = %249
  %254 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %255 = add nsw i32 %254, -1
  %256 = ashr i32 %255, 5
  %257 = add nsw i32 %256, 2
  br label %258

258:                                              ; preds = %253, %252
  %259 = phi i32 [ 2, %252 ], [ %257, %253 ]
  %260 = sext i32 %259 to i64
  %261 = shl nsw i64 %260, 2
  %262 = call i8* @malloc(i64 noundef %261) #4
  %263 = bitcast i8* %262 to i32*
  %264 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %265 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %263, i32 noundef %264) #4
  %266 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %267 = zext i32 %.1 to i64
  %268 = getelementptr inbounds i32*, i32** %266, i64 %267
  store i32* %265, i32** %268, align 8
  br label %269

269:                                              ; preds = %258
  %270 = add nuw nsw i32 %.1, 1
  br label %247, !llvm.loop !10

271:                                              ; preds = %247
  %272 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %273 = icmp slt i32 %272, 33
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %280

275:                                              ; preds = %271
  %276 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %277 = add nsw i32 %276, -1
  %278 = ashr i32 %277, 5
  %279 = add nsw i32 %278, 2
  %phi.cast7 = sext i32 %279 to i64
  %phi.bo8 = shl nsw i64 %phi.cast7, 2
  br label %280

280:                                              ; preds = %275, %274
  %281 = phi i64 [ 8, %274 ], [ %phi.bo8, %275 ]
  %282 = call i8* @malloc(i64 noundef %281) #4
  %283 = bitcast i8* %282 to i32*
  %284 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %285 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %283, i32 noundef %284) #4
  %286 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %287 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* noundef %285, i32 noundef %286) #4
  store i32* %287, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %288 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %289 = icmp slt i32 %288, 33
  br i1 %289, label %290, label %291

290:                                              ; preds = %280
  br label %296

291:                                              ; preds = %280
  %292 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %293 = add nsw i32 %292, -1
  %294 = ashr i32 %293, 5
  %295 = add nsw i32 %294, 2
  %phi.cast9 = sext i32 %295 to i64
  %phi.bo10 = shl nsw i64 %phi.cast9, 2
  br label %296

296:                                              ; preds = %291, %290
  %297 = phi i64 [ 8, %290 ], [ %phi.bo10, %291 ]
  %298 = call i8* @malloc(i64 noundef %297) #4
  %299 = bitcast i8* %298 to i32*
  %300 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %301 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %299, i32 noundef %300) #4
  store i32* %301, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13), align 8
  %302 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 0), align 8
  %303 = sext i32 %302 to i64
  %304 = shl nsw i64 %303, 2
  %305 = call i8* @malloc(i64 noundef %304) #4
  store i8* %305, i8** bitcast (%struct.cdata_struct* @cdata to i8**), align 8
  %306 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %307 = sext i32 %306 to i64
  %308 = shl nsw i64 %307, 2
  %309 = call i8* @malloc(i64 noundef %308) #4
  store i8* %309, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1) to i8**), align 8
  %310 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %311 = sext i32 %310 to i64
  %312 = shl nsw i64 %311, 2
  %313 = call i8* @malloc(i64 noundef %312) #4
  store i8* %313, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2) to i8**), align 8
  %314 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %315 = sext i32 %314 to i64
  %316 = shl nsw i64 %315, 2
  %317 = call i8* @malloc(i64 noundef %316) #4
  store i8* %317, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3) to i8**), align 8
  ret void
}

declare dso_local void @fatal(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i32* @set_fill(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @setdown_cube() #0 {
  %1 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  %.not = icmp eq i32* %1, null
  br i1 %.not, label %4, label %2

2:                                                ; preds = %0
  %3 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3) to i8**), align 8
  call void @free(i8* noundef %3)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  br label %4

4:                                                ; preds = %2, %0
  %5 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  %.not2 = icmp eq i32* %5, null
  br i1 %.not2, label %8, label %6

6:                                                ; preds = %4
  %7 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4) to i8**), align 8
  call void @free(i8* noundef %7)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  %.not3 = icmp eq i32* %9, null
  br i1 %.not3, label %12, label %10

10:                                               ; preds = %8
  %11 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6) to i8**), align 8
  call void @free(i8* noundef %11)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  %.not4 = icmp eq i32* %13, null
  br i1 %.not4, label %16, label %14

14:                                               ; preds = %12
  %15 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7) to i8**), align 8
  call void @free(i8* noundef %15)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  %.not5 = icmp eq i32* %17, null
  br i1 %.not5, label %20, label %18

18:                                               ; preds = %16
  %19 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16) to i8**), align 8
  call void @free(i8* noundef %19)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  %.not6 = icmp eq i32* %21, null
  br i1 %.not6, label %24, label %22

22:                                               ; preds = %20
  %23 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8) to i8**), align 8
  call void @free(i8* noundef %23)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  %.not7 = icmp eq i32* %25, null
  br i1 %.not7, label %28, label %26

26:                                               ; preds = %24
  %27 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9) to i8**), align 8
  call void @free(i8* noundef %27)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  %.not8 = icmp eq i32* %29, null
  br i1 %.not8, label %32, label %30

30:                                               ; preds = %28
  %31 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12) to i8**), align 8
  call void @free(i8* noundef %31)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13), align 8
  %.not9 = icmp eq i32* %33, null
  br i1 %.not9, label %36, label %34

34:                                               ; preds = %32
  %35 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13) to i8**), align 8
  call void @free(i8* noundef %35)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13), align 8
  br label %36

36:                                               ; preds = %34, %32
  br label %37

37:                                               ; preds = %55, %36
  %.01 = phi i32 [ 0, %36 ], [ %56, %55 ]
  %38 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 1), align 4
  %39 = icmp slt i32 %.01, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %42 = zext i32 %.01 to i64
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %.not17 = icmp eq i32* %44, null
  br i1 %.not17, label %54, label %45

45:                                               ; preds = %40
  %46 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %47 = zext i32 %.01 to i64
  %48 = getelementptr inbounds i32*, i32** %46, i64 %47
  %49 = bitcast i32** %48 to i8**
  %50 = load i8*, i8** %49, align 8
  call void @free(i8* noundef %50)
  %51 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %52 = zext i32 %.01 to i64
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %40
  br label %55

55:                                               ; preds = %54
  %56 = add nuw nsw i32 %.01, 1
  br label %37, !llvm.loop !11

57:                                               ; preds = %37
  %58 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %.not10 = icmp eq i32** %58, null
  br i1 %.not10, label %61, label %59

59:                                               ; preds = %57
  %60 = load i8*, i8** bitcast (i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10) to i8**), align 8
  call void @free(i8* noundef %60)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %79, %61
  %.0 = phi i32 [ 0, %61 ], [ %80, %79 ]
  %63 = icmp ult i32 %.0, 10
  br i1 %63, label %64, label %81

64:                                               ; preds = %62
  %65 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %66 = zext i32 %.0 to i64
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %.not16 = icmp eq i32* %68, null
  br i1 %.not16, label %78, label %69

69:                                               ; preds = %64
  %70 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %71 = zext i32 %.0 to i64
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = bitcast i32** %72 to i8**
  %74 = load i8*, i8** %73, align 8
  call void @free(i8* noundef %74)
  %75 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %76 = zext i32 %.0 to i64
  %77 = getelementptr inbounds i32*, i32** %75, i64 %76
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %69, %64
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.0, 1
  br label %62, !llvm.loop !12

81:                                               ; preds = %62
  %82 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %.not11 = icmp eq i32** %82, null
  br i1 %.not11, label %85, label %83

83:                                               ; preds = %81
  %84 = load i8*, i8** bitcast (i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11) to i8**), align 8
  call void @free(i8* noundef %84)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 0), align 8
  %.not12 = icmp eq i32* %86, null
  br i1 %.not12, label %89, label %87

87:                                               ; preds = %85
  %88 = load i8*, i8** bitcast (%struct.cdata_struct* @cdata to i8**), align 8
  call void @free(i8* noundef %88)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 0), align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  %.not13 = icmp eq i32* %90, null
  br i1 %.not13, label %93, label %91

91:                                               ; preds = %89
  %92 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1) to i8**), align 8
  call void @free(i8* noundef %92)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2), align 8
  %.not14 = icmp eq i32* %94, null
  br i1 %.not14, label %97, label %95

95:                                               ; preds = %93
  %96 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2) to i8**), align 8
  call void @free(i8* noundef %96)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2), align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3), align 8
  %.not15 = icmp eq i32* %98, null
  br i1 %.not15, label %101, label %99

99:                                               ; preds = %97
  %100 = load i8*, i8** bitcast (i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3) to i8**), align 8
  call void @free(i8* noundef %100)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3), align 8
  br label %101

101:                                              ; preds = %99, %97
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 16), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3), align 8
  ret void
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @save_cube_struct() #2 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) bitcast (%struct.cube_struct* @temp_cube_save to i8*), i8* noundef nonnull align 8 dereferenceable(128) bitcast (%struct.cube_struct* @cube to i8*), i64 128, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i8* noundef nonnull align 8 dereferenceable(48) bitcast (%struct.cdata_struct* @cdata to i8*), i64 48, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i64 0, i32 3), align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline nosync nounwind uwtable willreturn
define dso_local void @restore_cube_struct() #2 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) bitcast (%struct.cube_struct* @cube to i8*), i8* noundef nonnull align 8 dereferenceable(128) bitcast (%struct.cube_struct* @temp_cube_save to i8*), i64 128, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(48) bitcast (%struct.cdata_struct* @cdata to i8*), i8* noundef nonnull align 8 dereferenceable(48) bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i64 48, i1 false)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
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
