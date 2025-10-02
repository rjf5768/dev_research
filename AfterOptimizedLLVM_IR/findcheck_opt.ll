; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findcheck.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/findcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cellbox = type { i8*, i32, i32, i32, [9 x i32], i32, i32, i32, i32, i32, i32, i32, double, double, double, double, double, i32, i32, %struct.contentbox*, %struct.uncombox*, [8 x %struct.tilebox*], %struct.sidebox* }
%struct.contentbox = type { i32, i32, i32, i32, i32 }
%struct.uncombox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tilebox = type { %struct.tilebox*, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.termbox*, %struct.locbox* }
%struct.termbox = type { %struct.termbox*, i32, i32, i32, i32, i32 }
%struct.locbox = type { i32, i32, i32, i32 }
%struct.sidebox = type { i32, i32 }
%struct.termnets = type { i32, %struct.netbox* }
%struct.netbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dimbox = type { %struct.netbox*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [7 x i8] c"%s.wat\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fcost = external dso_local global i32, align 4
@fwire = external dso_local global i32, align 4
@fwirex = external dso_local global i32, align 4
@fwirey = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Cell wire estimation weighting factors per side:\0A\00", align 1
@numcells = external dso_local global i32, align 4
@numpads = external dso_local global i32, align 4
@cellarray = external dso_local global %struct.cellbox**, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"  Cell: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"        Border for left:%d  Pin_Factor:%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"        Border for rite:%d  Pin_Factor:%g\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"        Border for  bot:%d  Pin_Factor:%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"        Border for  top:%d  Pin_Factor:%g\0A\00", align 1
@termarray = external dso_local global %struct.termnets**, align 8
@numnets = external dso_local global i32, align 4
@netarray = external dso_local global %struct.dimbox**, align 8
@overlapf = external dso_local global i32 (...)*, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [43 x i8] c"\0AFinal Overlap Penalty Function Value: %d\0A\00", align 1
@icost = external dso_local global i32, align 4
@iwire = external dso_local global i32, align 4
@iwirex = external dso_local global i32, align 4
@iwirey = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @finalcheck() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca %struct.dimbox*, align 8
  %3 = alloca %struct.netbox*, align 8
  %4 = alloca %struct.tilebox*, align 8
  %5 = alloca %struct.cellbox*, align 8
  %6 = alloca %struct.termbox*, align 8
  %7 = alloca %struct.termnets*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %26 = load i8*, i8** @cktName, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %25, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %26) #3
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %29 = call noalias %struct._IO_FILE* @fopen(i8* noundef %28, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %29, %struct._IO_FILE** %1, align 8
  store i32 0, i32* @fcost, align 4
  store i32 0, i32* @fwire, align 4
  store i32 0, i32* @fwirex, align 4
  store i32 0, i32* @fwirey, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %30, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %290, %0
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @numcells, align 4
  %35 = load i32, i32* @numpads, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sle i32 %33, %36
  br i1 %37, label %38, label %293

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @numcells, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %150

42:                                               ; preds = %38
  %43 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %43, i64 %45
  %47 = load %struct.cellbox*, %struct.cellbox** %46, align 8
  %48 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %20, align 4
  %50 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %50, i64 %52
  %54 = load %struct.cellbox*, %struct.cellbox** %53, align 8
  %55 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %21, align 4
  %57 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %57, i64 %59
  %61 = load %struct.cellbox*, %struct.cellbox** %60, align 8
  %62 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %61, i32 0, i32 21
  %63 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %63, i64 %65
  %67 = load %struct.cellbox*, %struct.cellbox** %66, align 8
  %68 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %62, i64 0, i64 %70
  %72 = load %struct.tilebox*, %struct.tilebox** %71, align 8
  store %struct.tilebox* %72, %struct.tilebox** %4, align 8
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %80 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %21, align 4
  %89 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %90 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %89, i32 0, i32 12
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %19, align 4
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %94 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %94, i64 %96
  %98 = load %struct.cellbox*, %struct.cellbox** %97, align 8
  %99 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %93, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef %100)
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %106, i32 0, i32 1
  %108 = load double, double* %107, align 8
  %109 = call i32 @wireestx(i32 noundef %103, i32 noundef %104, i32 noundef %105, double noundef %108)
  %110 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %111 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %110, i32 0, i32 1
  %112 = load double, double* %111, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %102, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 noundef %109, double noundef %112)
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %119 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %118, i32 0, i32 2
  %120 = load double, double* %119, align 8
  %121 = call i32 @wireestx(i32 noundef %115, i32 noundef %116, i32 noundef %117, double noundef %120)
  %122 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %123 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %122, i32 0, i32 2
  %124 = load double, double* %123, align 8
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %114, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef %121, double noundef %124)
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %127 = load i32, i32* %18, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %17, align 4
  %130 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %131 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %130, i32 0, i32 3
  %132 = load double, double* %131, align 8
  %133 = call i32 @wireestx(i32 noundef %127, i32 noundef %128, i32 noundef %129, double noundef %132)
  %134 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %135 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %134, i32 0, i32 3
  %136 = load double, double* %135, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %126, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 noundef %133, double noundef %136)
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %143 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %142, i32 0, i32 4
  %144 = load double, double* %143, align 8
  %145 = call i32 @wireestx(i32 noundef %139, i32 noundef %140, i32 noundef %141, double noundef %144)
  %146 = load %struct.tilebox*, %struct.tilebox** %4, align 8
  %147 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %146, i32 0, i32 4
  %148 = load double, double* %147, align 8
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %138, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 noundef %145, double noundef %148)
  br label %150

150:                                              ; preds = %42, %38
  %151 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %151, i64 %153
  %155 = load %struct.cellbox*, %struct.cellbox** %154, align 8
  store %struct.cellbox* %155, %struct.cellbox** %5, align 8
  %156 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %157 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %156, i32 0, i32 21
  %158 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %157, i64 0, i64 %161
  %163 = load %struct.tilebox*, %struct.tilebox** %162, align 8
  %164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i32 0, i32 17
  %165 = load %struct.termbox*, %struct.termbox** %164, align 8
  store %struct.termbox* %165, %struct.termbox** %6, align 8
  br label %166

166:                                              ; preds = %199, %150
  %167 = load %struct.termbox*, %struct.termbox** %6, align 8
  %168 = icmp ne %struct.termbox* %167, null
  br i1 %168, label %169, label %203

169:                                              ; preds = %166
  %170 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %171 = load %struct.termbox*, %struct.termbox** %6, align 8
  %172 = getelementptr inbounds %struct.termbox, %struct.termbox* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.termnets*, %struct.termnets** %170, i64 %174
  %176 = load %struct.termnets*, %struct.termnets** %175, align 8
  store %struct.termnets* %176, %struct.termnets** %7, align 8
  %177 = load %struct.termbox*, %struct.termbox** %6, align 8
  %178 = getelementptr inbounds %struct.termbox, %struct.termbox* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %181 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %179, %182
  %184 = load %struct.termnets*, %struct.termnets** %7, align 8
  %185 = getelementptr inbounds %struct.termnets, %struct.termnets* %184, i32 0, i32 1
  %186 = load %struct.netbox*, %struct.netbox** %185, align 8
  %187 = getelementptr inbounds %struct.netbox, %struct.netbox* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 8
  %188 = load %struct.termbox*, %struct.termbox** %6, align 8
  %189 = getelementptr inbounds %struct.termbox, %struct.termbox* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %192 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %190, %193
  %195 = load %struct.termnets*, %struct.termnets** %7, align 8
  %196 = getelementptr inbounds %struct.termnets, %struct.termnets* %195, i32 0, i32 1
  %197 = load %struct.netbox*, %struct.netbox** %196, align 8
  %198 = getelementptr inbounds %struct.netbox, %struct.netbox* %197, i32 0, i32 2
  store i32 %194, i32* %198, align 4
  br label %199

199:                                              ; preds = %169
  %200 = load %struct.termbox*, %struct.termbox** %6, align 8
  %201 = getelementptr inbounds %struct.termbox, %struct.termbox* %200, i32 0, i32 0
  %202 = load %struct.termbox*, %struct.termbox** %201, align 8
  store %struct.termbox* %202, %struct.termbox** %6, align 8
  br label %166, !llvm.loop !4

203:                                              ; preds = %166
  %204 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %205 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %204, i32 0, i32 10
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %289

208:                                              ; preds = %203
  store i32 1, i32* %12, align 4
  br label %209

209:                                              ; preds = %285, %208
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %212 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %211, i32 0, i32 18
  %213 = load i32, i32* %212, align 4
  %214 = icmp sle i32 %210, %213
  br i1 %214, label %215, label %288

215:                                              ; preds = %209
  %216 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %217 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i32 0, i32 20
  %218 = load %struct.uncombox*, %struct.uncombox** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %218, i64 %220
  %222 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %15, align 4
  %224 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %224, i32 0, i32 20
  %226 = load %struct.uncombox*, %struct.uncombox** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %226, i64 %228
  %230 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %11, align 4
  %232 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %233 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %232, i32 0, i32 21
  %234 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %235 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %233, i64 0, i64 %237
  %239 = load %struct.tilebox*, %struct.tilebox** %238, align 8
  %240 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %239, i32 0, i32 18
  %241 = load %struct.locbox*, %struct.locbox** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.locbox, %struct.locbox* %241, i64 %243
  %245 = getelementptr inbounds %struct.locbox, %struct.locbox* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %22, align 4
  %247 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %248 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %247, i32 0, i32 21
  %249 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %250 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [8 x %struct.tilebox*], [8 x %struct.tilebox*]* %248, i64 0, i64 %252
  %254 = load %struct.tilebox*, %struct.tilebox** %253, align 8
  %255 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %254, i32 0, i32 18
  %256 = load %struct.locbox*, %struct.locbox** %255, align 8
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.locbox, %struct.locbox* %256, i64 %258
  %260 = getelementptr inbounds %struct.locbox, %struct.locbox* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  store i32 %261, i32* %23, align 4
  %262 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.termnets*, %struct.termnets** %262, i64 %264
  %266 = load %struct.termnets*, %struct.termnets** %265, align 8
  store %struct.termnets* %266, %struct.termnets** %7, align 8
  %267 = load i32, i32* %22, align 4
  %268 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %269 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %267, %270
  %272 = load %struct.termnets*, %struct.termnets** %7, align 8
  %273 = getelementptr inbounds %struct.termnets, %struct.termnets* %272, i32 0, i32 1
  %274 = load %struct.netbox*, %struct.netbox** %273, align 8
  %275 = getelementptr inbounds %struct.netbox, %struct.netbox* %274, i32 0, i32 1
  store i32 %271, i32* %275, align 8
  %276 = load i32, i32* %23, align 4
  %277 = load %struct.cellbox*, %struct.cellbox** %5, align 8
  %278 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %276, %279
  %281 = load %struct.termnets*, %struct.termnets** %7, align 8
  %282 = getelementptr inbounds %struct.termnets, %struct.termnets* %281, i32 0, i32 1
  %283 = load %struct.netbox*, %struct.netbox** %282, align 8
  %284 = getelementptr inbounds %struct.netbox, %struct.netbox* %283, i32 0, i32 2
  store i32 %280, i32* %284, align 4
  br label %285

285:                                              ; preds = %215
  %286 = load i32, i32* %12, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %12, align 4
  br label %209, !llvm.loop !6

288:                                              ; preds = %209
  br label %289

289:                                              ; preds = %288, %203
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %9, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %9, align 4
  br label %32, !llvm.loop !7

293:                                              ; preds = %32
  store i32 1, i32* %10, align 4
  br label %294

294:                                              ; preds = %473, %293
  %295 = load i32, i32* %10, align 4
  %296 = load i32, i32* @numnets, align 4
  %297 = icmp sle i32 %295, %296
  br i1 %297, label %298, label %476

298:                                              ; preds = %294
  %299 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %300 = load i32, i32* %10, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %299, i64 %301
  %303 = load %struct.dimbox*, %struct.dimbox** %302, align 8
  store %struct.dimbox* %303, %struct.dimbox** %2, align 8
  %304 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %305 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %309

308:                                              ; preds = %298
  br label %473

309:                                              ; preds = %298
  %310 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %311 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %310, i32 0, i32 0
  %312 = load %struct.netbox*, %struct.netbox** %311, align 8
  store %struct.netbox* %312, %struct.netbox** %3, align 8
  br label %313

313:                                              ; preds = %341, %309
  %314 = load %struct.netbox*, %struct.netbox** %3, align 8
  %315 = icmp eq %struct.netbox* %314, null
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  br label %345

317:                                              ; preds = %313
  %318 = load %struct.netbox*, %struct.netbox** %3, align 8
  %319 = getelementptr inbounds %struct.netbox, %struct.netbox* %318, i32 0, i32 9
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %320, 1
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  br label %341

323:                                              ; preds = %317
  %324 = load %struct.netbox*, %struct.netbox** %3, align 8
  %325 = getelementptr inbounds %struct.netbox, %struct.netbox* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %328 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %327, i32 0, i32 4
  store i32 %326, i32* %328, align 4
  %329 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %330 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %329, i32 0, i32 2
  store i32 %326, i32* %330, align 4
  %331 = load %struct.netbox*, %struct.netbox** %3, align 8
  %332 = getelementptr inbounds %struct.netbox, %struct.netbox* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %335 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %334, i32 0, i32 9
  store i32 %333, i32* %335, align 8
  %336 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %337 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %336, i32 0, i32 6
  store i32 %333, i32* %337, align 4
  %338 = load %struct.netbox*, %struct.netbox** %3, align 8
  %339 = getelementptr inbounds %struct.netbox, %struct.netbox* %338, i32 0, i32 0
  %340 = load %struct.netbox*, %struct.netbox** %339, align 8
  store %struct.netbox* %340, %struct.netbox** %3, align 8
  br label %345

341:                                              ; preds = %322
  %342 = load %struct.netbox*, %struct.netbox** %3, align 8
  %343 = getelementptr inbounds %struct.netbox, %struct.netbox* %342, i32 0, i32 0
  %344 = load %struct.netbox*, %struct.netbox** %343, align 8
  store %struct.netbox* %344, %struct.netbox** %3, align 8
  br label %313

345:                                              ; preds = %323, %316
  br label %346

346:                                              ; preds = %404, %345
  %347 = load %struct.netbox*, %struct.netbox** %3, align 8
  %348 = icmp ne %struct.netbox* %347, null
  br i1 %348, label %349, label %408

349:                                              ; preds = %346
  %350 = load %struct.netbox*, %struct.netbox** %3, align 8
  %351 = getelementptr inbounds %struct.netbox, %struct.netbox* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %355

354:                                              ; preds = %349
  br label %404

355:                                              ; preds = %349
  %356 = load %struct.netbox*, %struct.netbox** %3, align 8
  %357 = getelementptr inbounds %struct.netbox, %struct.netbox* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  store i32 %358, i32* %13, align 4
  %359 = load %struct.netbox*, %struct.netbox** %3, align 8
  %360 = getelementptr inbounds %struct.netbox, %struct.netbox* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %14, align 4
  %362 = load i32, i32* %13, align 4
  %363 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %364 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %362, %365
  br i1 %366, label %367, label %371

367:                                              ; preds = %355
  %368 = load i32, i32* %13, align 4
  %369 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %370 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %369, i32 0, i32 2
  store i32 %368, i32* %370, align 4
  br label %382

371:                                              ; preds = %355
  %372 = load i32, i32* %13, align 4
  %373 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %374 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 4
  %376 = icmp sgt i32 %372, %375
  br i1 %376, label %377, label %381

377:                                              ; preds = %371
  %378 = load i32, i32* %13, align 4
  %379 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %380 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %379, i32 0, i32 4
  store i32 %378, i32* %380, align 4
  br label %381

381:                                              ; preds = %377, %371
  br label %382

382:                                              ; preds = %381, %367
  %383 = load i32, i32* %14, align 4
  %384 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %385 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %382
  %389 = load i32, i32* %14, align 4
  %390 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %391 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %390, i32 0, i32 6
  store i32 %389, i32* %391, align 4
  br label %403

392:                                              ; preds = %382
  %393 = load i32, i32* %14, align 4
  %394 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %395 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %394, i32 0, i32 9
  %396 = load i32, i32* %395, align 8
  %397 = icmp sgt i32 %393, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %392
  %399 = load i32, i32* %14, align 4
  %400 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %401 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %400, i32 0, i32 9
  store i32 %399, i32* %401, align 8
  br label %402

402:                                              ; preds = %398, %392
  br label %403

403:                                              ; preds = %402, %388
  br label %404

404:                                              ; preds = %403, %354
  %405 = load %struct.netbox*, %struct.netbox** %3, align 8
  %406 = getelementptr inbounds %struct.netbox, %struct.netbox* %405, i32 0, i32 0
  %407 = load %struct.netbox*, %struct.netbox** %406, align 8
  store %struct.netbox* %407, %struct.netbox** %3, align 8
  br label %346, !llvm.loop !8

408:                                              ; preds = %346
  %409 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %410 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %413 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 4
  %415 = sub nsw i32 %411, %414
  %416 = load i32, i32* @fwirex, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* @fwirex, align 4
  %418 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %419 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %418, i32 0, i32 9
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %422 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 4
  %424 = sub nsw i32 %420, %423
  %425 = load i32, i32* @fwirey, align 4
  %426 = add nsw i32 %425, %424
  store i32 %426, i32* @fwirey, align 4
  %427 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %428 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %427, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %431 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = sub nsw i32 %429, %432
  %434 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %435 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %434, i32 0, i32 9
  %436 = load i32, i32* %435, align 8
  %437 = add nsw i32 %433, %436
  %438 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %439 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %438, i32 0, i32 6
  %440 = load i32, i32* %439, align 4
  %441 = sub nsw i32 %437, %440
  %442 = load i32, i32* @fwire, align 4
  %443 = add nsw i32 %442, %441
  store i32 %443, i32* @fwire, align 4
  %444 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %445 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %444, i32 0, i32 11
  %446 = load double, double* %445, align 8
  %447 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %448 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 4
  %450 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %451 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 4
  %453 = sub nsw i32 %449, %452
  %454 = sitofp i32 %453 to double
  %455 = fmul double %446, %454
  %456 = fptosi double %455 to i32
  %457 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %458 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %457, i32 0, i32 12
  %459 = load double, double* %458, align 8
  %460 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %461 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %460, i32 0, i32 9
  %462 = load i32, i32* %461, align 8
  %463 = load %struct.dimbox*, %struct.dimbox** %2, align 8
  %464 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %463, i32 0, i32 6
  %465 = load i32, i32* %464, align 4
  %466 = sub nsw i32 %462, %465
  %467 = sitofp i32 %466 to double
  %468 = fmul double %459, %467
  %469 = fptosi double %468 to i32
  %470 = add nsw i32 %456, %469
  %471 = load i32, i32* @fcost, align 4
  %472 = add nsw i32 %471, %470
  store i32 %472, i32* @fcost, align 4
  br label %473

473:                                              ; preds = %408, %308
  %474 = load i32, i32* %10, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %10, align 4
  br label %294, !llvm.loop !9

476:                                              ; preds = %294
  store i32 0, i32* %24, align 4
  store i32 1, i32* %9, align 4
  br label %477

477:                                              ; preds = %523, %476
  %478 = load i32, i32* %9, align 4
  %479 = load i32, i32* @numcells, align 4
  %480 = load i32, i32* @numpads, align 4
  %481 = add nsw i32 %479, %480
  %482 = add nsw i32 %481, 4
  %483 = icmp sle i32 %478, %482
  br i1 %483, label %484, label %526

484:                                              ; preds = %477
  %485 = load i32, i32* %9, align 4
  %486 = load i32, i32* @numcells, align 4
  %487 = icmp sgt i32 %485, %486
  br i1 %487, label %488, label %495

488:                                              ; preds = %484
  %489 = load i32, i32* %9, align 4
  %490 = load i32, i32* @numcells, align 4
  %491 = load i32, i32* @numpads, align 4
  %492 = add nsw i32 %490, %491
  %493 = icmp sle i32 %489, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %488
  br label %523

495:                                              ; preds = %488, %484
  %496 = load i32 (...)*, i32 (...)** @overlapf, align 8
  %497 = load i32, i32* %9, align 4
  %498 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %499 = load i32, i32* %9, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %498, i64 %500
  %502 = load %struct.cellbox*, %struct.cellbox** %501, align 8
  %503 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %502, i32 0, i32 2
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %506 = load i32, i32* %9, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %505, i64 %507
  %509 = load %struct.cellbox*, %struct.cellbox** %508, align 8
  %510 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %509, i32 0, i32 3
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %513 = load i32, i32* %9, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %512, i64 %514
  %516 = load %struct.cellbox*, %struct.cellbox** %515, align 8
  %517 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %516, i32 0, i32 5
  %518 = load i32, i32* %517, align 8
  %519 = bitcast i32 (...)* %496 to i32 (i32, i32, i32, i32, i32, i32, i32, ...)*
  %520 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %519(i32 noundef %497, i32 noundef %504, i32 noundef %511, i32 noundef %518, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  %521 = load i32, i32* %24, align 4
  %522 = add nsw i32 %521, %520
  store i32 %522, i32* %24, align 4
  br label %523

523:                                              ; preds = %495, %494
  %524 = load i32, i32* %9, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %9, align 4
  br label %477, !llvm.loop !10

526:                                              ; preds = %477
  %527 = load i32, i32* %24, align 4
  %528 = sdiv i32 %527, 2
  store i32 %528, i32* %24, align 4
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %530 = load i32, i32* %24, align 4
  %531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %529, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 noundef %530)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @initcheck() #0 {
  %1 = alloca %struct.dimbox*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* @icost, align 4
  store i32 0, i32* @iwire, align 4
  store i32 0, i32* @iwirex, align 4
  store i32 0, i32* @iwirey, align 4
  store i32 1, i32* %2, align 4
  br label %3

3:                                                ; preds = %77, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @numnets, align 4
  %6 = icmp sle i32 %4, %5
  br i1 %6, label %7, label %80

7:                                                ; preds = %3
  %8 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %8, i64 %10
  %12 = load %struct.dimbox*, %struct.dimbox** %11, align 8
  store %struct.dimbox* %12, %struct.dimbox** %1, align 8
  %13 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %14 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %17 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = load i32, i32* @iwirex, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @iwirex, align 4
  %22 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %23 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %24, %27
  %29 = load i32, i32* @iwirey, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* @iwirey, align 4
  %31 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %32 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %35 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %39 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %43 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  %46 = load i32, i32* @iwire, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* @iwire, align 4
  %48 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %49 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %48, i32 0, i32 11
  %50 = load double, double* %49, align 8
  %51 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %52 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %55 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = sitofp i32 %57 to double
  %59 = fmul double %50, %58
  %60 = fptosi double %59 to i32
  %61 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %62 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %61, i32 0, i32 12
  %63 = load double, double* %62, align 8
  %64 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %65 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dimbox*, %struct.dimbox** %1, align 8
  %68 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  %71 = sitofp i32 %70 to double
  %72 = fmul double %63, %71
  %73 = fptosi double %72 to i32
  %74 = add nsw i32 %60, %73
  %75 = load i32, i32* @icost, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* @icost, align 4
  br label %77

77:                                               ; preds = %7
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %2, align 4
  br label %3, !llvm.loop !11

80:                                               ; preds = %3
  ret void
}

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
