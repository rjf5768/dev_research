; ModuleID = './t5.ll'
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
  %1 = call i8* (...) @chspace() #3
  store i8* %1, i8** @cspace, align 8
  store i8* %1, i8** @cstore, align 8
  store i32 0, i32* @textflg, align 4
  store i32 0, i32* @nslin, align 4
  br label %2

2:                                                ; preds = %271, %0
  %storemerge = phi i32 [ 0, %0 ], [ %273, %271 ]
  store i32 %storemerge, i32* @nlin, align 4
  %3 = load i8*, i8** @cstore, align 8
  %4 = call i8* @gets1(i8* noundef %3) #3
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %.loopexit2, label %5

5:                                                ; preds = %2
  %6 = load i32, i32* @nslin, align 4
  %7 = load i32, i32* @nlin, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %8
  store i32 %6, i32* %9, align 4
  %10 = load i8*, i8** @cstore, align 8
  %11 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* noundef %10) #3
  %.not5 = icmp eq i32 %11, 0
  br i1 %.not5, label %13, label %12

12:                                               ; preds = %5
  store i32 0, i32* @leftover, align 4
  br label %274

13:                                               ; preds = %5
  %14 = load i8*, i8** @cstore, align 8
  %15 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* noundef %14) #3
  %.not6 = icmp eq i32 %15, 0
  br i1 %.not6, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** @cstore, align 8
  %18 = call i32 @prefix(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* noundef %17) #3
  %.not7 = icmp eq i32 %18, 0
  br i1 %.not7, label %22, label %19

19:                                               ; preds = %16, %13
  call void @readspec() #3
  %20 = load i32, i32* @nslin, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* @nslin, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @nlin, align 4
  %24 = icmp sgt i32 %23, 199
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8*, i8** @cstore, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @leftover, align 4
  br label %274

29:                                               ; preds = %22
  %30 = load i32, i32* @nlin, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load i8*, i8** @cstore, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, 46
  br i1 %35, label %36, label %57

36:                                               ; preds = %29
  %37 = call i16** @__ctype_b_loc() #4
  %38 = load i16*, i16** %37, align 8
  %39 = load i8*, i8** @cstore, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i64
  %43 = getelementptr inbounds i16, i16* %38, i64 %42
  %44 = load i16, i16* %43, align 2
  %45 = and i16 %44, 2048
  %.not14 = icmp eq i16 %45, 0
  br i1 %.not14, label %46, label %57

46:                                               ; preds = %36
  %47 = load i8*, i8** @cstore, align 8
  %48 = load i32, i32* @nlin, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %49
  store i8* %47, i8** %50, align 8
  br label %51

51:                                               ; preds = %55, %46
  %52 = load i8*, i8** @cstore, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  store i8* %53, i8** @cstore, align 8
  %54 = load i8, i8* %52, align 1
  %.not15 = icmp eq i8 %54, 0
  br i1 %.not15, label %56, label %55

55:                                               ; preds = %51
  br label %51, !llvm.loop !4

56:                                               ; preds = %51
  br label %271

57:                                               ; preds = %36, %29
  %58 = load i32, i32* @nlin, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %59
  store i8* null, i8** %60, align 8
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @nlin, align 4
  %63 = call i32 @nodata(i32 noundef %62)
  %.not8 = icmp eq i32 %63, 0
  br i1 %.not8, label %81, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @nlin, align 4
  %66 = call i32 @oneh(i32 noundef %65)
  %.not13 = icmp eq i32 %66, 0
  br i1 %.not13, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* @nlin, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* @nlin, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @nlin, align 4
  %74 = load i32, i32* @nslin, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @nslin, align 4
  %76 = sext i32 %73 to i64
  %77 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %76
  store i8* null, i8** %77, align 8
  %78 = load i32, i32* @nlin, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %79
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %71, %61
  %82 = load i32, i32* @ncol, align 4
  %83 = shl i32 %82, 4
  %84 = add i32 %83, 32
  %85 = call i32* @alocv(i32 noundef %84) #3
  %86 = load i32, i32* @nlin, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %87
  %89 = bitcast %struct.colstr** %88 to i32**
  store i32* %85, i32** %89, align 8
  %90 = load i8*, i8** @cstore, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  %92 = load i8, i8* %91, align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %81
  %95 = load i8*, i8** @cstore, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %106 [
    i32 95, label %98
    i32 61, label %102
  ]

98:                                               ; preds = %94
  %99 = load i32, i32* @nlin, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %100
  store i32 45, i32* %101, align 4
  br label %271

102:                                              ; preds = %94
  %103 = load i32, i32* @nlin, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %104
  store i32 61, i32* %105, align 4
  br label %271

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %81
  %108 = load i32, i32* @nslin, align 4
  %109 = load i32, i32* @nlin, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  %112 = add nsw i32 %108, 1
  %113 = load i32, i32* @nclin, align 4
  %114 = add nsw i32 %113, -1
  %115 = call i32 @min(i32 noundef %112, i32 noundef %114) #3
  store i32 %115, i32* @nslin, align 4
  br label %116

116:                                              ; preds = %235, %107
  %.0 = phi i32 [ 0, %107 ], [ %236, %235 ]
  %117 = load i32, i32* @ncol, align 4
  %118 = icmp slt i32 %.0, %117
  br i1 %118, label %119, label %.loopexit

119:                                              ; preds = %116
  %120 = load i8*, i8** @cstore, align 8
  %121 = load i32, i32* @nlin, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %122
  %124 = load %struct.colstr*, %struct.colstr** %123, align 8
  %125 = sext i32 %.0 to i64
  %126 = getelementptr inbounds %struct.colstr, %struct.colstr* %124, i64 %125, i32 0
  store i8* %120, i8** %126, align 8
  %127 = load i32, i32* @nlin, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %128
  %130 = load %struct.colstr*, %struct.colstr** %129, align 8
  %131 = sext i32 %.0 to i64
  %132 = getelementptr inbounds %struct.colstr, %struct.colstr* %130, i64 %131, i32 1
  store i8* null, i8** %132, align 8
  %133 = load i8*, i8** @cstore, align 8
  %134 = call i32 @match(i8* noundef %133, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #3
  %.not11 = icmp eq i32 %134, 0
  br i1 %.not11, label %160, label %135

135:                                              ; preds = %119
  %136 = load i8*, i8** @cstore, align 8
  %137 = load i32, i32* @nlin, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = sext i32 %.0 to i64
  %143 = getelementptr inbounds [100 x [20 x [2 x i8]]], [100 x [20 x [2 x i8]]]* @font, i64 0, i64 %141, i64 %142, i64 0
  %144 = load i32, i32* @nlin, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [0 x i32], [0 x i32]* @stynum, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = sext i32 %.0 to i64
  %150 = getelementptr inbounds [100 x [20 x [4 x i8]]], [100 x [20 x [4 x i8]]]* @csize, i64 0, i64 %148, i64 %149, i64 0
  %151 = call i32 @gettext(i8* noundef %136, i32 noundef %137, i32 noundef %.0, i8* noundef nonnull %143, i8* noundef nonnull %150) #3
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = load i32, i32* @nlin, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %155
  %157 = load %struct.colstr*, %struct.colstr** %156, align 8
  %158 = sext i32 %.0 to i64
  %159 = getelementptr inbounds %struct.colstr, %struct.colstr* %157, i64 %158, i32 0
  store i8* %153, i8** %159, align 8
  br label %217

160:                                              ; preds = %119
  br label %161

161:                                              ; preds = %171, %160
  %162 = load i8*, i8** @cstore, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %.not12 = icmp eq i8 %163, 0
  br i1 %.not12, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @tab, align 4
  %167 = icmp ne i32 %166, %164
  br label %168

168:                                              ; preds = %165, %161
  %169 = phi i1 [ false, %161 ], [ %167, %165 ]
  br i1 %169, label %170, label %174

170:                                              ; preds = %168
  br label %171

171:                                              ; preds = %170
  %172 = load i8*, i8** @cstore, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 1
  store i8* %173, i8** @cstore, align 8
  br label %161, !llvm.loop !6

174:                                              ; preds = %168
  %175 = load i8*, i8** @cstore, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1
  store i8* %176, i8** @cstore, align 8
  store i8 0, i8* %175, align 1
  %177 = load i32, i32* @nlin, align 4
  %178 = call i32 @ctype(i32 noundef %177, i32 noundef %.0) #3
  switch i32 %178, label %216 [
    i32 110, label %179
    i32 97, label %196
  ]

179:                                              ; preds = %174
  %180 = load i32, i32* @nlin, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %181
  %183 = load %struct.colstr*, %struct.colstr** %182, align 8
  %184 = sext i32 %.0 to i64
  %185 = getelementptr inbounds %struct.colstr, %struct.colstr* %183, i64 %184, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @maknew(i8* noundef %186) #3
  %188 = sext i32 %187 to i64
  %189 = inttoptr i64 %188 to i8*
  %190 = load i32, i32* @nlin, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %191
  %193 = load %struct.colstr*, %struct.colstr** %192, align 8
  %194 = sext i32 %.0 to i64
  %195 = getelementptr inbounds %struct.colstr, %struct.colstr* %193, i64 %194, i32 1
  store i8* %189, i8** %195, align 8
  br label %216

196:                                              ; preds = %174
  %197 = load i32, i32* @nlin, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %198
  %200 = load %struct.colstr*, %struct.colstr** %199, align 8
  %201 = sext i32 %.0 to i64
  %202 = getelementptr inbounds %struct.colstr, %struct.colstr* %200, i64 %201, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* @nlin, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %205
  %207 = load %struct.colstr*, %struct.colstr** %206, align 8
  %208 = sext i32 %.0 to i64
  %209 = getelementptr inbounds %struct.colstr, %struct.colstr* %207, i64 %208, i32 1
  store i8* %203, i8** %209, align 8
  %210 = load i32, i32* @nlin, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %211
  %213 = load %struct.colstr*, %struct.colstr** %212, align 8
  %214 = sext i32 %.0 to i64
  %215 = getelementptr inbounds %struct.colstr, %struct.colstr* %213, i64 %214, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %215, align 8
  br label %216

216:                                              ; preds = %196, %179, %174
  br label %217

217:                                              ; preds = %216, %135
  %.01 = phi i32 [ 1, %135 ], [ %164, %216 ]
  br label %218

218:                                              ; preds = %223, %217
  %.1 = phi i32 [ %.0, %217 ], [ %228, %223 ]
  %219 = load i32, i32* @nlin, align 4
  %220 = add nsw i32 %.1, 1
  %221 = call i32 @ctype(i32 noundef %219, i32 noundef %220) #3
  %222 = icmp eq i32 %221, 115
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load i32, i32* @nlin, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %225
  %227 = load %struct.colstr*, %struct.colstr** %226, align 8
  %228 = add nsw i32 %.1, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.colstr, %struct.colstr* %227, i64 %229, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %230, align 8
  br label %218, !llvm.loop !7

231:                                              ; preds = %218
  %232 = icmp eq i32 %.01, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %231
  br label %237

234:                                              ; preds = %231
  br label %235

235:                                              ; preds = %234
  %236 = add nsw i32 %.1, 1
  br label %116, !llvm.loop !8

.loopexit:                                        ; preds = %116
  br label %237

237:                                              ; preds = %.loopexit, %233
  %.2 = phi i32 [ %.1, %233 ], [ %.0, %.loopexit ]
  br label %238

238:                                              ; preds = %241, %237
  %.3 = phi i32 [ %.2, %237 ], [ %239, %241 ]
  %239 = add nsw i32 %.3, 1
  %240 = load i32, i32* @ncol, align 4
  %.not9 = icmp sgt i32 %.3, %240
  br i1 %.not9, label %254, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @nlin, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %243
  %245 = load %struct.colstr*, %struct.colstr** %244, align 8
  %246 = sext i32 %239 to i64
  %247 = getelementptr inbounds %struct.colstr, %struct.colstr* %245, i64 %246, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8** %247, align 8
  %248 = load i32, i32* @nlin, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %249
  %251 = load %struct.colstr*, %struct.colstr** %250, align 8
  %252 = sext i32 %239 to i64
  %253 = getelementptr inbounds %struct.colstr, %struct.colstr* %251, i64 %252, i32 1
  store i8* null, i8** %253, align 8
  br label %238, !llvm.loop !9

254:                                              ; preds = %238
  br label %255

255:                                              ; preds = %258, %254
  %256 = load i8*, i8** @cstore, align 8
  %257 = load i8, i8* %256, align 1
  %.not10 = icmp eq i8 %257, 0
  br i1 %.not10, label %261, label %258

258:                                              ; preds = %255
  %259 = load i8*, i8** @cstore, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  store i8* %260, i8** @cstore, align 8
  br label %255, !llvm.loop !10

261:                                              ; preds = %255
  %262 = load i8*, i8** @cstore, align 8
  %263 = load i8*, i8** @cspace, align 8
  %264 = ptrtoint i8* %262 to i64
  %265 = ptrtoint i8* %263 to i64
  %266 = sub i64 %264, %265
  %267 = icmp sgt i64 %266, 2000
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = call i8* (...) @chspace() #3
  store i8* %269, i8** @cspace, align 8
  store i8* %269, i8** @cstore, align 8
  br label %270

270:                                              ; preds = %268, %261
  br label %271

271:                                              ; preds = %270, %102, %98, %56
  %272 = load i32, i32* @nlin, align 4
  %273 = add nsw i32 %272, 1
  br label %2, !llvm.loop !11

.loopexit2:                                       ; preds = %2
  br label %274

274:                                              ; preds = %.loopexit2, %25, %12
  %275 = load i8*, i8** @cstore, align 8
  store i8* %275, i8** @last, align 8
  %276 = call i32 @permute()
  %277 = load i32, i32* @textflg, align 4
  %.not4 = icmp eq i32 %277, 0
  br i1 %.not4, label %279, label %278

278:                                              ; preds = %274
  call void @untext() #3
  br label %279

279:                                              ; preds = %278, %274
  ret void
}

declare dso_local i8* @chspace(...) #1

declare dso_local i8* @gets1(i8* noundef) #1

declare dso_local i32 @prefix(i8* noundef, i8* noundef) #1

declare dso_local void @readspec() #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nodata(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %.01 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %3 = load i32, i32* @ncol, align 4
  %4 = icmp slt i32 %.01, %3
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = call i32 @ctype(i32 noundef %0, i32 noundef %.01) #3
  switch i32 %6, label %8 [
    i32 99, label %7
    i32 110, label %7
    i32 114, label %7
    i32 108, label %7
    i32 115, label %7
    i32 97, label %7
  ]

7:                                                ; preds = %5, %5, %5, %5, %5, %5
  br label %12

8:                                                ; preds = %5
  br label %9

9:                                                ; preds = %8
  %10 = add nuw nsw i32 %.01, 1
  br label %2, !llvm.loop !12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %.0 = phi i32 [ 0, %7 ], [ 1, %11 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @oneh(i32 noundef %0) #0 {
  %2 = call i32 @ctype(i32 noundef %0, i32 noundef 0) #3
  br label %3

3:                                                ; preds = %10, %1
  %.01 = phi i32 [ 1, %1 ], [ %11, %10 ]
  %4 = load i32, i32* @ncol, align 4
  %5 = icmp slt i32 %.01, %4
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = call i32 @ctype(i32 noundef %0, i32 noundef %.01) #3
  %.not = icmp eq i32 %2, %7
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  br label %13

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %9
  %11 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !13

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12, %8
  %.0 = phi i32 [ 0, %8 ], [ %2, %12 ]
  ret i32 %.0
}

declare dso_local i32* @alocv(i32 noundef) #1

declare dso_local i32 @min(i32 noundef, i32 noundef) #1

declare dso_local i32 @match(i8* noundef, i8* noundef) #1

declare dso_local i32 @gettext(i8* noundef, i32 noundef, i32 noundef, i8* noundef, i8* noundef) #1

declare dso_local i32 @ctype(i32 noundef, i32 noundef) #1

declare dso_local i32 @maknew(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @permute() #0 {
  br label %1

1:                                                ; preds = %68, %0
  %.02 = phi i32 [ 0, %0 ], [ %69, %68 ]
  %2 = load i32, i32* @ncol, align 4
  %3 = icmp slt i32 %.02, %2
  br i1 %3, label %4, label %70

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %65, %4
  %.01 = phi i32 [ 1, %4 ], [ %66, %65 ]
  %6 = load i32, i32* @nlin, align 4
  %7 = icmp slt i32 %.01, %6
  br i1 %7, label %8, label %67

8:                                                ; preds = %5
  %9 = call i32 @vspand(i32 noundef %.01, i32 noundef %.02, i32 noundef 0)
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %64, label %10

10:                                               ; preds = %8
  %11 = call i32 @prev(i32 noundef %.01) #3
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  call void @error(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0)) #3
  br label %14

14:                                               ; preds = %13, %10
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %15
  %17 = load %struct.colstr*, %struct.colstr** %16, align 8
  %18 = zext i32 %.02 to i64
  %19 = getelementptr inbounds %struct.colstr, %struct.colstr* %17, i64 %18, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = sext i32 %11 to i64
  %22 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %21
  %23 = load %struct.colstr*, %struct.colstr** %22, align 8
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds %struct.colstr, %struct.colstr* %23, i64 %24, i32 1
  %26 = load i8*, i8** %25, align 8
  br label %27

27:                                               ; preds = %35, %14
  %.1 = phi i32 [ %.01, %14 ], [ %36, %35 ]
  %28 = load i32, i32* @nlin, align 4
  %29 = icmp slt i32 %.1, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = call i32 @vspand(i32 noundef %.1, i32 noundef %.02, i32 noundef 0)
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i1 [ false, %27 ], [ %32, %30 ]
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = add nsw i32 %.1, 1
  br label %27, !llvm.loop !14

37:                                               ; preds = %33
  %38 = add nsw i32 %.1, -1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %39
  %41 = load %struct.colstr*, %struct.colstr** %40, align 8
  %42 = zext i32 %.02 to i64
  %43 = getelementptr inbounds %struct.colstr, %struct.colstr* %41, i64 %42, i32 0
  store i8* %20, i8** %43, align 8
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %44
  %46 = load %struct.colstr*, %struct.colstr** %45, align 8
  %47 = zext i32 %.02 to i64
  %48 = getelementptr inbounds %struct.colstr, %struct.colstr* %46, i64 %47, i32 1
  store i8* %26, i8** %48, align 8
  br label %49

49:                                               ; preds = %51, %37
  %.0 = phi i32 [ %11, %37 ], [ %62, %51 ]
  %50 = icmp slt i32 %.0, %38
  br i1 %50, label %51, label %63

51:                                               ; preds = %49
  %52 = sext i32 %.0 to i64
  %53 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %52
  %54 = load %struct.colstr*, %struct.colstr** %53, align 8
  %55 = zext i32 %.02 to i64
  %56 = getelementptr inbounds %struct.colstr, %struct.colstr* %54, i64 %55, i32 1
  store i8* null, i8** %56, align 8
  %57 = sext i32 %.0 to i64
  %58 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %57
  %59 = load %struct.colstr*, %struct.colstr** %58, align 8
  %60 = zext i32 %.02 to i64
  %61 = getelementptr inbounds %struct.colstr, %struct.colstr* %59, i64 %60, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %61, align 8
  %62 = call i32 @next(i32 noundef %.0) #3
  br label %49, !llvm.loop !15

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %8
  %.2 = phi i32 [ %38, %63 ], [ %.01, %8 ]
  br label %65

65:                                               ; preds = %64
  %66 = add nsw i32 %.2, 1
  br label %5, !llvm.loop !16

67:                                               ; preds = %5
  br label %68

68:                                               ; preds = %67
  %69 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !17

70:                                               ; preds = %1
  ret i32 undef
}

declare dso_local void @untext() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vspand(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp slt i32 %0, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  br label %41

6:                                                ; preds = %3
  %7 = load i32, i32* @nlin, align 4
  %.not = icmp sgt i32 %7, %0
  br i1 %.not, label %9, label %8

8:                                                ; preds = %6
  br label %41

9:                                                ; preds = %6
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds [0 x i8*], [0 x i8*]* @instead, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %.not1 = icmp eq i8* %12, null
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %9
  br label %41

14:                                               ; preds = %9
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %14
  %17 = call i32 @ctype(i32 noundef %0, i32 noundef %1) #3
  %18 = icmp eq i32 %17, 94
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %41

20:                                               ; preds = %16, %14
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %21
  %23 = load %struct.colstr*, %struct.colstr** %22, align 8
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.colstr, %struct.colstr* %23, i64 %24, i32 1
  %26 = load i8*, i8** %25, align 8
  %.not2 = icmp eq i8* %26, null
  br i1 %.not2, label %28, label %27

27:                                               ; preds = %20
  br label %41

28:                                               ; preds = %20
  %29 = sext i32 %0 to i64
  %30 = getelementptr inbounds [0 x i32], [0 x i32]* @fullbot, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %.not3 = icmp eq i32 %31, 0
  br i1 %.not3, label %33, label %32

32:                                               ; preds = %28
  br label %41

33:                                               ; preds = %28
  %34 = sext i32 %0 to i64
  %35 = getelementptr inbounds [0 x %struct.colstr*], [0 x %struct.colstr*]* @table, i64 0, i64 %34
  %36 = load %struct.colstr*, %struct.colstr** %35, align 8
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds %struct.colstr, %struct.colstr* %36, i64 %37, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @vspen(i8* noundef %39)
  br label %41

41:                                               ; preds = %33, %32, %27, %19, %13, %8, %5
  %.0 = phi i32 [ 0, %5 ], [ 0, %8 ], [ 0, %13 ], [ 1, %19 ], [ 0, %27 ], [ 0, %32 ], [ %40, %33 ]
  ret i32 %.0
}

declare dso_local i32 @prev(i32 noundef) #1

declare dso_local void @error(i8* noundef) #1

declare dso_local i32 @next(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @vspen(i8* noundef %0) #0 {
  %2 = icmp eq i8* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  %5 = ptrtoint i8* %0 to i64
  %6 = trunc i64 %5 to i32
  %7 = call i32 @point(i32 noundef %6) #3
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %8, label %9

8:                                                ; preds = %4
  br label %11

9:                                                ; preds = %4
  %10 = call i32 @match(i8* noundef nonnull %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)) #3
  br label %11

11:                                               ; preds = %9, %8, %3
  %.0 = phi i32 [ 0, %3 ], [ %10, %9 ], [ 0, %8 ]
  ret i32 %.0
}

declare dso_local i32 @point(i32 noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone willreturn }

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
