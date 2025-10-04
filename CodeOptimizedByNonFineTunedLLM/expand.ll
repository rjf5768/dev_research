; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/expand.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/make/expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable_set_list = type { %struct.variable_set_list*, %struct.variable_set* }
%struct.variable_set = type { %struct.variable**, i32 }
%struct.variable = type { %struct.variable*, i8*, i8*, i8 }
%struct.file = type { %struct.file*, i8*, %struct.dep*, %struct.commands*, i8*, %struct.dep*, i64, %struct.file*, %struct.file*, %struct.variable_set_list*, %struct.file*, i16, i16 }
%struct.commands = type { i8*, i32, i8*, i32, i8**, i8*, i8 }
%struct.dep = type opaque

@variable_expand.start = internal global [3 x i8] c"$\00\00", align 1
@variable_expand.end = internal global [2 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@current_variable_set_list = external dso_local global %struct.variable_set_list*, align 8
@reading_filename = external dso_local global i8*, align 8
@reading_lineno_ptr = external dso_local global i32*, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Recursive variable `%s' references itself (eventually)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @variable_expand(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.variable*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [5 x i8], align 1
  store i8* %0, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %5, align 8
  %25 = call i8* (...) @initialize_variable_output()
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %1, %441
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* noundef %27, i32 noundef 36) #5
  store i8* %28, i8** %7, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  br label %43

39:                                               ; preds = %26
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strlen(i8* noundef %40) #5
  %42 = add i64 %41, 1
  br label %43

43:                                               ; preds = %39, %33
  %44 = phi i64 [ %38, %33 ], [ %42, %39 ]
  %45 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %29, i8* noundef %30, i64 noundef %44)
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %442

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %5, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  switch i32 %54, label %402 [
    i32 36, label %55
    i32 40, label %59
    i32 123, label %59
    i32 0, label %401
  ]

55:                                               ; preds = %49
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i32, ...)*)(i8* noundef %56, i8* noundef %57, i32 noundef 1)
  store i8* %58, i8** %6, align 8
  br label %432

59:                                               ; preds = %49, %49
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %8, align 1
  %62 = load i8, i8* %8, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 40
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 41, i32 125
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %9, align 1
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %6, align 8
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %5, align 8
  store i8* %71, i8** %12, align 8
  %72 = call i32 (i8**, i8**, ...) bitcast (i32 (...)* @handle_function to i32 (i8**, i8**, ...)*)(i8** noundef %11, i8** noundef %12)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %59
  %75 = load i8*, i8** %11, align 8
  store i8* %75, i8** %6, align 8
  %76 = load i8*, i8** %12, align 8
  store i8* %76, i8** %5, align 8
  br label %432

77:                                               ; preds = %59
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = call i8* @strchr(i8* noundef %78, i32 noundef %80) #5
  store i8* %81, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i8*, i8** %10, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef %85, i8* noundef %86, i32 noundef 36)
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %146

91:                                               ; preds = %88
  store i32 0, i32* %14, align 4
  %92 = load i8*, i8** %10, align 8
  store i8* %92, i8** %5, align 8
  br label %93

93:                                               ; preds = %122, %91
  %94 = load i8*, i8** %5, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %125

98:                                               ; preds = %93
  %99 = load i8*, i8** %5, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = load i8, i8* %8, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %121

108:                                              ; preds = %98
  %109 = load i8*, i8** %5, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* %9, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %14, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %125

120:                                              ; preds = %115, %108
  br label %121

121:                                              ; preds = %120, %105
  br label %122

122:                                              ; preds = %121
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %5, align 8
  br label %93, !llvm.loop !4

125:                                              ; preds = %119, %93
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i8* @expand_argument(i8* noundef %129, i8* noundef %130)
  store i8* %131, i8** %15, align 8
  %132 = load i8, i8* %8, align 1
  store i8 %132, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @variable_expand.start, i64 0, i64 1), align 1
  %133 = load i8, i8* %9, align 1
  store i8 %133, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @variable_expand.end, i64 0, i64 0), align 1
  %134 = load i8*, i8** %15, align 8
  %135 = call i8* (i8*, i8*, i8*, ...) bitcast (i8* (...)* @concat to i8* (i8*, i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @variable_expand.start, i64 0, i64 0), i8* noundef %134, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @variable_expand.end, i64 0, i64 0))
  store i8* %135, i8** %7, align 8
  %136 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %136) #6
  %137 = load i8*, i8** %7, align 8
  %138 = call i8* @allocated_variable_expand(i8* noundef %137)
  store i8* %138, i8** %15, align 8
  %139 = load i8*, i8** %6, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = call i64 @strlen(i8* noundef %141) #5
  %143 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %139, i8* noundef %140, i64 noundef %142)
  store i8* %143, i8** %6, align 8
  %144 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %144) #6
  br label %432

145:                                              ; preds = %125
  br label %146

146:                                              ; preds = %145, %88
  %147 = load i8*, i8** %10, align 8
  %148 = call i8* @strchr(i8* noundef %147, i32 noundef 58) #5
  store i8* %148, i8** %5, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %340

151:                                              ; preds = %146
  %152 = load i8*, i8** %10, align 8
  %153 = load i8*, i8** %5, align 8
  %154 = load i8, i8* %9, align 1
  %155 = sext i8 %154 to i32
  %156 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef %152, i8* noundef %153, i32 noundef %155)
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %340

158:                                              ; preds = %151
  %159 = load i8*, i8** %10, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = ptrtoint i8* %160 to i64
  %163 = ptrtoint i8* %161 to i64
  %164 = sub i64 %162, %163
  %165 = call %struct.variable* (i8*, i64, ...) bitcast (%struct.variable* (...)* @lookup_variable to %struct.variable* (i8*, i64, ...)*)(i8* noundef %159, i64 noundef %164)
  store %struct.variable* %165, %struct.variable** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %17, align 8
  store i32 0, i32* %16, align 4
  %168 = load i8*, i8** %17, align 8
  store i8* %168, i8** %5, align 8
  br label %169

169:                                              ; preds = %206, %158
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %209

174:                                              ; preds = %169
  %175 = load i8*, i8** %5, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = load i8, i8* %8, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %205

184:                                              ; preds = %174
  %185 = load i8*, i8** %5, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = load i8, i8* %9, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* %16, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %16, align 4
  br label %204

194:                                              ; preds = %184
  %195 = load i8*, i8** %5, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 61
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* %16, align 4
  %201 = icmp sle i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %209

203:                                              ; preds = %199, %194
  br label %204

204:                                              ; preds = %203, %191
  br label %205

205:                                              ; preds = %204, %181
  br label %206

206:                                              ; preds = %205
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %5, align 8
  br label %169, !llvm.loop !6

209:                                              ; preds = %202, %169
  %210 = load i32, i32* %16, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = call i8* (...) @initialize_variable_output()
  store i8* %213, i8** %2, align 8
  br label %446

214:                                              ; preds = %209
  %215 = load i8*, i8** %5, align 8
  %216 = load i8*, i8** %17, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %19, align 4
  %221 = load i8*, i8** %5, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 1
  store i8* %222, i8** %18, align 8
  store i32 0, i32* %16, align 4
  %223 = load i8*, i8** %18, align 8
  store i8* %223, i8** %5, align 8
  br label %224

224:                                              ; preds = %253, %214
  %225 = load i8*, i8** %5, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %256

229:                                              ; preds = %224
  %230 = load i8*, i8** %5, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = load i8, i8* %8, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %229
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %16, align 4
  br label %252

239:                                              ; preds = %229
  %240 = load i8*, i8** %5, align 8
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = load i8, i8* %9, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %242, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %239
  %247 = load i32, i32* %16, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %16, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  br label %256

251:                                              ; preds = %246, %239
  br label %252

252:                                              ; preds = %251, %236
  br label %253

253:                                              ; preds = %252
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %5, align 8
  br label %224, !llvm.loop !7

256:                                              ; preds = %250, %224
  %257 = load i32, i32* %16, align 4
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = call i8* (...) @initialize_variable_output()
  store i8* %260, i8** %2, align 8
  br label %446

261:                                              ; preds = %256
  %262 = load i8*, i8** %5, align 8
  store i8* %262, i8** %13, align 8
  %263 = load i8*, i8** %5, align 8
  %264 = load i8*, i8** %18, align 8
  %265 = ptrtoint i8* %263 to i64
  %266 = ptrtoint i8* %264 to i64
  %267 = sub i64 %265, %266
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %20, align 4
  %269 = load %struct.variable*, %struct.variable** %4, align 8
  %270 = icmp ne %struct.variable* %269, null
  br i1 %270, label %271, label %339

271:                                              ; preds = %261
  %272 = load %struct.variable*, %struct.variable** %4, align 8
  %273 = getelementptr inbounds %struct.variable, %struct.variable* %272, i32 0, i32 2
  %274 = load i8*, i8** %273, align 8
  %275 = load i8, i8* %274, align 1
  %276 = sext i8 %275 to i32
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %339

278:                                              ; preds = %271
  %279 = load %struct.variable*, %struct.variable** %4, align 8
  %280 = getelementptr inbounds %struct.variable, %struct.variable* %279, i32 0, i32 3
  %281 = load i8, i8* %280, align 8
  %282 = lshr i8 %281, 3
  %283 = and i8 %282, 1
  %284 = zext i8 %283 to i32
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %278
  %287 = load %struct.variable*, %struct.variable** %4, align 8
  %288 = call i8* @recursively_expand(%struct.variable* noundef %287)
  br label %293

289:                                              ; preds = %278
  %290 = load %struct.variable*, %struct.variable** %4, align 8
  %291 = getelementptr inbounds %struct.variable, %struct.variable* %290, i32 0, i32 2
  %292 = load i8*, i8** %291, align 8
  br label %293

293:                                              ; preds = %289, %286
  %294 = phi i8* [ %288, %286 ], [ %292, %289 ]
  store i8* %294, i8** %21, align 8
  %295 = load i8*, i8** %17, align 8
  %296 = load i8*, i8** %17, align 8
  %297 = load i32, i32* %19, align 4
  %298 = zext i32 %297 to i64
  %299 = getelementptr inbounds i8, i8* %296, i64 %298
  %300 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @lindex to i8* (i8*, i8*, i32, ...)*)(i8* noundef %295, i8* noundef %299, i32 noundef 37)
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %320

302:                                              ; preds = %293
  %303 = load i8*, i8** %17, align 8
  %304 = load i32, i32* %19, align 4
  %305 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef %303, i32 noundef %304)
  store i8* %305, i8** %5, align 8
  %306 = load i8*, i8** %18, align 8
  %307 = load i32, i32* %20, align 4
  %308 = call i8* (i8*, i32, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i32, ...)*)(i8* noundef %306, i32 noundef %307)
  store i8* %308, i8** %7, align 8
  %309 = load i8*, i8** %6, align 8
  %310 = load i8*, i8** %21, align 8
  %311 = load i8*, i8** %5, align 8
  %312 = load i8*, i8** %7, align 8
  %313 = load i8*, i8** %5, align 8
  %314 = call i8* @strchr(i8* noundef %313, i32 noundef 37) #5
  %315 = load i8*, i8** %7, align 8
  %316 = call i8* @strchr(i8* noundef %315, i32 noundef 37) #5
  %317 = call i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...) bitcast (i8* (...)* @patsubst_expand to i8* (i8*, i8*, i8*, i8*, i8*, i8*, ...)*)(i8* noundef %309, i8* noundef %310, i8* noundef %311, i8* noundef %312, i8* noundef %314, i8* noundef %316)
  store i8* %317, i8** %6, align 8
  %318 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %318) #6
  %319 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %319) #6
  br label %328

320:                                              ; preds = %293
  %321 = load i8*, i8** %6, align 8
  %322 = load i8*, i8** %21, align 8
  %323 = load i8*, i8** %17, align 8
  %324 = load i8*, i8** %18, align 8
  %325 = load i32, i32* %19, align 4
  %326 = load i32, i32* %20, align 4
  %327 = call i8* (i8*, i8*, i8*, i8*, i32, i32, i32, i32, ...) bitcast (i8* (...)* @subst_expand to i8* (i8*, i8*, i8*, i8*, i32, i32, i32, i32, ...)*)(i8* noundef %321, i8* noundef %322, i8* noundef %323, i8* noundef %324, i32 noundef %325, i32 noundef %326, i32 noundef 0, i32 noundef 1)
  store i8* %327, i8** %6, align 8
  br label %328

328:                                              ; preds = %320, %302
  %329 = load %struct.variable*, %struct.variable** %4, align 8
  %330 = getelementptr inbounds %struct.variable, %struct.variable* %329, i32 0, i32 3
  %331 = load i8, i8* %330, align 8
  %332 = lshr i8 %331, 3
  %333 = and i8 %332, 1
  %334 = zext i8 %333 to i32
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %328
  %337 = load i8*, i8** %21, align 8
  call void @free(i8* noundef %337) #6
  br label %338

338:                                              ; preds = %336, %328
  br label %339

339:                                              ; preds = %338, %271, %261
  br label %399

340:                                              ; preds = %151, %146
  %341 = load i8*, i8** %10, align 8
  %342 = load i8, i8* %9, align 1
  %343 = sext i8 %342 to i32
  %344 = call i8* @strchr(i8* noundef %341, i32 noundef %343) #5
  store i8* %344, i8** %13, align 8
  %345 = load i8*, i8** %13, align 8
  %346 = icmp eq i8* %345, null
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = call i8* (...) @initialize_variable_output()
  store i8* %348, i8** %2, align 8
  br label %446

349:                                              ; preds = %340
  %350 = load i8*, i8** %10, align 8
  %351 = load i8*, i8** %13, align 8
  %352 = load i8*, i8** %10, align 8
  %353 = ptrtoint i8* %351 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = call %struct.variable* (i8*, i64, ...) bitcast (%struct.variable* (...)* @lookup_variable to %struct.variable* (i8*, i64, ...)*)(i8* noundef %350, i64 noundef %355)
  store %struct.variable* %356, %struct.variable** %4, align 8
  %357 = load %struct.variable*, %struct.variable** %4, align 8
  %358 = icmp ne %struct.variable* %357, null
  br i1 %358, label %359, label %398

359:                                              ; preds = %349
  %360 = load %struct.variable*, %struct.variable** %4, align 8
  %361 = getelementptr inbounds %struct.variable, %struct.variable* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %398

366:                                              ; preds = %359
  %367 = load %struct.variable*, %struct.variable** %4, align 8
  %368 = getelementptr inbounds %struct.variable, %struct.variable* %367, i32 0, i32 3
  %369 = load i8, i8* %368, align 8
  %370 = lshr i8 %369, 3
  %371 = and i8 %370, 1
  %372 = zext i8 %371 to i32
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %366
  %375 = load %struct.variable*, %struct.variable** %4, align 8
  %376 = call i8* @recursively_expand(%struct.variable* noundef %375)
  br label %381

377:                                              ; preds = %366
  %378 = load %struct.variable*, %struct.variable** %4, align 8
  %379 = getelementptr inbounds %struct.variable, %struct.variable* %378, i32 0, i32 2
  %380 = load i8*, i8** %379, align 8
  br label %381

381:                                              ; preds = %377, %374
  %382 = phi i8* [ %376, %374 ], [ %380, %377 ]
  store i8* %382, i8** %22, align 8
  %383 = load i8*, i8** %6, align 8
  %384 = load i8*, i8** %22, align 8
  %385 = load i8*, i8** %22, align 8
  %386 = call i64 @strlen(i8* noundef %385) #5
  %387 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %383, i8* noundef %384, i64 noundef %386)
  store i8* %387, i8** %6, align 8
  %388 = load %struct.variable*, %struct.variable** %4, align 8
  %389 = getelementptr inbounds %struct.variable, %struct.variable* %388, i32 0, i32 3
  %390 = load i8, i8* %389, align 8
  %391 = lshr i8 %390, 3
  %392 = and i8 %391, 1
  %393 = zext i8 %392 to i32
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %381
  %396 = load i8*, i8** %22, align 8
  call void @free(i8* noundef %396) #6
  br label %397

397:                                              ; preds = %395, %381
  br label %398

398:                                              ; preds = %397, %359, %349
  br label %399

399:                                              ; preds = %398, %339
  %400 = load i8*, i8** %13, align 8
  store i8* %400, i8** %5, align 8
  br label %432

401:                                              ; preds = %49
  br label %432

402:                                              ; preds = %49
  %403 = call i16** @__ctype_b_loc() #7
  %404 = load i16*, i16** %403, align 8
  %405 = load i8*, i8** %5, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 -1
  %407 = load i8, i8* %406, align 1
  %408 = sext i8 %407 to i32
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i16, i16* %404, i64 %409
  %411 = load i16, i16* %410, align 2
  %412 = zext i16 %411 to i32
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %402
  br label %432

416:                                              ; preds = %402
  %417 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 0
  store i8 36, i8* %417, align 1
  %418 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 1
  store i8 40, i8* %418, align 1
  %419 = load i8*, i8** %5, align 8
  %420 = load i8, i8* %419, align 1
  %421 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 2
  store i8 %420, i8* %421, align 1
  %422 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 3
  store i8 41, i8* %422, align 1
  %423 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 4
  store i8 0, i8* %423, align 1
  %424 = getelementptr inbounds [5 x i8], [5 x i8]* %23, i64 0, i64 0
  %425 = call i8* @allocated_variable_expand(i8* noundef %424)
  store i8* %425, i8** %7, align 8
  %426 = load i8*, i8** %6, align 8
  %427 = load i8*, i8** %7, align 8
  %428 = load i8*, i8** %7, align 8
  %429 = call i64 @strlen(i8* noundef %428) #5
  %430 = call i8* (i8*, i8*, i64, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i64, ...)*)(i8* noundef %426, i8* noundef %427, i64 noundef %429)
  store i8* %430, i8** %6, align 8
  %431 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %431) #6
  br label %432

432:                                              ; preds = %416, %415, %401, %399, %128, %74, %55
  %433 = load i8*, i8** %5, align 8
  %434 = load i8, i8* %433, align 1
  %435 = sext i8 %434 to i32
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %432
  br label %442

438:                                              ; preds = %432
  %439 = load i8*, i8** %5, align 8
  %440 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %440, i8** %5, align 8
  br label %441

441:                                              ; preds = %438
  br label %26

442:                                              ; preds = %437, %48
  %443 = load i8*, i8** %6, align 8
  %444 = call i8* (i8*, i8*, i32, ...) bitcast (i8* (...)* @variable_buffer_output to i8* (i8*, i8*, i32, ...)*)(i8* noundef %443, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 noundef 1)
  %445 = call i8* (...) @initialize_variable_output()
  store i8* %445, i8** %2, align 8
  br label %446

446:                                              ; preds = %442, %347, %259, %212
  %447 = load i8*, i8** %2, align 8
  ret i8* %447
}

declare dso_local i8* @initialize_variable_output(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8* noundef, i32 noundef) #2

declare dso_local i8* @variable_buffer_output(...) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

declare dso_local i32 @handle_function(...) #1

declare dso_local i8* @lindex(...) #1

declare dso_local i8* @concat(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #3

declare dso_local %struct.variable* @lookup_variable(...) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @recursively_expand(%struct.variable* noundef %0) #0 {
  %2 = alloca %struct.variable*, align 8
  %3 = alloca i8*, align 8
  store %struct.variable* %0, %struct.variable** %2, align 8
  %4 = load %struct.variable*, %struct.variable** %2, align 8
  %5 = getelementptr inbounds %struct.variable, %struct.variable* %4, i32 0, i32 3
  %6 = load i8, i8* %5, align 8
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load i8*, i8** @reading_filename, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load %struct.variable*, %struct.variable** %2, align 8
  %16 = getelementptr inbounds %struct.variable, %struct.variable* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  call void (i8*, i8*, ...) bitcast (void (...)* @fatal to void (i8*, i8*, ...)*)(i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef %17)
  br label %25

18:                                               ; preds = %11
  %19 = load i8*, i8** @reading_filename, align 8
  %20 = load i32*, i32** @reading_lineno_ptr, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.variable*, %struct.variable** %2, align 8
  %23 = getelementptr inbounds %struct.variable, %struct.variable* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  call void (i8*, i32, i8*, i8*, ...) bitcast (void (...)* @makefile_fatal to void (i8*, i32, i8*, i8*, ...)*)(i8* noundef %19, i32 noundef %21, i8* noundef getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* noundef %24)
  br label %25

25:                                               ; preds = %18, %14
  br label %26

26:                                               ; preds = %25, %1
  %27 = load %struct.variable*, %struct.variable** %2, align 8
  %28 = getelementptr inbounds %struct.variable, %struct.variable* %27, i32 0, i32 3
  %29 = load i8, i8* %28, align 8
  %30 = and i8 %29, -17
  %31 = or i8 %30, 16
  store i8 %31, i8* %28, align 8
  %32 = load %struct.variable*, %struct.variable** %2, align 8
  %33 = getelementptr inbounds %struct.variable, %struct.variable* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @allocated_variable_expand(i8* noundef %34)
  store i8* %35, i8** %3, align 8
  %36 = load %struct.variable*, %struct.variable** %2, align 8
  %37 = getelementptr inbounds %struct.variable, %struct.variable* %36, i32 0, i32 3
  %38 = load i8, i8* %37, align 8
  %39 = and i8 %38, -17
  %40 = or i8 %39, 0
  store i8 %40, i8* %37, align 8
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i8* @savestring(...) #1

declare dso_local i8* @patsubst_expand(...) #1

declare dso_local i8* @subst_expand(...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @expand_argument(i8* noundef %0, i8* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = ptrtoint i8* %8 to i64
  %11 = ptrtoint i8* %9 to i64
  %12 = sub i64 %10, %11
  %13 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %7, i64 noundef %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @allocated_variable_expand(i8* noundef %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %16) #6
  %17 = load i8*, i8** %6, align 8
  ret i8* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @variable_expand_for_file(i8* noundef %0, %struct.file* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.variable_set_list*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = icmp eq %struct.file* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @variable_expand(i8* noundef %11)
  store i8* %12, i8** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.variable_set_list*, %struct.variable_set_list** @current_variable_set_list, align 8
  store %struct.variable_set_list* %14, %struct.variable_set_list** %7, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 9
  %17 = load %struct.variable_set_list*, %struct.variable_set_list** %16, align 8
  store %struct.variable_set_list* %17, %struct.variable_set_list** @current_variable_set_list, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 3
  %20 = load %struct.commands*, %struct.commands** %19, align 8
  %21 = getelementptr inbounds %struct.commands, %struct.commands* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** @reading_filename, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 3
  %25 = load %struct.commands*, %struct.commands** %24, align 8
  %26 = getelementptr inbounds %struct.commands, %struct.commands* %25, i32 0, i32 1
  store i32* %26, i32** @reading_lineno_ptr, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @variable_expand(i8* noundef %27)
  store i8* %28, i8** %6, align 8
  %29 = load %struct.variable_set_list*, %struct.variable_set_list** %7, align 8
  store %struct.variable_set_list* %29, %struct.variable_set_list** @current_variable_set_list, align 8
  store i8* null, i8** @reading_filename, align 8
  store i32* null, i32** @reading_lineno_ptr, align 8
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %13, %10
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocated_variable_expand(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i8* @allocated_variable_expand_for_file(i8* noundef %3, %struct.file* noundef null)
  ret i8* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocated_variable_expand_for_file(i8* noundef %0, %struct.file* noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = call i8* (...) @save_variable_output()
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call i8* @variable_expand_for_file(i8* noundef %8, %struct.file* noundef %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* noundef %12) #5
  %14 = call i8* (i8*, i64, ...) bitcast (i8* (...)* @savestring to i8* (i8*, i64, ...)*)(i8* noundef %11, i64 noundef %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %5, align 8
  call void (i8*, ...) bitcast (void (...)* @restore_variable_output to void (i8*, ...)*)(i8* noundef %15)
  %16 = load i8*, i8** %6, align 8
  ret i8* %16
}

declare dso_local i8* @save_variable_output(...) #1

declare dso_local void @restore_variable_output(...) #1

declare dso_local void @fatal(...) #1

declare dso_local void @makefile_fatal(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

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
