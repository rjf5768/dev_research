; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/rebin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/rebin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }

@numBinsX = external dso_local global i32, align 4
@numBinsY = external dso_local global i32, align 4
@numcells = external dso_local global i32, align 4
@blockarray = external dso_local global i32***, align 8
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@binOffsetX = external dso_local global i32, align 4
@binWidthX = external dso_local global i32, align 4
@binOffsetY = external dso_local global i32, align 4
@binWidthY = external dso_local global i32, align 4
@bucket = external dso_local global i32*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @rebin(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cellbox*, align 8
  %4 = alloca %struct.tilebox*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @numBinsX, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %57

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %50, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @numBinsY, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %46, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @numcells, align 4
  %31 = add nsw i32 4, %30
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i32***, i32**** @blockarray, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32**, i32*** %34, i64 %36
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %28, !llvm.loop !4

49:                                               ; preds = %28
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %23, !llvm.loop !6

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %18, !llvm.loop !7

57:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %241, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @numcells, align 4
  %61 = load i32, i32* @numpads, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 4
  %64 = icmp sle i32 %59, %63
  br i1 %64, label %65, label %244

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @numcells, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @numcells, align 4
  %72 = load i32, i32* @numpads, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp sle i32 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %241

76:                                               ; preds = %69, %65
  %77 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %77, i64 %79
  %81 = load %struct.cellbox*, %struct.cellbox** %80, align 8
  store %struct.cellbox* %81, %struct.cellbox** %3, align 8
  %82 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %82, i32 0, i32 21
  %84 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %83, i64 0, i64 %87
  %89 = load %struct.tilebox*, %struct.tilebox** %88, align 8
  store %struct.tilebox* %89, %struct.tilebox** %4, align 8
  %90 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %98 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %10, align 4
  %104 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %105 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %108 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  store i32 %110, i32* %11, align 4
  %111 = load %struct.cellbox*, %struct.cellbox** %3, align 8
  %112 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %115 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %2, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %145

120:                                              ; preds = %76
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @numcells, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %126 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, %127
  store i32 %129, i32* %9, align 4
  %130 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %131 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %136 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %11, align 4
  %140 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %124, %120, %76
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @binOffsetX, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32, i32* @binWidthX, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  store i32 1, i32* %14, align 4
  br label %161

154:                                              ; preds = %145
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @numBinsX, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @numBinsX, align 4
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %158, %154
  br label %161

161:                                              ; preds = %160, %153
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* @binOffsetX, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i32, i32* @binWidthX, align 4
  %166 = sdiv i32 %164, %165
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = load i32, i32* @numBinsX, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i32, i32* @numBinsX, align 4
  store i32 %171, i32* %15, align 4
  br label %177

172:                                              ; preds = %161
  %173 = load i32, i32* %15, align 4
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 1, i32* %15, align 4
  br label %176

176:                                              ; preds = %175, %172
  br label %177

177:                                              ; preds = %176, %170
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %230

181:                                              ; preds = %177
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @binOffsetY, align 4
  %184 = sub nsw i32 %182, %183
  %185 = load i32, i32* @binWidthY, align 4
  %186 = sdiv i32 %184, %185
  store i32 %186, i32* %16, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %187, 1
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store i32 1, i32* %16, align 4
  br label %197

190:                                              ; preds = %181
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @numBinsY, align 4
  %193 = icmp sgt i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = load i32, i32* @numBinsY, align 4
  store i32 %195, i32* %16, align 4
  br label %196

196:                                              ; preds = %194, %190
  br label %197

197:                                              ; preds = %196, %189
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @binOffsetY, align 4
  %200 = sub nsw i32 %198, %199
  %201 = load i32, i32* @binWidthY, align 4
  %202 = sdiv i32 %200, %201
  store i32 %202, i32* %17, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @numBinsY, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i32, i32* @numBinsY, align 4
  store i32 %207, i32* %17, align 4
  br label %213

208:                                              ; preds = %197
  %209 = load i32, i32* %17, align 4
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 1, i32* %17, align 4
  br label %212

212:                                              ; preds = %211, %208
  br label %213

213:                                              ; preds = %212, %206
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %213
  %218 = load i32***, i32**** @blockarray, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32**, i32*** %218, i64 %220
  %222 = load i32**, i32*** %221, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32*, i32** %222, i64 %224
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %13, align 8
  br label %229

227:                                              ; preds = %213
  %228 = load i32*, i32** @bucket, align 8
  store i32* %228, i32** %13, align 8
  br label %229

229:                                              ; preds = %227, %217
  br label %232

230:                                              ; preds = %177
  %231 = load i32*, i32** @bucket, align 8
  store i32* %231, i32** %13, align 8
  br label %232

232:                                              ; preds = %230, %229
  %233 = load i32, i32* %8, align 4
  %234 = load i32*, i32** %13, align 8
  %235 = load i32*, i32** %13, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %234, i64 %239
  store i32 %233, i32* %240, align 4
  br label %241

241:                                              ; preds = %232, %75
  %242 = load i32, i32* %8, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %8, align 4
  br label %58, !llvm.loop !8

244:                                              ; preds = %58
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
