; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outbig.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outbig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Rangle = type { i32, i32, i32, i32 }
%struct.bustbox = type { i32, i32 }
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
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@finalShot = external dso_local global i32, align 4
@rectang = dso_local global %struct.Rangle* null, align 8
@PtsArray = dso_local global %struct.bustbox* null, align 8
@PtsOut = dso_local global %struct.bustbox* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.cfb\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"L NC;\0A94 %s %d %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"L NC;\0AW %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" %d %d;\0A\00", align 1
@pinnames = external dso_local global i8**, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"PHANTOM\00", align 1
@netarray = external dso_local global %struct.dimbox**, align 8
@termarray = external dso_local global %struct.termnets**, align 8
@blockl = external dso_local global i32, align 4
@blockr = external dso_local global i32, align 4
@blockb = external dso_local global i32, align 4
@blockt = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"L NC;\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"W %d %d %d %d %d %d %d %d %d %d %d;\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"E\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @outbig() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
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
  %15 = alloca [1024 x i8], align 16
  %16 = alloca %struct.cellbox*, align 8
  %17 = alloca %struct.tilebox*, align 8
  %18 = alloca %struct.termbox*, align 8
  %19 = load i32, i32* @bdxlength, align 4
  %20 = load i32, i32* @bdylength, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = load i32, i32* @bdxlength, align 4
  br label %26

24:                                               ; preds = %0
  %25 = load i32, i32* @bdylength, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 5.000000e+02
  %31 = fptosi double %30 to i32
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @finalShot, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = call noalias i8* @malloc(i64 noundef 416) #5
  %37 = bitcast i8* %36 to %struct.Rangle*
  store %struct.Rangle* %37, %struct.Rangle** @rectang, align 8
  %38 = call noalias i8* @malloc(i64 noundef 808) #5
  %39 = bitcast i8* %38 to %struct.bustbox*
  store %struct.bustbox* %39, %struct.bustbox** @PtsArray, align 8
  %40 = call noalias i8* @malloc(i64 noundef 808) #5
  %41 = bitcast i8* %40 to %struct.bustbox*
  store %struct.bustbox* %41, %struct.bustbox** @PtsOut, align 8
  br label %42

42:                                               ; preds = %35, %26
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %44 = load i8*, i8** @cktName, align 8
  %45 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %43, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %44) #5
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %47 = call noalias %struct._IO_FILE* @fopen(i8* noundef %46, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %47, %struct._IO_FILE** %1, align 8
  %48 = icmp eq %struct._IO_FILE* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %50, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %51)
  call void @exit(i32 noundef 0) #6
  unreachable

53:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %378, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @numcells, align 4
  %57 = load i32, i32* @numpads, align 4
  %58 = add nsw i32 %56, %57
  %59 = icmp sle i32 %55, %58
  br i1 %59, label %60, label %381

60:                                               ; preds = %54
  %61 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %61, i64 %63
  %65 = load %struct.cellbox*, %struct.cellbox** %64, align 8
  store %struct.cellbox* %65, %struct.cellbox** %16, align 8
  %66 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %67 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %66, i32 0, i32 21
  %68 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %69 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %67, i64 0, i64 %71
  %73 = load %struct.tilebox*, %struct.tilebox** %72, align 8
  store %struct.tilebox* %73, %struct.tilebox** %17, align 8
  %74 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 17
  %76 = load %struct.termbox*, %struct.termbox** %75, align 8
  store %struct.termbox* %76, %struct.termbox** %18, align 8
  %77 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %78 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %81 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %88 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  call void @initPts(i32 noundef %83, i8* noundef %86, i32 noundef %89)
  %90 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %8, align 4
  %93 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %94 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  %96 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %97 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %96, i32 0, i32 11
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %9, align 4
  %99 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %100 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @numcells, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %191

105:                                              ; preds = %60
  %106 = load i32, i32* @finalShot, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %169

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = call i32 @wireestx(i32 noundef %111, i32 noundef %114, i32 noundef %117, double noundef %120)
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %130, %131
  %133 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %134 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %133, i32 0, i32 2
  %135 = load double, double* %134, align 8
  %136 = call i32 @wireestx(i32 noundef %126, i32 noundef %129, i32 noundef %132, double noundef %135)
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %9, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  %148 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %149 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %148, i32 0, i32 3
  %150 = load double, double* %149, align 8
  %151 = call i32 @wireestx(i32 noundef %141, i32 noundef %144, i32 noundef %147, double noundef %150)
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i32 0, i32 4
  %165 = load double, double* %164, align 8
  %166 = call i32 @wireestx(i32 noundef %156, i32 noundef %159, i32 noundef %162, double noundef %165)
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %11, align 4
  br label %190

169:                                              ; preds = %105
  %170 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %171 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %176 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %10, align 4
  %180 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %181 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sub nsw i32 %183, %182
  store i32 %184, i32* %9, align 4
  %185 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %186 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %11, align 4
  br label %190

190:                                              ; preds = %169, %108
  br label %191

191:                                              ; preds = %190, %60
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %10, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %11, align 4
  call void @addPts(i32 noundef %192, i32 noundef %193, i32 noundef %194, i32 noundef %195)
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %11, align 4
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %209 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %210 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %8, align 4
  %214 = add nsw i32 %212, %213
  %215 = sdiv i32 %214, 2
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %216, %217
  %219 = sdiv i32 %218, 2
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %208, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %211, i32 noundef %215, i32 noundef %219)
  call void @unbust()
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %221, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %222)
  store i32 1, i32* %14, align 4
  br label %224

224:                                              ; preds = %250, %191
  %225 = load i32, i32* %14, align 4
  %226 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %227 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %226, i64 0
  %228 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %225, %229
  br i1 %230, label %231, label %253

231:                                              ; preds = %224
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %233 = load i32, i32* %12, align 4
  %234 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %234, i64 %236
  %238 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %233, %239
  %241 = load i32, i32* %13, align 4
  %242 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %242, i64 %244
  %246 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %241, %247
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %232, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %240, i32 noundef %248)
  br label %250

250:                                              ; preds = %231
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  br label %224, !llvm.loop !4

253:                                              ; preds = %224
  %254 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %257 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %256, i64 1
  %258 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %255, %259
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %263 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %262, i64 1
  %264 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %261, %265
  %267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %254, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef %260, i32 noundef %266)
  br label %268

268:                                              ; preds = %311, %253
  %269 = load %struct.termbox*, %struct.termbox** %18, align 8
  %270 = icmp ne %struct.termbox* %269, null
  br i1 %270, label %271, label %315

271:                                              ; preds = %268
  %272 = load i32, i32* %12, align 4
  %273 = load %struct.termbox*, %struct.termbox** %18, align 8
  %274 = getelementptr inbounds %struct.termbox, %struct.termbox* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %272, %275
  store i32 %276, i32* %3, align 4
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.termbox*, %struct.termbox** %18, align 8
  %279 = getelementptr inbounds %struct.termbox, %struct.termbox* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %277, %280
  store i32 %281, i32* %4, align 4
  %282 = load %struct.termbox*, %struct.termbox** %18, align 8
  %283 = getelementptr inbounds %struct.termbox, %struct.termbox* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %5, align 4
  %285 = load i8**, i8*** @pinnames, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8*, i8** %285, i64 %287
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 @strcmp(i8* noundef %289, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #7
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %271
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %294 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %295 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.termnets*, %struct.termnets** %295, i64 %297
  %299 = load %struct.termnets*, %struct.termnets** %298, align 8
  %300 = getelementptr inbounds %struct.termnets, %struct.termnets* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %294, i64 %302
  %304 = load %struct.dimbox*, %struct.dimbox** %303, align 8
  %305 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %304, i32 0, i32 13
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* %4, align 4
  %309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %293, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %306, i32 noundef %307, i32 noundef %308)
  br label %310

310:                                              ; preds = %292, %271
  br label %311

311:                                              ; preds = %310
  %312 = load %struct.termbox*, %struct.termbox** %18, align 8
  %313 = getelementptr inbounds %struct.termbox, %struct.termbox* %312, i32 0, i32 0
  %314 = load %struct.termbox*, %struct.termbox** %313, align 8
  store %struct.termbox* %314, %struct.termbox** %18, align 8
  br label %268, !llvm.loop !6

315:                                              ; preds = %268
  %316 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %317 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %316, i32 0, i32 10
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %377

320:                                              ; preds = %315
  store i32 1, i32* %2, align 4
  br label %321

321:                                              ; preds = %373, %320
  %322 = load i32, i32* %2, align 4
  %323 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %324 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %323, i32 0, i32 18
  %325 = load i32, i32* %324, align 4
  %326 = icmp sle i32 %322, %325
  br i1 %326, label %327, label %376

327:                                              ; preds = %321
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %330 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %329, i32 0, i32 20
  %331 = load %struct.uncombox*, %struct.uncombox** %330, align 8
  %332 = load i32, i32* %2, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %331, i64 %333
  %335 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %334, i32 0, i32 9
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %328, %336
  store i32 %337, i32* %3, align 4
  %338 = load i32, i32* %13, align 4
  %339 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %340 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %339, i32 0, i32 20
  %341 = load %struct.uncombox*, %struct.uncombox** %340, align 8
  %342 = load i32, i32* %2, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %341, i64 %343
  %345 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %344, i32 0, i32 10
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %338, %346
  store i32 %347, i32* %4, align 4
  %348 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %349 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %348, i32 0, i32 20
  %350 = load %struct.uncombox*, %struct.uncombox** %349, align 8
  %351 = load i32, i32* %2, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %350, i64 %352
  %354 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  store i32 %355, i32* %5, align 4
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %357 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %358 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.termnets*, %struct.termnets** %358, i64 %360
  %362 = load %struct.termnets*, %struct.termnets** %361, align 8
  %363 = getelementptr inbounds %struct.termnets, %struct.termnets* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %357, i64 %365
  %367 = load %struct.dimbox*, %struct.dimbox** %366, align 8
  %368 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %367, i32 0, i32 13
  %369 = load i8*, i8** %368, align 8
  %370 = load i32, i32* %3, align 4
  %371 = load i32, i32* %4, align 4
  %372 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %356, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %369, i32 noundef %370, i32 noundef %371)
  br label %373

373:                                              ; preds = %327
  %374 = load i32, i32* %2, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %2, align 4
  br label %321, !llvm.loop !7

376:                                              ; preds = %321
  br label %377

377:                                              ; preds = %376, %315
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  br label %54, !llvm.loop !8

381:                                              ; preds = %54
  %382 = load i32, i32* @blockl, align 4
  store i32 %382, i32* %8, align 4
  %383 = load i32, i32* @blockr, align 4
  store i32 %383, i32* %10, align 4
  %384 = load i32, i32* @blockb, align 4
  store i32 %384, i32* %9, align 4
  %385 = load i32, i32* @blockt, align 4
  store i32 %385, i32* %11, align 4
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %386, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %389 = load i32, i32* %7, align 4
  %390 = load i32, i32* %8, align 4
  %391 = load i32, i32* %9, align 4
  %392 = load i32, i32* %8, align 4
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* %10, align 4
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %10, align 4
  %397 = load i32, i32* %9, align 4
  %398 = load i32, i32* %8, align 4
  %399 = load i32, i32* %9, align 4
  %400 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %388, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 noundef %389, i32 noundef %390, i32 noundef %391, i32 noundef %392, i32 noundef %393, i32 noundef %394, i32 noundef %395, i32 noundef %396, i32 noundef %397, i32 noundef %398, i32 noundef %399)
  %401 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %402 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %401, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %404 = call i32 @fclose(%struct._IO_FILE* noundef %403)
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @initPts(i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

declare dso_local void @addPts(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @unbust() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly willreturn }

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
