; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psub.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/psub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @psub(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca %struct.precisionType*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store %struct.precisionType* %0, %struct.precisionType** %4, align 8
  store %struct.precisionType* %1, %struct.precisionType** %5, align 8
  %14 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %15 = icmp ne %struct.precisionType* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %18 = bitcast %struct.precisionType* %17 to i16*
  %19 = load i16, i16* %18, align 2
  %20 = add i16 %19, 1
  store i16 %20, i16* %18, align 2
  %21 = zext i16 %19 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %2
  %24 = phi i1 [ false, %2 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %27 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %28 = icmp ne %struct.precisionType* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %31 = bitcast %struct.precisionType* %30 to i16*
  %32 = load i16, i16* %31, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %31, align 2
  %34 = zext i16 %32 to i32
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i1 [ false, %23 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %40 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %41 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i32 0, i32 3
  %42 = load i8, i8* %41, align 2
  %43 = zext i8 %42 to i32
  %44 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %45 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 3
  %46 = load i8, i8* %45, align 2
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %43, %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %36
  store %struct.precisionType* null, %struct.precisionType** %10, align 8
  %50 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %51 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %50, i32 0, i32 3
  %52 = load i8, i8* %51, align 2
  %53 = icmp ne i8 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = trunc i32 %55 to i8
  %57 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %57, i32 0, i32 3
  store i8 %56, i8* %58, align 2
  %59 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %60 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %61 = call %struct.precisionType* @padd(%struct.precisionType* noundef %59, %struct.precisionType* noundef %60)
  %62 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %10, %struct.precisionType* noundef %61)
  %63 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %64 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %63, i32 0, i32 3
  %65 = load i8, i8* %64, align 2
  %66 = icmp ne i8 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = trunc i32 %68 to i8
  %70 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %71 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %70, i32 0, i32 3
  store i8 %69, i8* %71, align 2
  br label %226

72:                                               ; preds = %36
  %73 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %74 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %75 = call i32 @pcmp(%struct.precisionType* noundef %73, %struct.precisionType* noundef %74)
  store i32 %75, i32* %13, align 4
  %76 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %77 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 2
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %80, %72
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %87, %struct.precisionType** %10, align 8
  %88 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  store %struct.precisionType* %88, %struct.precisionType** %4, align 8
  %89 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  store %struct.precisionType* %89, %struct.precisionType** %5, align 8
  br label %90

90:                                               ; preds = %86, %83
  %91 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %92 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %91, i32 0, i32 2
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %94)
  store %struct.precisionType* %95, %struct.precisionType** %10, align 8
  %96 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %97 = icmp eq %struct.precisionType* %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  store %struct.precisionType* %99, %struct.precisionType** %3, align 8
  br label %261

100:                                              ; preds = %90
  %101 = load i32, i32* %13, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %105 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %104, i32 0, i32 3
  %106 = load i8, i8* %105, align 2
  %107 = icmp ne i8 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = trunc i32 %109 to i8
  %111 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %112 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %111, i32 0, i32 3
  store i8 %110, i8* %112, align 2
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %115 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %114, i32 0, i32 3
  %116 = load i8, i8* %115, align 2
  %117 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %118 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %117, i32 0, i32 3
  store i8 %116, i8* %118, align 2
  br label %119

119:                                              ; preds = %113, %103
  %120 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %121 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %120, i32 0, i32 4
  %122 = getelementptr inbounds [1 x i16], [1 x i16]* %121, i64 0, i64 0
  store i16* %122, i16** %8, align 8
  %123 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %124 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %123, i32 0, i32 4
  %125 = getelementptr inbounds [1 x i16], [1 x i16]* %124, i64 0, i64 0
  store i16* %125, i16** %7, align 8
  %126 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %127 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %126, i32 0, i32 4
  %128 = getelementptr inbounds [1 x i16], [1 x i16]* %127, i64 0, i64 0
  store i16* %128, i16** %9, align 8
  store i16 1, i16* %12, align 2
  %129 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %130 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %129, i32 0, i32 4
  %131 = getelementptr inbounds [1 x i16], [1 x i16]* %130, i64 0, i64 0
  %132 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %133 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %132, i32 0, i32 2
  %134 = load i16, i16* %133, align 2
  %135 = zext i16 %134 to i32
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i16, i16* %131, i64 %136
  store i16* %137, i16** %6, align 8
  br label %138

138:                                              ; preds = %162, %119
  %139 = load i16*, i16** %9, align 8
  %140 = getelementptr inbounds i16, i16* %139, i32 1
  store i16* %140, i16** %9, align 8
  %141 = load i16, i16* %139, align 2
  %142 = zext i16 %141 to i32
  %143 = sub nsw i32 65535, %142
  store i32 %143, i32* %11, align 4
  %144 = load i16*, i16** %8, align 8
  %145 = getelementptr inbounds i16, i16* %144, i32 1
  store i16* %145, i16** %8, align 8
  %146 = load i16, i16* %144, align 2
  %147 = zext i16 %146 to i32
  %148 = load i32, i32* %11, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i16, i16* %12, align 2
  %151 = zext i16 %150 to i32
  %152 = load i32, i32* %11, align 4
  %153 = add i32 %152, %151
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = lshr i32 %154, 16
  %156 = trunc i32 %155 to i16
  store i16 %156, i16* %12, align 2
  %157 = load i32, i32* %11, align 4
  %158 = and i32 %157, 65535
  %159 = trunc i32 %158 to i16
  %160 = load i16*, i16** %7, align 8
  %161 = getelementptr inbounds i16, i16* %160, i32 1
  store i16* %161, i16** %7, align 8
  store i16 %159, i16* %160, align 2
  br label %162

162:                                              ; preds = %138
  %163 = load i16*, i16** %9, align 8
  %164 = load i16*, i16** %6, align 8
  %165 = icmp ult i16* %163, %164
  br i1 %165, label %138, label %166, !llvm.loop !4

166:                                              ; preds = %162
  %167 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %168 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %167, i32 0, i32 4
  %169 = getelementptr inbounds [1 x i16], [1 x i16]* %168, i64 0, i64 0
  %170 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %171 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %170, i32 0, i32 2
  %172 = load i16, i16* %171, align 2
  %173 = zext i16 %172 to i32
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %169, i64 %174
  store i16* %175, i16** %6, align 8
  br label %176

176:                                              ; preds = %180, %166
  %177 = load i16*, i16** %8, align 8
  %178 = load i16*, i16** %6, align 8
  %179 = icmp ult i16* %177, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %176
  %181 = load i16*, i16** %8, align 8
  %182 = getelementptr inbounds i16, i16* %181, i32 1
  store i16* %182, i16** %8, align 8
  %183 = load i16, i16* %181, align 2
  %184 = zext i16 %183 to i32
  %185 = add nsw i32 65535, %184
  store i32 %185, i32* %11, align 4
  %186 = load i16, i16* %12, align 2
  %187 = zext i16 %186 to i32
  %188 = load i32, i32* %11, align 4
  %189 = add i32 %188, %187
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = lshr i32 %190, 16
  %192 = trunc i32 %191 to i16
  store i16 %192, i16* %12, align 2
  %193 = load i32, i32* %11, align 4
  %194 = and i32 %193, 65535
  %195 = trunc i32 %194 to i16
  %196 = load i16*, i16** %7, align 8
  %197 = getelementptr inbounds i16, i16* %196, i32 1
  store i16* %197, i16** %7, align 8
  store i16 %195, i16* %196, align 2
  br label %176, !llvm.loop !6

198:                                              ; preds = %176
  br label %199

199:                                              ; preds = %207, %198
  %200 = load i16*, i16** %7, align 8
  %201 = getelementptr inbounds i16, i16* %200, i32 -1
  store i16* %201, i16** %7, align 8
  %202 = load i16, i16* %201, align 2
  %203 = zext i16 %202 to i32
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %213

206:                                              ; preds = %199
  br label %207

207:                                              ; preds = %206
  %208 = load i16*, i16** %7, align 8
  %209 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %210 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %209, i32 0, i32 4
  %211 = getelementptr inbounds [1 x i16], [1 x i16]* %210, i64 0, i64 0
  %212 = icmp ugt i16* %208, %211
  br i1 %212, label %199, label %213, !llvm.loop !7

213:                                              ; preds = %207, %205
  %214 = load i16*, i16** %7, align 8
  %215 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %216 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %215, i32 0, i32 4
  %217 = getelementptr inbounds [1 x i16], [1 x i16]* %216, i64 0, i64 0
  %218 = ptrtoint i16* %214 to i64
  %219 = ptrtoint i16* %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 2
  %222 = add nsw i64 %221, 1
  %223 = trunc i64 %222 to i16
  %224 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %225 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %224, i32 0, i32 2
  store i16 %223, i16* %225, align 2
  br label %226

226:                                              ; preds = %213, %49
  %227 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %228 = icmp ne %struct.precisionType* %227, null
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %231 = bitcast %struct.precisionType* %230 to i16*
  %232 = load i16, i16* %231, align 2
  %233 = add i16 %232, -1
  store i16 %233, i16* %231, align 2
  %234 = zext i16 %233 to i32
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %229
  %237 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %238 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %237)
  %239 = icmp ne i32 %238, 0
  br label %240

240:                                              ; preds = %236, %229, %226
  %241 = phi i1 [ false, %229 ], [ false, %226 ], [ %239, %236 ]
  %242 = zext i1 %241 to i32
  %243 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %244 = icmp ne %struct.precisionType* %243, null
  br i1 %244, label %245, label %256

245:                                              ; preds = %240
  %246 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %247 = bitcast %struct.precisionType* %246 to i16*
  %248 = load i16, i16* %247, align 2
  %249 = add i16 %248, -1
  store i16 %249, i16* %247, align 2
  %250 = zext i16 %249 to i32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %254 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %253)
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %252, %245, %240
  %257 = phi i1 [ false, %245 ], [ false, %240 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  %259 = load %struct.precisionType*, %struct.precisionType** %10, align 8
  %260 = call %struct.precisionType* @presult(%struct.precisionType* noundef %259)
  store %struct.precisionType* %260, %struct.precisionType** %3, align 8
  br label %261

261:                                              ; preds = %256, %98
  %262 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  ret %struct.precisionType* %262
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @padd(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local i32 @pcmp(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @palloc(...) #1

declare dso_local i32 @pfree(...) #1

declare dso_local %struct.precisionType* @presult(%struct.precisionType* noundef) #1

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
