; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prboard.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/prboard.c"
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

@.str = private unnamed_addr constant [7 x i8] c"%s.brd\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"\0A\0A\0A\0ABOUNDING BOX OF CELL:%6d  is \00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"LEFT:%6d  BOTTOM:%6d  RIGHT:%6d  TOP:%6d\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\0ATHESE ARE THE TILES COMPRISING THIS CELL\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"LEFT:%6d  BOTTOM:%6d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"  RIGHT:%6d  TOP:%6d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"THESE ARE THE TERMINALS FOR THIS CELL\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@pinnames = external dso_local global i8**, align 8
@.str.10 = private unnamed_addr constant [35 x i8] c"TERMINAL:%s   XPOS:%6d   YPOS:%6d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"ACTUALS           XPOS:%6d   YPOS:%6d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"   SITE:%6d\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @prboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cellbox*, align 8
  %10 = alloca %struct.tilebox*, align 8
  %11 = alloca %struct.termbox*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca [1024 x i8], align 16
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %15 = load i8*, i8** @cktName, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %14, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %15) #4
  %17 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %18 = call noalias %struct._IO_FILE* @fopen(i8* noundef %17, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %12, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %0
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %21, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef %22)
  call void @exit(i32 noundef 0) #5
  unreachable

24:                                               ; preds = %0
  store i32 1, i32* %4, align 4
  br label %25

25:                                               ; preds = %248, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @numcells, align 4
  %28 = load i32, i32* @numpads, align 4
  %29 = add nsw i32 %27, %28
  %30 = icmp sle i32 %26, %29
  br i1 %30, label %31, label %251

31:                                               ; preds = %25
  %32 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %32, i64 %34
  %36 = load %struct.cellbox*, %struct.cellbox** %35, align 8
  store %struct.cellbox* %36, %struct.cellbox** %9, align 8
  %37 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %38 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %37, i32 0, i32 21
  %39 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %40 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %38, i64 0, i64 %42
  %44 = load %struct.tilebox*, %struct.tilebox** %43, align 8
  store %struct.tilebox* %44, %struct.tilebox** %10, align 8
  %45 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %46 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %45, i32 0, i32 17
  %47 = load %struct.termbox*, %struct.termbox** %46, align 8
  store %struct.termbox* %47, %struct.termbox** %11, align 8
  %48 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %1, align 4
  %51 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %52 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %2, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %54, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 noundef %55)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %58 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %64 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %65, %66
  %68 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %70, %71
  %73 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %74 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %75, %76
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 noundef %62, i32 noundef %67, i32 noundef %72, i32 noundef %77)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %79, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %82 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %81, i32 0, i32 0
  %83 = load %struct.tilebox*, %struct.tilebox** %82, align 8
  store %struct.tilebox* %83, %struct.tilebox** %10, align 8
  br label %84

84:                                               ; preds = %112, %31
  %85 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %86 = icmp ne %struct.tilebox* %85, null
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %89 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %91, %92
  %94 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %2, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %88, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 noundef %93, i32 noundef %98)
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %101 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %102 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %101, i32 0, i32 10
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %100, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 noundef %105, i32 noundef %110)
  br label %112

112:                                              ; preds = %87
  %113 = load %struct.tilebox*, %struct.tilebox** %10, align 8
  %114 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %113, i32 0, i32 0
  %115 = load %struct.tilebox*, %struct.tilebox** %114, align 8
  store %struct.tilebox* %115, %struct.tilebox** %10, align 8
  br label %84, !llvm.loop !4

116:                                              ; preds = %84
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %117, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  br label %119

119:                                              ; preds = %142, %116
  %120 = load %struct.termbox*, %struct.termbox** %11, align 8
  %121 = icmp ne %struct.termbox* %120, null
  br i1 %121, label %122, label %146

122:                                              ; preds = %119
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %124 = load i8**, i8*** @pinnames, align 8
  %125 = load %struct.termbox*, %struct.termbox** %11, align 8
  %126 = getelementptr inbounds %struct.termbox, %struct.termbox* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.termbox*, %struct.termbox** %11, align 8
  %132 = getelementptr inbounds %struct.termbox, %struct.termbox* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %1, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.termbox*, %struct.termbox** %11, align 8
  %137 = getelementptr inbounds %struct.termbox, %struct.termbox* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %2, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %123, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* noundef %130, i32 noundef %135, i32 noundef %140)
  br label %142

142:                                              ; preds = %122
  %143 = load %struct.termbox*, %struct.termbox** %11, align 8
  %144 = getelementptr inbounds %struct.termbox, %struct.termbox* %143, i32 0, i32 0
  %145 = load %struct.termbox*, %struct.termbox** %144, align 8
  store %struct.termbox* %145, %struct.termbox** %11, align 8
  br label %119, !llvm.loop !6

146:                                              ; preds = %119
  %147 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %148 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %247

151:                                              ; preds = %146
  store i32 1, i32* %3, align 4
  br label %152

152:                                              ; preds = %243, %151
  %153 = load i32, i32* %3, align 4
  %154 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %154, i32 0, i32 18
  %156 = load i32, i32* %155, align 4
  %157 = icmp sle i32 %153, %156
  br i1 %157, label %158, label %246

158:                                              ; preds = %152
  %159 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %160 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %159, i32 0, i32 20
  %161 = load %struct.uncombox*, %struct.uncombox** %160, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %161, i64 %163
  %165 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %6, align 4
  %167 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %168 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %167, i32 0, i32 20
  %169 = load %struct.uncombox*, %struct.uncombox** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %169, i64 %171
  %173 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %5, align 4
  %175 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %176 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %175, i32 0, i32 21
  %177 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %178 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %176, i64 0, i64 %180
  %182 = load %struct.tilebox*, %struct.tilebox** %181, align 8
  %183 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %182, i32 0, i32 18
  %184 = load %struct.locbox*, %struct.locbox** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.locbox, %struct.locbox* %184, i64 %186
  %188 = getelementptr inbounds %struct.locbox, %struct.locbox* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %7, align 4
  %190 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %191 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %190, i32 0, i32 21
  %192 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %193 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %191, i64 0, i64 %195
  %197 = load %struct.tilebox*, %struct.tilebox** %196, align 8
  %198 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %197, i32 0, i32 18
  %199 = load %struct.locbox*, %struct.locbox** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.locbox, %struct.locbox* %199, i64 %201
  %203 = getelementptr inbounds %struct.locbox, %struct.locbox* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %8, align 4
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %206 = load i8**, i8*** @pinnames, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8*, i8** %206, i64 %208
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %1, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* %8, align 4
  %215 = load i32, i32* %2, align 4
  %216 = add nsw i32 %214, %215
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %205, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* noundef %210, i32 noundef %213, i32 noundef %216)
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %219 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %220 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %219, i32 0, i32 20
  %221 = load %struct.uncombox*, %struct.uncombox** %220, align 8
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %221, i64 %223
  %225 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %1, align 4
  %228 = add nsw i32 %226, %227
  %229 = load %struct.cellbox*, %struct.cellbox** %9, align 8
  %230 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %229, i32 0, i32 20
  %231 = load %struct.uncombox*, %struct.uncombox** %230, align 8
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %231, i64 %233
  %235 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %234, i32 0, i32 10
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %2, align 4
  %238 = add nsw i32 %236, %237
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %218, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 noundef %228, i32 noundef %238)
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %241 = load i32, i32* %5, align 4
  %242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %240, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 noundef %241)
  br label %243

243:                                              ; preds = %158
  %244 = load i32, i32* %3, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %3, align 4
  br label %152, !llvm.loop !7

246:                                              ; preds = %152
  br label %247

247:                                              ; preds = %246, %146
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %4, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %4, align 4
  br label %25, !llvm.loop !8

251:                                              ; preds = %25
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %253 = call i32 @fclose(%struct._IO_FILE* noundef %252)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

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
