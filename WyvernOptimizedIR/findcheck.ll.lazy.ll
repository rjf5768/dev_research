; ModuleID = './findcheck.ll'
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
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %3 = load i8*, i8** @cktName, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #5
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 0, i32* @fcost, align 4
  store i32 0, i32* @fwire, align 4
  store i32 0, i32* @fwirex, align 4
  store i32 0, i32* @fwirey, align 4
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %6)
  br label %8

8:                                                ; preds = %175, %0
  %.05 = phi i32 [ 1, %0 ], [ %176, %175 ]
  %9 = load i32, i32* @numcells, align 4
  %10 = load i32, i32* @numpads, align 4
  %11 = add nsw i32 %9, %10
  %.not = icmp sgt i32 %.05, %11
  br i1 %.not, label %177, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @numcells, align 4
  %.not13 = icmp sgt i32 %.05, %13
  br i1 %.not13, label %81, label %14

14:                                               ; preds = %12
  %15 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %16 = zext i32 %.05 to i64
  %17 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %16
  %18 = load %struct.cellbox*, %struct.cellbox** %17, align 8
  %19 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %18, i64 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %.05 to i64
  %22 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %15, i64 %21
  %23 = load %struct.cellbox*, %struct.cellbox** %22, align 8
  %24 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %23, i64 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %27 = zext i32 %.05 to i64
  %28 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %26, i64 %27
  %29 = load %struct.cellbox*, %struct.cellbox** %28, align 8
  %30 = zext i32 %.05 to i64
  %31 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %26, i64 %30
  %32 = load %struct.cellbox*, %struct.cellbox** %31, align 8
  %33 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %32, i64 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %29, i64 0, i32 21, i64 %35
  %37 = load %struct.tilebox*, %struct.tilebox** %36, align 8
  %38 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %20, %39
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %20, %42
  %44 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 11
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %25, %45
  %47 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %25, %48
  %50 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %51 = zext i32 %.05 to i64
  %52 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %50, i64 %51
  %53 = load %struct.cellbox*, %struct.cellbox** %52, align 8
  %54 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %53, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* noundef %55) #5
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = call i32 @wireestx(i32 noundef %40, i32 noundef %46, i32 noundef %49, double noundef %58) #5
  %60 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 1
  %61 = load double, double* %60, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 noundef %59, double noundef %61) #5
  %63 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 2
  %64 = load double, double* %63, align 8
  %65 = call i32 @wireestx(i32 noundef %43, i32 noundef %46, i32 noundef %49, double noundef %64) #5
  %66 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 2
  %67 = load double, double* %66, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 noundef %65, double noundef %67) #5
  %69 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 3
  %70 = load double, double* %69, align 8
  %71 = call i32 @wireestx(i32 noundef %46, i32 noundef %40, i32 noundef %43, double noundef %70) #5
  %72 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 3
  %73 = load double, double* %72, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 noundef %71, double noundef %73) #5
  %75 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 4
  %76 = load double, double* %75, align 8
  %77 = call i32 @wireestx(i32 noundef %49, i32 noundef %40, i32 noundef %43, double noundef %76) #5
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %37, i64 0, i32 4
  %79 = load double, double* %78, align 8
  %80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 noundef %77, double noundef %79) #5
  br label %81

81:                                               ; preds = %14, %12
  %82 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %83 = zext i32 %.05 to i64
  %84 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %82, i64 %83
  %85 = load %struct.cellbox*, %struct.cellbox** %84, align 8
  %86 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 21, i64 %88
  %90 = load %struct.tilebox*, %struct.tilebox** %89, align 8
  %91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %90, i64 0, i32 17
  br label %92

92:                                               ; preds = %116, %81
  %.07.in = phi %struct.termbox** [ %91, %81 ], [ %117, %116 ]
  %.07 = load %struct.termbox*, %struct.termbox** %.07.in, align 8
  %.not14 = icmp eq %struct.termbox* %.07, null
  br i1 %.not14, label %118, label %93

93:                                               ; preds = %92
  %94 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %95 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.termnets*, %struct.termnets** %94, i64 %97
  %99 = load %struct.termnets*, %struct.termnets** %98, align 8
  %100 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.termnets, %struct.termnets* %99, i64 0, i32 1
  %106 = load %struct.netbox*, %struct.netbox** %105, align 8
  %107 = getelementptr inbounds %struct.netbox, %struct.netbox* %106, i64 0, i32 1
  store i32 %104, i32* %107, align 8
  %108 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %109, %111
  %113 = getelementptr inbounds %struct.termnets, %struct.termnets* %99, i64 0, i32 1
  %114 = load %struct.netbox*, %struct.netbox** %113, align 8
  %115 = getelementptr inbounds %struct.netbox, %struct.netbox* %114, i64 0, i32 2
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %93
  %117 = getelementptr inbounds %struct.termbox, %struct.termbox* %.07, i64 0, i32 0
  br label %92, !llvm.loop !4

118:                                              ; preds = %92
  %119 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 10
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %174

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %171, %122
  %.01 = phi i32 [ 1, %122 ], [ %172, %171 ]
  %124 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 18
  %125 = load i32, i32* %124, align 4
  %.not15 = icmp sgt i32 %.01, %125
  br i1 %.not15, label %173, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 20
  %128 = load %struct.uncombox*, %struct.uncombox** %127, align 8
  %129 = zext i32 %.01 to i64
  %130 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %128, i64 %129, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %.01 to i64
  %133 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %128, i64 %132, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 21, i64 %137
  %139 = load %struct.tilebox*, %struct.tilebox** %138, align 8
  %140 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %139, i64 0, i32 18
  %141 = load %struct.locbox*, %struct.locbox** %140, align 8
  %142 = sext i32 %131 to i64
  %143 = getelementptr inbounds %struct.locbox, %struct.locbox* %141, i64 %142, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 21, i64 %147
  %149 = load %struct.tilebox*, %struct.tilebox** %148, align 8
  %150 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %149, i64 0, i32 18
  %151 = load %struct.locbox*, %struct.locbox** %150, align 8
  %152 = sext i32 %131 to i64
  %153 = getelementptr inbounds %struct.locbox, %struct.locbox* %151, i64 %152, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %156 = sext i32 %134 to i64
  %157 = getelementptr inbounds %struct.termnets*, %struct.termnets** %155, i64 %156
  %158 = load %struct.termnets*, %struct.termnets** %157, align 8
  %159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %144, %160
  %162 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 1
  %163 = load %struct.netbox*, %struct.netbox** %162, align 8
  %164 = getelementptr inbounds %struct.netbox, %struct.netbox* %163, i64 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %85, i64 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %154, %166
  %168 = getelementptr inbounds %struct.termnets, %struct.termnets* %158, i64 0, i32 1
  %169 = load %struct.netbox*, %struct.netbox** %168, align 8
  %170 = getelementptr inbounds %struct.netbox, %struct.netbox* %169, i64 0, i32 2
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %126
  %172 = add nuw nsw i32 %.01, 1
  br label %123, !llvm.loop !6

173:                                              ; preds = %123
  br label %174

174:                                              ; preds = %173, %118
  br label %175

175:                                              ; preds = %174
  %176 = add nuw nsw i32 %.05, 1
  br label %8, !llvm.loop !7

177:                                              ; preds = %8
  br label %178

178:                                              ; preds = %304, %177
  %.04 = phi i32 [ 1, %177 ], [ %305, %304 ]
  %179 = load i32, i32* @numnets, align 4
  %.not9 = icmp sgt i32 %.04, %179
  br i1 %.not9, label %306, label %180

180:                                              ; preds = %178
  %181 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %182 = zext i32 %.04 to i64
  %183 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %181, i64 %182
  %184 = load %struct.dimbox*, %struct.dimbox** %183, align 8
  %185 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  br label %304

189:                                              ; preds = %180
  %190 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 0
  br label %191

191:                                              ; preds = %210, %189
  %.02.in = phi %struct.netbox** [ %190, %189 ], [ %211, %210 ]
  %.02 = load %struct.netbox*, %struct.netbox** %.02.in, align 8
  %192 = icmp eq %struct.netbox* %.02, null
  br i1 %192, label %193, label %194

193:                                              ; preds = %191
  br label %212

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 9
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %210

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  store i32 %201, i32* %202, align 4
  %203 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  store i32 %201, i32* %203, align 4
  %204 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  store i32 %205, i32* %206, align 8
  %207 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  store i32 %205, i32* %207, align 4
  %208 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  %209 = load %struct.netbox*, %struct.netbox** %208, align 8
  br label %212

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.netbox, %struct.netbox* %.02, i64 0, i32 0
  br label %191

212:                                              ; preds = %199, %193
  %.13 = phi %struct.netbox* [ %.02, %193 ], [ %209, %199 ]
  br label %213

213:                                              ; preds = %250, %212
  %.2 = phi %struct.netbox* [ %.13, %212 ], [ %252, %250 ]
  %.not12 = icmp eq %struct.netbox* %.2, null
  br i1 %.not12, label %253, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 9
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %250

219:                                              ; preds = %214
  %220 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = icmp slt i32 %221, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  store i32 %221, i32* %228, align 4
  br label %236

229:                                              ; preds = %219
  %230 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = icmp sgt i32 %221, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  store i32 %221, i32* %234, align 4
  br label %235

235:                                              ; preds = %233, %229
  br label %236

236:                                              ; preds = %235, %227
  %237 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %223, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  store i32 %223, i32* %241, align 4
  br label %249

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = icmp sgt i32 %223, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  store i32 %223, i32* %247, align 8
  br label %248

248:                                              ; preds = %246, %242
  br label %249

249:                                              ; preds = %248, %240
  br label %250

250:                                              ; preds = %249, %218
  %251 = getelementptr inbounds %struct.netbox, %struct.netbox* %.2, i64 0, i32 0
  %252 = load %struct.netbox*, %struct.netbox** %251, align 8
  br label %213, !llvm.loop !8

253:                                              ; preds = %213
  %254 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = sub nsw i32 %255, %257
  %259 = load i32, i32* @fwirex, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* @fwirex, align 4
  %261 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %262, %264
  %266 = load i32, i32* @fwirey, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* @fwirey, align 4
  %268 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  %273 = load i32, i32* %272, align 8
  %274 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  %275 = load i32, i32* %274, align 4
  %276 = add i32 %269, %273
  %277 = add i32 %271, %275
  %278 = sub i32 %276, %277
  %279 = load i32, i32* @fwire, align 4
  %280 = add nsw i32 %279, %278
  store i32 %280, i32* @fwire, align 4
  %281 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 11
  %282 = load double, double* %281, align 8
  %283 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 4
  %284 = load i32, i32* %283, align 4
  %285 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %284, %286
  %288 = sitofp i32 %287 to double
  %289 = fmul double %282, %288
  %290 = fptosi double %289 to i32
  %291 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 12
  %292 = load double, double* %291, align 8
  %293 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 9
  %294 = load i32, i32* %293, align 8
  %295 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %184, i64 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = sub nsw i32 %294, %296
  %298 = sitofp i32 %297 to double
  %299 = fmul double %292, %298
  %300 = fptosi double %299 to i32
  %301 = add nsw i32 %290, %300
  %302 = load i32, i32* @fcost, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* @fcost, align 4
  br label %304

304:                                              ; preds = %253, %188
  %305 = add nuw nsw i32 %.04, 1
  br label %178, !llvm.loop !9

306:                                              ; preds = %178
  br label %307

307:                                              ; preds = %341, %306
  %.16 = phi i32 [ 1, %306 ], [ %342, %341 ]
  %.0 = phi i32 [ 0, %306 ], [ %.1, %341 ]
  %308 = load i32, i32* @numcells, align 4
  %309 = load i32, i32* @numpads, align 4
  %310 = add nsw i32 %308, %309
  %311 = add nsw i32 %310, 4
  %.not10 = icmp sgt i32 %.16, %311
  br i1 %.not10, label %343, label %312

312:                                              ; preds = %307
  %313 = load i32, i32* @numcells, align 4
  %314 = icmp sgt i32 %.16, %313
  br i1 %314, label %315, label %320

315:                                              ; preds = %312
  %316 = load i32, i32* @numcells, align 4
  %317 = load i32, i32* @numpads, align 4
  %318 = add nsw i32 %316, %317
  %.not11 = icmp sgt i32 %.16, %318
  br i1 %.not11, label %320, label %319

319:                                              ; preds = %315
  br label %341

320:                                              ; preds = %315, %312
  %321 = load i32 (i32, i32, i32, i32, i32, i32, i32, ...)*, i32 (i32, i32, i32, i32, i32, i32, i32, ...)** bitcast (i32 (...)** @overlapf to i32 (i32, i32, i32, i32, i32, i32, i32, ...)**), align 8
  %322 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %323 = zext i32 %.16 to i64
  %324 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %322, i64 %323
  %325 = load %struct.cellbox*, %struct.cellbox** %324, align 8
  %326 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %325, i64 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = zext i32 %.16 to i64
  %329 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %322, i64 %328
  %330 = load %struct.cellbox*, %struct.cellbox** %329, align 8
  %331 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %330, i64 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %334 = zext i32 %.16 to i64
  %335 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %333, i64 %334
  %336 = load %struct.cellbox*, %struct.cellbox** %335, align 8
  %337 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %336, i64 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = call i32 (i32, i32, i32, i32, i32, i32, i32, ...) %321(i32 noundef %.16, i32 noundef %327, i32 noundef %332, i32 noundef %338, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  %340 = add nsw i32 %.0, %339
  br label %341

341:                                              ; preds = %320, %319
  %.1 = phi i32 [ %.0, %319 ], [ %340, %320 ]
  %342 = add nuw nsw i32 %.16, 1
  br label %307, !llvm.loop !10

343:                                              ; preds = %307
  %344 = sdiv i32 %.0, 2
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %346 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %345, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i32 noundef %344) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

declare dso_local i32 @wireestx(i32 noundef, i32 noundef, i32 noundef, double noundef) #2

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @initcheck() #3 {
  store i32 0, i32* @icost, align 4
  store i32 0, i32* @iwire, align 4
  store i32 0, i32* @iwirex, align 4
  store i32 0, i32* @iwirey, align 4
  br label %1

1:                                                ; preds = %58, %0
  %.0 = phi i32 [ 1, %0 ], [ %59, %58 ]
  %2 = load i32, i32* @numnets, align 4
  %.not = icmp sgt i32 %.0, %2
  br i1 %.not, label %60, label %3

3:                                                ; preds = %1
  %4 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %4, i64 %5
  %7 = load %struct.dimbox*, %struct.dimbox** %6, align 8
  %8 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %9, %11
  %13 = load i32, i32* @iwirex, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* @iwirex, align 4
  %15 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %16, %18
  %20 = load i32, i32* @iwirey, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* @iwirey, align 4
  %22 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %23, %27
  %31 = add i32 %25, %29
  %32 = sub i32 %30, %31
  %33 = load i32, i32* @iwire, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* @iwire, align 4
  %35 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 11
  %36 = load double, double* %35, align 8
  %37 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %38, %40
  %42 = sitofp i32 %41 to double
  %43 = fmul double %36, %42
  %44 = fptosi double %43 to i32
  %45 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 12
  %46 = load double, double* %45, align 8
  %47 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %7, i64 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %48, %50
  %52 = sitofp i32 %51 to double
  %53 = fmul double %46, %52
  %54 = fptosi double %53 to i32
  %55 = add nsw i32 %44, %54
  %56 = load i32, i32* @icost, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* @icost, align 4
  br label %58

58:                                               ; preds = %3
  %59 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !11

60:                                               ; preds = %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
