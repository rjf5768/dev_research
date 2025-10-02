; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/bitap.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/bitap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@D_length = external dso_local global i32, align 4
@REGEX = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@JUMP = external dso_local global i32, align 4
@I = external dso_local global i32, align 4
@Init1 = external dso_local global i32, align 4
@Init = external dso_local global [0 x i32], align 4
@D_endpos = external dso_local global i32, align 4
@DELIMITER = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4
@AND = external dso_local global i32, align 4
@endposition = external dso_local global i32, align 4
@INVERSE = external dso_local global i32, align 4
@FILENAMEONLY = external dso_local global i32, align 4
@num_of_matched = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CurrentFileName = external dso_local global [0 x i8], align 1
@TRUNCATE = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @bitap(i8* noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [147456 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strlen(i8* noundef %29) #5
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @D_length, align 4
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %58, %5
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* @D_length, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %16, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 94
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 36
  br i1 %51, label %52, label %57

52:                                               ; preds = %44, %36
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %16, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 10, i8* %56, align 1
  br label %57

57:                                               ; preds = %52, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %16, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %16, align 4
  br label %32, !llvm.loop !4

61:                                               ; preds = %32
  %62 = load i32, i32* @REGEX, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %68, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #6
  unreachable

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = icmp sle i32 %71, 15
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  call void @re(i32 noundef %74, i32 noundef %75, i32 noundef %76)
  br label %399

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  call void @re1(i32 noundef %78, i32 noundef %79, i32 noundef %80)
  br label %399

81:                                               ; preds = %61
  %82 = load i32, i32* %10, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* @JUMP, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %10, align 4
  call void @asearch1(i8* noundef %88, i32 noundef %89, i32 noundef %90)
  br label %399

91:                                               ; preds = %84, %81
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %10, align 4
  call void @asearch(i8* noundef %95, i32 noundef %96, i32 noundef %97)
  br label %399

98:                                               ; preds = %91
  %99 = load i32, i32* @I, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 -1, i32* @Init1, align 4
  br label %102

102:                                              ; preds = %101, %98
  store i32 0, i32* %25, align 4
  store i32 49152, i32* %23, align 4
  %103 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 49151
  store i8 10, i8* %103, align 1
  %104 = load i32, i32* @Init1, align 4
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %105, i32* %14, align 4
  store i32 %105, i32* %13, align 4
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* @D_endpos, align 4
  store i32 %106, i32* %18, align 4
  %107 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 49151
  store i8 10, i8* %107, align 1
  %108 = load i32, i32* @D_endpos, align 4
  store i32 %108, i32* %20, align 4
  store i32 1, i32* %16, align 4
  br label %109

109:                                              ; preds = %118, %102
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @D_length, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %20, align 4
  %115 = shl i32 %114, 1
  %116 = load i32, i32* %20, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %20, align 4
  br label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %16, align 4
  br label %109, !llvm.loop !6

121:                                              ; preds = %109
  %122 = load i32, i32* %20, align 4
  %123 = xor i32 %122, -1
  store i32 %123, i32* %20, align 4
  store i32 1, i32* %22, align 4
  br label %124

124:                                              ; preds = %397, %121
  %125 = load i32, i32* %8, align 4
  %126 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %127 = getelementptr inbounds i8, i8* %126, i64 49152
  %128 = call i32 @fill_buf(i32 noundef %125, i8* noundef %127, i32 noundef 49152)
  store i32 %128, i32* %26, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %398

130:                                              ; preds = %124
  store i32 49152, i32* %16, align 4
  %131 = load i32, i32* %26, align 4
  %132 = add nsw i32 49152, %131
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %22, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %171

135:                                              ; preds = %130
  store i32 49151, i32* %16, align 4
  %136 = load i32, i32* @DELIMITER, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  store i32 0, i32* %27, align 4
  br label %139

139:                                              ; preds = %159, %138
  %140 = load i32, i32* %27, align 4
  %141 = load i32, i32* @D_length, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i8*, i8** %6, align 8
  %145 = load i32, i32* %27, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = load i32, i32* %27, align 4
  %151 = add nsw i32 49152, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %149, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %162

158:                                              ; preds = %143
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %27, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %27, align 4
  br label %139, !llvm.loop !7

162:                                              ; preds = %157, %139
  %163 = load i32, i32* %27, align 4
  %164 = load i32, i32* @D_length, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %25, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %25, align 4
  br label %169

169:                                              ; preds = %166, %162
  br label %170

170:                                              ; preds = %169, %135
  store i32 0, i32* %22, align 4
  br label %171

171:                                              ; preds = %170, %130
  %172 = load i32, i32* %26, align 4
  %173 = icmp slt i32 %172, 49152
  br i1 %173, label %174, label %190

174:                                              ; preds = %171
  %175 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %176 = getelementptr inbounds i8, i8* %175, i64 49152
  %177 = load i32, i32* %26, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8*, i8** %6, align 8
  %181 = load i32, i32* @D_length, align 4
  %182 = sext i32 %181 to i64
  %183 = call i8* @strncpy(i8* noundef %179, i8* noundef %180, i64 noundef %182) #7
  %184 = load i32, i32* %17, align 4
  %185 = load i32, i32* @D_length, align 4
  %186 = add i32 %184, %185
  store i32 %186, i32* %17, align 4
  %187 = load i32, i32* %17, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %188
  store i8 0, i8* %189, align 1
  br label %190

190:                                              ; preds = %174, %171
  br label %191

191:                                              ; preds = %369, %190
  %192 = load i32, i32* %16, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp ult i32 %192, %193
  br i1 %194, label %195, label %370

195:                                              ; preds = %191
  %196 = load i32, i32* %16, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %16, align 4
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  store i8 %200, i8* %11, align 1
  %201 = load i8, i8* %11, align 1
  %202 = sext i8 %201 to i64
  %203 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %19, align 4
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %205, %206
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %14, align 4
  %209 = lshr i32 %208, 1
  %210 = load i32, i32* %15, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* %12, align 4
  %213 = or i32 %211, %212
  store i32 %213, i32* %13, align 4
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %18, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %282

218:                                              ; preds = %195
  %219 = load i32, i32* %25, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %25, align 4
  %221 = load i32, i32* @AND, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @endposition, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* @endposition, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %243, label %229

229:                                              ; preds = %223, %218
  %230 = load i32, i32* @AND, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* @endposition, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi i1 [ false, %229 ], [ %236, %232 ]
  %239 = zext i1 %238 to i32
  %240 = load i32, i32* @INVERSE, align 4
  %241 = xor i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %266

243:                                              ; preds = %237, %223
  %244 = load i32, i32* @FILENAMEONLY, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %243
  %247 = load i32, i32* @num_of_matched, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @num_of_matched, align 4
  %249 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %399

250:                                              ; preds = %243
  %251 = load i32, i32* %16, align 4
  %252 = load i32, i32* @D_length, align 4
  %253 = sub i32 %251, %252
  %254 = sub i32 %253, 1
  store i32 %254, i32* %24, align 4
  %255 = load i32, i32* %23, align 4
  %256 = load i32, i32* %26, align 4
  %257 = add nsw i32 49152, %256
  %258 = sub nsw i32 %257, 1
  %259 = icmp sge i32 %255, %258
  br i1 %259, label %265, label %260

260:                                              ; preds = %250
  %261 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %262 = load i32, i32* %23, align 4
  %263 = load i32, i32* %24, align 4
  %264 = load i32, i32* %25, align 4
  call void @output(i8* noundef %261, i32 noundef %262, i32 noundef %263, i32 noundef %264)
  br label %265

265:                                              ; preds = %260, %250
  br label %266

266:                                              ; preds = %265, %237
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* @D_length, align 4
  %269 = sub i32 %267, %268
  store i32 %269, i32* %23, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %270 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %270, i32* %12, align 4
  store i32 %270, i32* %14, align 4
  store i32 %270, i32* %13, align 4
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %14, align 4
  %273 = and i32 %271, %272
  store i32 %273, i32* %12, align 4
  %274 = load i32, i32* %13, align 4
  %275 = lshr i32 %274, 1
  %276 = load i32, i32* %15, align 4
  %277 = and i32 %275, %276
  %278 = load i32, i32* %12, align 4
  %279 = or i32 %277, %278
  %280 = load i32, i32* %20, align 4
  %281 = and i32 %279, %280
  store i32 %281, i32* %13, align 4
  br label %282

282:                                              ; preds = %266, %195
  %283 = load i32, i32* %16, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %16, align 4
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 %285
  %287 = load i8, i8* %286, align 1
  store i8 %287, i8* %11, align 1
  %288 = load i8, i8* %11, align 1
  %289 = sext i8 %288 to i64
  %290 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %13, align 4
  %294 = and i32 %292, %293
  store i32 %294, i32* %12, align 4
  %295 = load i32, i32* %13, align 4
  %296 = lshr i32 %295, 1
  %297 = load i32, i32* %15, align 4
  %298 = and i32 %296, %297
  %299 = load i32, i32* %12, align 4
  %300 = or i32 %298, %299
  store i32 %300, i32* %14, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %18, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %369

305:                                              ; preds = %282
  %306 = load i32, i32* %25, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %25, align 4
  %308 = load i32, i32* @AND, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %316

310:                                              ; preds = %305
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* @endposition, align 4
  %313 = and i32 %311, %312
  %314 = load i32, i32* @endposition, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %330, label %316

316:                                              ; preds = %310, %305
  %317 = load i32, i32* @AND, align 4
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* %14, align 4
  %321 = load i32, i32* @endposition, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br label %324

324:                                              ; preds = %319, %316
  %325 = phi i1 [ false, %316 ], [ %323, %319 ]
  %326 = zext i1 %325 to i32
  %327 = load i32, i32* @INVERSE, align 4
  %328 = xor i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %353

330:                                              ; preds = %324, %310
  %331 = load i32, i32* @FILENAMEONLY, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %330
  %334 = load i32, i32* @num_of_matched, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* @num_of_matched, align 4
  %336 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @CurrentFileName, i64 0, i64 0))
  br label %399

337:                                              ; preds = %330
  %338 = load i32, i32* %16, align 4
  %339 = load i32, i32* @D_length, align 4
  %340 = sub i32 %338, %339
  %341 = sub i32 %340, 1
  store i32 %341, i32* %24, align 4
  %342 = load i32, i32* %23, align 4
  %343 = load i32, i32* %26, align 4
  %344 = add nsw i32 49152, %343
  %345 = sub nsw i32 %344, 1
  %346 = icmp sge i32 %342, %345
  br i1 %346, label %352, label %347

347:                                              ; preds = %337
  %348 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %349 = load i32, i32* %23, align 4
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %25, align 4
  call void @output(i8* noundef %348, i32 noundef %349, i32 noundef %350, i32 noundef %351)
  br label %352

352:                                              ; preds = %347, %337
  br label %353

353:                                              ; preds = %352, %324
  %354 = load i32, i32* %16, align 4
  %355 = load i32, i32* @D_length, align 4
  %356 = sub i32 %354, %355
  store i32 %356, i32* %23, align 4
  store i32 0, i32* @TRUNCATE, align 4
  %357 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  store i32 %357, i32* %12, align 4
  store i32 %357, i32* %14, align 4
  store i32 %357, i32* %13, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load i32, i32* %13, align 4
  %360 = and i32 %358, %359
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %13, align 4
  %362 = lshr i32 %361, 1
  %363 = load i32, i32* %15, align 4
  %364 = and i32 %362, %363
  %365 = load i32, i32* %12, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* %20, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %14, align 4
  br label %369

369:                                              ; preds = %353, %282
  br label %191, !llvm.loop !8

370:                                              ; preds = %191
  %371 = load i32, i32* %26, align 4
  %372 = add nsw i32 %371, 49152
  %373 = load i32, i32* %23, align 4
  %374 = sub nsw i32 %372, %373
  store i32 %374, i32* %21, align 4
  %375 = load i32, i32* %21, align 4
  %376 = icmp sgt i32 %375, 49152
  br i1 %376, label %377, label %378

377:                                              ; preds = %370
  store i32 49152, i32* %21, align 4
  store i32 1, i32* @TRUNCATE, align 4
  br label %378

378:                                              ; preds = %377, %370
  %379 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %380 = getelementptr inbounds i8, i8* %379, i64 49152
  %381 = load i32, i32* %21, align 4
  %382 = sext i32 %381 to i64
  %383 = sub i64 0, %382
  %384 = getelementptr inbounds i8, i8* %380, i64 %383
  %385 = getelementptr inbounds [147456 x i8], [147456 x i8]* %28, i64 0, i64 0
  %386 = load i32, i32* %23, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8, i8* %385, i64 %387
  %389 = load i32, i32* %21, align 4
  %390 = sext i32 %389 to i64
  %391 = call i8* @strncpy(i8* noundef %384, i8* noundef %388, i64 noundef %390) #7
  %392 = load i32, i32* %21, align 4
  %393 = sub nsw i32 49152, %392
  store i32 %393, i32* %23, align 4
  %394 = load i32, i32* %23, align 4
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %378
  store i32 1, i32* %23, align 4
  br label %397

397:                                              ; preds = %396, %378
  br label %124, !llvm.loop !9

398:                                              ; preds = %124
  br label %399

399:                                              ; preds = %398, %333, %246, %94, %87, %77, %73
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @re(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @re1(i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @asearch1(i8* noundef, i32 noundef, i32 noundef) #2

declare dso_local void @asearch(i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fill_buf(i32 noundef %0, i8* noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %18, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi i1 [ false, %9 ], [ %15, %13 ]
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = call i64 @read(i32 noundef %19, i8* noundef %23, i64 noundef 4096)
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %8, align 4
  br label %9, !llvm.loop !10

29:                                               ; preds = %16
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8* noundef, i8* noundef, i64 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @output(i8* noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local i64 @read(i32 noundef, i8* noundef, i64 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
