; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/count.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/gnugo/count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ml = external dso_local global [19 x [19 x i8]], align 16
@p = external dso_local global [19 x [19 x i8]], align 16
@lib = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @count(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [19 x i8], [19 x i8]* %9, i64 0, i64 %11
  store i8 0, i8* %12, align 1
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %77

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [19 x i8], [19 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %29
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [19 x i8], [19 x i8]* %30, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load i32, i32* @lib, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* @lib, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %42
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x i8], [19 x i8]* %43, i64 0, i64 %45
  store i8 0, i8* %46, align 1
  br label %76

47:                                               ; preds = %26, %15
  %48 = load i32, i32* %4, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %50
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [19 x i8], [19 x i8]* %51, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %47
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %62
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [19 x i8], [19 x i8]* %63, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load i32, i32* %4, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  call void @count(i32 noundef %72, i32 noundef %73, i32 noundef %74)
  br label %75

75:                                               ; preds = %70, %59, %47
  br label %76

76:                                               ; preds = %75, %37
  br label %77

77:                                               ; preds = %76, %3
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 18
  br i1 %79, label %80, label %142

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %83
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [19 x i8], [19 x i8]* %84, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %112

91:                                               ; preds = %80
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %94
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [19 x i8], [19 x i8]* %95, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load i32, i32* @lib, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @lib, align 4
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %107
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [19 x i8], [19 x i8]* %108, i64 0, i64 %110
  store i8 0, i8* %111, align 1
  br label %141

112:                                              ; preds = %91, %80
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %115
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [19 x i8], [19 x i8]* %116, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %112
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %127
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [19 x i8], [19 x i8]* %128, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  call void @count(i32 noundef %137, i32 noundef %138, i32 noundef %139)
  br label %140

140:                                              ; preds = %135, %124, %112
  br label %141

141:                                              ; preds = %140, %102
  br label %142

142:                                              ; preds = %141, %77
  %143 = load i32, i32* %5, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %207

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %147
  %149 = load i32, i32* %5, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [19 x i8], [19 x i8]* %148, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %177

156:                                              ; preds = %145
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %158
  %160 = load i32, i32* %5, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [19 x i8], [19 x i8]* %159, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %156
  %168 = load i32, i32* @lib, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @lib, align 4
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %171
  %173 = load i32, i32* %5, align 4
  %174 = sub nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [19 x i8], [19 x i8]* %172, i64 0, i64 %175
  store i8 0, i8* %176, align 1
  br label %206

177:                                              ; preds = %156, %145
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %179
  %181 = load i32, i32* %5, align 4
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [19 x i8], [19 x i8]* %180, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = load i32, i32* %6, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %205

189:                                              ; preds = %177
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %191
  %193 = load i32, i32* %5, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [19 x i8], [19 x i8]* %192, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %189
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %5, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32, i32* %6, align 4
  call void @count(i32 noundef %201, i32 noundef %203, i32 noundef %204)
  br label %205

205:                                              ; preds = %200, %189, %177
  br label %206

206:                                              ; preds = %205, %167
  br label %207

207:                                              ; preds = %206, %142
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 18
  br i1 %209, label %210, label %272

210:                                              ; preds = %207
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %212
  %214 = load i32, i32* %5, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [19 x i8], [19 x i8]* %213, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %242

221:                                              ; preds = %210
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %223
  %225 = load i32, i32* %5, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [19 x i8], [19 x i8]* %224, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %221
  %233 = load i32, i32* @lib, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* @lib, align 4
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %236
  %238 = load i32, i32* %5, align 4
  %239 = add nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [19 x i8], [19 x i8]* %237, i64 0, i64 %240
  store i8 0, i8* %241, align 1
  br label %271

242:                                              ; preds = %221, %210
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i64 0, i64 %244
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [19 x i8], [19 x i8]* %245, i64 0, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = load i32, i32* %6, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %270

254:                                              ; preds = %242
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @ml, i64 0, i64 %256
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [19 x i8], [19 x i8]* %257, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %254
  %266 = load i32, i32* %4, align 4
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32, i32* %6, align 4
  call void @count(i32 noundef %266, i32 noundef %268, i32 noundef %269)
  br label %270

270:                                              ; preds = %265, %254, %242
  br label %271

271:                                              ; preds = %270, %232
  br label %272

272:                                              ; preds = %271, %207
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
