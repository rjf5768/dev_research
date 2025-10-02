; ModuleID = '/project/test/llvm-test-suite/MultiSource/Applications/spiff/miller.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Applications/spiff/miller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt = type { %struct.edt*, i32, i32, i32 }

@Z_err_buf = external dso_local global [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.edt* @G_do_miller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.edt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.edt*, align 8
  %18 = alloca %struct.edt**, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %26)
  %28 = bitcast i32* %27 to %struct.edt**
  store %struct.edt** %28, %struct.edt*** %18, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef %32)
  store i32* %33, i32** %19, align 8
  store i32 0, i32* %15, align 4
  br label %34

34:                                               ; preds = %51, %4
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 noundef %43, i32 noundef %44, i32 noundef %45)
  %47 = icmp eq i32 %46, 0
  br label %48

48:                                               ; preds = %42, %38, %34
  %49 = phi i1 [ false, %38 ], [ false, %34 ], [ %47, %42 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %34, !llvm.loop !4

54:                                               ; preds = %48
  %55 = load i32, i32* %15, align 4
  %56 = load i32*, i32** %19, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.edt**, %struct.edt*** %18, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sdiv i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.edt*, %struct.edt** %61, i64 %64
  store %struct.edt* null, %struct.edt** %65, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %71, 1
  br label %77

73:                                               ; preds = %54
  %74 = load i32, i32* %10, align 4
  %75 = sdiv i32 %74, 2
  %76 = sub nsw i32 %75, 1
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i32 [ %72, %69 ], [ %76, %73 ]
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = sdiv i32 %83, 2
  %85 = sub nsw i32 %84, 1
  br label %90

86:                                               ; preds = %77
  %87 = load i32, i32* %10, align 4
  %88 = sdiv i32 %87, 2
  %89 = add nsw i32 %88, 1
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32 [ %85, %82 ], [ %89, %86 ]
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %12, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store %struct.edt* null, %struct.edt** %5, align 8
  br label %268

96:                                               ; preds = %90
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %263, %96
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %266

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %245, %101
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %248

107:                                              ; preds = %103
  %108 = call i32* (i64, ...) bitcast (i32* (...)* @_Z_myalloc to i32* (i64, ...)*)(i64 noundef 24)
  %109 = bitcast i32* %108 to %struct.edt*
  store %struct.edt* %109, %struct.edt** %17, align 8
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %111, 2
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %137, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %10, align 4
  %119 = sdiv i32 %118, 2
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp ne i32 %117, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %116
  %124 = load i32*, i32** %19, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %19, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %129, %135
  br i1 %136, label %137, label %155

137:                                              ; preds = %123, %107
  %138 = load i32*, i32** %19, align 8
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  %145 = load %struct.edt**, %struct.edt*** %18, align 8
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.edt*, %struct.edt** %145, i64 %148
  %150 = load %struct.edt*, %struct.edt** %149, align 8
  %151 = load %struct.edt*, %struct.edt** %17, align 8
  %152 = getelementptr inbounds %struct.edt, %struct.edt* %151, i32 0, i32 0
  store %struct.edt* %150, %struct.edt** %152, align 8
  %153 = load %struct.edt*, %struct.edt** %17, align 8
  %154 = getelementptr inbounds %struct.edt, %struct.edt* %153, i32 0, i32 1
  store i32 2, i32* %154, align 8
  br label %172

155:                                              ; preds = %123, %116
  %156 = load i32*, i32** %19, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %15, align 4
  %162 = load %struct.edt**, %struct.edt*** %18, align 8
  %163 = load i32, i32* %14, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.edt*, %struct.edt** %162, i64 %165
  %167 = load %struct.edt*, %struct.edt** %166, align 8
  %168 = load %struct.edt*, %struct.edt** %17, align 8
  %169 = getelementptr inbounds %struct.edt, %struct.edt* %168, i32 0, i32 0
  store %struct.edt* %167, %struct.edt** %169, align 8
  %170 = load %struct.edt*, %struct.edt** %17, align 8
  %171 = getelementptr inbounds %struct.edt, %struct.edt* %170, i32 0, i32 1
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %155, %137
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.edt*, %struct.edt** %17, align 8
  %175 = getelementptr inbounds %struct.edt, %struct.edt* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %10, align 4
  %180 = sdiv i32 %179, 2
  %181 = sub nsw i32 %178, %180
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %16, align 4
  %183 = load %struct.edt*, %struct.edt** %17, align 8
  %184 = getelementptr inbounds %struct.edt, %struct.edt* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  %185 = load %struct.edt*, %struct.edt** %17, align 8
  %186 = load %struct.edt**, %struct.edt*** %18, align 8
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.edt*, %struct.edt** %186, i64 %188
  store %struct.edt* %185, %struct.edt** %189, align 8
  br label %190

190:                                              ; preds = %206, %172
  %191 = load i32, i32* %15, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32, i32* %9, align 4
  %202 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @X_com to i32 (i32, i32, i32, ...)*)(i32 noundef %199, i32 noundef %200, i32 noundef %201)
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %198, %194, %190
  %205 = phi i1 [ false, %194 ], [ false, %190 ], [ %203, %198 ]
  br i1 %205, label %206, label %211

206:                                              ; preds = %204
  %207 = load i32, i32* %15, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %15, align 4
  %209 = load i32, i32* %16, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %190, !llvm.loop !6

211:                                              ; preds = %204
  %212 = load i32, i32* %15, align 4
  %213 = load i32*, i32** %19, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  %217 = load i32, i32* %15, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %211
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load %struct.edt**, %struct.edt*** %18, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.edt*, %struct.edt** %225, i64 %227
  %229 = load %struct.edt*, %struct.edt** %228, align 8
  store %struct.edt* %229, %struct.edt** %5, align 8
  br label %268

230:                                              ; preds = %220, %211
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %237

234:                                              ; preds = %230
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 2
  store i32 %236, i32* %11, align 4
  br label %237

237:                                              ; preds = %234, %230
  %238 = load i32, i32* %16, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp eq i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %242, 2
  store i32 %243, i32* %12, align 4
  br label %244

244:                                              ; preds = %241, %237
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 2
  store i32 %247, i32* %14, align 4
  br label %103, !llvm.loop !7

248:                                              ; preds = %103
  %249 = load i32, i32* %11, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = load i32, i32* %13, align 4
  %257 = srem i32 %256, 100
  %258 = icmp eq i32 0, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %255
  %260 = load i32, i32* %13, align 4
  %261 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0), i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 noundef %260) #3
  call void (i8*, ...) bitcast (void (...)* @Z_chatter to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([0 x i8], [0 x i8]* @Z_err_buf, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %255, %248
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %97, !llvm.loop !8

266:                                              ; preds = %97
  %267 = load i32, i32* %8, align 4
  call void (i32, ...) bitcast (void (...)* @Z_exceed to void (i32, ...)*)(i32 noundef %267)
  call void (i8*, ...) bitcast (void (...)* @Z_fatal to void (i8*, ...)*)(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store %struct.edt* null, %struct.edt** %5, align 8
  br label %268

268:                                              ; preds = %266, %224, %95
  %269 = load %struct.edt*, %struct.edt** %5, align 8
  ret %struct.edt* %269
}

declare dso_local i32* @_Z_myalloc(...) #1

declare dso_local i32 @X_com(...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #2

declare dso_local void @Z_chatter(...) #1

declare dso_local void @Z_exceed(...) #1

declare dso_local void @Z_fatal(...) #1

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
