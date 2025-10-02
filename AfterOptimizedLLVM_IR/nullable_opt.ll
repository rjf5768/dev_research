; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/nullable.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/bison/nullable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shorts = type { %struct.shorts*, i16 }

@nvars = external dso_local global i32, align 4
@ntokens = external dso_local global i32, align 4
@nullable = dso_local global i8* null, align 8
@nrules = external dso_local global i32, align 4
@nitems = external dso_local global i32, align 4
@ritem = external dso_local global i16*, align 8
@rlhs = external dso_local global i16*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_nullable() #0 {
  %1 = alloca i16*, align 8
  %2 = alloca i16*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.shorts*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca %struct.shorts**, align 8
  %10 = alloca %struct.shorts*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i16*, align 8
  %13 = load i32, i32* @nvars, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %16)
  %18 = load i32, i32* @ntokens, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 0, %19
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** @nullable, align 8
  %22 = load i32, i32* @nvars, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 2
  %25 = trunc i64 %24 to i32
  %26 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %25)
  %27 = bitcast i8* %26 to i16*
  store i16* %27, i16** %7, align 8
  %28 = load i16*, i16** %7, align 8
  store i16* %28, i16** %3, align 8
  store i16* %28, i16** %2, align 8
  %29 = load i32, i32* @nrules, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 2
  %33 = trunc i64 %32 to i32
  %34 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %33)
  %35 = bitcast i8* %34 to i16*
  store i16* %35, i16** %8, align 8
  %36 = load i32, i32* @nvars, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %39)
  %41 = bitcast i8* %40 to %struct.shorts**
  %42 = load i32, i32* @ntokens, align 4
  %43 = sext i32 %42 to i64
  %44 = sub i64 0, %43
  %45 = getelementptr inbounds %struct.shorts*, %struct.shorts** %41, i64 %44
  store %struct.shorts** %45, %struct.shorts*** %9, align 8
  %46 = load i32, i32* @nitems, align 4
  %47 = load i32, i32* @nvars, align 4
  %48 = add nsw i32 %46, %47
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 16
  %52 = trunc i64 %51 to i32
  %53 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 noundef %52)
  %54 = bitcast i8* %53 to %struct.shorts*
  store %struct.shorts* %54, %struct.shorts** %10, align 8
  %55 = load %struct.shorts*, %struct.shorts** %10, align 8
  store %struct.shorts* %55, %struct.shorts** %6, align 8
  %56 = load i16*, i16** @ritem, align 8
  store i16* %56, i16** %1, align 8
  br label %57

57:                                               ; preds = %159, %0
  %58 = load i16*, i16** %1, align 8
  %59 = load i16, i16* %58, align 2
  %60 = icmp ne i16 %59, 0
  br i1 %60, label %61, label %160

61:                                               ; preds = %57
  %62 = load i16*, i16** %1, align 8
  %63 = load i16, i16* %62, align 2
  %64 = sext i16 %63 to i32
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %61
  %67 = load i16*, i16** @rlhs, align 8
  %68 = load i16*, i16** %1, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %1, align 8
  %70 = load i16, i16* %68, align 2
  %71 = sext i16 %70 to i32
  %72 = sub nsw i32 0, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i16, i16* %67, i64 %73
  %75 = load i16, i16* %74, align 2
  %76 = sext i16 %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load i8*, i8** @nullable, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %66
  %84 = load i8*, i8** @nullable, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 1, i8* %87, align 1
  %88 = load i32, i32* %5, align 4
  %89 = trunc i32 %88 to i16
  %90 = load i16*, i16** %3, align 8
  %91 = getelementptr inbounds i16, i16* %90, i32 1
  store i16* %91, i16** %3, align 8
  store i16 %89, i16* %90, align 2
  br label %92

92:                                               ; preds = %83, %66
  br label %159

93:                                               ; preds = %61
  %94 = load i16*, i16** %1, align 8
  store i16* %94, i16** %12, align 8
  store i8 0, i8* %11, align 1
  %95 = load i16*, i16** %1, align 8
  %96 = getelementptr inbounds i16, i16* %95, i32 1
  store i16* %96, i16** %1, align 8
  %97 = load i16, i16* %95, align 2
  %98 = sext i16 %97 to i32
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %108, %93
  %100 = load i32, i32* %5, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @ntokens, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i8 1, i8* %11, align 1
  br label %107

107:                                              ; preds = %106, %102
  br label %108

108:                                              ; preds = %107
  %109 = load i16*, i16** %1, align 8
  %110 = getelementptr inbounds i16, i16* %109, i32 1
  store i16* %110, i16** %1, align 8
  %111 = load i16, i16* %109, align 2
  %112 = sext i16 %111 to i32
  store i32 %112, i32* %5, align 4
  br label %99, !llvm.loop !4

113:                                              ; preds = %99
  %114 = load i8, i8* %11, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %158, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  %119 = load i16*, i16** %12, align 8
  store i16* %119, i16** %1, align 8
  %120 = load i16*, i16** %1, align 8
  %121 = getelementptr inbounds i16, i16* %120, i32 1
  store i16* %121, i16** %1, align 8
  %122 = load i16, i16* %120, align 2
  %123 = sext i16 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %152, %116
  %125 = load i32, i32* %5, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %157

127:                                              ; preds = %124
  %128 = load i16*, i16** %8, align 8
  %129 = load i32, i32* %4, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i16, i16* %128, i64 %130
  %132 = load i16, i16* %131, align 2
  %133 = add i16 %132, 1
  store i16 %133, i16* %131, align 2
  %134 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.shorts*, %struct.shorts** %134, i64 %136
  %138 = load %struct.shorts*, %struct.shorts** %137, align 8
  %139 = load %struct.shorts*, %struct.shorts** %6, align 8
  %140 = getelementptr inbounds %struct.shorts, %struct.shorts* %139, i32 0, i32 0
  store %struct.shorts* %138, %struct.shorts** %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = trunc i32 %141 to i16
  %143 = load %struct.shorts*, %struct.shorts** %6, align 8
  %144 = getelementptr inbounds %struct.shorts, %struct.shorts* %143, i32 0, i32 1
  store i16 %142, i16* %144, align 8
  %145 = load %struct.shorts*, %struct.shorts** %6, align 8
  %146 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.shorts*, %struct.shorts** %146, i64 %148
  store %struct.shorts* %145, %struct.shorts** %149, align 8
  %150 = load %struct.shorts*, %struct.shorts** %6, align 8
  %151 = getelementptr inbounds %struct.shorts, %struct.shorts* %150, i32 1
  store %struct.shorts* %151, %struct.shorts** %6, align 8
  br label %152

152:                                              ; preds = %127
  %153 = load i16*, i16** %1, align 8
  %154 = getelementptr inbounds i16, i16* %153, i32 1
  store i16* %154, i16** %1, align 8
  %155 = load i16, i16* %153, align 2
  %156 = sext i16 %155 to i32
  store i32 %156, i32* %5, align 4
  br label %124, !llvm.loop !6

157:                                              ; preds = %124
  br label %158

158:                                              ; preds = %157, %113
  br label %159

159:                                              ; preds = %158, %92
  br label %57, !llvm.loop !7

160:                                              ; preds = %57
  br label %161

161:                                              ; preds = %216, %160
  %162 = load i16*, i16** %2, align 8
  %163 = load i16*, i16** %3, align 8
  %164 = icmp ult i16* %162, %163
  br i1 %164, label %165, label %217

165:                                              ; preds = %161
  %166 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %167 = load i16*, i16** %2, align 8
  %168 = getelementptr inbounds i16, i16* %167, i32 1
  store i16* %168, i16** %2, align 8
  %169 = load i16, i16* %167, align 2
  %170 = sext i16 %169 to i64
  %171 = getelementptr inbounds %struct.shorts*, %struct.shorts** %166, i64 %170
  %172 = load %struct.shorts*, %struct.shorts** %171, align 8
  store %struct.shorts* %172, %struct.shorts** %6, align 8
  br label %173

173:                                              ; preds = %215, %165
  %174 = load %struct.shorts*, %struct.shorts** %6, align 8
  %175 = icmp ne %struct.shorts* %174, null
  br i1 %175, label %176, label %216

176:                                              ; preds = %173
  %177 = load %struct.shorts*, %struct.shorts** %6, align 8
  %178 = getelementptr inbounds %struct.shorts, %struct.shorts* %177, i32 0, i32 1
  %179 = load i16, i16* %178, align 8
  %180 = sext i16 %179 to i32
  store i32 %180, i32* %4, align 4
  %181 = load %struct.shorts*, %struct.shorts** %6, align 8
  %182 = getelementptr inbounds %struct.shorts, %struct.shorts* %181, i32 0, i32 0
  %183 = load %struct.shorts*, %struct.shorts** %182, align 8
  store %struct.shorts* %183, %struct.shorts** %6, align 8
  %184 = load i16*, i16** %8, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, i16* %184, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = add i16 %188, -1
  store i16 %189, i16* %187, align 2
  %190 = sext i16 %189 to i32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %176
  %193 = load i16*, i16** @rlhs, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i16, i16* %193, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = sext i16 %197 to i32
  store i32 %198, i32* %5, align 4
  %199 = load i8*, i8** @nullable, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = icmp ne i8 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %192
  %206 = load i8*, i8** @nullable, align 8
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  store i8 1, i8* %209, align 1
  %210 = load i32, i32* %5, align 4
  %211 = trunc i32 %210 to i16
  %212 = load i16*, i16** %3, align 8
  %213 = getelementptr inbounds i16, i16* %212, i32 1
  store i16* %213, i16** %3, align 8
  store i16 %211, i16* %212, align 2
  br label %214

214:                                              ; preds = %205, %192
  br label %215

215:                                              ; preds = %214, %176
  br label %173, !llvm.loop !8

216:                                              ; preds = %173
  br label %161, !llvm.loop !9

217:                                              ; preds = %161
  %218 = load i16*, i16** %7, align 8
  %219 = icmp ne i16* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i16*, i16** %7, align 8
  %222 = bitcast i16* %221 to i8*
  call void @free(i8* noundef %222) #3
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i16*, i16** %8, align 8
  %225 = icmp ne i16* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i16*, i16** %8, align 8
  %228 = bitcast i16* %227 to i8*
  call void @free(i8* noundef %228) #3
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %231 = load i32, i32* @ntokens, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.shorts*, %struct.shorts** %230, i64 %232
  %234 = icmp ne %struct.shorts** %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load %struct.shorts**, %struct.shorts*** %9, align 8
  %237 = load i32, i32* @ntokens, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.shorts*, %struct.shorts** %236, i64 %238
  %240 = bitcast %struct.shorts** %239 to i8*
  call void @free(i8* noundef %240) #3
  br label %241

241:                                              ; preds = %235, %229
  %242 = load %struct.shorts*, %struct.shorts** %10, align 8
  %243 = icmp ne %struct.shorts* %242, null
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load %struct.shorts*, %struct.shorts** %10, align 8
  %246 = bitcast %struct.shorts* %245 to i8*
  call void @free(i8* noundef %246) #3
  br label %247

247:                                              ; preds = %244, %241
  ret void
}

declare dso_local i8* @mallocate(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_nullable() #0 {
  %1 = load i8*, i8** @nullable, align 8
  %2 = load i32, i32* @ntokens, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i8, i8* %1, i64 %3
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load i8*, i8** @nullable, align 8
  %8 = load i32, i32* @ntokens, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  call void @free(i8* noundef %10) #3
  br label %11

11:                                               ; preds = %6, %0
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
