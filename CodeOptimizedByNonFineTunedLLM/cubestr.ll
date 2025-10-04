; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/cubestr.c'
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
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %0
  call void (i8*, ...) bitcast (void (...)* @fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %12, %8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %16 = sub nsw i32 %14, %15
  store i32 %16, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 8
  %17 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 17), align 8
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %21 = sub nsw i32 %20, 1
  br label %23

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22, %19
  %24 = phi i32 [ %21, %19 ], [ -1, %22 ]
  store i32 %24, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  store i32 0, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = call i8* @malloc(i64 noundef %27)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = call i8* @malloc(i64 noundef %32)
  %34 = bitcast i8* %33 to i32*
  store i32* %34, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %35 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 4, %36
  %38 = call i8* @malloc(i64 noundef %37)
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call i8* @malloc(i64 noundef %42)
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %108, %23
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %111

49:                                               ; preds = %45
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 2, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %60 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %65 = ashr i32 %64, 5
  %66 = add nsw i32 %65, 1
  %67 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %79 = load i32, i32* %2, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  br label %90

83:                                               ; preds = %58
  %84 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %85 = load i32, i32* %2, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %83, %77
  %91 = phi i32 [ %82, %77 ], [ %89, %83 ]
  %92 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %94 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %95 = sub nsw i32 %94, 1
  %96 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %97 = load i32, i32* %2, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %101 = sub nsw i32 %100, 1
  %102 = ashr i32 %101, 5
  %103 = add nsw i32 %102, 1
  %104 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %90
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %2, align 4
  br label %45, !llvm.loop !4

111:                                              ; preds = %45
  %112 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 8, %113
  %115 = call i8* @malloc(i64 noundef %114)
  %116 = bitcast i8* %115 to i32**
  store i32** %116, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %117 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = call i8* @malloc(i64 noundef %119)
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %122 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %123 = icmp sle i32 %122, 32
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %131

125:                                              ; preds = %111
  %126 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %127 = sub nsw i32 %126, 1
  %128 = ashr i32 %127, 5
  %129 = add nsw i32 %128, 1
  %130 = add nsw i32 %129, 1
  br label %131

131:                                              ; preds = %125, %124
  %132 = phi i32 [ 2, %124 ], [ %130, %125 ]
  %133 = sext i32 %132 to i64
  %134 = mul i64 4, %133
  %135 = call i8* @malloc(i64 noundef %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %138 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %136, i32 noundef %137)
  store i32* %138, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %140 = icmp sle i32 %139, 32
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %148

142:                                              ; preds = %131
  %143 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %144 = sub nsw i32 %143, 1
  %145 = ashr i32 %144, 5
  %146 = add nsw i32 %145, 1
  %147 = add nsw i32 %146, 1
  br label %148

148:                                              ; preds = %142, %141
  %149 = phi i32 [ 2, %141 ], [ %147, %142 ]
  %150 = sext i32 %149 to i64
  %151 = mul i64 4, %150
  %152 = call i8* @malloc(i64 noundef %151)
  %153 = bitcast i8* %152 to i32*
  %154 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %155 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %153, i32 noundef %154)
  store i32* %155, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %293, %148
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %296

160:                                              ; preds = %156
  %161 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %162 = icmp sle i32 %161, 32
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  br label %170

164:                                              ; preds = %160
  %165 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %166 = sub nsw i32 %165, 1
  %167 = ashr i32 %166, 5
  %168 = add nsw i32 %167, 1
  %169 = add nsw i32 %168, 1
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ 2, %163 ], [ %169, %164 ]
  %172 = sext i32 %171 to i64
  %173 = mul i64 4, %172
  %174 = call i8* @malloc(i64 noundef %173)
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %177 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %175, i32 noundef %176)
  %178 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %179 = load i32, i32* %2, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  store i32* %177, i32** %181, align 8
  store i32* %177, i32** %3, align 8
  %182 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %183 = load i32, i32* %2, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %1, align 4
  br label %187

187:                                              ; preds = %207, %170
  %188 = load i32, i32* %1, align 4
  %189 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %190 = load i32, i32* %2, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %188, %193
  br i1 %194, label %195, label %210

195:                                              ; preds = %187
  %196 = load i32, i32* %1, align 4
  %197 = and i32 %196, 31
  %198 = shl i32 1, %197
  %199 = load i32*, i32** %3, align 8
  %200 = load i32, i32* %1, align 4
  %201 = ashr i32 %200, 5
  %202 = add nsw i32 %201, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %198
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %195
  %208 = load i32, i32* %1, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %1, align 4
  br label %187, !llvm.loop !6

210:                                              ; preds = %187
  %211 = load i32, i32* %2, align 4
  %212 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %253

214:                                              ; preds = %210
  %215 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 0
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 1023
  store i32 %218, i32* %4, align 4
  %219 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, -1024
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %4, align 4
  %224 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %244, %214
  %229 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %3, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %233, %238
  %240 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %239, i32* %243, align 4
  br label %244

244:                                              ; preds = %228
  %245 = load i32, i32* %4, align 4
  %246 = add nsw i32 %245, -1
  store i32 %246, i32* %4, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %228, label %248, !llvm.loop !7

248:                                              ; preds = %244
  %249 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %250 = load i32, i32* %2, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 0, i32* %252, align 4
  br label %292

253:                                              ; preds = %210
  %254 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 1023
  store i32 %257, i32* %5, align 4
  %258 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, -1024
  store i32 %261, i32* %259, align 4
  %262 = load i32, i32* %5, align 4
  %263 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  %265 = load i32, i32* %264, align 4
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %283, %253
  %268 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32*, i32** %3, align 8
  %274 = load i32, i32* %5, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %272, %277
  %279 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  store i32 %278, i32* %282, align 4
  br label %283

283:                                              ; preds = %267
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %5, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %267, label %287, !llvm.loop !8

287:                                              ; preds = %283
  %288 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %289 = load i32, i32* %2, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 1, i32* %291, align 4
  br label %292

292:                                              ; preds = %287, %248
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %2, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %2, align 4
  br label %156, !llvm.loop !9

296:                                              ; preds = %156
  %297 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %296
  store i32 -1, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  br label %313

300:                                              ; preds = %296
  %301 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %302 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 2), align 8
  %303 = sub nsw i32 %302, 1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  %307 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %308 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 15), align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, 1431655765
  store i32 %312, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 14), align 8
  br label %313

313:                                              ; preds = %300, %299
  %314 = call i8* @malloc(i64 noundef 80)
  %315 = bitcast i8* %314 to i32**
  store i32** %315, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32 0, i32* %1, align 4
  br label %316

316:                                              ; preds = %341, %313
  %317 = load i32, i32* %1, align 4
  %318 = icmp slt i32 %317, 10
  br i1 %318, label %319, label %344

319:                                              ; preds = %316
  %320 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %321 = icmp sle i32 %320, 32
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  br label %329

323:                                              ; preds = %319
  %324 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %325 = sub nsw i32 %324, 1
  %326 = ashr i32 %325, 5
  %327 = add nsw i32 %326, 1
  %328 = add nsw i32 %327, 1
  br label %329

329:                                              ; preds = %323, %322
  %330 = phi i32 [ 2, %322 ], [ %328, %323 ]
  %331 = sext i32 %330 to i64
  %332 = mul i64 4, %331
  %333 = call i8* @malloc(i64 noundef %332)
  %334 = bitcast i8* %333 to i32*
  %335 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %336 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %334, i32 noundef %335)
  %337 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %338 = load i32, i32* %1, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  store i32* %336, i32** %340, align 8
  br label %341

341:                                              ; preds = %329
  %342 = load i32, i32* %1, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %1, align 4
  br label %316, !llvm.loop !10

344:                                              ; preds = %316
  %345 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %346 = icmp sle i32 %345, 32
  br i1 %346, label %347, label %348

347:                                              ; preds = %344
  br label %354

348:                                              ; preds = %344
  %349 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %350 = sub nsw i32 %349, 1
  %351 = ashr i32 %350, 5
  %352 = add nsw i32 %351, 1
  %353 = add nsw i32 %352, 1
  br label %354

354:                                              ; preds = %348, %347
  %355 = phi i32 [ 2, %347 ], [ %353, %348 ]
  %356 = sext i32 %355 to i64
  %357 = mul i64 4, %356
  %358 = call i8* @malloc(i64 noundef %357)
  %359 = bitcast i8* %358 to i32*
  %360 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %361 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %359, i32 noundef %360)
  %362 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %363 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_fill to i32* (i32*, i32, ...)*)(i32* noundef %361, i32 noundef %362)
  store i32* %363, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %364 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %365 = icmp sle i32 %364, 32
  br i1 %365, label %366, label %367

366:                                              ; preds = %354
  br label %373

367:                                              ; preds = %354
  %368 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %369 = sub nsw i32 %368, 1
  %370 = ashr i32 %369, 5
  %371 = add nsw i32 %370, 1
  %372 = add nsw i32 %371, 1
  br label %373

373:                                              ; preds = %367, %366
  %374 = phi i32 [ 2, %366 ], [ %372, %367 ]
  %375 = sext i32 %374 to i64
  %376 = mul i64 4, %375
  %377 = call i8* @malloc(i64 noundef %376)
  %378 = bitcast i8* %377 to i32*
  %379 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %380 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %378, i32 noundef %379)
  store i32* %380, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %381 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 8
  %382 = sext i32 %381 to i64
  %383 = mul i64 4, %382
  %384 = call i8* @malloc(i64 noundef %383)
  %385 = bitcast i8* %384 to i32*
  store i32* %385, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %386 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %387 = sext i32 %386 to i64
  %388 = mul i64 4, %387
  %389 = call i8* @malloc(i64 noundef %388)
  %390 = bitcast i8* %389 to i32*
  store i32* %390, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %391 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %392 = sext i32 %391 to i64
  %393 = mul i64 4, %392
  %394 = call i8* @malloc(i64 noundef %393)
  %395 = bitcast i8* %394 to i32*
  store i32* %395, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %396 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %397 = sext i32 %396 to i64
  %398 = mul i64 4, %397
  %399 = call i8* @malloc(i64 noundef %398)
  %400 = bitcast i8* %399 to i32*
  store i32* %400, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

declare dso_local void @fatal(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i32* @set_fill(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @setdown_cube() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* noundef %7)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  %13 = bitcast i32* %12 to i8*
  call void @free(i8* noundef %13)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  %19 = bitcast i32* %18 to i8*
  call void @free(i8* noundef %19)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  %25 = bitcast i32* %24 to i8*
  call void @free(i8* noundef %25)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  %31 = bitcast i32* %30 to i8*
  call void @free(i8* noundef %31)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  %37 = bitcast i32* %36 to i8*
  call void @free(i8* noundef %37)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  %43 = bitcast i32* %42 to i8*
  call void @free(i8* noundef %43)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  %49 = bitcast i32* %48 to i8*
  call void @free(i8* noundef %49)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* noundef %55)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %80, %56
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %57
  %62 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %61
  %69 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = bitcast i32* %73 to i8*
  call void @free(i8* noundef %74)
  %75 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %68, %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %2, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %2, align 4
  br label %57, !llvm.loop !11

83:                                               ; preds = %57
  %84 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %85 = icmp ne i32** %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %88 = bitcast i32** %87 to i8*
  call void @free(i8* noundef %88)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  br label %89

89:                                               ; preds = %86, %83
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %112, %89
  %91 = load i32, i32* %1, align 4
  %92 = icmp slt i32 %91, 10
  br i1 %92, label %93, label %115

93:                                               ; preds = %90
  %94 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %95 = load i32, i32* %1, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = bitcast i32* %105 to i8*
  call void @free(i8* noundef %106)
  %107 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %100, %93
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %1, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %90, !llvm.loop !12

115:                                              ; preds = %90
  %116 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %117 = icmp ne i32** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %120 = bitcast i32** %119 to i8*
  call void @free(i8* noundef %120)
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  br label %121

121:                                              ; preds = %118, %115
  %122 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  %126 = bitcast i32* %125 to i8*
  call void @free(i8* noundef %126)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  %132 = bitcast i32* %131 to i8*
  call void @free(i8* noundef %132)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  %138 = bitcast i32* %137 to i8*
  call void @free(i8* noundef %138)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32*, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  %144 = bitcast i32* %143 to i8*
  call void @free(i8* noundef %144)
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  br label %145

145:                                              ; preds = %142, %139
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 16), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @save_cube_struct() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.cube_struct* @temp_cube_save to i8*), i8* align 8 bitcast (%struct.cube_struct* @cube to i8*), i64 128, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i8* align 8 bitcast (%struct.cdata_struct* @cdata to i8*), i64 48, i1 false)
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 4), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 7), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 6), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 9), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 8), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 13), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 12), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  store i32** null, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 2), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 1), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 0), align 8
  store i32* null, i32** getelementptr inbounds (%struct.cdata_struct, %struct.cdata_struct* @cdata, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @restore_cube_struct() #0 {
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.cube_struct* @cube to i8*), i8* align 8 bitcast (%struct.cube_struct* @temp_cube_save to i8*), i64 128, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.cdata_struct* @cdata to i8*), i8* align 8 bitcast (%struct.cdata_struct* @temp_cdata_save to i8*), i64 48, i1 false)
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
