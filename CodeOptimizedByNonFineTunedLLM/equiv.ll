; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/equiv.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/equiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.PLA_t = type { %struct.set_family*, %struct.set_family*, %struct.set_family*, i8*, i32, i32*, %struct.pair_struct*, i8**, %struct.symbolic_struct*, %struct.symbolic_struct* }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.pair_struct = type { i32, i32*, i32* }
%struct.symbolic_struct = type { %struct.symbolic_list_struct*, i32, %struct.symbolic_label_struct*, i32, %struct.symbolic_struct* }
%struct.symbolic_list_struct = type { i32, i32, %struct.symbolic_list_struct* }
%struct.symbolic_label_struct = type { i8*, %struct.symbolic_label_struct* }

@cube = external dso_local global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [48 x i8] c"# Outputs %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"# Outputs %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"# Outputs NOT %d and %d (%s and %s) are equivalent\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"# Outputs NOT %d and NOT %d (%s and %s) are equivalent\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"# No outputs are equivalent\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @find_equiv_outputs(%struct.PLA_t* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.PLA_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.set_family**, align 8
  %10 = alloca %struct.set_family**, align 8
  store %struct.PLA_t* %0, %struct.PLA_t** %3, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %12 = call i32 (%struct.PLA_t*, ...) bitcast (i32 (...)* @makeup_labels to i32 (%struct.PLA_t*, ...)*)(%struct.PLA_t* noundef %11)
  %13 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = call i8* @malloc(i64 noundef %19)
  %21 = bitcast i8* %20 to %struct.set_family**
  store %struct.set_family** %21, %struct.set_family*** %10, align 8
  %22 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call i8* @malloc(i64 noundef %28)
  %30 = bitcast i8* %29 to %struct.set_family**
  store %struct.set_family** %30, %struct.set_family*** %9, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %67, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %32, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %41 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %48 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %47, i32 0, i32 2
  %49 = load %struct.set_family*, %struct.set_family** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.set_family* (%struct.set_family*, i32, ...) bitcast (%struct.set_family* (...)* @cof_output to %struct.set_family* (%struct.set_family*, i32, ...)*)(%struct.set_family* noundef %49, i32 noundef %50)
  %52 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.set_family*, %struct.set_family** %52, i64 %54
  store %struct.set_family* %51, %struct.set_family** %55, align 8
  %56 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.set_family*, %struct.set_family** %56, i64 %58
  %60 = load %struct.set_family*, %struct.set_family** %59, align 8
  %61 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %60)
  %62 = call %struct.set_family* (i32**, ...) bitcast (%struct.set_family* (...)* @complement to %struct.set_family* (i32**, ...)*)(i32** noundef %61)
  %63 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.set_family*, %struct.set_family** %63, i64 %65
  store %struct.set_family* %62, %struct.set_family** %66, align 8
  br label %67

67:                                               ; preds = %39
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %31, !llvm.loop !4

70:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %237, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp slt i32 %72, %78
  br i1 %79, label %80, label %240

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %233, %80
  %84 = load i32, i32* %5, align 4
  %85 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %236

91:                                               ; preds = %83
  %92 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %93 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %4, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %6, align 4
  %99 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 3), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %7, align 4
  %106 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.set_family*, %struct.set_family** %106, i64 %108
  %110 = load %struct.set_family*, %struct.set_family** %109, align 8
  %111 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.set_family*, %struct.set_family** %111, i64 %113
  %115 = load %struct.set_family*, %struct.set_family** %114, align 8
  %116 = call i32 @check_equiv(%struct.set_family* noundef %110, %struct.set_family* noundef %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %136

118:                                              ; preds = %91
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %122 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %121, i32 0, i32 7
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %129 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %128, i32 0, i32 7
  %130 = load i8**, i8*** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 noundef %119, i32 noundef %120, i8* noundef %127, i8* noundef %134)
  store i32 1, i32* %8, align 4
  br label %232

136:                                              ; preds = %91
  %137 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.set_family*, %struct.set_family** %137, i64 %139
  %141 = load %struct.set_family*, %struct.set_family** %140, align 8
  %142 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.set_family*, %struct.set_family** %142, i64 %144
  %146 = load %struct.set_family*, %struct.set_family** %145, align 8
  %147 = call i32 @check_equiv(%struct.set_family* noundef %141, %struct.set_family* noundef %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %136
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %153 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %152, i32 0, i32 7
  %154 = load i8**, i8*** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %154, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %160 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %159, i32 0, i32 7
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 noundef %150, i32 noundef %151, i8* noundef %158, i8* noundef %165)
  store i32 1, i32* %8, align 4
  br label %231

167:                                              ; preds = %136
  %168 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %169 = load i32, i32* %4, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.set_family*, %struct.set_family** %168, i64 %170
  %172 = load %struct.set_family*, %struct.set_family** %171, align 8
  %173 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.set_family*, %struct.set_family** %173, i64 %175
  %177 = load %struct.set_family*, %struct.set_family** %176, align 8
  %178 = call i32 @check_equiv(%struct.set_family* noundef %172, %struct.set_family* noundef %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %198

180:                                              ; preds = %167
  %181 = load i32, i32* %4, align 4
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %184 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %183, i32 0, i32 7
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %191 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %190, i32 0, i32 7
  %192 = load i8**, i8*** %191, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %192, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 noundef %181, i32 noundef %182, i8* noundef %189, i8* noundef %196)
  store i32 1, i32* %8, align 4
  br label %230

198:                                              ; preds = %167
  %199 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.set_family*, %struct.set_family** %199, i64 %201
  %203 = load %struct.set_family*, %struct.set_family** %202, align 8
  %204 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.set_family*, %struct.set_family** %204, i64 %206
  %208 = load %struct.set_family*, %struct.set_family** %207, align 8
  %209 = call i32 @check_equiv(%struct.set_family* noundef %203, %struct.set_family* noundef %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %198
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %5, align 4
  %214 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %215 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %214, i32 0, i32 7
  %216 = load i8**, i8*** %215, align 8
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i8*, i8** %216, i64 %218
  %220 = load i8*, i8** %219, align 8
  %221 = load %struct.PLA_t*, %struct.PLA_t** %3, align 8
  %222 = getelementptr inbounds %struct.PLA_t, %struct.PLA_t* %221, i32 0, i32 7
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 noundef %212, i32 noundef %213, i8* noundef %220, i8* noundef %227)
  store i32 1, i32* %8, align 4
  br label %229

229:                                              ; preds = %211, %198
  br label %230

230:                                              ; preds = %229, %180
  br label %231

231:                                              ; preds = %230, %149
  br label %232

232:                                              ; preds = %231, %118
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %5, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %5, align 4
  br label %83, !llvm.loop !6

236:                                              ; preds = %83
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %4, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %4, align 4
  br label %71, !llvm.loop !7

240:                                              ; preds = %71
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %240
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %265, %245
  %247 = load i32, i32* %4, align 4
  %248 = load i32*, i32** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 5), align 8
  %249 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 18), align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %247, %252
  br i1 %253, label %254, label %268

254:                                              ; preds = %246
  %255 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %256 = load i32, i32* %4, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.set_family*, %struct.set_family** %255, i64 %257
  %259 = load %struct.set_family*, %struct.set_family** %258, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %259)
  %260 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.set_family*, %struct.set_family** %260, i64 %262
  %264 = load %struct.set_family*, %struct.set_family** %263, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %264)
  br label %265

265:                                              ; preds = %254
  %266 = load i32, i32* %4, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %4, align 4
  br label %246, !llvm.loop !8

268:                                              ; preds = %246
  %269 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %270 = icmp ne %struct.set_family** %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.set_family**, %struct.set_family*** %10, align 8
  %273 = bitcast %struct.set_family** %272 to i8*
  call void @free(i8* noundef %273)
  store %struct.set_family** null, %struct.set_family*** %10, align 8
  br label %274

274:                                              ; preds = %271, %268
  %275 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %276 = icmp ne %struct.set_family** %275, null
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load %struct.set_family**, %struct.set_family*** %9, align 8
  %279 = bitcast %struct.set_family** %278 to i8*
  call void @free(i8* noundef %279)
  store %struct.set_family** null, %struct.set_family*** %9, align 8
  br label %280

280:                                              ; preds = %277, %274
  %281 = load i32, i32* %2, align 4
  ret i32 %281
}

declare dso_local i32 @makeup_labels(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.set_family* @cof_output(...) #1

declare dso_local %struct.set_family* @complement(...) #1

declare dso_local i32** @cube1list(...) #1

declare dso_local i32 @printf(i8* noundef, ...) #1

declare dso_local void @sf_free(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_equiv(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca %struct.set_family*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.set_family* %0, %struct.set_family** %4, align 8
  store %struct.set_family* %1, %struct.set_family** %5, align 8
  %10 = load %struct.set_family*, %struct.set_family** %4, align 8
  %11 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %10)
  store i32** %11, i32*** %6, align 8
  %12 = load %struct.set_family*, %struct.set_family** %5, align 8
  %13 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.set_family*, %struct.set_family** %5, align 8
  %17 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.set_family*, %struct.set_family** %5, align 8
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %18, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %15, i64 %23
  store i32* %24, i32** %9, align 8
  br label %25

25:                                               ; preds = %36, %2
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** noundef %30, i32* noundef %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %114

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.set_family*, %struct.set_family** %5, align 8
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %8, align 8
  br label %25, !llvm.loop !9

43:                                               ; preds = %25
  %44 = load i32**, i32*** %6, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32**, i32*** %6, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 0
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  call void @free(i8* noundef %52)
  %53 = load i32**, i32*** %6, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32**, i32*** %6, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32**, i32*** %6, align 8
  %60 = bitcast i32** %59 to i8*
  call void @free(i8* noundef %60)
  store i32** null, i32*** %6, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.set_family*, %struct.set_family** %5, align 8
  %63 = call i32** (%struct.set_family*, ...) bitcast (i32** (...)* @cube1list to i32** (%struct.set_family*, ...)*)(%struct.set_family* noundef %62)
  store i32** %63, i32*** %7, align 8
  %64 = load %struct.set_family*, %struct.set_family** %4, align 8
  %65 = getelementptr inbounds %struct.set_family, %struct.set_family* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %8, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load %struct.set_family*, %struct.set_family** %4, align 8
  %69 = getelementptr inbounds %struct.set_family, %struct.set_family* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.set_family*, %struct.set_family** %4, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %67, i64 %75
  store i32* %76, i32** %9, align 8
  br label %77

77:                                               ; preds = %88, %61
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ult i32* %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i32**, i32*** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 (i32**, i32*, ...) bitcast (i32 (...)* @cube_is_covered to i32 (i32**, i32*, ...)*)(i32** noundef %82, i32* noundef %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %3, align 4
  br label %114

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.set_family*, %struct.set_family** %4, align 8
  %90 = getelementptr inbounds %struct.set_family, %struct.set_family* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %8, align 8
  br label %77, !llvm.loop !10

95:                                               ; preds = %77
  %96 = load i32**, i32*** %7, align 8
  %97 = getelementptr inbounds i32*, i32** %96, i64 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load i32**, i32*** %7, align 8
  %102 = getelementptr inbounds i32*, i32** %101, i64 0
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to i8*
  call void @free(i8* noundef %104)
  %105 = load i32**, i32*** %7, align 8
  %106 = getelementptr inbounds i32*, i32** %105, i64 0
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %95
  %108 = load i32**, i32*** %7, align 8
  %109 = icmp ne i32** %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32**, i32*** %7, align 8
  %112 = bitcast i32** %111 to i8*
  call void @free(i8* noundef %112)
  store i32** null, i32*** %7, align 8
  br label %113

113:                                              ; preds = %110, %107
  store i32 1, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %86, %34
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @cube_is_covered(...) #1

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
