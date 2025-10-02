; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/padd.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/padd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @padd(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca %struct.precisionType*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.precisionType* %0, %struct.precisionType** %4, align 8
  store %struct.precisionType* %1, %struct.precisionType** %5, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %13 = icmp ne %struct.precisionType* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %16 = bitcast %struct.precisionType* %15 to i16*
  %17 = load i16, i16* %16, align 2
  %18 = add i16 %17, 1
  store i16 %18, i16* %16, align 2
  %19 = zext i16 %17 to i32
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %14, %2
  %22 = phi i1 [ false, %2 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %25 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %26 = icmp ne %struct.precisionType* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %29 = bitcast %struct.precisionType* %28 to i16*
  %30 = load i16, i16* %29, align 2
  %31 = add i16 %30, 1
  store i16 %31, i16* %29, align 2
  %32 = zext i16 %30 to i32
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %27, %21
  %35 = phi i1 [ false, %21 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %38 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 3
  %40 = load i8, i8* %39, align 2
  %41 = zext i8 %40 to i32
  %42 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %43 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %42, i32 0, i32 3
  %44 = load i8, i8* %43, align 2
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %41, %45
  br i1 %46, label %47, label %99

47:                                               ; preds = %34
  store %struct.precisionType* null, %struct.precisionType** %9, align 8
  %48 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 3
  %50 = load i8, i8* %49, align 2
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %54 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %53, i32 0, i32 3
  %55 = load i8, i8* %54, align 2
  %56 = icmp ne i8 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = trunc i32 %58 to i8
  %60 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %60, i32 0, i32 3
  store i8 %59, i8* %61, align 2
  %62 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %63 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %64 = call %struct.precisionType* @psub(%struct.precisionType* noundef %62, %struct.precisionType* noundef %63)
  %65 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %9, %struct.precisionType* noundef %64)
  %66 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %67 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %66, i32 0, i32 3
  %68 = load i8, i8* %67, align 2
  %69 = icmp ne i8 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = trunc i32 %71 to i8
  %73 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %74 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %73, i32 0, i32 3
  store i8 %72, i8* %74, align 2
  br label %98

75:                                               ; preds = %47
  %76 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %77 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %76, i32 0, i32 3
  %78 = load i8, i8* %77, align 2
  %79 = icmp ne i8 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = trunc i32 %81 to i8
  %83 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %84 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %83, i32 0, i32 3
  store i8 %82, i8* %84, align 2
  %85 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %86 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %87 = call %struct.precisionType* @psub(%struct.precisionType* noundef %85, %struct.precisionType* noundef %86)
  %88 = call %struct.precisionType* @psetq(%struct.precisionType** noundef %9, %struct.precisionType* noundef %87)
  %89 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %90 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %89, i32 0, i32 3
  %91 = load i8, i8* %90, align 2
  %92 = icmp ne i8 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = trunc i32 %94 to i8
  %96 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %97 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %96, i32 0, i32 3
  store i8 %95, i8* %97, align 2
  br label %98

98:                                               ; preds = %75, %52
  br label %214

99:                                               ; preds = %34
  %100 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %101 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %100, i32 0, i32 2
  %102 = load i16, i16* %101, align 2
  %103 = zext i16 %102 to i32
  %104 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %105 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %104, i32 0, i32 2
  %106 = load i16, i16* %105, align 2
  %107 = zext i16 %106 to i32
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %110, %struct.precisionType** %9, align 8
  %111 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  store %struct.precisionType* %111, %struct.precisionType** %4, align 8
  %112 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  store %struct.precisionType* %112, %struct.precisionType** %5, align 8
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %115 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %114, i32 0, i32 2
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %117, 1
  %119 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %118)
  store %struct.precisionType* %119, %struct.precisionType** %9, align 8
  %120 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %121 = icmp eq %struct.precisionType* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  store %struct.precisionType* %123, %struct.precisionType** %3, align 8
  br label %249

124:                                              ; preds = %113
  %125 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %126 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %125, i32 0, i32 3
  %127 = load i8, i8* %126, align 2
  %128 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %129 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %128, i32 0, i32 3
  store i8 %127, i8* %129, align 2
  %130 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %131 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %130, i32 0, i32 4
  %132 = getelementptr inbounds [1 x i16], [1 x i16]* %131, i64 0, i64 0
  store i16* %132, i16** %7, align 8
  %133 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %134 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %133, i32 0, i32 4
  %135 = getelementptr inbounds [1 x i16], [1 x i16]* %134, i64 0, i64 0
  store i16* %135, i16** %6, align 8
  %136 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %137 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %136, i32 0, i32 4
  %138 = getelementptr inbounds [1 x i16], [1 x i16]* %137, i64 0, i64 0
  store i16* %138, i16** %8, align 8
  store i16 0, i16* %11, align 2
  br label %139

139:                                              ; preds = %161, %124
  %140 = load i16*, i16** %7, align 8
  %141 = getelementptr inbounds i16, i16* %140, i32 1
  store i16* %141, i16** %7, align 8
  %142 = load i16, i16* %140, align 2
  %143 = zext i16 %142 to i32
  %144 = load i16*, i16** %8, align 8
  %145 = getelementptr inbounds i16, i16* %144, i32 1
  store i16* %145, i16** %8, align 8
  %146 = load i16, i16* %144, align 2
  %147 = zext i16 %146 to i32
  %148 = add nsw i32 %143, %147
  store i32 %148, i32* %10, align 4
  %149 = load i16, i16* %11, align 2
  %150 = zext i16 %149 to i32
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, %150
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = lshr i32 %153, 16
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %11, align 2
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 65535
  %158 = trunc i32 %157 to i16
  %159 = load i16*, i16** %6, align 8
  %160 = getelementptr inbounds i16, i16* %159, i32 1
  store i16* %160, i16** %6, align 8
  store i16 %158, i16* %159, align 2
  br label %161

161:                                              ; preds = %139
  %162 = load i16*, i16** %8, align 8
  %163 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %164 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %163, i32 0, i32 4
  %165 = getelementptr inbounds [1 x i16], [1 x i16]* %164, i64 0, i64 0
  %166 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %167 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %166, i32 0, i32 2
  %168 = load i16, i16* %167, align 2
  %169 = zext i16 %168 to i32
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %165, i64 %170
  %172 = icmp ult i16* %162, %171
  br i1 %172, label %139, label %173, !llvm.loop !4

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %186, %173
  %175 = load i16*, i16** %7, align 8
  %176 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %177 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %176, i32 0, i32 4
  %178 = getelementptr inbounds [1 x i16], [1 x i16]* %177, i64 0, i64 0
  %179 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %180 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %179, i32 0, i32 2
  %181 = load i16, i16* %180, align 2
  %182 = zext i16 %181 to i32
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i16, i16* %178, i64 %183
  %185 = icmp ult i16* %175, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %174
  %187 = load i16*, i16** %7, align 8
  %188 = getelementptr inbounds i16, i16* %187, i32 1
  store i16* %188, i16** %7, align 8
  %189 = load i16, i16* %187, align 2
  %190 = zext i16 %189 to i32
  %191 = load i16, i16* %11, align 2
  %192 = zext i16 %191 to i32
  %193 = add nsw i32 %190, %192
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = lshr i32 %194, 16
  %196 = trunc i32 %195 to i16
  store i16 %196, i16* %11, align 2
  %197 = load i32, i32* %10, align 4
  %198 = and i32 %197, 65535
  %199 = trunc i32 %198 to i16
  %200 = load i16*, i16** %6, align 8
  %201 = getelementptr inbounds i16, i16* %200, i32 1
  store i16* %201, i16** %6, align 8
  store i16 %199, i16* %200, align 2
  br label %174, !llvm.loop !6

202:                                              ; preds = %174
  %203 = load i16, i16* %11, align 2
  %204 = load i16*, i16** %6, align 8
  store i16 %203, i16* %204, align 2
  %205 = load i16, i16* %11, align 2
  %206 = zext i16 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %202
  %209 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %210 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %209, i32 0, i32 2
  %211 = load i16, i16* %210, align 2
  %212 = add i16 %211, -1
  store i16 %212, i16* %210, align 2
  br label %213

213:                                              ; preds = %208, %202
  br label %214

214:                                              ; preds = %213, %98
  %215 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %216 = icmp ne %struct.precisionType* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %214
  %218 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %219 = bitcast %struct.precisionType* %218 to i16*
  %220 = load i16, i16* %219, align 2
  %221 = add i16 %220, -1
  store i16 %221, i16* %219, align 2
  %222 = zext i16 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %226 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %225)
  %227 = icmp ne i32 %226, 0
  br label %228

228:                                              ; preds = %224, %217, %214
  %229 = phi i1 [ false, %217 ], [ false, %214 ], [ %227, %224 ]
  %230 = zext i1 %229 to i32
  %231 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %232 = icmp ne %struct.precisionType* %231, null
  br i1 %232, label %233, label %244

233:                                              ; preds = %228
  %234 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %235 = bitcast %struct.precisionType* %234 to i16*
  %236 = load i16, i16* %235, align 2
  %237 = add i16 %236, -1
  store i16 %237, i16* %235, align 2
  %238 = zext i16 %237 to i32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %233
  %241 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %242 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %241)
  %243 = icmp ne i32 %242, 0
  br label %244

244:                                              ; preds = %240, %233, %228
  %245 = phi i1 [ false, %233 ], [ false, %228 ], [ %243, %240 ]
  %246 = zext i1 %245 to i32
  %247 = load %struct.precisionType*, %struct.precisionType** %9, align 8
  %248 = call %struct.precisionType* @presult(%struct.precisionType* noundef %247)
  store %struct.precisionType* %248, %struct.precisionType** %3, align 8
  br label %249

249:                                              ; preds = %244, %122
  %250 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  ret %struct.precisionType* %250
}

declare dso_local %struct.precisionType* @psetq(%struct.precisionType** noundef, %struct.precisionType* noundef) #1

declare dso_local %struct.precisionType* @psub(%struct.precisionType* noundef, %struct.precisionType* noundef) #1

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
