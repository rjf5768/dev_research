; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ggenorien.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/ggenorien.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@maxterm = external dso_local global i32, align 4
@termarray = external dso_local global %struct.termnets**, align 8
@ecount = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ggenorien() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cellbox*, align 8
  %13 = alloca %struct.termbox*, align 8
  %14 = alloca %struct.termbox*, align 8
  %15 = alloca %struct.termbox*, align 8
  %16 = alloca %struct.termbox*, align 8
  %17 = alloca %struct.termbox*, align 8
  %18 = alloca %struct.netbox*, align 8
  %19 = alloca %struct.termnets*, align 8
  store i32 1, i32* %1, align 4
  br label %20

20:                                               ; preds = %609, %0
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @numcells, align 4
  %23 = load i32, i32* @numpads, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %612

26:                                               ; preds = %20
  %27 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %27, i64 %29
  %31 = load %struct.cellbox*, %struct.cellbox** %30, align 8
  store %struct.cellbox* %31, %struct.cellbox** %12, align 8
  %32 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %26
  %37 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %26
  br label %609

42:                                               ; preds = %36
  %43 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 21
  %45 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %44, i64 0, i64 0
  %46 = load %struct.tilebox*, %struct.tilebox** %45, align 8
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %49, i32 0, i32 21
  %51 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %50, i64 0, i64 0
  %52 = load %struct.tilebox*, %struct.tilebox** %51, align 8
  %53 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %48, %54
  store i32 %55, i32* %5, align 4
  %56 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %57 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %56, i32 0, i32 21
  %58 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %57, i64 0, i64 0
  %59 = load %struct.tilebox*, %struct.tilebox** %58, align 8
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %63 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %62, i32 0, i32 21
  %64 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %63, i64 0, i64 0
  %65 = load %struct.tilebox*, %struct.tilebox** %64, align 8
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %61, %67
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %2, align 4
  br label %69

69:                                               ; preds = %117, %42
  %70 = load i32, i32* %2, align 4
  %71 = icmp sle i32 %70, 7
  br i1 %71, label %72, label %120

72:                                               ; preds = %69
  %73 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %74 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %73, i32 0, i32 21
  %75 = load i32, i32* %2, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %74, i64 0, i64 %76
  %78 = load %struct.tilebox*, %struct.tilebox** %77, align 8
  %79 = icmp eq %struct.tilebox* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %117

81:                                               ; preds = %72
  %82 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %83 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %82, i32 0, i32 21
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %83, i64 0, i64 %85
  %87 = load %struct.tilebox*, %struct.tilebox** %86, align 8
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %87, i32 0, i32 17
  %89 = load %struct.termbox*, %struct.termbox** %88, align 8
  store %struct.termbox* %89, %struct.termbox** %15, align 8
  %90 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %90, i32 0, i32 21
  %92 = load i32, i32* %2, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %91, i64 0, i64 %93
  %95 = load %struct.tilebox*, %struct.tilebox** %94, align 8
  %96 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %95, i32 0, i32 17
  store %struct.termbox* null, %struct.termbox** %96, align 8
  %97 = load %struct.termbox*, %struct.termbox** %15, align 8
  %98 = icmp ne %struct.termbox* %97, null
  br i1 %98, label %99, label %116

99:                                               ; preds = %81
  %100 = load %struct.termbox*, %struct.termbox** %15, align 8
  store %struct.termbox* %100, %struct.termbox** %16, align 8
  br label %101

101:                                              ; preds = %106, %99
  %102 = load %struct.termbox*, %struct.termbox** %15, align 8
  %103 = getelementptr inbounds %struct.termbox, %struct.termbox* %102, i32 0, i32 0
  %104 = load %struct.termbox*, %struct.termbox** %103, align 8
  %105 = icmp ne %struct.termbox* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load %struct.termbox*, %struct.termbox** %15, align 8
  %108 = getelementptr inbounds %struct.termbox, %struct.termbox* %107, i32 0, i32 0
  %109 = load %struct.termbox*, %struct.termbox** %108, align 8
  store %struct.termbox* %109, %struct.termbox** %15, align 8
  %110 = load %struct.termbox*, %struct.termbox** %16, align 8
  %111 = bitcast %struct.termbox* %110 to i8*
  call void @free(i8* noundef %111) #3
  %112 = load %struct.termbox*, %struct.termbox** %15, align 8
  store %struct.termbox* %112, %struct.termbox** %16, align 8
  br label %101, !llvm.loop !4

113:                                              ; preds = %101
  %114 = load %struct.termbox*, %struct.termbox** %15, align 8
  %115 = bitcast %struct.termbox* %114 to i8*
  call void @free(i8* noundef %115) #3
  br label %116

116:                                              ; preds = %113, %81
  br label %117

117:                                              ; preds = %116, %80
  %118 = load i32, i32* %2, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %2, align 4
  br label %69, !llvm.loop !6

120:                                              ; preds = %69
  %121 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %122 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %121, i32 0, i32 4
  %123 = getelementptr inbounds [9 x i32], [9 x i32]* %122, i64 0, i64 8
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %344

127:                                              ; preds = %120
  %128 = load i32, i32* %4, align 4
  switch i32 %128, label %136 [
    i32 1, label %129
    i32 2, label %130
    i32 3, label %131
    i32 4, label %132
    i32 5, label %133
    i32 6, label %134
    i32 7, label %135
  ]

129:                                              ; preds = %127
  store i32 1, i32* %2, align 4
  br label %136

130:                                              ; preds = %127
  store i32 2, i32* %2, align 4
  br label %136

131:                                              ; preds = %127
  store i32 3, i32* %2, align 4
  br label %136

132:                                              ; preds = %127
  store i32 4, i32* %2, align 4
  br label %136

133:                                              ; preds = %127
  store i32 5, i32* %2, align 4
  br label %136

134:                                              ; preds = %127
  store i32 7, i32* %2, align 4
  br label %136

135:                                              ; preds = %127
  store i32 6, i32* %2, align 4
  br label %136

136:                                              ; preds = %127, %135, %134, %133, %132, %131, %130, %129
  %137 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %137, i32 0, i32 21
  %139 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %138, i64 0, i64 0
  %140 = load %struct.tilebox*, %struct.tilebox** %139, align 8
  %141 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %140, i32 0, i32 17
  %142 = load %struct.termbox*, %struct.termbox** %141, align 8
  store %struct.termbox* %142, %struct.termbox** %13, align 8
  %143 = call noalias i8* @malloc(i64 noundef 32) #3
  %144 = bitcast i8* %143 to %struct.termbox*
  %145 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %145, i32 0, i32 21
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %146, i64 0, i64 %148
  %150 = load %struct.tilebox*, %struct.tilebox** %149, align 8
  %151 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %150, i32 0, i32 17
  store %struct.termbox* %144, %struct.termbox** %151, align 8
  store %struct.termbox* %144, %struct.termbox** %14, align 8
  %152 = load %struct.termbox*, %struct.termbox** %14, align 8
  %153 = getelementptr inbounds %struct.termbox, %struct.termbox* %152, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %153, align 8
  %154 = load %struct.termbox*, %struct.termbox** %13, align 8
  %155 = getelementptr inbounds %struct.termbox, %struct.termbox* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.termbox*, %struct.termbox** %14, align 8
  %158 = getelementptr inbounds %struct.termbox, %struct.termbox* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 8
  %159 = load %struct.termbox*, %struct.termbox** %13, align 8
  %160 = getelementptr inbounds %struct.termbox, %struct.termbox* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.termbox*, %struct.termbox** %14, align 8
  %163 = getelementptr inbounds %struct.termbox, %struct.termbox* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.termbox*, %struct.termbox** %13, align 8
  %165 = getelementptr inbounds %struct.termbox, %struct.termbox* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.termbox*, %struct.termbox** %14, align 8
  %168 = getelementptr inbounds %struct.termbox, %struct.termbox* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load %struct.termbox*, %struct.termbox** %13, align 8
  %170 = getelementptr inbounds %struct.termbox, %struct.termbox* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.termbox*, %struct.termbox** %14, align 8
  %173 = getelementptr inbounds %struct.termbox, %struct.termbox* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* %2, align 4
  call void @move(i32 noundef %174)
  %175 = load %struct.termbox*, %struct.termbox** %13, align 8
  %176 = getelementptr inbounds %struct.termbox, %struct.termbox* %175, i32 0, i32 1
  %177 = load %struct.termbox*, %struct.termbox** %13, align 8
  %178 = getelementptr inbounds %struct.termbox, %struct.termbox* %177, i32 0, i32 2
  call void @point(i32* noundef %176, i32* noundef %178)
  %179 = load i32, i32* %5, align 4
  %180 = srem i32 %179, 2
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %136
  %183 = load i32, i32* %2, align 4
  %184 = icmp eq i32 %183, 4
  br i1 %184, label %198, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %2, align 4
  %187 = icmp eq i32 %186, 6
  br i1 %187, label %198, label %188

188:                                              ; preds = %185, %136
  %189 = load i32, i32* %6, align 4
  %190 = srem i32 %189, 2
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %188
  %193 = load i32, i32* %2, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %2, align 4
  %197 = icmp eq i32 %196, 3
  br i1 %197, label %198, label %203

198:                                              ; preds = %195, %192, %185, %182
  %199 = load %struct.termbox*, %struct.termbox** %13, align 8
  %200 = getelementptr inbounds %struct.termbox, %struct.termbox* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %198, %195, %188
  %204 = load %struct.termbox*, %struct.termbox** %13, align 8
  %205 = getelementptr inbounds %struct.termbox, %struct.termbox* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.termbox*, %struct.termbox** %13, align 8
  %208 = getelementptr inbounds %struct.termbox, %struct.termbox* %207, i32 0, i32 3
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %5, align 4
  %210 = srem i32 %209, 2
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %203
  %213 = load i32, i32* %2, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %228, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %2, align 4
  %217 = icmp eq i32 %216, 3
  br i1 %217, label %228, label %218

218:                                              ; preds = %215, %203
  %219 = load i32, i32* %6, align 4
  %220 = srem i32 %219, 2
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %218
  %223 = load i32, i32* %2, align 4
  %224 = icmp eq i32 %223, 4
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  %226 = load i32, i32* %2, align 4
  %227 = icmp eq i32 %226, 7
  br i1 %227, label %228, label %233

228:                                              ; preds = %225, %222, %215, %212
  %229 = load %struct.termbox*, %struct.termbox** %13, align 8
  %230 = getelementptr inbounds %struct.termbox, %struct.termbox* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %228, %225, %218
  %234 = load %struct.termbox*, %struct.termbox** %13, align 8
  %235 = getelementptr inbounds %struct.termbox, %struct.termbox* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.termbox*, %struct.termbox** %13, align 8
  %238 = getelementptr inbounds %struct.termbox, %struct.termbox* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 4
  store i32 2, i32* %3, align 4
  br label %239

239:                                              ; preds = %340, %233
  %240 = load i32, i32* %3, align 4
  %241 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %242 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %241, i32 0, i32 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp sle i32 %240, %243
  br i1 %244, label %245, label %343

245:                                              ; preds = %239
  %246 = load %struct.termbox*, %struct.termbox** %13, align 8
  %247 = getelementptr inbounds %struct.termbox, %struct.termbox* %246, i32 0, i32 0
  %248 = load %struct.termbox*, %struct.termbox** %247, align 8
  store %struct.termbox* %248, %struct.termbox** %13, align 8
  %249 = call noalias i8* @malloc(i64 noundef 32) #3
  %250 = bitcast i8* %249 to %struct.termbox*
  %251 = load %struct.termbox*, %struct.termbox** %14, align 8
  %252 = getelementptr inbounds %struct.termbox, %struct.termbox* %251, i32 0, i32 0
  store %struct.termbox* %250, %struct.termbox** %252, align 8
  store %struct.termbox* %250, %struct.termbox** %14, align 8
  %253 = load %struct.termbox*, %struct.termbox** %14, align 8
  %254 = getelementptr inbounds %struct.termbox, %struct.termbox* %253, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %254, align 8
  %255 = load %struct.termbox*, %struct.termbox** %13, align 8
  %256 = getelementptr inbounds %struct.termbox, %struct.termbox* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.termbox*, %struct.termbox** %14, align 8
  %259 = getelementptr inbounds %struct.termbox, %struct.termbox* %258, i32 0, i32 1
  store i32 %257, i32* %259, align 8
  %260 = load %struct.termbox*, %struct.termbox** %13, align 8
  %261 = getelementptr inbounds %struct.termbox, %struct.termbox* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.termbox*, %struct.termbox** %14, align 8
  %264 = getelementptr inbounds %struct.termbox, %struct.termbox* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  %265 = load %struct.termbox*, %struct.termbox** %13, align 8
  %266 = getelementptr inbounds %struct.termbox, %struct.termbox* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.termbox*, %struct.termbox** %14, align 8
  %269 = getelementptr inbounds %struct.termbox, %struct.termbox* %268, i32 0, i32 3
  store i32 %267, i32* %269, align 8
  %270 = load %struct.termbox*, %struct.termbox** %13, align 8
  %271 = getelementptr inbounds %struct.termbox, %struct.termbox* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.termbox*, %struct.termbox** %14, align 8
  %274 = getelementptr inbounds %struct.termbox, %struct.termbox* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* %2, align 4
  call void @move(i32 noundef %275)
  %276 = load %struct.termbox*, %struct.termbox** %13, align 8
  %277 = getelementptr inbounds %struct.termbox, %struct.termbox* %276, i32 0, i32 1
  %278 = load %struct.termbox*, %struct.termbox** %13, align 8
  %279 = getelementptr inbounds %struct.termbox, %struct.termbox* %278, i32 0, i32 2
  call void @point(i32* noundef %277, i32* noundef %279)
  %280 = load i32, i32* %5, align 4
  %281 = srem i32 %280, 2
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %245
  %284 = load i32, i32* %2, align 4
  %285 = icmp eq i32 %284, 4
  br i1 %285, label %299, label %286

286:                                              ; preds = %283
  %287 = load i32, i32* %2, align 4
  %288 = icmp eq i32 %287, 6
  br i1 %288, label %299, label %289

289:                                              ; preds = %286, %245
  %290 = load i32, i32* %6, align 4
  %291 = srem i32 %290, 2
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %289
  %294 = load i32, i32* %2, align 4
  %295 = icmp eq i32 %294, 2
  br i1 %295, label %299, label %296

296:                                              ; preds = %293
  %297 = load i32, i32* %2, align 4
  %298 = icmp eq i32 %297, 3
  br i1 %298, label %299, label %304

299:                                              ; preds = %296, %293, %286, %283
  %300 = load %struct.termbox*, %struct.termbox** %13, align 8
  %301 = getelementptr inbounds %struct.termbox, %struct.termbox* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %299, %296, %289
  %305 = load %struct.termbox*, %struct.termbox** %13, align 8
  %306 = getelementptr inbounds %struct.termbox, %struct.termbox* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.termbox*, %struct.termbox** %13, align 8
  %309 = getelementptr inbounds %struct.termbox, %struct.termbox* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 8
  %310 = load i32, i32* %5, align 4
  %311 = srem i32 %310, 2
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %304
  %314 = load i32, i32* %2, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %329, label %316

316:                                              ; preds = %313
  %317 = load i32, i32* %2, align 4
  %318 = icmp eq i32 %317, 3
  br i1 %318, label %329, label %319

319:                                              ; preds = %316, %304
  %320 = load i32, i32* %6, align 4
  %321 = srem i32 %320, 2
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %319
  %324 = load i32, i32* %2, align 4
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %329, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %2, align 4
  %328 = icmp eq i32 %327, 7
  br i1 %328, label %329, label %334

329:                                              ; preds = %326, %323, %316, %313
  %330 = load %struct.termbox*, %struct.termbox** %13, align 8
  %331 = getelementptr inbounds %struct.termbox, %struct.termbox* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %329, %326, %319
  %335 = load %struct.termbox*, %struct.termbox** %13, align 8
  %336 = getelementptr inbounds %struct.termbox, %struct.termbox* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.termbox*, %struct.termbox** %13, align 8
  %339 = getelementptr inbounds %struct.termbox, %struct.termbox* %338, i32 0, i32 4
  store i32 %337, i32* %339, align 4
  br label %340

340:                                              ; preds = %334
  %341 = load i32, i32* %3, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %3, align 4
  br label %239, !llvm.loop !7

343:                                              ; preds = %239
  br label %344

344:                                              ; preds = %343, %120
  %345 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %346 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %345, i32 0, i32 21
  %347 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %346, i64 0, i64 0
  %348 = load %struct.tilebox*, %struct.tilebox** %347, align 8
  %349 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %348, i32 0, i32 12
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %352 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %351, i32 0, i32 21
  %353 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %352, i64 0, i64 0
  %354 = load %struct.tilebox*, %struct.tilebox** %353, align 8
  %355 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %354, i32 0, i32 11
  %356 = load i32, i32* %355, align 8
  %357 = sub nsw i32 %350, %356
  store i32 %357, i32* %5, align 4
  %358 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %359 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %358, i32 0, i32 21
  %360 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %359, i64 0, i64 0
  %361 = load %struct.tilebox*, %struct.tilebox** %360, align 8
  %362 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %361, i32 0, i32 10
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %365 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %364, i32 0, i32 21
  %366 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %365, i64 0, i64 0
  %367 = load %struct.tilebox*, %struct.tilebox** %366, align 8
  %368 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %367, i32 0, i32 9
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %363, %369
  store i32 %370, i32* %6, align 4
  store i32 1, i32* %2, align 4
  br label %371

371:                                              ; preds = %605, %344
  %372 = load i32, i32* %2, align 4
  %373 = icmp sle i32 %372, 7
  br i1 %373, label %374, label %608

374:                                              ; preds = %371
  %375 = load i32, i32* %2, align 4
  %376 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %377 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %376, i32 0, i32 4
  %378 = getelementptr inbounds [9 x i32], [9 x i32]* %377, i64 0, i64 8
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %375, %379
  br i1 %380, label %381, label %382

381:                                              ; preds = %374
  br label %605

382:                                              ; preds = %374
  %383 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %384 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %383, i32 0, i32 4
  %385 = load i32, i32* %2, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [9 x i32], [9 x i32]* %384, i64 0, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %382
  br label %605

391:                                              ; preds = %382
  %392 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %393 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %392, i32 0, i32 21
  %394 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %393, i64 0, i64 0
  %395 = load %struct.tilebox*, %struct.tilebox** %394, align 8
  %396 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %395, i32 0, i32 17
  %397 = load %struct.termbox*, %struct.termbox** %396, align 8
  store %struct.termbox* %397, %struct.termbox** %13, align 8
  %398 = call noalias i8* @malloc(i64 noundef 32) #3
  %399 = bitcast i8* %398 to %struct.termbox*
  %400 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %401 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %400, i32 0, i32 21
  %402 = load i32, i32* %2, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %401, i64 0, i64 %403
  %405 = load %struct.tilebox*, %struct.tilebox** %404, align 8
  %406 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %405, i32 0, i32 17
  store %struct.termbox* %399, %struct.termbox** %406, align 8
  store %struct.termbox* %399, %struct.termbox** %14, align 8
  %407 = load %struct.termbox*, %struct.termbox** %14, align 8
  %408 = getelementptr inbounds %struct.termbox, %struct.termbox* %407, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %408, align 8
  %409 = load %struct.termbox*, %struct.termbox** %13, align 8
  %410 = getelementptr inbounds %struct.termbox, %struct.termbox* %409, i32 0, i32 5
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.termbox*, %struct.termbox** %14, align 8
  %413 = getelementptr inbounds %struct.termbox, %struct.termbox* %412, i32 0, i32 5
  store i32 %411, i32* %413, align 8
  %414 = load %struct.termbox*, %struct.termbox** %13, align 8
  %415 = getelementptr inbounds %struct.termbox, %struct.termbox* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.termbox*, %struct.termbox** %14, align 8
  %418 = getelementptr inbounds %struct.termbox, %struct.termbox* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 8
  %419 = load %struct.termbox*, %struct.termbox** %13, align 8
  %420 = getelementptr inbounds %struct.termbox, %struct.termbox* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.termbox*, %struct.termbox** %14, align 8
  %423 = getelementptr inbounds %struct.termbox, %struct.termbox* %422, i32 0, i32 2
  store i32 %421, i32* %423, align 4
  %424 = load i32, i32* %2, align 4
  call void @move(i32 noundef %424)
  %425 = load %struct.termbox*, %struct.termbox** %14, align 8
  %426 = getelementptr inbounds %struct.termbox, %struct.termbox* %425, i32 0, i32 1
  %427 = load %struct.termbox*, %struct.termbox** %14, align 8
  %428 = getelementptr inbounds %struct.termbox, %struct.termbox* %427, i32 0, i32 2
  call void @point(i32* noundef %426, i32* noundef %428)
  %429 = load %struct.termbox*, %struct.termbox** %14, align 8
  %430 = getelementptr inbounds %struct.termbox, %struct.termbox* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.termbox*, %struct.termbox** %14, align 8
  %433 = getelementptr inbounds %struct.termbox, %struct.termbox* %432, i32 0, i32 3
  store i32 %431, i32* %433, align 8
  %434 = load %struct.termbox*, %struct.termbox** %14, align 8
  %435 = getelementptr inbounds %struct.termbox, %struct.termbox* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.termbox*, %struct.termbox** %14, align 8
  %438 = getelementptr inbounds %struct.termbox, %struct.termbox* %437, i32 0, i32 4
  store i32 %436, i32* %438, align 4
  %439 = load i32, i32* %5, align 4
  %440 = srem i32 %439, 2
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %448

442:                                              ; preds = %391
  %443 = load i32, i32* %2, align 4
  %444 = icmp eq i32 %443, 4
  br i1 %444, label %458, label %445

445:                                              ; preds = %442
  %446 = load i32, i32* %2, align 4
  %447 = icmp eq i32 %446, 6
  br i1 %447, label %458, label %448

448:                                              ; preds = %445, %391
  %449 = load i32, i32* %6, align 4
  %450 = srem i32 %449, 2
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %467

452:                                              ; preds = %448
  %453 = load i32, i32* %2, align 4
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %458, label %455

455:                                              ; preds = %452
  %456 = load i32, i32* %2, align 4
  %457 = icmp eq i32 %456, 3
  br i1 %457, label %458, label %467

458:                                              ; preds = %455, %452, %445, %442
  %459 = load %struct.termbox*, %struct.termbox** %14, align 8
  %460 = getelementptr inbounds %struct.termbox, %struct.termbox* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 8
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %460, align 8
  %463 = load %struct.termbox*, %struct.termbox** %14, align 8
  %464 = getelementptr inbounds %struct.termbox, %struct.termbox* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %464, align 8
  br label %467

467:                                              ; preds = %458, %455, %448
  %468 = load i32, i32* %5, align 4
  %469 = srem i32 %468, 2
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %477

471:                                              ; preds = %467
  %472 = load i32, i32* %2, align 4
  %473 = icmp eq i32 %472, 1
  br i1 %473, label %487, label %474

474:                                              ; preds = %471
  %475 = load i32, i32* %2, align 4
  %476 = icmp eq i32 %475, 3
  br i1 %476, label %487, label %477

477:                                              ; preds = %474, %467
  %478 = load i32, i32* %6, align 4
  %479 = srem i32 %478, 2
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %496

481:                                              ; preds = %477
  %482 = load i32, i32* %2, align 4
  %483 = icmp eq i32 %482, 4
  br i1 %483, label %487, label %484

484:                                              ; preds = %481
  %485 = load i32, i32* %2, align 4
  %486 = icmp eq i32 %485, 7
  br i1 %486, label %487, label %496

487:                                              ; preds = %484, %481, %474, %471
  %488 = load %struct.termbox*, %struct.termbox** %14, align 8
  %489 = getelementptr inbounds %struct.termbox, %struct.termbox* %488, i32 0, i32 2
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* %489, align 4
  %492 = load %struct.termbox*, %struct.termbox** %14, align 8
  %493 = getelementptr inbounds %struct.termbox, %struct.termbox* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 4
  br label %496

496:                                              ; preds = %487, %484, %477
  store i32 2, i32* %3, align 4
  br label %497

497:                                              ; preds = %601, %496
  %498 = load i32, i32* %3, align 4
  %499 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %500 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %499, i32 0, i32 8
  %501 = load i32, i32* %500, align 4
  %502 = icmp sle i32 %498, %501
  br i1 %502, label %503, label %604

503:                                              ; preds = %497
  %504 = load %struct.termbox*, %struct.termbox** %13, align 8
  %505 = getelementptr inbounds %struct.termbox, %struct.termbox* %504, i32 0, i32 0
  %506 = load %struct.termbox*, %struct.termbox** %505, align 8
  store %struct.termbox* %506, %struct.termbox** %13, align 8
  %507 = call noalias i8* @malloc(i64 noundef 32) #3
  %508 = bitcast i8* %507 to %struct.termbox*
  %509 = load %struct.termbox*, %struct.termbox** %14, align 8
  %510 = getelementptr inbounds %struct.termbox, %struct.termbox* %509, i32 0, i32 0
  store %struct.termbox* %508, %struct.termbox** %510, align 8
  store %struct.termbox* %508, %struct.termbox** %14, align 8
  %511 = load %struct.termbox*, %struct.termbox** %14, align 8
  %512 = getelementptr inbounds %struct.termbox, %struct.termbox* %511, i32 0, i32 0
  store %struct.termbox* null, %struct.termbox** %512, align 8
  %513 = load %struct.termbox*, %struct.termbox** %13, align 8
  %514 = getelementptr inbounds %struct.termbox, %struct.termbox* %513, i32 0, i32 5
  %515 = load i32, i32* %514, align 8
  %516 = load %struct.termbox*, %struct.termbox** %14, align 8
  %517 = getelementptr inbounds %struct.termbox, %struct.termbox* %516, i32 0, i32 5
  store i32 %515, i32* %517, align 8
  %518 = load %struct.termbox*, %struct.termbox** %13, align 8
  %519 = getelementptr inbounds %struct.termbox, %struct.termbox* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.termbox*, %struct.termbox** %14, align 8
  %522 = getelementptr inbounds %struct.termbox, %struct.termbox* %521, i32 0, i32 1
  store i32 %520, i32* %522, align 8
  %523 = load %struct.termbox*, %struct.termbox** %13, align 8
  %524 = getelementptr inbounds %struct.termbox, %struct.termbox* %523, i32 0, i32 2
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.termbox*, %struct.termbox** %14, align 8
  %527 = getelementptr inbounds %struct.termbox, %struct.termbox* %526, i32 0, i32 2
  store i32 %525, i32* %527, align 4
  %528 = load i32, i32* %2, align 4
  call void @move(i32 noundef %528)
  %529 = load %struct.termbox*, %struct.termbox** %14, align 8
  %530 = getelementptr inbounds %struct.termbox, %struct.termbox* %529, i32 0, i32 1
  %531 = load %struct.termbox*, %struct.termbox** %14, align 8
  %532 = getelementptr inbounds %struct.termbox, %struct.termbox* %531, i32 0, i32 2
  call void @point(i32* noundef %530, i32* noundef %532)
  %533 = load %struct.termbox*, %struct.termbox** %14, align 8
  %534 = getelementptr inbounds %struct.termbox, %struct.termbox* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.termbox*, %struct.termbox** %14, align 8
  %537 = getelementptr inbounds %struct.termbox, %struct.termbox* %536, i32 0, i32 3
  store i32 %535, i32* %537, align 8
  %538 = load %struct.termbox*, %struct.termbox** %14, align 8
  %539 = getelementptr inbounds %struct.termbox, %struct.termbox* %538, i32 0, i32 2
  %540 = load i32, i32* %539, align 4
  %541 = load %struct.termbox*, %struct.termbox** %14, align 8
  %542 = getelementptr inbounds %struct.termbox, %struct.termbox* %541, i32 0, i32 4
  store i32 %540, i32* %542, align 4
  %543 = load i32, i32* %5, align 4
  %544 = srem i32 %543, 2
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %552

546:                                              ; preds = %503
  %547 = load i32, i32* %2, align 4
  %548 = icmp eq i32 %547, 4
  br i1 %548, label %562, label %549

549:                                              ; preds = %546
  %550 = load i32, i32* %2, align 4
  %551 = icmp eq i32 %550, 6
  br i1 %551, label %562, label %552

552:                                              ; preds = %549, %503
  %553 = load i32, i32* %6, align 4
  %554 = srem i32 %553, 2
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %571

556:                                              ; preds = %552
  %557 = load i32, i32* %2, align 4
  %558 = icmp eq i32 %557, 2
  br i1 %558, label %562, label %559

559:                                              ; preds = %556
  %560 = load i32, i32* %2, align 4
  %561 = icmp eq i32 %560, 3
  br i1 %561, label %562, label %571

562:                                              ; preds = %559, %556, %549, %546
  %563 = load %struct.termbox*, %struct.termbox** %14, align 8
  %564 = getelementptr inbounds %struct.termbox, %struct.termbox* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 8
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %564, align 8
  %567 = load %struct.termbox*, %struct.termbox** %14, align 8
  %568 = getelementptr inbounds %struct.termbox, %struct.termbox* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 8
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %568, align 8
  br label %571

571:                                              ; preds = %562, %559, %552
  %572 = load i32, i32* %5, align 4
  %573 = srem i32 %572, 2
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %581

575:                                              ; preds = %571
  %576 = load i32, i32* %2, align 4
  %577 = icmp eq i32 %576, 1
  br i1 %577, label %591, label %578

578:                                              ; preds = %575
  %579 = load i32, i32* %2, align 4
  %580 = icmp eq i32 %579, 3
  br i1 %580, label %591, label %581

581:                                              ; preds = %578, %571
  %582 = load i32, i32* %6, align 4
  %583 = srem i32 %582, 2
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %600

585:                                              ; preds = %581
  %586 = load i32, i32* %2, align 4
  %587 = icmp eq i32 %586, 4
  br i1 %587, label %591, label %588

588:                                              ; preds = %585
  %589 = load i32, i32* %2, align 4
  %590 = icmp eq i32 %589, 7
  br i1 %590, label %591, label %600

591:                                              ; preds = %588, %585, %578, %575
  %592 = load %struct.termbox*, %struct.termbox** %14, align 8
  %593 = getelementptr inbounds %struct.termbox, %struct.termbox* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %593, align 4
  %596 = load %struct.termbox*, %struct.termbox** %14, align 8
  %597 = getelementptr inbounds %struct.termbox, %struct.termbox* %596, i32 0, i32 4
  %598 = load i32, i32* %597, align 4
  %599 = add nsw i32 %598, 1
  store i32 %599, i32* %597, align 4
  br label %600

600:                                              ; preds = %591, %588, %581
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %3, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %3, align 4
  br label %497, !llvm.loop !8

604:                                              ; preds = %497
  br label %605

605:                                              ; preds = %604, %390, %381
  %606 = load i32, i32* %2, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %2, align 4
  br label %371, !llvm.loop !9

608:                                              ; preds = %371
  br label %609

609:                                              ; preds = %608, %41
  %610 = load i32, i32* %1, align 4
  %611 = add nsw i32 %610, 1
  store i32 %611, i32* %1, align 4
  br label %20, !llvm.loop !10

612:                                              ; preds = %20
  call void @delHtab()
  store i32 1, i32* %7, align 4
  br label %613

613:                                              ; preds = %667, %612
  %614 = load i32, i32* %7, align 4
  %615 = load i32, i32* @numnets, align 4
  %616 = icmp sle i32 %614, %615
  br i1 %616, label %617, label %670

617:                                              ; preds = %613
  %618 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %619 = load i32, i32* %7, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %618, i64 %620
  %622 = load %struct.dimbox*, %struct.dimbox** %621, align 8
  %623 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %622, i32 0, i32 0
  %624 = load %struct.netbox*, %struct.netbox** %623, align 8
  store %struct.netbox* %624, %struct.netbox** %18, align 8
  br label %625

625:                                              ; preds = %662, %617
  %626 = load %struct.netbox*, %struct.netbox** %18, align 8
  %627 = icmp ne %struct.netbox* %626, null
  br i1 %627, label %628, label %666

628:                                              ; preds = %625
  %629 = load %struct.netbox*, %struct.netbox** %18, align 8
  %630 = getelementptr inbounds %struct.netbox, %struct.netbox* %629, i32 0, i32 5
  %631 = load i32, i32* %630, align 8
  %632 = load i32, i32* @maxterm, align 4
  %633 = icmp sgt i32 %631, %632
  br i1 %633, label %634, label %661

634:                                              ; preds = %628
  %635 = call noalias i8* @malloc(i64 noundef 16) #3
  %636 = bitcast i8* %635 to %struct.termnets*
  %637 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %638 = load %struct.netbox*, %struct.netbox** %18, align 8
  %639 = getelementptr inbounds %struct.netbox, %struct.netbox* %638, i32 0, i32 5
  %640 = load i32, i32* %639, align 8
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.termnets*, %struct.termnets** %637, i64 %641
  store %struct.termnets* %636, %struct.termnets** %642, align 8
  %643 = load i32, i32* %7, align 4
  %644 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %645 = load %struct.netbox*, %struct.netbox** %18, align 8
  %646 = getelementptr inbounds %struct.netbox, %struct.netbox* %645, i32 0, i32 5
  %647 = load i32, i32* %646, align 8
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.termnets*, %struct.termnets** %644, i64 %648
  %650 = load %struct.termnets*, %struct.termnets** %649, align 8
  %651 = getelementptr inbounds %struct.termnets, %struct.termnets* %650, i32 0, i32 0
  store i32 %643, i32* %651, align 8
  %652 = load %struct.netbox*, %struct.netbox** %18, align 8
  %653 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %654 = load %struct.netbox*, %struct.netbox** %18, align 8
  %655 = getelementptr inbounds %struct.netbox, %struct.netbox* %654, i32 0, i32 5
  %656 = load i32, i32* %655, align 8
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds %struct.termnets*, %struct.termnets** %653, i64 %657
  %659 = load %struct.termnets*, %struct.termnets** %658, align 8
  %660 = getelementptr inbounds %struct.termnets, %struct.termnets* %659, i32 0, i32 1
  store %struct.netbox* %652, %struct.netbox** %660, align 8
  br label %661

661:                                              ; preds = %634, %628
  br label %662

662:                                              ; preds = %661
  %663 = load %struct.netbox*, %struct.netbox** %18, align 8
  %664 = getelementptr inbounds %struct.netbox, %struct.netbox* %663, i32 0, i32 0
  %665 = load %struct.netbox*, %struct.netbox** %664, align 8
  store %struct.netbox* %665, %struct.netbox** %18, align 8
  br label %625, !llvm.loop !11

666:                                              ; preds = %625
  br label %667

667:                                              ; preds = %666
  %668 = load i32, i32* %7, align 4
  %669 = add nsw i32 %668, 1
  store i32 %669, i32* %7, align 4
  br label %613, !llvm.loop !12

670:                                              ; preds = %613
  store i32 1, i32* %1, align 4
  br label %671

671:                                              ; preds = %796, %670
  %672 = load i32, i32* %1, align 4
  %673 = load i32, i32* @numcells, align 4
  %674 = load i32, i32* @numpads, align 4
  %675 = add nsw i32 %673, %674
  %676 = icmp sle i32 %672, %675
  br i1 %676, label %677, label %799

677:                                              ; preds = %671
  %678 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %679 = load i32, i32* %1, align 4
  %680 = sext i32 %679 to i64
  %681 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %678, i64 %680
  %682 = load %struct.cellbox*, %struct.cellbox** %681, align 8
  store %struct.cellbox* %682, %struct.cellbox** %12, align 8
  %683 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %684 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %683, i32 0, i32 10
  %685 = load i32, i32* %684, align 4
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %736

687:                                              ; preds = %677
  %688 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %689 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %688, i32 0, i32 21
  %690 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %691 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %690, i32 0, i32 5
  %692 = load i32, i32* %691, align 8
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %689, i64 0, i64 %693
  %695 = load %struct.tilebox*, %struct.tilebox** %694, align 8
  %696 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %695, i32 0, i32 17
  %697 = load %struct.termbox*, %struct.termbox** %696, align 8
  store %struct.termbox* %697, %struct.termbox** %17, align 8
  br label %698

698:                                              ; preds = %731, %687
  %699 = load %struct.termbox*, %struct.termbox** %17, align 8
  %700 = icmp ne %struct.termbox* %699, null
  br i1 %700, label %701, label %735

701:                                              ; preds = %698
  %702 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %703 = load %struct.termbox*, %struct.termbox** %17, align 8
  %704 = getelementptr inbounds %struct.termbox, %struct.termbox* %703, i32 0, i32 5
  %705 = load i32, i32* %704, align 8
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.termnets*, %struct.termnets** %702, i64 %706
  %708 = load %struct.termnets*, %struct.termnets** %707, align 8
  store %struct.termnets* %708, %struct.termnets** %19, align 8
  %709 = load %struct.termbox*, %struct.termbox** %17, align 8
  %710 = getelementptr inbounds %struct.termbox, %struct.termbox* %709, i32 0, i32 1
  %711 = load i32, i32* %710, align 8
  %712 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %713 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %712, i32 0, i32 2
  %714 = load i32, i32* %713, align 4
  %715 = add nsw i32 %711, %714
  %716 = load %struct.termnets*, %struct.termnets** %19, align 8
  %717 = getelementptr inbounds %struct.termnets, %struct.termnets* %716, i32 0, i32 1
  %718 = load %struct.netbox*, %struct.netbox** %717, align 8
  %719 = getelementptr inbounds %struct.netbox, %struct.netbox* %718, i32 0, i32 1
  store i32 %715, i32* %719, align 8
  %720 = load %struct.termbox*, %struct.termbox** %17, align 8
  %721 = getelementptr inbounds %struct.termbox, %struct.termbox* %720, i32 0, i32 2
  %722 = load i32, i32* %721, align 4
  %723 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %724 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %723, i32 0, i32 3
  %725 = load i32, i32* %724, align 8
  %726 = add nsw i32 %722, %725
  %727 = load %struct.termnets*, %struct.termnets** %19, align 8
  %728 = getelementptr inbounds %struct.termnets, %struct.termnets* %727, i32 0, i32 1
  %729 = load %struct.netbox*, %struct.netbox** %728, align 8
  %730 = getelementptr inbounds %struct.netbox, %struct.netbox* %729, i32 0, i32 2
  store i32 %726, i32* %730, align 4
  br label %731

731:                                              ; preds = %701
  %732 = load %struct.termbox*, %struct.termbox** %17, align 8
  %733 = getelementptr inbounds %struct.termbox, %struct.termbox* %732, i32 0, i32 0
  %734 = load %struct.termbox*, %struct.termbox** %733, align 8
  store %struct.termbox* %734, %struct.termbox** %17, align 8
  br label %698, !llvm.loop !13

735:                                              ; preds = %698
  br label %795

736:                                              ; preds = %677
  store i32 1, i32* %11, align 4
  br label %737

737:                                              ; preds = %791, %736
  %738 = load i32, i32* %11, align 4
  %739 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %740 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %739, i32 0, i32 18
  %741 = load i32, i32* %740, align 4
  %742 = icmp sle i32 %738, %741
  br i1 %742, label %743, label %794

743:                                              ; preds = %737
  %744 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %745 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %744, i32 0, i32 20
  %746 = load %struct.uncombox*, %struct.uncombox** %745, align 8
  %747 = load i32, i32* %11, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %746, i64 %748
  %750 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 4
  store i32 %751, i32* %8, align 4
  %752 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %753 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %752, i32 0, i32 20
  %754 = load %struct.uncombox*, %struct.uncombox** %753, align 8
  %755 = load i32, i32* %11, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %754, i64 %756
  %758 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %757, i32 0, i32 9
  %759 = load i32, i32* %758, align 4
  store i32 %759, i32* %9, align 4
  %760 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %761 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %760, i32 0, i32 20
  %762 = load %struct.uncombox*, %struct.uncombox** %761, align 8
  %763 = load i32, i32* %11, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %762, i64 %764
  %766 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %765, i32 0, i32 10
  %767 = load i32, i32* %766, align 4
  store i32 %767, i32* %10, align 4
  %768 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %769 = load i32, i32* %8, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds %struct.termnets*, %struct.termnets** %768, i64 %770
  %772 = load %struct.termnets*, %struct.termnets** %771, align 8
  store %struct.termnets* %772, %struct.termnets** %19, align 8
  %773 = load i32, i32* %9, align 4
  %774 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %775 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %774, i32 0, i32 2
  %776 = load i32, i32* %775, align 4
  %777 = add nsw i32 %773, %776
  %778 = load %struct.termnets*, %struct.termnets** %19, align 8
  %779 = getelementptr inbounds %struct.termnets, %struct.termnets* %778, i32 0, i32 1
  %780 = load %struct.netbox*, %struct.netbox** %779, align 8
  %781 = getelementptr inbounds %struct.netbox, %struct.netbox* %780, i32 0, i32 1
  store i32 %777, i32* %781, align 8
  %782 = load i32, i32* %10, align 4
  %783 = load %struct.cellbox*, %struct.cellbox** %12, align 8
  %784 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %783, i32 0, i32 3
  %785 = load i32, i32* %784, align 8
  %786 = add nsw i32 %782, %785
  %787 = load %struct.termnets*, %struct.termnets** %19, align 8
  %788 = getelementptr inbounds %struct.termnets, %struct.termnets* %787, i32 0, i32 1
  %789 = load %struct.netbox*, %struct.netbox** %788, align 8
  %790 = getelementptr inbounds %struct.netbox, %struct.netbox* %789, i32 0, i32 2
  store i32 %786, i32* %790, align 4
  br label %791

791:                                              ; preds = %743
  %792 = load i32, i32* %11, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %11, align 4
  br label %737, !llvm.loop !14

794:                                              ; preds = %737
  br label %795

795:                                              ; preds = %794, %735
  br label %796

796:                                              ; preds = %795
  %797 = load i32, i32* %1, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %1, align 4
  br label %671, !llvm.loop !15

799:                                              ; preds = %671
  %800 = load i32, i32* @ecount, align 4
  %801 = load i32, i32* @maxterm, align 4
  %802 = add nsw i32 %801, %800
  store i32 %802, i32* @maxterm, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @move(i32 noundef) #2

declare dso_local void @point(i32* noundef, i32* noundef) #2

declare dso_local void @delHtab() #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
