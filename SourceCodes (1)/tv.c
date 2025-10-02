; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tv.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/tv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.colstr = type { i8*, i8* }

@instead = external dso_local global [0 x i8*], align 8
@tabout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [8 x i8] c"\\h'%dp'\00", align 1
@nlin = external dso_local global i32, align 4
@fullbot = external dso_local global [0 x i32], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"1v-.5m\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".5m\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"\\v'%s'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"\\v'%dp'\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"\\s\\n(%d\00", align 1
@linsize = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\\v'-\\n(%dp/6u'\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"\\h'-\\n(#~u'\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\\L'|\\n(#%cu-%s\00", align 1
@linestop = external dso_local global [0 x i32], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"1v\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\\n(35u\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"-(%s)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s%dp\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"'\\s0\\v'\\n(\\*(#du-\\n(#%cu+%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"+%s\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\\v'\\n(%dp/6u'\00", align 1
@table = external dso_local global [0 x %struct.colstr*], align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @drawvert(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  store i32 118, i32* %17, align 4
  br label %20

20:                                               ; preds = %26, %4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %20, !llvm.loop !4

29:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %319, %29
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %322

34:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %35 = load i32, i32* %13, align 4
  %36 = mul nsw i32 2, %35
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %44, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 noundef %47)
  br label %49

49:                                               ; preds = %43, %34
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @nlin, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @allh(i32 noundef %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %54
  store i32 2, i32* %15, align 4
  br label %78

71:                                               ; preds = %66, %60
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @midbar(i32 noundef %72, i32 noundef %73)
  switch i32 %74, label %77 [
    i32 45, label %75
    i32 61, label %76
  ]

75:                                               ; preds = %71
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %77

76:                                               ; preds = %71
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %71, %76, %75
  br label %78

78:                                               ; preds = %77, %70
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %104

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @interh(i32 noundef %83, i32 noundef %84)
  switch i32 %85, label %103 [
    i32 3, label %86
    i32 2, label %89
    i32 1, label %96
  ]

86:                                               ; preds = %82
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %103

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 -1
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %103

96:                                               ; preds = %82
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 -1
  %101 = load i32, i32* %15, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %82, %96, %89, %86
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i32, i32* %8, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @interh(i32 noundef %108, i32 noundef %109)
  switch i32 %110, label %117 [
    i32 3, label %111
    i32 2, label %114
    i32 1, label %114
  ]

111:                                              ; preds = %107
  %112 = load i32, i32* %15, align 4
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %117

114:                                              ; preds = %107, %107
  %115 = load i32, i32* %15, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %107, %114, %111
  br label %118

118:                                              ; preds = %117, %104
  %119 = load i32, i32* %5, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %166

121:                                              ; preds = %118
  %122 = load i32, i32* %5, align 4
  %123 = sub nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %135, %121
  %125 = load i32, i32* %12, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br label %133

133:                                              ; preds = %127, %124
  %134 = phi i1 [ false, %124 ], [ %132, %127 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %12, align 4
  br label %124, !llvm.loop !6

138:                                              ; preds = %133
  %139 = load i32, i32* %12, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @allh(i32 noundef %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %141
  store i32 0, i32* %16, align 4
  br label %165

152:                                              ; preds = %147, %138
  %153 = load i32, i32* %12, align 4
  %154 = icmp sge i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @midbar(i32 noundef %156, i32 noundef %157)
  switch i32 %158, label %161 [
    i32 45, label %159
    i32 61, label %160
  ]

159:                                              ; preds = %155
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %162

160:                                              ; preds = %155
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  store i32 -1, i32* %16, align 4
  br label %162

161:                                              ; preds = %155
  store i32 109, i32* %17, align 4
  br label %162

162:                                              ; preds = %161, %160, %159
  br label %164

163:                                              ; preds = %152
  store i32 -4, i32* %16, align 4
  br label %164

164:                                              ; preds = %163, %162
  br label %165

165:                                              ; preds = %164, %151
  br label %174

166:                                              ; preds = %118
  %167 = load i32, i32* %5, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = call i32 @allh(i32 noundef 0)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 0, i32* %16, align 4
  store i32 109, i32* %17, align 4
  br label %173

173:                                              ; preds = %172, %169, %166
  br label %174

174:                                              ; preds = %173, %165
  %175 = load i32, i32* %8, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %199

177:                                              ; preds = %174
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @interh(i32 noundef %178, i32 noundef %179)
  switch i32 %180, label %198 [
    i32 3, label %181
    i32 1, label %184
    i32 2, label %191
  ]

181:                                              ; preds = %177
  %182 = load i32, i32* %16, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %16, align 4
  br label %198

184:                                              ; preds = %177
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 1, i32 -1
  %189 = load i32, i32* %16, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %16, align 4
  br label %198

191:                                              ; preds = %177
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, 1
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 1, i32 -1
  %196 = load i32, i32* %16, align 4
  %197 = add nsw i32 %196, %195
  store i32 %197, i32* %16, align 4
  br label %198

198:                                              ; preds = %177, %191, %184, %181
  br label %214

199:                                              ; preds = %174
  %200 = load i32, i32* %8, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %213

202:                                              ; preds = %199
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @interh(i32 noundef %203, i32 noundef %204)
  switch i32 %205, label %212 [
    i32 3, label %206
    i32 1, label %209
    i32 2, label %209
  ]

206:                                              ; preds = %202
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %212

209:                                              ; preds = %202, %202
  %210 = load i32, i32* %16, align 4
  %211 = sub nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %212

212:                                              ; preds = %202, %209, %206
  br label %213

213:                                              ; preds = %212, %199
  br label %214

214:                                              ; preds = %213, %198
  %215 = load i8*, i8** %9, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %219 = load i8*, i8** %9, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %219)
  br label %221

221:                                              ; preds = %217, %214
  %222 = load i32, i32* %15, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %226 = load i32, i32* %15, align 4
  %227 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %225, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 noundef %226)
  br label %228

228:                                              ; preds = %224, %221
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %229, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef 33)
  %231 = load i32, i32* @linsize, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %228
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %234, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 noundef 33)
  br label %236

236:                                              ; preds = %233, %228
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %237, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 97
  %245 = sub nsw i32 %244, 1
  %246 = load i32, i32* %17, align 4
  %247 = icmp eq i32 %246, 118
  %248 = zext i1 %247 to i64
  %249 = select i1 %247, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %239, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 noundef %245, i8* noundef %249)
  %251 = load i8*, i8** %10, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %257

253:                                              ; preds = %236
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %255)
  br label %257

257:                                              ; preds = %253, %236
  %258 = load i8*, i8** %9, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %262 = load i8*, i8** %9, align 8
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %261, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8* noundef %262)
  br label %264

264:                                              ; preds = %260, %257
  %265 = load i32, i32* %16, align 4
  %266 = load i32, i32* %15, align 4
  %267 = sub nsw i32 %265, %266
  store i32 %267, i32* %14, align 4
  %268 = load i32, i32* %14, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %264
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %272 = load i32, i32* %14, align 4
  %273 = icmp sge i32 %272, 0
  %274 = zext i1 %273 to i64
  %275 = select i1 %273, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %276 = load i32, i32* %14, align 4
  %277 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %271, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %275, i32 noundef %276)
  br label %278

278:                                              ; preds = %270, %264
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [0 x i32], [0 x i32]* @linestop, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, 97
  %285 = sub nsw i32 %284, 1
  %286 = load i32, i32* %17, align 4
  %287 = icmp eq i32 %286, 118
  %288 = zext i1 %287 to i64
  %289 = select i1 %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %290 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %279, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %285, i8* noundef %289)
  %291 = load i8*, i8** %10, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %278
  %294 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %295 = load i8*, i8** %10, align 8
  %296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %294, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i8* noundef %295)
  br label %297

297:                                              ; preds = %293, %278
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %297
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %302 = load i32, i32* %16, align 4
  %303 = sub nsw i32 0, %302
  %304 = icmp sgt i32 %303, 0
  %305 = zext i1 %304 to i64
  %306 = select i1 %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %307 = load i32, i32* %16, align 4
  %308 = sub nsw i32 0, %307
  %309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %301, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8* noundef %306, i32 noundef %308)
  br label %310

310:                                              ; preds = %300, %297
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %311, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %313 = load i32, i32* @linsize, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @tabout, align 8
  %317 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %316, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i32 noundef 33)
  br label %318

318:                                              ; preds = %315, %310
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %13, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %13, align 4
  br label %30, !llvm.loop !7

322:                                              ; preds = %30
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @allh(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @midbar(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @midbcol(i32 noundef %6, i32 noundef %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = call i32 @midbcol(i32 noundef %15, i32 noundef %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %11, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @interh(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @midbcol(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %7

7:                                                ; preds = %12, %2
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @ctype(i32 noundef %8, i32 noundef %9)
  store i32 %10, i32* %6, align 4
  %11 = icmp eq i32 %10, 115
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %5, align 4
  br label %7, !llvm.loop !8

15:                                               ; preds = %7
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 45
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %25
  %27 = load %struct.colstr*, %struct.colstr** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.colstr, %struct.colstr* %27, i64 %29
  %31 = getelementptr inbounds %struct.colstr, %struct.colstr* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @barent(i8* noundef %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %35, %21
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @barent(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = call i32 @point(i32 noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %37

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 92
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

29:                                               ; preds = %22
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %36 [
    i32 95, label %34
    i32 61, label %35
  ]

34:                                               ; preds = %29
  store i32 45, i32* %2, align 4
  br label %37

35:                                               ; preds = %29
  store i32 61, i32* %2, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35, %34, %28, %12, %6
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @point(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
