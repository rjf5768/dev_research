; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pmul.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/cfrac/pmul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.precisionType* @pmul(%struct.precisionType* noundef %0, %struct.precisionType* noundef %1) #0 {
  %3 = alloca %struct.precisionType*, align 8
  %4 = alloca %struct.precisionType*, align 8
  %5 = alloca %struct.precisionType*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca %struct.precisionType*, align 8
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
  %41 = call i32 @pcmpz(%struct.precisionType* noundef %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %45 = call i32 @pcmpz(%struct.precisionType* noundef %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43, %36
  %48 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef 1)
  store %struct.precisionType* %48, %struct.precisionType** %13, align 8
  %49 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %50 = icmp eq %struct.precisionType* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  store %struct.precisionType* %52, %struct.precisionType** %3, align 8
  br label %248

53:                                               ; preds = %47
  %54 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %55 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %54, i32 0, i32 3
  store i8 0, i8* %55, align 2
  %56 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %56, i32 0, i32 4
  %58 = getelementptr inbounds [1 x i16], [1 x i16]* %57, i64 0, i64 0
  store i16 0, i16* %58, align 2
  br label %213

59:                                               ; preds = %43
  %60 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %60, i32 0, i32 2
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %64, i32 0, i32 2
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %59
  %70 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  store %struct.precisionType* %70, %struct.precisionType** %13, align 8
  %71 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  store %struct.precisionType* %71, %struct.precisionType** %4, align 8
  %72 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  store %struct.precisionType* %72, %struct.precisionType** %5, align 8
  br label %73

73:                                               ; preds = %69, %59
  %74 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %75 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %74, i32 0, i32 2
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %79 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %78, i32 0, i32 2
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = add nsw i32 %77, %81
  %83 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 noundef %82)
  store %struct.precisionType* %83, %struct.precisionType** %13, align 8
  %84 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %85 = icmp eq %struct.precisionType* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  store %struct.precisionType* %87, %struct.precisionType** %3, align 8
  br label %248

88:                                               ; preds = %73
  %89 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %90 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %89, i32 0, i32 3
  %91 = load i8, i8* %90, align 2
  %92 = zext i8 %91 to i32
  %93 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %94 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %93, i32 0, i32 3
  %95 = load i8, i8* %94, align 2
  %96 = zext i8 %95 to i32
  %97 = icmp ne i32 %92, %96
  %98 = zext i1 %97 to i32
  %99 = trunc i32 %98 to i8
  %100 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %101 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %100, i32 0, i32 3
  store i8 %99, i8* %101, align 2
  %102 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %103 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %102, i32 0, i32 4
  %104 = getelementptr inbounds [1 x i16], [1 x i16]* %103, i64 0, i64 0
  store i16* %104, i16** %7, align 8
  %105 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %106 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %105, i32 0, i32 4
  %107 = getelementptr inbounds [1 x i16], [1 x i16]* %106, i64 0, i64 0
  store i16* %107, i16** %6, align 8
  %108 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %109 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %108, i32 0, i32 4
  %110 = getelementptr inbounds [1 x i16], [1 x i16]* %109, i64 0, i64 0
  %111 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %112 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %111, i32 0, i32 2
  %113 = load i16, i16* %112, align 2
  %114 = zext i16 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i16, i16* %110, i64 %115
  store i16* %116, i16** %8, align 8
  br label %117

117:                                              ; preds = %120, %88
  %118 = load i16*, i16** %8, align 8
  %119 = getelementptr inbounds i16, i16* %118, i32 -1
  store i16* %119, i16** %8, align 8
  store i16 0, i16* %119, align 2
  br label %120

120:                                              ; preds = %117
  %121 = load i16*, i16** %8, align 8
  %122 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %123 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %122, i32 0, i32 4
  %124 = getelementptr inbounds [1 x i16], [1 x i16]* %123, i64 0, i64 0
  %125 = icmp ugt i16* %121, %124
  br i1 %125, label %117, label %126, !llvm.loop !4

126:                                              ; preds = %120
  %127 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %128 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %127, i32 0, i32 4
  %129 = getelementptr inbounds [1 x i16], [1 x i16]* %128, i64 0, i64 0
  store i16* %129, i16** %6, align 8
  %130 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %131 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %130, i32 0, i32 4
  %132 = getelementptr inbounds [1 x i16], [1 x i16]* %131, i64 0, i64 0
  %133 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %134 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %133, i32 0, i32 2
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %132, i64 %137
  store i16* %138, i16** %9, align 8
  br label %139

139:                                              ; preds = %190, %126
  %140 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %141 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %140, i32 0, i32 4
  %142 = getelementptr inbounds [1 x i16], [1 x i16]* %141, i64 0, i64 0
  store i16* %142, i16** %7, align 8
  %143 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %144 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %143, i32 0, i32 4
  %145 = getelementptr inbounds [1 x i16], [1 x i16]* %144, i64 0, i64 0
  %146 = load i16*, i16** %6, align 8
  %147 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %148 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %147, i32 0, i32 4
  %149 = getelementptr inbounds [1 x i16], [1 x i16]* %148, i64 0, i64 0
  %150 = ptrtoint i16* %146 to i64
  %151 = ptrtoint i16* %149 to i64
  %152 = sub i64 %150, %151
  %153 = sdiv exact i64 %152, 2
  %154 = getelementptr inbounds i16, i16* %145, i64 %153
  store i16* %154, i16** %8, align 8
  store i16 0, i16* %12, align 2
  %155 = load i16*, i16** %6, align 8
  %156 = load i16, i16* %155, align 2
  store i16 %156, i16* %11, align 2
  br label %157

157:                                              ; preds = %182, %139
  %158 = load i16, i16* %11, align 2
  %159 = zext i16 %158 to i32
  %160 = load i16*, i16** %7, align 8
  %161 = getelementptr inbounds i16, i16* %160, i32 1
  store i16* %161, i16** %7, align 8
  %162 = load i16, i16* %160, align 2
  %163 = zext i16 %162 to i32
  %164 = mul nsw i32 %159, %163
  store i32 %164, i32* %10, align 4
  %165 = load i16*, i16** %8, align 8
  %166 = load i16, i16* %165, align 2
  %167 = zext i16 %166 to i32
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, %167
  store i32 %169, i32* %10, align 4
  %170 = load i16, i16* %12, align 2
  %171 = zext i16 %170 to i32
  %172 = load i32, i32* %10, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = lshr i32 %174, 16
  %176 = trunc i32 %175 to i16
  store i16 %176, i16* %12, align 2
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %177, 65535
  %179 = trunc i32 %178 to i16
  %180 = load i16*, i16** %8, align 8
  %181 = getelementptr inbounds i16, i16* %180, i32 1
  store i16* %181, i16** %8, align 8
  store i16 %179, i16* %180, align 2
  br label %182

182:                                              ; preds = %157
  %183 = load i16*, i16** %7, align 8
  %184 = load i16*, i16** %9, align 8
  %185 = icmp ult i16* %183, %184
  br i1 %185, label %157, label %186, !llvm.loop !6

186:                                              ; preds = %182
  %187 = load i16, i16* %12, align 2
  %188 = load i16*, i16** %8, align 8
  %189 = getelementptr inbounds i16, i16* %188, i32 1
  store i16* %189, i16** %8, align 8
  store i16 %187, i16* %188, align 2
  br label %190

190:                                              ; preds = %186
  %191 = load i16*, i16** %6, align 8
  %192 = getelementptr inbounds i16, i16* %191, i32 1
  store i16* %192, i16** %6, align 8
  %193 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %194 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %193, i32 0, i32 4
  %195 = getelementptr inbounds [1 x i16], [1 x i16]* %194, i64 0, i64 0
  %196 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %197 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %196, i32 0, i32 2
  %198 = load i16, i16* %197, align 2
  %199 = zext i16 %198 to i32
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i16, i16* %195, i64 %200
  %202 = icmp ult i16* %192, %201
  br i1 %202, label %139, label %203, !llvm.loop !7

203:                                              ; preds = %190
  %204 = load i16, i16* %12, align 2
  %205 = zext i16 %204 to i32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %203
  %208 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %209 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %208, i32 0, i32 2
  %210 = load i16, i16* %209, align 2
  %211 = add i16 %210, -1
  store i16 %211, i16* %209, align 2
  br label %212

212:                                              ; preds = %207, %203
  br label %213

213:                                              ; preds = %212, %53
  %214 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %215 = icmp ne %struct.precisionType* %214, null
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %218 = bitcast %struct.precisionType* %217 to i16*
  %219 = load i16, i16* %218, align 2
  %220 = add i16 %219, -1
  store i16 %220, i16* %218, align 2
  %221 = zext i16 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %216
  %224 = load %struct.precisionType*, %struct.precisionType** %4, align 8
  %225 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %224)
  %226 = icmp ne i32 %225, 0
  br label %227

227:                                              ; preds = %223, %216, %213
  %228 = phi i1 [ false, %216 ], [ false, %213 ], [ %226, %223 ]
  %229 = zext i1 %228 to i32
  %230 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %231 = icmp ne %struct.precisionType* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %227
  %233 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %234 = bitcast %struct.precisionType* %233 to i16*
  %235 = load i16, i16* %234, align 2
  %236 = add i16 %235, -1
  store i16 %236, i16* %234, align 2
  %237 = zext i16 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %243

239:                                              ; preds = %232
  %240 = load %struct.precisionType*, %struct.precisionType** %5, align 8
  %241 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* noundef %240)
  %242 = icmp ne i32 %241, 0
  br label %243

243:                                              ; preds = %239, %232, %227
  %244 = phi i1 [ false, %232 ], [ false, %227 ], [ %242, %239 ]
  %245 = zext i1 %244 to i32
  %246 = load %struct.precisionType*, %struct.precisionType** %13, align 8
  %247 = call %struct.precisionType* @presult(%struct.precisionType* noundef %246)
  store %struct.precisionType* %247, %struct.precisionType** %3, align 8
  br label %248

248:                                              ; preds = %243, %86, %51
  %249 = load %struct.precisionType*, %struct.precisionType** %3, align 8
  ret %struct.precisionType* %249
}

declare dso_local i32 @pcmpz(%struct.precisionType* noundef) #1

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
