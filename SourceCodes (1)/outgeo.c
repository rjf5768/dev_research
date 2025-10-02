; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outgeo.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.bustbox = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s.geo\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"cell %s \0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%d vertices \00", align 1
@PtsOut = external dso_local global %struct.bustbox*, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@numpads = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"pad.macro.l\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"4 vertices \00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c" %d %d %d %d %d %d %d %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pad.macro.t\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"pad.macro.r\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"pad.macro.b\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outgeo() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.cellbox*, align 8
  %12 = alloca %struct.tilebox*, align 8
  %13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** @cktName, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %13, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %14) #4
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %17 = call noalias %struct._IO_FILE* @fopen(i8* noundef %16, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %17, %struct._IO_FILE** %1, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %21)
  call void @exit(i32 noundef 0) #5
  unreachable

23:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %127, %23
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @numcells, align 4
  %27 = icmp sle i32 %25, %26
  br i1 %27, label %28, label %130

28:                                               ; preds = %24
  %29 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %29, i64 %31
  %33 = load %struct.cellbox*, %struct.cellbox** %32, align 8
  store %struct.cellbox* %33, %struct.cellbox** %11, align 8
  %34 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %35 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %34, i32 0, i32 21
  %36 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %37 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %35, i64 0, i64 %39
  %41 = load %struct.tilebox*, %struct.tilebox** %40, align 8
  store %struct.tilebox* %41, %struct.tilebox** %12, align 8
  %42 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %46 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %50 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  call void @initPts(i32 noundef %48, i8* noundef %51, i32 noundef %54)
  %55 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %56 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %55, i32 0, i32 0
  %57 = load %struct.tilebox*, %struct.tilebox** %56, align 8
  store %struct.tilebox* %57, %struct.tilebox** %12, align 8
  br label %58

58:                                               ; preds = %78, %28
  %59 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %60 = icmp ne %struct.tilebox* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %3, align 4
  %65 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 8
  store i32 %70, i32* %4, align 4
  %71 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %6, align 4
  call void @addPts(i32 noundef %74, i32 noundef %75, i32 noundef %76, i32 noundef %77)
  br label %78

78:                                               ; preds = %61
  %79 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 0
  %81 = load %struct.tilebox*, %struct.tilebox** %80, align 8
  store %struct.tilebox* %81, %struct.tilebox** %12, align 8
  br label %58, !llvm.loop !4

82:                                               ; preds = %58
  call void @unbust()
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %84 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %86)
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %89 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %90 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %89, i64 0
  %91 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %93)
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %121, %82
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %98 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %97, i64 0
  %99 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %105, i64 %107
  %109 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %104, %110
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %113, i64 %115
  %117 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %112, %118
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %111, i32 noundef %119)
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %95, !llvm.loop !6

124:                                              ; preds = %95
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %126 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %125, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %2, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %2, align 4
  br label %24, !llvm.loop !7

130:                                              ; preds = %24
  store i32 100000000, i32* %3, align 4
  store i32 100000000, i32* %4, align 4
  store i32 -100000000, i32* %5, align 4
  store i32 -100000000, i32* %6, align 4
  %131 = load i32, i32* @numcells, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %221, %130
  %134 = load i32, i32* %2, align 4
  %135 = load i32, i32* @numcells, align 4
  %136 = load i32, i32* @numpads, align 4
  %137 = add nsw i32 %135, %136
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %139, label %224

139:                                              ; preds = %133
  %140 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %141 = load i32, i32* %2, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %140, i64 %142
  %144 = load %struct.cellbox*, %struct.cellbox** %143, align 8
  store %struct.cellbox* %144, %struct.cellbox** %11, align 8
  %145 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %146 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %221

150:                                              ; preds = %139
  %151 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %152 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %7, align 4
  %154 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  store i32 %156, i32* %8, align 4
  %157 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %158 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %157, i32 0, i32 21
  %159 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %160 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %158, i64 0, i64 %162
  %164 = load %struct.tilebox*, %struct.tilebox** %163, align 8
  store %struct.tilebox* %164, %struct.tilebox** %12, align 8
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %167 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %165, %168
  %170 = load i32, i32* %3, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %150
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %175 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %173, %176
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %172, %150
  %179 = load i32, i32* %7, align 4
  %180 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %181 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i32 0, i32 10
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = load i32, i32* %5, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %189 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %188, i32 0, i32 10
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %187, %190
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %186, %178
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %195 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %194, i32 0, i32 11
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %193, %196
  %198 = load i32, i32* %4, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %203 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %202, i32 0, i32 11
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %201, %204
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %200, %192
  %207 = load i32, i32* %8, align 4
  %208 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %209 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %207, %210
  %212 = load i32, i32* %6, align 4
  %213 = icmp sgt i32 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %206
  %215 = load i32, i32* %8, align 4
  %216 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %217 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %216, i32 0, i32 12
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %214, %206
  br label %221

221:                                              ; preds = %220, %149
  %222 = load i32, i32* %2, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %2, align 4
  br label %133, !llvm.loop !8

224:                                              ; preds = %133
  %225 = load i32, i32* %6, align 4
  %226 = icmp ne i32 %225, -100000000
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %228, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %231 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %230, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %233 = load i32, i32* %3, align 4
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %5, align 4
  %240 = load i32, i32* %4, align 4
  %241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %232, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %233, i32 noundef %234, i32 noundef %235, i32 noundef %236, i32 noundef %237, i32 noundef %238, i32 noundef %239, i32 noundef %240)
  br label %242

242:                                              ; preds = %227, %224
  store i32 100000000, i32* %3, align 4
  store i32 100000000, i32* %4, align 4
  store i32 -100000000, i32* %5, align 4
  store i32 -100000000, i32* %6, align 4
  %243 = load i32, i32* @numcells, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %2, align 4
  br label %245

245:                                              ; preds = %333, %242
  %246 = load i32, i32* %2, align 4
  %247 = load i32, i32* @numcells, align 4
  %248 = load i32, i32* @numpads, align 4
  %249 = add nsw i32 %247, %248
  %250 = icmp sle i32 %246, %249
  br i1 %250, label %251, label %336

251:                                              ; preds = %245
  %252 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %253 = load i32, i32* %2, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %252, i64 %254
  %256 = load %struct.cellbox*, %struct.cellbox** %255, align 8
  store %struct.cellbox* %256, %struct.cellbox** %11, align 8
  %257 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %258 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %257, i32 0, i32 11
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 2
  br i1 %260, label %261, label %262

261:                                              ; preds = %251
  br label %333

262:                                              ; preds = %251
  %263 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %264 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %7, align 4
  %266 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %267 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  store i32 %268, i32* %8, align 4
  %269 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %270 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %269, i32 0, i32 21
  %271 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %272 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %270, i64 0, i64 %274
  %276 = load %struct.tilebox*, %struct.tilebox** %275, align 8
  store %struct.tilebox* %276, %struct.tilebox** %12, align 8
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %279 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %278, i32 0, i32 9
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %277, %280
  %282 = load i32, i32* %3, align 4
  %283 = icmp slt i32 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %262
  %285 = load i32, i32* %7, align 4
  %286 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %287 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %285, %288
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %284, %262
  %291 = load i32, i32* %7, align 4
  %292 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %293 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 4
  %295 = add nsw i32 %291, %294
  %296 = load i32, i32* %5, align 4
  %297 = icmp sgt i32 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %290
  %299 = load i32, i32* %7, align 4
  %300 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %301 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %299, %302
  store i32 %303, i32* %5, align 4
  br label %304

304:                                              ; preds = %298, %290
  %305 = load i32, i32* %8, align 4
  %306 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %307 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %306, i32 0, i32 11
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %305, %308
  %310 = load i32, i32* %4, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %304
  %313 = load i32, i32* %8, align 4
  %314 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %315 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %314, i32 0, i32 11
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %313, %316
  store i32 %317, i32* %4, align 4
  br label %318

318:                                              ; preds = %312, %304
  %319 = load i32, i32* %8, align 4
  %320 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %321 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %320, i32 0, i32 12
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %319, %322
  %324 = load i32, i32* %6, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %332

326:                                              ; preds = %318
  %327 = load i32, i32* %8, align 4
  %328 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %329 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %328, i32 0, i32 12
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %327, %330
  store i32 %331, i32* %6, align 4
  br label %332

332:                                              ; preds = %326, %318
  br label %333

333:                                              ; preds = %332, %261
  %334 = load i32, i32* %2, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %2, align 4
  br label %245, !llvm.loop !9

336:                                              ; preds = %245
  %337 = load i32, i32* %6, align 4
  %338 = icmp ne i32 %337, -100000000
  br i1 %338, label %339, label %354

339:                                              ; preds = %336
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %340, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %342 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %342, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %344 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %345 = load i32, i32* %3, align 4
  %346 = load i32, i32* %4, align 4
  %347 = load i32, i32* %3, align 4
  %348 = load i32, i32* %6, align 4
  %349 = load i32, i32* %5, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load i32, i32* %5, align 4
  %352 = load i32, i32* %4, align 4
  %353 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %344, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %345, i32 noundef %346, i32 noundef %347, i32 noundef %348, i32 noundef %349, i32 noundef %350, i32 noundef %351, i32 noundef %352)
  br label %354

354:                                              ; preds = %339, %336
  store i32 100000000, i32* %3, align 4
  store i32 100000000, i32* %4, align 4
  store i32 -100000000, i32* %5, align 4
  store i32 -100000000, i32* %6, align 4
  %355 = load i32, i32* @numcells, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %2, align 4
  br label %357

357:                                              ; preds = %445, %354
  %358 = load i32, i32* %2, align 4
  %359 = load i32, i32* @numcells, align 4
  %360 = load i32, i32* @numpads, align 4
  %361 = add nsw i32 %359, %360
  %362 = icmp sle i32 %358, %361
  br i1 %362, label %363, label %448

363:                                              ; preds = %357
  %364 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %365 = load i32, i32* %2, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %364, i64 %366
  %368 = load %struct.cellbox*, %struct.cellbox** %367, align 8
  store %struct.cellbox* %368, %struct.cellbox** %11, align 8
  %369 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %370 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %369, i32 0, i32 11
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 3
  br i1 %372, label %373, label %374

373:                                              ; preds = %363
  br label %445

374:                                              ; preds = %363
  %375 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %376 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  store i32 %377, i32* %7, align 4
  %378 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %379 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 8
  store i32 %380, i32* %8, align 4
  %381 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %382 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %381, i32 0, i32 21
  %383 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %384 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %382, i64 0, i64 %386
  %388 = load %struct.tilebox*, %struct.tilebox** %387, align 8
  store %struct.tilebox* %388, %struct.tilebox** %12, align 8
  %389 = load i32, i32* %7, align 4
  %390 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %391 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %390, i32 0, i32 9
  %392 = load i32, i32* %391, align 8
  %393 = add nsw i32 %389, %392
  %394 = load i32, i32* %3, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %402

396:                                              ; preds = %374
  %397 = load i32, i32* %7, align 4
  %398 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %399 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %398, i32 0, i32 9
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %397, %400
  store i32 %401, i32* %3, align 4
  br label %402

402:                                              ; preds = %396, %374
  %403 = load i32, i32* %7, align 4
  %404 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %405 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %404, i32 0, i32 10
  %406 = load i32, i32* %405, align 4
  %407 = add nsw i32 %403, %406
  %408 = load i32, i32* %5, align 4
  %409 = icmp sgt i32 %407, %408
  br i1 %409, label %410, label %416

410:                                              ; preds = %402
  %411 = load i32, i32* %7, align 4
  %412 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %413 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %412, i32 0, i32 10
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %411, %414
  store i32 %415, i32* %5, align 4
  br label %416

416:                                              ; preds = %410, %402
  %417 = load i32, i32* %8, align 4
  %418 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %419 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %418, i32 0, i32 11
  %420 = load i32, i32* %419, align 8
  %421 = add nsw i32 %417, %420
  %422 = load i32, i32* %4, align 4
  %423 = icmp slt i32 %421, %422
  br i1 %423, label %424, label %430

424:                                              ; preds = %416
  %425 = load i32, i32* %8, align 4
  %426 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %427 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %426, i32 0, i32 11
  %428 = load i32, i32* %427, align 8
  %429 = add nsw i32 %425, %428
  store i32 %429, i32* %4, align 4
  br label %430

430:                                              ; preds = %424, %416
  %431 = load i32, i32* %8, align 4
  %432 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %433 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %432, i32 0, i32 12
  %434 = load i32, i32* %433, align 4
  %435 = add nsw i32 %431, %434
  %436 = load i32, i32* %6, align 4
  %437 = icmp sgt i32 %435, %436
  br i1 %437, label %438, label %444

438:                                              ; preds = %430
  %439 = load i32, i32* %8, align 4
  %440 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %441 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %440, i32 0, i32 12
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %439, %442
  store i32 %443, i32* %6, align 4
  br label %444

444:                                              ; preds = %438, %430
  br label %445

445:                                              ; preds = %444, %373
  %446 = load i32, i32* %2, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %2, align 4
  br label %357, !llvm.loop !10

448:                                              ; preds = %357
  %449 = load i32, i32* %6, align 4
  %450 = icmp ne i32 %449, -100000000
  br i1 %450, label %451, label %466

451:                                              ; preds = %448
  %452 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %453 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %452, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %454 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %455 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %454, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %456 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %457 = load i32, i32* %3, align 4
  %458 = load i32, i32* %4, align 4
  %459 = load i32, i32* %3, align 4
  %460 = load i32, i32* %6, align 4
  %461 = load i32, i32* %5, align 4
  %462 = load i32, i32* %6, align 4
  %463 = load i32, i32* %5, align 4
  %464 = load i32, i32* %4, align 4
  %465 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %456, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %457, i32 noundef %458, i32 noundef %459, i32 noundef %460, i32 noundef %461, i32 noundef %462, i32 noundef %463, i32 noundef %464)
  br label %466

466:                                              ; preds = %451, %448
  store i32 100000000, i32* %3, align 4
  store i32 100000000, i32* %4, align 4
  store i32 -100000000, i32* %5, align 4
  store i32 -100000000, i32* %6, align 4
  %467 = load i32, i32* @numcells, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %2, align 4
  br label %469

469:                                              ; preds = %557, %466
  %470 = load i32, i32* %2, align 4
  %471 = load i32, i32* @numcells, align 4
  %472 = load i32, i32* @numpads, align 4
  %473 = add nsw i32 %471, %472
  %474 = icmp sle i32 %470, %473
  br i1 %474, label %475, label %560

475:                                              ; preds = %469
  %476 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %477 = load i32, i32* %2, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %476, i64 %478
  %480 = load %struct.cellbox*, %struct.cellbox** %479, align 8
  store %struct.cellbox* %480, %struct.cellbox** %11, align 8
  %481 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %482 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %481, i32 0, i32 11
  %483 = load i32, i32* %482, align 8
  %484 = icmp ne i32 %483, 4
  br i1 %484, label %485, label %486

485:                                              ; preds = %475
  br label %557

486:                                              ; preds = %475
  %487 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %488 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  store i32 %489, i32* %7, align 4
  %490 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %491 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 8
  store i32 %492, i32* %8, align 4
  %493 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %494 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %493, i32 0, i32 21
  %495 = load %struct.cellbox*, %struct.cellbox** %11, align 8
  %496 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %495, i32 0, i32 5
  %497 = load i32, i32* %496, align 8
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %494, i64 0, i64 %498
  %500 = load %struct.tilebox*, %struct.tilebox** %499, align 8
  store %struct.tilebox* %500, %struct.tilebox** %12, align 8
  %501 = load i32, i32* %7, align 4
  %502 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %503 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 8
  %505 = add nsw i32 %501, %504
  %506 = load i32, i32* %3, align 4
  %507 = icmp slt i32 %505, %506
  br i1 %507, label %508, label %514

508:                                              ; preds = %486
  %509 = load i32, i32* %7, align 4
  %510 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %511 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %510, i32 0, i32 9
  %512 = load i32, i32* %511, align 8
  %513 = add nsw i32 %509, %512
  store i32 %513, i32* %3, align 4
  br label %514

514:                                              ; preds = %508, %486
  %515 = load i32, i32* %7, align 4
  %516 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %517 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %516, i32 0, i32 10
  %518 = load i32, i32* %517, align 4
  %519 = add nsw i32 %515, %518
  %520 = load i32, i32* %5, align 4
  %521 = icmp sgt i32 %519, %520
  br i1 %521, label %522, label %528

522:                                              ; preds = %514
  %523 = load i32, i32* %7, align 4
  %524 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %525 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %524, i32 0, i32 10
  %526 = load i32, i32* %525, align 4
  %527 = add nsw i32 %523, %526
  store i32 %527, i32* %5, align 4
  br label %528

528:                                              ; preds = %522, %514
  %529 = load i32, i32* %8, align 4
  %530 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %531 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %530, i32 0, i32 11
  %532 = load i32, i32* %531, align 8
  %533 = add nsw i32 %529, %532
  %534 = load i32, i32* %4, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %542

536:                                              ; preds = %528
  %537 = load i32, i32* %8, align 4
  %538 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %539 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %538, i32 0, i32 11
  %540 = load i32, i32* %539, align 8
  %541 = add nsw i32 %537, %540
  store i32 %541, i32* %4, align 4
  br label %542

542:                                              ; preds = %536, %528
  %543 = load i32, i32* %8, align 4
  %544 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %545 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %544, i32 0, i32 12
  %546 = load i32, i32* %545, align 4
  %547 = add nsw i32 %543, %546
  %548 = load i32, i32* %6, align 4
  %549 = icmp sgt i32 %547, %548
  br i1 %549, label %550, label %556

550:                                              ; preds = %542
  %551 = load i32, i32* %8, align 4
  %552 = load %struct.tilebox*, %struct.tilebox** %12, align 8
  %553 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %552, i32 0, i32 12
  %554 = load i32, i32* %553, align 4
  %555 = add nsw i32 %551, %554
  store i32 %555, i32* %6, align 4
  br label %556

556:                                              ; preds = %550, %542
  br label %557

557:                                              ; preds = %556, %485
  %558 = load i32, i32* %2, align 4
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %2, align 4
  br label %469, !llvm.loop !11

560:                                              ; preds = %469
  %561 = load i32, i32* %6, align 4
  %562 = icmp ne i32 %561, -100000000
  br i1 %562, label %563, label %578

563:                                              ; preds = %560
  %564 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %565 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %564, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %567 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %566, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %569 = load i32, i32* %3, align 4
  %570 = load i32, i32* %4, align 4
  %571 = load i32, i32* %3, align 4
  %572 = load i32, i32* %6, align 4
  %573 = load i32, i32* %5, align 4
  %574 = load i32, i32* %6, align 4
  %575 = load i32, i32* %5, align 4
  %576 = load i32, i32* %4, align 4
  %577 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %568, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %569, i32 noundef %570, i32 noundef %571, i32 noundef %572, i32 noundef %573, i32 noundef %574, i32 noundef %575, i32 noundef %576)
  br label %578

578:                                              ; preds = %563, %560
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %580 = call i32 @fclose(%struct._IO_FILE* noundef %579)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @initPts(i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @addPts(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @unbust() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
