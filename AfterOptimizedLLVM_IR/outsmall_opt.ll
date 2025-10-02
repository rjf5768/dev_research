; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outsmall.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/outsmall.c"
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
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }

@bdxlength = external dso_local global i32, align 4
@bdylength = external dso_local global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.cfs\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@redoFlag = external dso_local global i32, align 4
@fpNodes = dso_local global %struct._IO_FILE* null, align 8
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"L NC;\0A94 %s %d %d;\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"L NC;\0AW %d\00", align 1
@PtsOut = external dso_local global %struct.bustbox*, align 8
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @outsmall() #0 {
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
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %34 = load i8*, i8** @cktName, align 8
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %33, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %34) #5
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %37 = call noalias %struct._IO_FILE* @fopen(i8* noundef %36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %37, %struct._IO_FILE** %1, align 8
  %38 = icmp eq %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %41)
  call void @exit(i32 noundef 0) #6
  unreachable

43:                                               ; preds = %26
  %44 = load i32, i32* @redoFlag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @fpNodes, align 8
  %48 = call i32 @fclose(%struct._IO_FILE* noundef %47)
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %50, %struct._IO_FILE** @fpNodes, align 8
  store i32 1, i32* %6, align 4
  br label %51

51:                                               ; preds = %297, %49
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @numcells, align 4
  %54 = load i32, i32* @numpads, align 4
  %55 = add nsw i32 %53, %54
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %300

57:                                               ; preds = %51
  %58 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %58, i64 %60
  %62 = load %struct.cellbox*, %struct.cellbox** %61, align 8
  store %struct.cellbox* %62, %struct.cellbox** %16, align 8
  %63 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %64 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %63, i32 0, i32 21
  %65 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %66 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %64, i64 0, i64 %68
  %70 = load %struct.tilebox*, %struct.tilebox** %69, align 8
  store %struct.tilebox* %70, %struct.tilebox** %17, align 8
  %71 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %71, i32 0, i32 17
  %73 = load %struct.termbox*, %struct.termbox** %72, align 8
  store %struct.termbox* %73, %struct.termbox** %18, align 8
  %74 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %75 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %12, align 4
  %77 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %78 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %82 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 8
  call void @initPts(i32 noundef %80, i8* noundef %83, i32 noundef %86)
  %87 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %88 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %87, i32 0, i32 0
  %89 = load %struct.tilebox*, %struct.tilebox** %88, align 8
  store %struct.tilebox* %89, %struct.tilebox** %17, align 8
  br label %90

90:                                               ; preds = %135, %57
  %91 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %92 = icmp ne %struct.tilebox* %91, null
  br i1 %92, label %93, label %139

93:                                               ; preds = %90
  %94 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %8, align 4
  %97 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %10, align 4
  %100 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %9, align 4
  %103 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %104 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  call void @addPts(i32 noundef %106, i32 noundef %107, i32 noundef %108, i32 noundef %109)
  %110 = load i32, i32* %12, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %11, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %123 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %124 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = sdiv i32 %128, 2
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %130, %131
  %133 = sdiv i32 %132, 2
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %122, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %125, i32 noundef %129, i32 noundef %133)
  br label %135

135:                                              ; preds = %93
  %136 = load %struct.tilebox*, %struct.tilebox** %17, align 8
  %137 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %136, i32 0, i32 0
  %138 = load %struct.tilebox*, %struct.tilebox** %137, align 8
  store %struct.tilebox* %138, %struct.tilebox** %17, align 8
  br label %90, !llvm.loop !4

139:                                              ; preds = %90
  call void @unbust()
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %140, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %141)
  store i32 1, i32* %14, align 4
  br label %143

143:                                              ; preds = %169, %139
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %146 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %145, i64 0
  %147 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %144, %148
  br i1 %149, label %150, label %172

150:                                              ; preds = %143
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %153, i64 %155
  %157 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %152, %158
  %160 = load i32, i32* %13, align 4
  %161 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %161, i64 %163
  %165 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %160, %166
  %168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %151, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %159, i32 noundef %167)
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %143, !llvm.loop !6

172:                                              ; preds = %143
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %176 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %175, i64 1
  %177 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %174, %178
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %182 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %181, i64 1
  %183 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %180, %184
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %173, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef %179, i32 noundef %185)
  br label %187

187:                                              ; preds = %230, %172
  %188 = load %struct.termbox*, %struct.termbox** %18, align 8
  %189 = icmp ne %struct.termbox* %188, null
  br i1 %189, label %190, label %234

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = load %struct.termbox*, %struct.termbox** %18, align 8
  %193 = getelementptr inbounds %struct.termbox, %struct.termbox* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %191, %194
  store i32 %195, i32* %3, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.termbox*, %struct.termbox** %18, align 8
  %198 = getelementptr inbounds %struct.termbox, %struct.termbox* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %196, %199
  store i32 %200, i32* %4, align 4
  %201 = load %struct.termbox*, %struct.termbox** %18, align 8
  %202 = getelementptr inbounds %struct.termbox, %struct.termbox* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 8
  store i32 %203, i32* %5, align 4
  %204 = load i8**, i8*** @pinnames, align 8
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @strcmp(i8* noundef %208, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #7
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %190
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %213 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %214 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.termnets*, %struct.termnets** %214, i64 %216
  %218 = load %struct.termnets*, %struct.termnets** %217, align 8
  %219 = getelementptr inbounds %struct.termnets, %struct.termnets* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %213, i64 %221
  %223 = load %struct.dimbox*, %struct.dimbox** %222, align 8
  %224 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %223, i32 0, i32 13
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* %3, align 4
  %227 = load i32, i32* %4, align 4
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %212, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %225, i32 noundef %226, i32 noundef %227)
  br label %229

229:                                              ; preds = %211, %190
  br label %230

230:                                              ; preds = %229
  %231 = load %struct.termbox*, %struct.termbox** %18, align 8
  %232 = getelementptr inbounds %struct.termbox, %struct.termbox* %231, i32 0, i32 0
  %233 = load %struct.termbox*, %struct.termbox** %232, align 8
  store %struct.termbox* %233, %struct.termbox** %18, align 8
  br label %187, !llvm.loop !7

234:                                              ; preds = %187
  %235 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %236 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %235, i32 0, i32 10
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %296

239:                                              ; preds = %234
  store i32 1, i32* %2, align 4
  br label %240

240:                                              ; preds = %292, %239
  %241 = load i32, i32* %2, align 4
  %242 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %243 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %242, i32 0, i32 18
  %244 = load i32, i32* %243, align 4
  %245 = icmp sle i32 %241, %244
  br i1 %245, label %246, label %295

246:                                              ; preds = %240
  %247 = load i32, i32* %12, align 4
  %248 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %249 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %248, i32 0, i32 20
  %250 = load %struct.uncombox*, %struct.uncombox** %249, align 8
  %251 = load i32, i32* %2, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %250, i64 %252
  %254 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %247, %255
  store i32 %256, i32* %3, align 4
  %257 = load i32, i32* %13, align 4
  %258 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %259 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %258, i32 0, i32 20
  %260 = load %struct.uncombox*, %struct.uncombox** %259, align 8
  %261 = load i32, i32* %2, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %260, i64 %262
  %264 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %263, i32 0, i32 10
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %257, %265
  store i32 %266, i32* %4, align 4
  %267 = load %struct.cellbox*, %struct.cellbox** %16, align 8
  %268 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %267, i32 0, i32 20
  %269 = load %struct.uncombox*, %struct.uncombox** %268, align 8
  %270 = load i32, i32* %2, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %269, i64 %271
  %273 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  store i32 %274, i32* %5, align 4
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %276 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %277 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %278 = load i32, i32* %5, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.termnets*, %struct.termnets** %277, i64 %279
  %281 = load %struct.termnets*, %struct.termnets** %280, align 8
  %282 = getelementptr inbounds %struct.termnets, %struct.termnets* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %276, i64 %284
  %286 = load %struct.dimbox*, %struct.dimbox** %285, align 8
  %287 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %286, i32 0, i32 13
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* %3, align 4
  %290 = load i32, i32* %4, align 4
  %291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %275, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %288, i32 noundef %289, i32 noundef %290)
  br label %292

292:                                              ; preds = %246
  %293 = load i32, i32* %2, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %2, align 4
  br label %240, !llvm.loop !8

295:                                              ; preds = %240
  br label %296

296:                                              ; preds = %295, %234
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %6, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %6, align 4
  br label %51, !llvm.loop !9

300:                                              ; preds = %51
  %301 = load i32, i32* @blockl, align 4
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* @blockr, align 4
  store i32 %302, i32* %10, align 4
  %303 = load i32, i32* @blockb, align 4
  store i32 %303, i32* %9, align 4
  %304 = load i32, i32* @blockt, align 4
  store i32 %304, i32* %11, align 4
  %305 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %305, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %307 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* %8, align 4
  %310 = load i32, i32* %9, align 4
  %311 = load i32, i32* %8, align 4
  %312 = load i32, i32* %11, align 4
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* %11, align 4
  %315 = load i32, i32* %10, align 4
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* %8, align 4
  %318 = load i32, i32* %9, align 4
  %319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %307, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 noundef %308, i32 noundef %309, i32 noundef %310, i32 noundef %311, i32 noundef %312, i32 noundef %313, i32 noundef %314, i32 noundef %315, i32 noundef %316, i32 noundef %317, i32 noundef %318)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @initPts(i32 noundef, i8* noundef, i32 noundef) #2

declare dso_local void @addPts(i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare dso_local void @unbust() #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

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
!9 = distinct !{!9, !5}
