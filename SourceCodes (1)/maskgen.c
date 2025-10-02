; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/maskgen.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/agrep/maskgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.term = type { i32, [32 x i8] }

@endposition = external dso_local global i32, align 4
@NO_ERR_MASK = external dso_local global i32, align 4
@wildmask = external dso_local global i32, align 4
@NOUPPER = external dso_local global i32, align 4
@REGEX = external dso_local global i32, align 4
@Bit = external dso_local global [0 x i32], align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@Progname = external dso_local global [0 x i8], align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@AND = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@D_length = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Init = external dso_local global [0 x i32], align 4
@Init1 = external dso_local global i32, align 4
@D_endpos = external dso_local global i32, align 4
@Mask = external dso_local global [0 x i32], align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @maskgen(i8* noundef %0, i32 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [42 x %struct.term], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %25, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 32
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.term, %struct.term* %22, i32 0, i32 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %23, i64 0, i64 0
  store i8 0, i8* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %16, !llvm.loop !4

28:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 32
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.term, %struct.term* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %29, !llvm.loop !6

40:                                               ; preds = %29
  store i32 0, i32* @endposition, align 4
  store i32 0, i32* @NO_ERR_MASK, align 4
  store i32 0, i32* @wildmask, align 4
  store i32 0, i32* %15, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strlen(i8* noundef %41) #5
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* @NOUPPER, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %96, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %47
  %52 = call i16** @__ctype_b_loc() #6
  %53 = load i16*, i16** %52, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %53, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 1024
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %51
  %67 = call i16** @__ctype_b_loc() #6
  %68 = load i16*, i16** %67, align 8
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %68, i64 %75
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = and i32 %78, 256
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %66
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 @tolower(i32 noundef %87) #5
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  store i8 %89, i8* %93, align 1
  br label %94

94:                                               ; preds = %81, %66
  br label %95

95:                                               ; preds = %94, %51
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %47, !llvm.loop !7

99:                                               ; preds = %47
  br label %100

100:                                              ; preds = %99, %40
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %101

101:                                              ; preds = %482, %100
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %485

105:                                              ; preds = %101
  %106 = load i8*, i8** %3, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  switch i32 %111, label %439 [
    i32 249, label %112
    i32 253, label %140
    i32 250, label %141
    i32 242, label %142
    i32 243, label %143
    i32 246, label %144
    i32 247, label %147
    i32 244, label %156
    i32 245, label %266
    i32 251, label %269
    i32 252, label %295
    i32 10, label %330
    i32 241, label %353
    i32 239, label %406
  ]

112:                                              ; preds = %105
  %113 = load i32, i32* @REGEX, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.term, %struct.term* %118, i32 0, i32 1
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %119, i64 0, i64 0
  store i8 46, i8* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.term, %struct.term* %123, i32 0, i32 1
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %124, i64 0, i64 1
  store i8 46, i8* %125, align 1
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.term, %struct.term* %129, i32 0, i32 1
  %131 = getelementptr inbounds [32 x i8], [32 x i8]* %130, i64 0, i64 2
  store i8 0, i8* %131, align 2
  br label %475

132:                                              ; preds = %112
  %133 = load i32, i32* @wildmask, align 4
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %133, %138
  store i32 %139, i32* @wildmask, align 4
  br label %475

140:                                              ; preds = %105
  br label %475

141:                                              ; preds = %105
  br label %475

142:                                              ; preds = %105
  br label %475

143:                                              ; preds = %105
  br label %475

144:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  %145 = load i32, i32* %13, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %13, align 4
  br label %475

147:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %153, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

155:                                              ; preds = %147
  br label %475

156:                                              ; preds = %105
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, i32* @NO_ERR_MASK, align 4
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %160, %164
  store i32 %165, i32* @NO_ERR_MASK, align 4
  br label %166

166:                                              ; preds = %159, %156
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  %169 = load i8*, i8** %3, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = icmp eq i32 %174, 248
  br i1 %175, label %176, label %183

176:                                              ; preds = %166
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.term, %struct.term* %179, i32 0, i32 0
  store i32 1, i32* %180, align 4
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %176, %166
  store i32 0, i32* %9, align 4
  br label %184

184:                                              ; preds = %248, %183
  %185 = load i8*, i8** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = icmp ne i32 %190, 245
  br i1 %191, label %192, label %196

192:                                              ; preds = %184
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %11, align 4
  %195 = icmp slt i32 %193, %194
  br label %196

196:                                              ; preds = %192, %184
  %197 = phi i1 [ false, %184 ], [ %195, %192 ]
  br i1 %197, label %198, label %249

198:                                              ; preds = %196
  %199 = load i8*, i8** %3, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp eq i32 %204, 237
  br i1 %205, label %206, label %223

206:                                              ; preds = %198
  %207 = load i8*, i8** %3, align 8
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %207, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = load i32, i32* %8, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %214
  %216 = getelementptr inbounds %struct.term, %struct.term* %215, i32 0, i32 1
  %217 = load i32, i32* %9, align 4
  %218 = sub nsw i32 %217, 1
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [32 x i8], [32 x i8]* %216, i64 0, i64 %219
  store i8 %212, i8* %220, align 1
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 2
  store i32 %222, i32* %7, align 4
  br label %248

223:                                              ; preds = %198
  %224 = load i8*, i8** %3, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, i8* %224, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.term, %struct.term* %231, i32 0, i32 1
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [32 x i8], [32 x i8]* %232, i64 0, i64 %235
  store i8 %228, i8* %236, align 1
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.term, %struct.term* %239, i32 0, i32 1
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [32 x i8], [32 x i8]* %240, i64 0, i64 %242
  store i8 %228, i8* %243, align 1
  %244 = load i32, i32* %9, align 4
  %245 = add nsw i32 %244, 2
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %248

248:                                              ; preds = %223, %206
  br label %184, !llvm.loop !8

249:                                              ; preds = %196
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %255 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

256:                                              ; preds = %249
  %257 = load i32, i32* %8, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %258
  %260 = getelementptr inbounds %struct.term, %struct.term* %259, i32 0, i32 1
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %260, i64 0, i64 %262
  store i8 0, i8* %263, align 1
  %264 = load i32, i32* %8, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %8, align 4
  br label %475

266:                                              ; preds = %105
  %267 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %267, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

269:                                              ; preds = %105
  %270 = load i32, i32* @REGEX, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %275, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* @AND, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %278

275:                                              ; preds = %272, %269
  %276 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %276, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

278:                                              ; preds = %272
  store i32 1, i32* %12, align 4
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %280
  %282 = getelementptr inbounds %struct.term, %struct.term* %281, i32 0, i32 0
  store i32 2, i32* %282, align 4
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.term, %struct.term* %285, i32 0, i32 1
  %287 = getelementptr inbounds [32 x i8], [32 x i8]* %286, i64 0, i64 0
  store i8 0, i8* %287, align 4
  %288 = load i32, i32* @endposition, align 4
  %289 = load i32, i32* %8, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %8, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = or i32 %288, %293
  store i32 %294, i32* @endposition, align 4
  br label %475

295:                                              ; preds = %105
  %296 = load i32, i32* %8, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.term, %struct.term* %298, i32 0, i32 0
  store i32 2, i32* %299, align 4
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %301
  %303 = getelementptr inbounds %struct.term, %struct.term* %302, i32 0, i32 1
  %304 = getelementptr inbounds [32 x i8], [32 x i8]* %303, i64 0, i64 0
  store i8 0, i8* %304, align 4
  %305 = load i32, i32* %8, align 4
  %306 = load i32, i32* @D_length, align 4
  %307 = icmp sgt i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %295
  store i32 1, i32* @AND, align 4
  br label %309

309:                                              ; preds = %308, %295
  %310 = load i32, i32* %12, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %319, label %312

312:                                              ; preds = %309
  %313 = load i32, i32* @REGEX, align 4
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %322

315:                                              ; preds = %312
  %316 = load i32, i32* %8, align 4
  %317 = load i32, i32* @D_length, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %315, %309
  %320 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %321 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %320, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

322:                                              ; preds = %315, %312
  %323 = load i32, i32* @endposition, align 4
  %324 = load i32, i32* %8, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %8, align 4
  %326 = sext i32 %324 to i64
  %327 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %323, %328
  store i32 %329, i32* @endposition, align 4
  br label %475

330:                                              ; preds = %105
  %331 = load i32, i32* @NO_ERR_MASK, align 4
  %332 = load i32, i32* %8, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %331, %335
  store i32 %336, i32* @NO_ERR_MASK, align 4
  %337 = load i32, i32* %8, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.term, %struct.term* %339, i32 0, i32 1
  %341 = getelementptr inbounds [32 x i8], [32 x i8]* %340, i64 0, i64 1
  store i8 10, i8* %341, align 1
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.term, %struct.term* %344, i32 0, i32 1
  %346 = getelementptr inbounds [32 x i8], [32 x i8]* %345, i64 0, i64 0
  store i8 10, i8* %346, align 4
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  %349 = sext i32 %347 to i64
  %350 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %349
  %351 = getelementptr inbounds %struct.term, %struct.term* %350, i32 0, i32 1
  %352 = getelementptr inbounds [32 x i8], [32 x i8]* %351, i64 0, i64 2
  store i8 0, i8* %352, align 2
  br label %475

353:                                              ; preds = %105
  %354 = load i32, i32* @NO_ERR_MASK, align 4
  %355 = load i32, i32* %8, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %354, %358
  store i32 %359, i32* @NO_ERR_MASK, align 4
  %360 = load i32, i32* %8, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %361
  %363 = getelementptr inbounds %struct.term, %struct.term* %362, i32 0, i32 1
  %364 = getelementptr inbounds [32 x i8], [32 x i8]* %363, i64 0, i64 0
  store i8 1, i8* %364, align 4
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %366
  %368 = getelementptr inbounds %struct.term, %struct.term* %367, i32 0, i32 1
  %369 = getelementptr inbounds [32 x i8], [32 x i8]* %368, i64 0, i64 1
  store i8 47, i8* %369, align 1
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %371
  %373 = getelementptr inbounds %struct.term, %struct.term* %372, i32 0, i32 1
  %374 = getelementptr inbounds [32 x i8], [32 x i8]* %373, i64 0, i64 2
  store i8 58, i8* %374, align 2
  %375 = load i32, i32* %8, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %376
  %378 = getelementptr inbounds %struct.term, %struct.term* %377, i32 0, i32 1
  %379 = getelementptr inbounds [32 x i8], [32 x i8]* %378, i64 0, i64 3
  store i8 64, i8* %379, align 1
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %381
  %383 = getelementptr inbounds %struct.term, %struct.term* %382, i32 0, i32 1
  %384 = getelementptr inbounds [32 x i8], [32 x i8]* %383, i64 0, i64 4
  store i8 91, i8* %384, align 4
  %385 = load i32, i32* %8, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %386
  %388 = getelementptr inbounds %struct.term, %struct.term* %387, i32 0, i32 1
  %389 = getelementptr inbounds [32 x i8], [32 x i8]* %388, i64 0, i64 5
  store i8 96, i8* %389, align 1
  %390 = load i32, i32* %8, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %391
  %393 = getelementptr inbounds %struct.term, %struct.term* %392, i32 0, i32 1
  %394 = getelementptr inbounds [32 x i8], [32 x i8]* %393, i64 0, i64 6
  store i8 123, i8* %394, align 2
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %396
  %398 = getelementptr inbounds %struct.term, %struct.term* %397, i32 0, i32 1
  %399 = getelementptr inbounds [32 x i8], [32 x i8]* %398, i64 0, i64 7
  store i8 127, i8* %399, align 1
  %400 = load i32, i32* %8, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %8, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %402
  %404 = getelementptr inbounds %struct.term, %struct.term* %403, i32 0, i32 1
  %405 = getelementptr inbounds [32 x i8], [32 x i8]* %404, i64 0, i64 8
  store i8 0, i8* %405, align 4
  br label %475

406:                                              ; preds = %105
  %407 = load i32, i32* %8, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* @NO_ERR_MASK, align 4
  %412 = or i32 %411, %410
  store i32 %412, i32* @NO_ERR_MASK, align 4
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.term, %struct.term* %415, i32 0, i32 1
  %417 = getelementptr inbounds [32 x i8], [32 x i8]* %416, i64 0, i64 1
  store i8 10, i8* %417, align 1
  %418 = load i32, i32* %8, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.term, %struct.term* %420, i32 0, i32 1
  %422 = getelementptr inbounds [32 x i8], [32 x i8]* %421, i64 0, i64 0
  store i8 10, i8* %422, align 4
  %423 = load i32, i32* %8, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %424
  %426 = getelementptr inbounds %struct.term, %struct.term* %425, i32 0, i32 1
  %427 = getelementptr inbounds [32 x i8], [32 x i8]* %426, i64 0, i64 3
  store i8 -17, i8* %427, align 1
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %429
  %431 = getelementptr inbounds %struct.term, %struct.term* %430, i32 0, i32 1
  %432 = getelementptr inbounds [32 x i8], [32 x i8]* %431, i64 0, i64 2
  store i8 -17, i8* %432, align 2
  %433 = load i32, i32* %8, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %8, align 4
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.term, %struct.term* %436, i32 0, i32 1
  %438 = getelementptr inbounds [32 x i8], [32 x i8]* %437, i64 0, i64 4
  store i8 0, i8* %438, align 4
  br label %475

439:                                              ; preds = %105
  %440 = load i32, i32* %15, align 4
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %442, label %449

442:                                              ; preds = %439
  %443 = load i32, i32* @NO_ERR_MASK, align 4
  %444 = load i32, i32* %8, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  %448 = or i32 %443, %447
  store i32 %448, i32* @NO_ERR_MASK, align 4
  br label %449

449:                                              ; preds = %442, %439
  %450 = load i32, i32* %8, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %451
  %453 = getelementptr inbounds %struct.term, %struct.term* %452, i32 0, i32 0
  store i32 0, i32* %453, align 4
  %454 = load i8*, i8** %3, align 8
  %455 = load i32, i32* %7, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = load i32, i32* %8, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %460
  %462 = getelementptr inbounds %struct.term, %struct.term* %461, i32 0, i32 1
  %463 = getelementptr inbounds [32 x i8], [32 x i8]* %462, i64 0, i64 1
  store i8 %458, i8* %463, align 1
  %464 = load i32, i32* %8, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %465
  %467 = getelementptr inbounds %struct.term, %struct.term* %466, i32 0, i32 1
  %468 = getelementptr inbounds [32 x i8], [32 x i8]* %467, i64 0, i64 0
  store i8 %458, i8* %468, align 4
  %469 = load i32, i32* %8, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %8, align 4
  %471 = sext i32 %469 to i64
  %472 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %471
  %473 = getelementptr inbounds %struct.term, %struct.term* %472, i32 0, i32 1
  %474 = getelementptr inbounds [32 x i8], [32 x i8]* %473, i64 0, i64 2
  store i8 0, i8* %474, align 2
  br label %475

475:                                              ; preds = %449, %406, %353, %330, %322, %278, %256, %155, %144, %143, %142, %141, %140, %132, %115
  %476 = load i32, i32* %8, align 4
  %477 = icmp sgt i32 %476, 32
  br i1 %477, label %478, label %481

478:                                              ; preds = %475
  %479 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %480 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %479, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

481:                                              ; preds = %475
  br label %482

482:                                              ; preds = %481
  %483 = load i32, i32* %7, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %7, align 4
  br label %101, !llvm.loop !9

485:                                              ; preds = %101
  %486 = load i32, i32* %13, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %485
  %489 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %490 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %489, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Progname, i64 0, i64 0))
  call void @exit(i32 noundef 2) #7
  unreachable

491:                                              ; preds = %485
  %492 = load i32, i32* %8, align 4
  %493 = sub nsw i32 %492, 1
  store i32 %493, i32* %11, align 4
  %494 = load i32, i32* %11, align 4
  %495 = sub nsw i32 32, %494
  store i32 %495, i32* %14, align 4
  %496 = load i32, i32* @wildmask, align 4
  %497 = load i32, i32* %14, align 4
  %498 = lshr i32 %496, %497
  store i32 %498, i32* @wildmask, align 4
  %499 = load i32, i32* @endposition, align 4
  %500 = load i32, i32* %14, align 4
  %501 = lshr i32 %499, %500
  store i32 %501, i32* @endposition, align 4
  %502 = load i32, i32* @NO_ERR_MASK, align 4
  %503 = ashr i32 %502, 1
  %504 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Bit, i64 0, i64 1), align 4
  %505 = xor i32 %504, -1
  %506 = and i32 %503, %505
  store i32 %506, i32* @NO_ERR_MASK, align 4
  %507 = load i32, i32* @NO_ERR_MASK, align 4
  %508 = xor i32 %507, -1
  %509 = load i32, i32* %14, align 4
  %510 = sub nsw i32 %509, 1
  %511 = ashr i32 %508, %510
  store i32 %511, i32* @NO_ERR_MASK, align 4
  store i32 1, i32* %7, align 4
  br label %512

512:                                              ; preds = %524, %491
  %513 = load i32, i32* %7, align 4
  %514 = load i32, i32* %11, align 4
  %515 = sub nsw i32 32, %514
  %516 = icmp sle i32 %513, %515
  br i1 %516, label %517, label %527

517:                                              ; preds = %512
  %518 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %519 = load i32, i32* %7, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %520
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %518, %522
  store i32 %523, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  br label %524

524:                                              ; preds = %517
  %525 = load i32, i32* %7, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %7, align 4
  br label %512, !llvm.loop !10

527:                                              ; preds = %512
  %528 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %529 = load i32, i32* @endposition, align 4
  %530 = or i32 %528, %529
  store i32 %530, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %531 = load i32, i32* @endposition, align 4
  %532 = shl i32 %531, 1
  %533 = add i32 %532, 1
  store i32 %533, i32* @endposition, align 4
  %534 = load i32, i32* getelementptr inbounds ([0 x i32], [0 x i32]* @Init, i64 0, i64 0), align 4
  %535 = load i32, i32* @wildmask, align 4
  %536 = or i32 %534, %535
  %537 = load i32, i32* @endposition, align 4
  %538 = or i32 %536, %537
  store i32 %538, i32* @Init1, align 4
  %539 = load i32, i32* @endposition, align 4
  %540 = load i32, i32* %11, align 4
  %541 = load i32, i32* @D_length, align 4
  %542 = sub nsw i32 %540, %541
  %543 = lshr i32 %539, %542
  %544 = load i32, i32* %11, align 4
  %545 = load i32, i32* @D_length, align 4
  %546 = sub nsw i32 %544, %545
  %547 = shl i32 %543, %546
  store i32 %547, i32* @D_endpos, align 4
  %548 = load i32, i32* @endposition, align 4
  %549 = load i32, i32* @D_endpos, align 4
  %550 = xor i32 %548, %549
  store i32 %550, i32* @endposition, align 4
  store i8 0, i8* %6, align 1
  store i32 0, i32* %7, align 4
  br label %551

551:                                              ; preds = %676, %527
  %552 = load i32, i32* %7, align 4
  %553 = icmp slt i32 %552, 256
  br i1 %553, label %554, label %681

554:                                              ; preds = %551
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %555

555:                                              ; preds = %672, %554
  %556 = load i32, i32* %9, align 4
  %557 = load i32, i32* %11, align 4
  %558 = icmp sle i32 %556, %557
  br i1 %558, label %559, label %675

559:                                              ; preds = %555
  br label %560

560:                                              ; preds = %646, %559
  %561 = load i32, i32* %9, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.term, %struct.term* %563, i32 0, i32 1
  %565 = load i32, i32* %10, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds [32 x i8], [32 x i8]* %564, i64 0, i64 %566
  %568 = load i8, i8* %567, align 1
  %569 = zext i8 %568 to i32
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %649

571:                                              ; preds = %560
  %572 = load i32, i32* %9, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %573
  %575 = getelementptr inbounds %struct.term, %struct.term* %574, i32 0, i32 1
  %576 = load i32, i32* %10, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [32 x i8], [32 x i8]* %575, i64 0, i64 %577
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i32
  %581 = icmp eq i32 %580, 238
  br i1 %581, label %582, label %604

582:                                              ; preds = %571
  %583 = load i8, i8* %6, align 1
  %584 = zext i8 %583 to i32
  %585 = icmp ne i32 %584, 10
  br i1 %585, label %589, label %586

586:                                              ; preds = %582
  %587 = load i32, i32* @REGEX, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %604

589:                                              ; preds = %586, %582
  %590 = load i8, i8* %6, align 1
  %591 = zext i8 %590 to i64
  %592 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = load i32, i32* %14, align 4
  %595 = load i32, i32* %9, align 4
  %596 = add nsw i32 %594, %595
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %597
  %599 = load i32, i32* %598, align 4
  %600 = or i32 %593, %599
  %601 = load i8, i8* %6, align 1
  %602 = zext i8 %601 to i64
  %603 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %602
  store i32 %600, i32* %603, align 4
  br label %649

604:                                              ; preds = %586, %571
  %605 = load i8, i8* %6, align 1
  %606 = zext i8 %605 to i32
  %607 = load i32, i32* %9, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %608
  %610 = getelementptr inbounds %struct.term, %struct.term* %609, i32 0, i32 1
  %611 = load i32, i32* %10, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [32 x i8], [32 x i8]* %610, i64 0, i64 %612
  %614 = load i8, i8* %613, align 1
  %615 = zext i8 %614 to i32
  %616 = icmp sge i32 %606, %615
  br i1 %616, label %617, label %646

617:                                              ; preds = %604
  %618 = load i8, i8* %6, align 1
  %619 = zext i8 %618 to i32
  %620 = load i32, i32* %9, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %621
  %623 = getelementptr inbounds %struct.term, %struct.term* %622, i32 0, i32 1
  %624 = load i32, i32* %10, align 4
  %625 = add nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [32 x i8], [32 x i8]* %623, i64 0, i64 %626
  %628 = load i8, i8* %627, align 1
  %629 = zext i8 %628 to i32
  %630 = icmp sle i32 %619, %629
  br i1 %630, label %631, label %646

631:                                              ; preds = %617
  %632 = load i8, i8* %6, align 1
  %633 = zext i8 %632 to i64
  %634 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %633
  %635 = load i32, i32* %634, align 4
  %636 = load i32, i32* %14, align 4
  %637 = load i32, i32* %9, align 4
  %638 = add nsw i32 %636, %637
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = or i32 %635, %641
  %643 = load i8, i8* %6, align 1
  %644 = zext i8 %643 to i64
  %645 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %644
  store i32 %642, i32* %645, align 4
  br label %649

646:                                              ; preds = %617, %604
  %647 = load i32, i32* %10, align 4
  %648 = add nsw i32 %647, 2
  store i32 %648, i32* %10, align 4
  br label %560, !llvm.loop !11

649:                                              ; preds = %631, %589, %560
  %650 = load i32, i32* %9, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [42 x %struct.term], [42 x %struct.term]* %5, i64 0, i64 %651
  %653 = getelementptr inbounds %struct.term, %struct.term* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = icmp eq i32 %654, 1
  br i1 %655, label %656, label %671

656:                                              ; preds = %649
  %657 = load i8, i8* %6, align 1
  %658 = zext i8 %657 to i64
  %659 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %658
  %660 = load i32, i32* %659, align 4
  %661 = load i32, i32* %14, align 4
  %662 = load i32, i32* %9, align 4
  %663 = add nsw i32 %661, %662
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [0 x i32], [0 x i32]* @Bit, i64 0, i64 %664
  %666 = load i32, i32* %665, align 4
  %667 = xor i32 %660, %666
  %668 = load i8, i8* %6, align 1
  %669 = zext i8 %668 to i64
  %670 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %669
  store i32 %667, i32* %670, align 4
  br label %671

671:                                              ; preds = %656, %649
  br label %672

672:                                              ; preds = %671
  %673 = load i32, i32* %9, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %555, !llvm.loop !12

675:                                              ; preds = %555
  br label %676

676:                                              ; preds = %675
  %677 = load i8, i8* %6, align 1
  %678 = add i8 %677, 1
  store i8 %678, i8* %6, align 1
  %679 = load i32, i32* %7, align 4
  %680 = add nsw i32 %679, 1
  store i32 %680, i32* %7, align 4
  br label %551, !llvm.loop !13

681:                                              ; preds = %551
  %682 = load i32, i32* @NOUPPER, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %717

684:                                              ; preds = %681
  store i8 65, i8* %6, align 1
  br label %685

685:                                              ; preds = %711, %684
  %686 = load i8, i8* %6, align 1
  %687 = zext i8 %686 to i32
  %688 = icmp sle i32 %687, 90
  br i1 %688, label %689, label %716

689:                                              ; preds = %685
  %690 = call i16** @__ctype_b_loc() #6
  %691 = load i16*, i16** %690, align 8
  %692 = load i8, i8* %6, align 1
  %693 = zext i8 %692 to i32
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds i16, i16* %691, i64 %694
  %696 = load i16, i16* %695, align 2
  %697 = zext i16 %696 to i32
  %698 = and i32 %697, 256
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %700, label %710

700:                                              ; preds = %689
  %701 = load i8, i8* %6, align 1
  %702 = zext i8 %701 to i32
  %703 = call i32 @tolower(i32 noundef %702) #5
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %704
  %706 = load i32, i32* %705, align 4
  %707 = load i8, i8* %6, align 1
  %708 = zext i8 %707 to i64
  %709 = getelementptr inbounds [0 x i32], [0 x i32]* @Mask, i64 0, i64 %708
  store i32 %706, i32* %709, align 4
  br label %710

710:                                              ; preds = %700, %689
  br label %711

711:                                              ; preds = %710
  %712 = load i8, i8* %6, align 1
  %713 = zext i8 %712 to i32
  %714 = add nsw i32 %713, 1
  %715 = trunc i32 %714 to i8
  store i8 %715, i8* %6, align 1
  br label %685, !llvm.loop !14

716:                                              ; preds = %685
  br label %717

717:                                              ; preds = %716, %681
  %718 = load i32, i32* %11, align 4
  ret i32 %718
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { noreturn nounwind }

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
