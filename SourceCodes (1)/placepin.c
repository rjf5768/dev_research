; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/placepin.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/placepin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [36 x i8] c"DEATH: Sequence was specified which\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c" required more capacity than given\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"sides could hanlde. Problem cell:%d\0A\00", align 1
@randVar = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @placepin() #0 {
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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cellbox*, align 8
  %17 = alloca %struct.contentbox*, align 8
  %18 = alloca %struct.uncombox*, align 8
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %593, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @numcells, align 4
  %22 = icmp sle i32 %20, %21
  br i1 %22, label %23, label %596

23:                                               ; preds = %19
  %24 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %24, i64 %26
  %28 = load %struct.cellbox*, %struct.cellbox** %27, align 8
  store %struct.cellbox* %28, %struct.cellbox** %16, align 8
  %29 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %30 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %23
  %34 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %35 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 17
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %23
  br label %593

39:                                               ; preds = %33
  %40 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %41 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %40, i32 0, i32 20
  %42 = load %struct.uncombox*, %struct.uncombox** %41, align 8
  store %struct.uncombox* %42, %struct.uncombox** %18, align 8
  %43 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %44 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %43, i32 0, i32 19
  %45 = load %struct.contentbox*, %struct.contentbox** %44, align 8
  store %struct.contentbox* %45, %struct.contentbox** %17, align 8
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %589, %39
  %47 = load i32, i32* %1, align 4
  %48 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 18
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %47, %50
  br i1 %51, label %52, label %592

52:                                               ; preds = %46
  %53 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %53, i64 %55
  %57 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %588

60:                                               ; preds = %52
  %61 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %61, i64 %63
  %65 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %128

68:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %69 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %70 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %69, i32 0, i32 22
  %71 = load %struct.sidebox*, %struct.sidebox** %70, align 8
  %72 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %72, i64 %74
  %76 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %71, i64 %78
  %80 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %107, %68
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 22
  %86 = load %struct.sidebox*, %struct.sidebox** %85, align 8
  %87 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %88 = load i32, i32* %1, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %87, i64 %89
  %91 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %86, i64 %93
  %95 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %83, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %82
  %99 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %99, i64 %101
  %103 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %82, !llvm.loop !4

110:                                              ; preds = %82
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %113 = load i32, i32* %1, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %112, i64 %114
  %116 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %111, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %110
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %120, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %125 = load i32, i32* %3, align 4
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %124, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %125)
  call void @exit(i32 noundef 0) #3
  unreachable

127:                                              ; preds = %110
  br label %309

128:                                              ; preds = %60
  %129 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %130 = load i32, i32* %1, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %129, i64 %131
  %133 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %255

136:                                              ; preds = %128
  store i32 0, i32* %8, align 4
  %137 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %137, i32 0, i32 22
  %139 = load %struct.sidebox*, %struct.sidebox** %138, align 8
  %140 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %140, i64 %142
  %144 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %139, i64 %146
  %148 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %175, %136
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %153 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %152, i32 0, i32 22
  %154 = load %struct.sidebox*, %struct.sidebox** %153, align 8
  %155 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %155, i64 %157
  %159 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %154, i64 %161
  %163 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sle i32 %151, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %150
  %167 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %167, i64 %169
  %171 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %150, !llvm.loop !6

178:                                              ; preds = %150
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %180, i64 %182
  %184 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %179, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %189 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %188, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %191 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %190, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %193 = load i32, i32* %3, align 4
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %192, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %193)
  call void @exit(i32 noundef 0) #3
  unreachable

195:                                              ; preds = %178
  store i32 0, i32* %8, align 4
  %196 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %197 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %196, i32 0, i32 22
  %198 = load %struct.sidebox*, %struct.sidebox** %197, align 8
  %199 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %200 = load i32, i32* %1, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %199, i64 %201
  %203 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %198, i64 %205
  %207 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %13, align 4
  br label %209

209:                                              ; preds = %234, %195
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %212 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %211, i32 0, i32 22
  %213 = load %struct.sidebox*, %struct.sidebox** %212, align 8
  %214 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %215 = load i32, i32* %1, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %214, i64 %216
  %218 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %213, i64 %220
  %222 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp sle i32 %210, %223
  br i1 %224, label %225, label %237

225:                                              ; preds = %209
  %226 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %226, i64 %228
  %230 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %8, align 4
  %233 = add nsw i32 %232, %231
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %225
  %235 = load i32, i32* %13, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %13, align 4
  br label %209, !llvm.loop !7

237:                                              ; preds = %209
  %238 = load i32, i32* %8, align 4
  %239 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %240 = load i32, i32* %1, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %239, i64 %241
  %243 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %238, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %237
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %247, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %250 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %249, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %251 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %252 = load i32, i32* %3, align 4
  %253 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %251, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %252)
  call void @exit(i32 noundef 0) #3
  unreachable

254:                                              ; preds = %237
  br label %308

255:                                              ; preds = %128
  %256 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %257 = load i32, i32* %1, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %256, i64 %258
  %260 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 4
  %262 = icmp sgt i32 %261, 2
  br i1 %262, label %263, label %307

263:                                              ; preds = %255
  store i32 0, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %264

264:                                              ; preds = %286, %263
  %265 = load i32, i32* %13, align 4
  %266 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %267 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %266, i32 0, i32 22
  %268 = load %struct.sidebox*, %struct.sidebox** %267, align 8
  %269 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %270 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 8
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %268, i64 %272
  %274 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp sle i32 %265, %275
  br i1 %276, label %277, label %289

277:                                              ; preds = %264
  %278 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %278, i64 %280
  %282 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %277
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  br label %264, !llvm.loop !8

289:                                              ; preds = %264
  %290 = load i32, i32* %8, align 4
  %291 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %291, i64 %293
  %295 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %290, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %289
  %299 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %300 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %299, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %302 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %301, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %304 = load i32, i32* %3, align 4
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %303, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 noundef %304)
  call void @exit(i32 noundef 0) #3
  unreachable

306:                                              ; preds = %289
  br label %307

307:                                              ; preds = %306, %255
  br label %308

308:                                              ; preds = %307, %254
  br label %309

309:                                              ; preds = %308, %127
  %310 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %311 = load i32, i32* %1, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %310, i64 %312
  %314 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = icmp sgt i32 %315, 2
  br i1 %316, label %317, label %346

317:                                              ; preds = %309
  br label %318

318:                                              ; preds = %335, %317
  %319 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %320 = load i32, i32* %1, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %319, i64 %321
  %323 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %322, i32 0, i32 4
  %324 = load i32, i32* %323, align 4
  %325 = sitofp i32 %324 to double
  %326 = load i32, i32* @randVar, align 4
  %327 = mul nsw i32 %326, 1103515245
  %328 = add nsw i32 %327, 12345
  store i32 %328, i32* @randVar, align 4
  %329 = and i32 %328, 2147483647
  %330 = sitofp i32 %329 to double
  %331 = fdiv double %330, 0x41DFFFFFFFC00000
  %332 = fmul double %325, %331
  %333 = fptosi double %332 to i32
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %14, align 4
  br label %335

335:                                              ; preds = %318
  %336 = load i32, i32* %14, align 4
  %337 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %338 = load i32, i32* %1, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %337, i64 %339
  %341 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = add nsw i32 %342, 1
  %344 = icmp eq i32 %336, %343
  br i1 %344, label %318, label %345, !llvm.loop !9

345:                                              ; preds = %335
  br label %417

346:                                              ; preds = %309
  %347 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %348 = load i32, i32* %1, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %347, i64 %349
  %351 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %350, i32 0, i32 4
  %352 = load i32, i32* %351, align 4
  %353 = icmp eq i32 %352, 2
  br i1 %353, label %354, label %400

354:                                              ; preds = %346
  br label %355

355:                                              ; preds = %372, %354
  %356 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %357 = load i32, i32* %1, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %356, i64 %358
  %360 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  %362 = sitofp i32 %361 to double
  %363 = load i32, i32* @randVar, align 4
  %364 = mul nsw i32 %363, 1103515245
  %365 = add nsw i32 %364, 12345
  store i32 %365, i32* @randVar, align 4
  %366 = and i32 %365, 2147483647
  %367 = sitofp i32 %366 to double
  %368 = fdiv double %367, 0x41DFFFFFFFC00000
  %369 = fmul double %362, %368
  %370 = fptosi double %369 to i32
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %14, align 4
  br label %372

372:                                              ; preds = %355
  %373 = load i32, i32* %14, align 4
  %374 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %375 = load i32, i32* %1, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %374, i64 %376
  %378 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = add nsw i32 %379, 1
  %381 = icmp eq i32 %373, %380
  br i1 %381, label %355, label %382, !llvm.loop !10

382:                                              ; preds = %372
  %383 = load i32, i32* %14, align 4
  %384 = icmp eq i32 %383, 1
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %387 = load i32, i32* %1, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %386, i64 %388
  %390 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %389, i32 0, i32 5
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %14, align 4
  br label %399

392:                                              ; preds = %382
  %393 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %394 = load i32, i32* %1, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %393, i64 %395
  %397 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %396, i32 0, i32 6
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %14, align 4
  br label %399

399:                                              ; preds = %392, %385
  br label %416

400:                                              ; preds = %346
  %401 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %402 = load i32, i32* %1, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %401, i64 %403
  %405 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %404, i32 0, i32 4
  %406 = load i32, i32* %405, align 4
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %415

408:                                              ; preds = %400
  %409 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %410 = load i32, i32* %1, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %409, i64 %411
  %413 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 4
  store i32 %414, i32* %14, align 4
  br label %415

415:                                              ; preds = %408, %400
  br label %416

416:                                              ; preds = %415, %399
  br label %417

417:                                              ; preds = %416, %345
  %418 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %419 = load i32, i32* %1, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %418, i64 %420
  %422 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %421, i32 0, i32 4
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %433

425:                                              ; preds = %417
  %426 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %427 = load i32, i32* %1, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %426, i64 %428
  %430 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %429, i32 0, i32 5
  %431 = load i32, i32* %430, align 4
  store i32 %431, i32* %5, align 4
  %432 = load i32, i32* %5, align 4
  store i32 %432, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %454

433:                                              ; preds = %417
  %434 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %435 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %434, i32 0, i32 22
  %436 = load %struct.sidebox*, %struct.sidebox** %435, align 8
  %437 = load i32, i32* %14, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %436, i64 %438
  %440 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %5, align 4
  %442 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %443 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %442, i32 0, i32 22
  %444 = load %struct.sidebox*, %struct.sidebox** %443, align 8
  %445 = load i32, i32* %14, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %444, i64 %446
  %448 = getelementptr inbounds %struct.sidebox, %struct.sidebox* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  store i32 %449, i32* %6, align 4
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* %5, align 4
  %452 = sub nsw i32 %450, %451
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %7, align 4
  br label %454

454:                                              ; preds = %433, %425
  br label %455

455:                                              ; preds = %498, %454
  %456 = load i32, i32* %7, align 4
  %457 = sitofp i32 %456 to double
  %458 = load i32, i32* @randVar, align 4
  %459 = mul nsw i32 %458, 1103515245
  %460 = add nsw i32 %459, 12345
  store i32 %460, i32* @randVar, align 4
  %461 = and i32 %460, 2147483647
  %462 = sitofp i32 %461 to double
  %463 = fdiv double %462, 0x41DFFFFFFFC00000
  %464 = fmul double %457, %463
  %465 = fptosi double %464 to i32
  store i32 %465, i32* %2, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %466 = load i32, i32* %5, align 4
  %467 = load i32, i32* %2, align 4
  %468 = add nsw i32 %466, %467
  store i32 %468, i32* %4, align 4
  br label %469

469:                                              ; preds = %494, %455
  %470 = load i32, i32* %4, align 4
  %471 = load i32, i32* %6, align 4
  %472 = icmp sgt i32 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %469
  store i32 0, i32* %9, align 4
  br label %497

474:                                              ; preds = %469
  %475 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %476 = load i32, i32* %4, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %475, i64 %477
  %479 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %478, i32 0, i32 2
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %8, align 4
  %482 = add nsw i32 %481, %480
  store i32 %482, i32* %8, align 4
  %483 = load i32, i32* %8, align 4
  %484 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %485 = load i32, i32* %1, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %484, i64 %486
  %488 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %487, i32 0, i32 7
  %489 = load i32, i32* %488, align 4
  %490 = icmp sge i32 %483, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %474
  br label %497

492:                                              ; preds = %474
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %4, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %4, align 4
  br label %469

497:                                              ; preds = %491, %473
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* %9, align 4
  %500 = icmp ne i32 %499, 0
  %501 = xor i1 %500, true
  br i1 %501, label %455, label %502, !llvm.loop !11

502:                                              ; preds = %498
  store i32 0, i32* %8, align 4
  %503 = load i32, i32* %1, align 4
  store i32 %503, i32* %11, align 4
  %504 = load i32, i32* %5, align 4
  %505 = load i32, i32* %2, align 4
  %506 = add nsw i32 %504, %505
  store i32 %506, i32* %15, align 4
  br label %507

507:                                              ; preds = %550, %502
  %508 = load i32, i32* %15, align 4
  %509 = load i32, i32* %4, align 4
  %510 = icmp slt i32 %508, %509
  br i1 %510, label %511, label %553

511:                                              ; preds = %507
  %512 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %513 = load i32, i32* %15, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %512, i64 %514
  %516 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  store i32 %517, i32* %10, align 4
  %518 = load i32, i32* %10, align 4
  %519 = load i32, i32* %8, align 4
  %520 = add nsw i32 %519, %518
  store i32 %520, i32* %8, align 4
  %521 = load i32, i32* %10, align 4
  %522 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %523 = load i32, i32* %15, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %522, i64 %524
  %526 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 4
  %528 = add nsw i32 %527, %521
  store i32 %528, i32* %526, align 4
  %529 = load i32, i32* %11, align 4
  store i32 %529, i32* %12, align 4
  br label %530

530:                                              ; preds = %543, %511
  %531 = load i32, i32* %12, align 4
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* %10, align 4
  %534 = add nsw i32 %532, %533
  %535 = icmp slt i32 %531, %534
  br i1 %535, label %536, label %546

536:                                              ; preds = %530
  %537 = load i32, i32* %15, align 4
  %538 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %539 = load i32, i32* %12, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %538, i64 %540
  %542 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %541, i32 0, i32 1
  store i32 %537, i32* %542, align 4
  br label %543

543:                                              ; preds = %536
  %544 = load i32, i32* %12, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %12, align 4
  br label %530, !llvm.loop !12

546:                                              ; preds = %530
  %547 = load i32, i32* %10, align 4
  %548 = load i32, i32* %11, align 4
  %549 = add nsw i32 %548, %547
  store i32 %549, i32* %11, align 4
  br label %550

550:                                              ; preds = %546
  %551 = load i32, i32* %15, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %15, align 4
  br label %507, !llvm.loop !13

553:                                              ; preds = %507
  %554 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %555 = load i32, i32* %1, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %554, i64 %556
  %558 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %557, i32 0, i32 7
  %559 = load i32, i32* %558, align 4
  %560 = load i32, i32* %8, align 4
  %561 = sub nsw i32 %559, %560
  store i32 %561, i32* %10, align 4
  %562 = load i32, i32* %10, align 4
  %563 = load %struct.contentbox*, %struct.contentbox** %17, align 8
  %564 = load i32, i32* %4, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %563, i64 %565
  %567 = getelementptr inbounds %struct.contentbox, %struct.contentbox* %566, i32 0, i32 0
  %568 = load i32, i32* %567, align 4
  %569 = add nsw i32 %568, %562
  store i32 %569, i32* %567, align 4
  %570 = load i32, i32* %11, align 4
  store i32 %570, i32* %12, align 4
  br label %571

571:                                              ; preds = %584, %553
  %572 = load i32, i32* %12, align 4
  %573 = load i32, i32* %11, align 4
  %574 = load i32, i32* %10, align 4
  %575 = add nsw i32 %573, %574
  %576 = icmp slt i32 %572, %575
  br i1 %576, label %577, label %587

577:                                              ; preds = %571
  %578 = load i32, i32* %4, align 4
  %579 = load %struct.uncombox*, %struct.uncombox** %18, align 8
  %580 = load i32, i32* %12, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %579, i64 %581
  %583 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %582, i32 0, i32 1
  store i32 %578, i32* %583, align 4
  br label %584

584:                                              ; preds = %577
  %585 = load i32, i32* %12, align 4
  %586 = add nsw i32 %585, 1
  store i32 %586, i32* %12, align 4
  br label %571, !llvm.loop !14

587:                                              ; preds = %571
  br label %588

588:                                              ; preds = %587, %52
  br label %589

589:                                              ; preds = %588
  %590 = load i32, i32* %1, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %1, align 4
  br label %46, !llvm.loop !15

592:                                              ; preds = %46
  br label %593

593:                                              ; preds = %592, %38
  %594 = load i32, i32* %3, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %3, align 4
  br label %19, !llvm.loop !16

596:                                              ; preds = %19
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

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
