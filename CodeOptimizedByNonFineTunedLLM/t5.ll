; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t5.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/unix-tbl/t5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.colstr = type { i8*, i8* }

@cspace = external dso_local global i8*, align 8
@cstore = external dso_local global i8*, align 8
@textflg = external dso_local global i32, align 4
@nslin = external dso_local global i32, align 4
@nlin = external dso_local global i32, align 4
@stynum = external dso_local global [0 x i32], align 4
@.str = private unnamed_addr constant [4 x i8] c".TE\00", align 1
@leftover = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c".TC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".T&\00", align 1
@fullbot = external dso_local global [0 x i32], align 4
@instead = external dso_local global [0 x i8*], align 8
@ncol = external dso_local global i32, align 4
@table = external dso_local global [0 x %struct.colstr*], align 8
@nclin = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"T{\00", align 1
@font = external dso_local global [100 x [20 x [2 x i8]]], align 16
@csize = external dso_local global [100 x [20 x [4 x i8]]], align 16
@tab = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@last = external dso_local global i8*, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"Vertical spanning in first row not allowed\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\^\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @gettbl() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i8* (...) @chspace()
  store i8* %3, i8** @cspace, align 8
  store i8* %3, i8** @cstore, align 8
  store i32 0, i32* @textflg, align 4
  store i32 0, i32* @nslin, align 4
  store i32 0, i32* @nlin, align 4
  br label %4

4:                                                ; preds = %334, %0
  %5 = load i8*, i8** @cstore, align 8
  %6 = call i8* @gets1(i8* noundef %5)
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %337

8:                                                ; preds = %4
  %9 = load i32, i32* @nslin, align 4
  %10 = load i32, i32* @nlin, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i8*, i8** @cstore, align 8
  %14 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 0, i32* @leftover, align 4
  br label %337

17:                                               ; preds = %8
  %18 = load i8*, i8** @cstore, align 8
  %19 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** @cstore, align 8
  %23 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17
  call void @readspec()
  %26 = load i32, i32* @nslin, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @nslin, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* @nlin, align 4
  %30 = icmp sge i32 %29, 200
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i8*, i8** @cstore, align 8
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* @leftover, align 4
  br label %337

34:                                               ; preds = %28
  %35 = load i32, i32* @nlin, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %36
  store i32 0, i32* %37, align 4
  %38 = load i8*, i8** @cstore, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 46
  br i1 %42, label %43, label %68

43:                                               ; preds = %34
  %44 = call i16** @__ctype_b_loc() #3
  %45 = load i16*, i16** %44, align 8
  %46 = load i8*, i8** @cstore, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %45, i64 %50
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = and i32 %53, 2048
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %43
  %57 = load i8*, i8** @cstore, align 8
  %58 = load i32, i32* @nlin, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %59
  store i8* %57, i8** %60, align 8
  br label %61

61:                                               ; preds = %66, %56
  %62 = load i8*, i8** @cstore, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** @cstore, align 8
  %64 = load i8, i8* %62, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %61, !llvm.loop !4

67:                                               ; preds = %61
  br label %334

68:                                               ; preds = %43, %34
  %69 = load i32, i32* @nlin, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %70
  store i8* null, i8** %71, align 8
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @nlin, align 4
  %74 = call i32 @nodata(i32 noundef %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %72
  %77 = load i32, i32* @nlin, align 4
  %78 = call i32 @oneh(i32 noundef %77)
  store i32 %78, i32* %2, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @nlin, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* @nlin, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @nlin, align 4
  %88 = load i32, i32* @nslin, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @nslin, align 4
  %90 = load i32, i32* @nlin, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %91
  store i8* null, i8** %92, align 8
  %93 = load i32, i32* @nlin, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %85, %72
  %97 = load i32, i32* @ncol, align 4
  %98 = add nsw i32 %97, 2
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 16
  %101 = trunc i64 %100 to i32
  %102 = call i32* @alocv(i32 noundef %101)
  %103 = bitcast i32* %102 to %struct.colstr*
  %104 = load i32, i32* @nlin, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %105
  store %struct.colstr* %103, %struct.colstr** %106, align 8
  %107 = load i8*, i8** @cstore, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %96
  %113 = load i8*, i8** @cstore, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  switch i32 %116, label %125 [
    i32 95, label %117
    i32 61, label %121
  ]

117:                                              ; preds = %112
  %118 = load i32, i32* @nlin, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %119
  store i32 45, i32* %120, align 4
  br label %334

121:                                              ; preds = %112
  %122 = load i32, i32* @nlin, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %123
  store i32 61, i32* %124, align 4
  br label %334

125:                                              ; preds = %112
  br label %126

126:                                              ; preds = %125, %96
  %127 = load i32, i32* @nslin, align 4
  %128 = load i32, i32* @nlin, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %129
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @nslin, align 4
  %132 = add nsw i32 %131, 1
  %133 = load i32, i32* @nclin, align 4
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @min(i32 noundef %132, i32 noundef %134)
  store i32 %135, i32* @nslin, align 4
  store i32 0, i32* %1, align 4
  br label %136

136:                                              ; preds = %288, %126
  %137 = load i32, i32* %1, align 4
  %138 = load i32, i32* @ncol, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %291

140:                                              ; preds = %136
  %141 = load i8*, i8** @cstore, align 8
  %142 = load i32, i32* @nlin, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %143
  %145 = load %struct.colstr*, %struct.colstr** %144, align 8
  %146 = load i32, i32* %1, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.colstr, %struct.colstr* %145, i64 %147
  %149 = getelementptr inbounds %struct.colstr, %struct.colstr* %148, i32 0, i32 0
  store i8* %141, i8** %149, align 8
  %150 = load i32, i32* @nlin, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %151
  %153 = load %struct.colstr*, %struct.colstr** %152, align 8
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.colstr, %struct.colstr* %153, i64 %155
  %157 = getelementptr inbounds %struct.colstr, %struct.colstr* %156, i32 0, i32 1
  store i8* null, i8** %157, align 8
  store i32 1, i32* %2, align 4
  %158 = load i8*, i8** @cstore, align 8
  %159 = call i32 @match(i8* noundef %158, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %140
  %162 = load i8*, i8** @cstore, align 8
  %163 = load i32, i32* @nlin, align 4
  %164 = load i32, i32* %1, align 4
  %165 = load i32, i32* @nlin, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %169
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [20 x [2 x i8]], [20 x [2 x i8]]* %170, i64 0, i64 %172
  %174 = getelementptr inbounds [2 x i8], [2 x i8]* %173, i64 0, i64 0
  %175 = load i32, i32* @nlin, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %179
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [20 x [4 x i8]], [20 x [4 x i8]]* %180, i64 0, i64 %182
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %183, i64 0, i64 0
  %185 = call i32 @gettext(i8* noundef %162, i32 noundef %163, i32 noundef %164, i8* noundef %174, i8* noundef %184)
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load i32, i32* @nlin, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %189
  %191 = load %struct.colstr*, %struct.colstr** %190, align 8
  %192 = load i32, i32* %1, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.colstr, %struct.colstr* %191, i64 %193
  %195 = getelementptr inbounds %struct.colstr, %struct.colstr* %194, i32 0, i32 0
  store i8* %187, i8** %195, align 8
  br label %266

196:                                              ; preds = %140
  br label %197

197:                                              ; preds = %209, %196
  %198 = load i8*, i8** @cstore, align 8
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  store i32 %200, i32* %2, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i32, i32* %2, align 4
  %204 = load i32, i32* @tab, align 4
  %205 = icmp ne i32 %203, %204
  br label %206

206:                                              ; preds = %202, %197
  %207 = phi i1 [ false, %197 ], [ %205, %202 ]
  br i1 %207, label %208, label %212

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %208
  %210 = load i8*, i8** @cstore, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** @cstore, align 8
  br label %197, !llvm.loop !6

212:                                              ; preds = %206
  %213 = load i8*, i8** @cstore, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** @cstore, align 8
  store i8 0, i8* %213, align 1
  %215 = load i32, i32* @nlin, align 4
  %216 = load i32, i32* %1, align 4
  %217 = call i32 @ctype(i32 noundef %215, i32 noundef %216)
  switch i32 %217, label %265 [
    i32 110, label %218
    i32 97, label %239
  ]

218:                                              ; preds = %212
  %219 = load i32, i32* @nlin, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %220
  %222 = load %struct.colstr*, %struct.colstr** %221, align 8
  %223 = load i32, i32* %1, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.colstr, %struct.colstr* %222, i64 %224
  %226 = getelementptr inbounds %struct.colstr, %struct.colstr* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @maknew(i8* noundef %227)
  %229 = sext i32 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = load i32, i32* @nlin, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %232
  %234 = load %struct.colstr*, %struct.colstr** %233, align 8
  %235 = load i32, i32* %1, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.colstr, %struct.colstr* %234, i64 %236
  %238 = getelementptr inbounds %struct.colstr, %struct.colstr* %237, i32 0, i32 1
  store i8* %230, i8** %238, align 8
  br label %265

239:                                              ; preds = %212
  %240 = load i32, i32* @nlin, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %241
  %243 = load %struct.colstr*, %struct.colstr** %242, align 8
  %244 = load i32, i32* %1, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.colstr, %struct.colstr* %243, i64 %245
  %247 = getelementptr inbounds %struct.colstr, %struct.colstr* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* @nlin, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %250
  %252 = load %struct.colstr*, %struct.colstr** %251, align 8
  %253 = load i32, i32* %1, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.colstr, %struct.colstr* %252, i64 %254
  %256 = getelementptr inbounds %struct.colstr, %struct.colstr* %255, i32 0, i32 1
  store i8* %248, i8** %256, align 8
  %257 = load i32, i32* @nlin, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %258
  %260 = load %struct.colstr*, %struct.colstr** %259, align 8
  %261 = load i32, i32* %1, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.colstr, %struct.colstr* %260, i64 %262
  %264 = getelementptr inbounds %struct.colstr, %struct.colstr* %263, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %264, align 8
  br label %265

265:                                              ; preds = %212, %239, %218
  br label %266

266:                                              ; preds = %265, %161
  br label %267

267:                                              ; preds = %273, %266
  %268 = load i32, i32* @nlin, align 4
  %269 = load i32, i32* %1, align 4
  %270 = add nsw i32 %269, 1
  %271 = call i32 @ctype(i32 noundef %268, i32 noundef %270)
  %272 = icmp eq i32 %271, 115
  br i1 %272, label %273, label %283

273:                                              ; preds = %267
  %274 = load i32, i32* @nlin, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %275
  %277 = load %struct.colstr*, %struct.colstr** %276, align 8
  %278 = load i32, i32* %1, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %1, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.colstr, %struct.colstr* %277, i64 %280
  %282 = getelementptr inbounds %struct.colstr, %struct.colstr* %281, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %282, align 8
  br label %267, !llvm.loop !7

283:                                              ; preds = %267
  %284 = load i32, i32* %2, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %291

287:                                              ; preds = %283
  br label %288

288:                                              ; preds = %287
  %289 = load i32, i32* %1, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %1, align 4
  br label %136, !llvm.loop !8

291:                                              ; preds = %286, %136
  br label %292

292:                                              ; preds = %298, %291
  %293 = load i32, i32* %1, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %1, align 4
  %295 = load i32, i32* @ncol, align 4
  %296 = add nsw i32 %295, 2
  %297 = icmp slt i32 %294, %296
  br i1 %297, label %298, label %315

298:                                              ; preds = %292
  %299 = load i32, i32* @nlin, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %300
  %302 = load %struct.colstr*, %struct.colstr** %301, align 8
  %303 = load i32, i32* %1, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.colstr, %struct.colstr* %302, i64 %304
  %306 = getelementptr inbounds %struct.colstr, %struct.colstr* %305, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %306, align 8
  %307 = load i32, i32* @nlin, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %308
  %310 = load %struct.colstr*, %struct.colstr** %309, align 8
  %311 = load i32, i32* %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.colstr, %struct.colstr* %310, i64 %312
  %314 = getelementptr inbounds %struct.colstr, %struct.colstr* %313, i32 0, i32 1
  store i8* null, i8** %314, align 8
  br label %292, !llvm.loop !9

315:                                              ; preds = %292
  br label %316

316:                                              ; preds = %321, %315
  %317 = load i8*, i8** @cstore, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %316
  %322 = load i8*, i8** @cstore, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** @cstore, align 8
  br label %316, !llvm.loop !10

324:                                              ; preds = %316
  %325 = load i8*, i8** @cstore, align 8
  %326 = load i8*, i8** @cspace, align 8
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %326 to i64
  %329 = sub i64 %327, %328
  %330 = icmp sgt i64 %329, 2000
  br i1 %330, label %331, label %333

331:                                              ; preds = %324
  %332 = call i8* (...) @chspace()
  store i8* %332, i8** @cspace, align 8
  store i8* %332, i8** @cstore, align 8
  br label %333

333:                                              ; preds = %331, %324
  br label %334

334:                                              ; preds = %333, %121, %117, %67
  %335 = load i32, i32* @nlin, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* @nlin, align 4
  br label %4, !llvm.loop !11

337:                                              ; preds = %31, %16, %4
  %338 = load i8*, i8** @cstore, align 8
  store i8* %338, i8** @last, align 8
  %339 = call i32 @permute()
  %340 = load i32, i32* @textflg, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %337
  call void @untext()
  br label %343

343:                                              ; preds = %342, %337
  ret void
}

declare dso_local i8* @chspace(...) #1

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #1

declare dso_local void @readspec() #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nodata(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ncol, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @ctype(i32 noundef %10, i32 noundef %11)
  switch i32 %12, label %14 [
    i32 99, label %13
    i32 110, label %13
    i32 114, label %13
    i32 108, label %13
    i32 115, label %13
    i32 97, label %13
  ]

13:                                               ; preds = %9, %9, %9, %9, %9, %9
  store i32 0, i32* %2, align 4
  br label %19

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  br label %5, !llvm.loop !12

18:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @oneh(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ctype(i32 noundef %6, i32 noundef 0)
  store i32 %7, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ncol, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ctype(i32 noundef %14, i32 noundef %15)
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

19:                                               ; preds = %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %8, !llvm.loop !13

23:                                               ; preds = %8
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32* @alocv(i32 noundef) #1

declare dso_local i32 @min(i32 noundef, i32 noundef) #1

declare dso_local i32 @match(i8* noundef, i8* noundef) #1

declare dso_local i32 @gettext(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @maknew(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @permute() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %109, %0
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @ncol, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %112

11:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %12

12:                                               ; preds = %105, %11
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @nlin, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @vspand(i32 noundef %17, i32 noundef %18, i32 noundef 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %104

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @prev(i32 noundef %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @error(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %29
  %31 = load %struct.colstr*, %struct.colstr** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.colstr, %struct.colstr* %31, i64 %33
  %35 = getelementptr inbounds %struct.colstr, %struct.colstr* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %38
  %40 = load %struct.colstr*, %struct.colstr** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.colstr, %struct.colstr* %40, i64 %42
  %44 = getelementptr inbounds %struct.colstr, %struct.colstr* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %6, align 8
  br label %46

46:                                               ; preds = %57, %27
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @nlin, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @vspand(i32 noundef %51, i32 noundef %52, i32 noundef 0)
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %50, %46
  %56 = phi i1 [ false, %46 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i32, i32* %2, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %2, align 4
  br label %46, !llvm.loop !14

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %64
  %66 = load %struct.colstr*, %struct.colstr** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.colstr, %struct.colstr* %66, i64 %68
  %70 = getelementptr inbounds %struct.colstr, %struct.colstr* %69, i32 0, i32 0
  store i8* %61, i8** %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %73
  %75 = load %struct.colstr*, %struct.colstr** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.colstr, %struct.colstr* %75, i64 %77
  %79 = getelementptr inbounds %struct.colstr, %struct.colstr* %78, i32 0, i32 1
  store i8* %71, i8** %79, align 8
  br label %80

80:                                               ; preds = %84, %60
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %2, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %86
  %88 = load %struct.colstr*, %struct.colstr** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.colstr, %struct.colstr* %88, i64 %90
  %92 = getelementptr inbounds %struct.colstr, %struct.colstr* %91, i32 0, i32 1
  store i8* null, i8** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %94
  %96 = load %struct.colstr*, %struct.colstr** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.colstr, %struct.colstr* %96, i64 %98
  %100 = getelementptr inbounds %struct.colstr, %struct.colstr* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @next(i32 noundef %101)
  store i32 %102, i32* %4, align 4
  br label %80, !llvm.loop !15

103:                                              ; preds = %80
  br label %104

104:                                              ; preds = %103, %16
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %2, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %2, align 4
  br label %12, !llvm.loop !16

108:                                              ; preds = %12
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %7, !llvm.loop !17

112:                                              ; preds = %7
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local void @untext() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vspand(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @nlin, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %62

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %62

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ctype(i32 noundef %27, i32 noundef %28)
  %30 = icmp eq i32 %29, 94
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %62

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %34
  %36 = load %struct.colstr*, %struct.colstr** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.colstr, %struct.colstr* %36, i64 %38
  %40 = getelementptr inbounds %struct.colstr, %struct.colstr* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %62

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %62

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %53
  %55 = load %struct.colstr*, %struct.colstr** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.colstr, %struct.colstr* %55, i64 %57
  %59 = getelementptr inbounds %struct.colstr, %struct.colstr* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @vspen(i8* noundef %60)
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %51, %50, %43, %31, %22, %15, %10
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @next(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vspen(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = call i32 @point(i32 noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %16

13:                                               ; preds = %7
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @match(i8* noundef %14, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %13, %12, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @point(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

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
!17 = distinct !{!17, !5}
