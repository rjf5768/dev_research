; ModuleID = './outbig.ll'
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
  %1 = alloca [1024 x i8], align 16
  %2 = load i32, i32* @bdxlength, align 4
  %3 = load i32, i32* @bdylength, align 4
  %4 = icmp sgt i32 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %6, %5
  %.in = phi i32* [ @bdxlength, %5 ], [ @bdylength, %6 ]
  %8 = load i32, i32* %.in, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %9, 5.000000e+02
  %11 = fptosi double %10 to i32
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* @finalShot, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = call noalias dereferenceable_or_null(416) i8* @malloc(i64 noundef 416) #6
  store i8* %16, i8** bitcast (%struct.Rangle** @rectang to i8**), align 8
  %17 = call noalias dereferenceable_or_null(808) i8* @malloc(i64 noundef 808) #6
  store i8* %17, i8** bitcast (%struct.bustbox** @PtsArray to i8**), align 8
  %18 = call noalias dereferenceable_or_null(808) i8* @malloc(i64 noundef 808) #6
  store i8* %18, i8** bitcast (%struct.bustbox** @PtsOut to i8**), align 8
  br label %19

19:                                               ; preds = %15, %7
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %21 = load i8*, i8** @cktName, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %20, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %21) #6
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %24 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %28) #6
  call void @exit(i32 noundef 0) #7
  unreachable

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %220, %30
  %.02 = phi i32 [ 1, %30 ], [ %221, %220 ]
  %32 = load i32, i32* @numcells, align 4
  %33 = load i32, i32* @numpads, align 4
  %34 = add nsw i32 %32, %33
  %.not = icmp sgt i32 %.02, %34
  br i1 %.not, label %222, label %35

35:                                               ; preds = %31
  %36 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %36, i64 %37
  %39 = load %struct.cellbox*, %struct.cellbox** %38, align 8
  %40 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 21, i64 %42
  %44 = load %struct.tilebox*, %struct.tilebox** %43, align 8
  %45 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 17
  %46 = load %struct.termbox*, %struct.termbox** %45, align 8
  %47 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 5
  %54 = load i32, i32* %53, align 8
  call void @initPts(i32 noundef %.02, i8* noundef %52, i32 noundef %54) #6
  %55 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 12
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @numcells, align 4
  %.not11 = icmp sgt i32 %.02, %63
  br i1 %.not11, label %106, label %64

64:                                               ; preds = %35
  %65 = load i32, i32* @finalShot, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %64
  %68 = add nsw i32 %48, %56
  %69 = add nsw i32 %50, %60
  %70 = add nsw i32 %50, %62
  %71 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = call i32 @wireestx(i32 noundef %68, i32 noundef %69, i32 noundef %70, double noundef %72) #6
  %74 = sub nsw i32 %56, %73
  %75 = add nsw i32 %48, %58
  %76 = add nsw i32 %50, %60
  %77 = add nsw i32 %50, %62
  %78 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 2
  %79 = load double, double* %78, align 8
  %80 = call i32 @wireestx(i32 noundef %75, i32 noundef %76, i32 noundef %77, double noundef %79) #6
  %81 = add nsw i32 %58, %80
  %82 = add nsw i32 %50, %60
  %83 = add nsw i32 %48, %74
  %84 = add nsw i32 %48, %81
  %85 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 3
  %86 = load double, double* %85, align 8
  %87 = call i32 @wireestx(i32 noundef %82, i32 noundef %83, i32 noundef %84, double noundef %86) #6
  %88 = add nsw i32 %50, %62
  %89 = add nsw i32 %48, %74
  %90 = add nsw i32 %48, %81
  %91 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 4
  %92 = load double, double* %91, align 8
  %93 = call i32 @wireestx(i32 noundef %88, i32 noundef %89, i32 noundef %90, double noundef %92) #6
  br label %105

94:                                               ; preds = %64
  %95 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %56, %96
  %98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %58, %99
  %101 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %44, i64 0, i32 8
  %104 = load i32, i32* %103, align 4
  br label %105

105:                                              ; preds = %94, %67
  %.pn = phi i32 [ %93, %67 ], [ %104, %94 ]
  %.07 = phi i32 [ %81, %67 ], [ %100, %94 ]
  %.pn15 = phi i32 [ %87, %67 ], [ %102, %94 ]
  %.04 = phi i32 [ %74, %67 ], [ %97, %94 ]
  %.05 = sub nsw i32 %60, %.pn15
  %.09 = add nsw i32 %62, %.pn
  br label %106

106:                                              ; preds = %105, %35
  %.110 = phi i32 [ %.09, %105 ], [ %62, %35 ]
  %.18 = phi i32 [ %.07, %105 ], [ %58, %35 ]
  %.16 = phi i32 [ %.05, %105 ], [ %60, %35 ]
  %.1 = phi i32 [ %.04, %105 ], [ %56, %35 ]
  call void @addPts(i32 noundef %.1, i32 noundef %.18, i32 noundef %.16, i32 noundef %.110) #6
  %107 = add nsw i32 %.1, %48
  %108 = add nsw i32 %.18, %48
  %109 = add nsw i32 %.16, %50
  %110 = add nsw i32 %.110, %50
  %111 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = add nsw i32 %108, %107
  %114 = sdiv i32 %113, 2
  %115 = add nsw i32 %110, %109
  %116 = sdiv i32 %115, 2
  %117 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %112, i32 noundef %114, i32 noundef %116) #6
  call void @unbust() #6
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 noundef %12) #6
  br label %119

119:                                              ; preds = %135, %106
  %.03 = phi i32 [ 1, %106 ], [ %136, %135 ]
  %120 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %121 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %120, i64 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %.03, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %119
  %125 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %126 = zext i32 %.03 to i64
  %127 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %125, i64 %126, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %48, %128
  %130 = zext i32 %.03 to i64
  %131 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %125, i64 %130, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %50, %132
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %129, i32 noundef %133) #6
  br label %135

135:                                              ; preds = %124
  %136 = add nuw nsw i32 %.03, 1
  br label %119, !llvm.loop !4

137:                                              ; preds = %119
  %138 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %139 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 1, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %48, %140
  %142 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %138, i64 1, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %50, %143
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 noundef %141, i32 noundef %144) #6
  br label %146

146:                                              ; preds = %176, %137
  %.0 = phi %struct.termbox* [ %46, %137 ], [ %178, %176 ]
  %.not12 = icmp eq %struct.termbox* %.0, null
  br i1 %.not12, label %179, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i8**, i8*** @pinnames, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i8*, i8** %150, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %153, i8* noundef nonnull dereferenceable(8) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)) #8
  %.not14 = icmp eq i32 %154, 0
  br i1 %.not14, label %175, label %155

155:                                              ; preds = %147
  %156 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %50, %157
  %159 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %48, %160
  %162 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %163 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %164 = sext i32 %149 to i64
  %165 = getelementptr inbounds %struct.termnets*, %struct.termnets** %163, i64 %164
  %166 = load %struct.termnets*, %struct.termnets** %165, align 8
  %167 = getelementptr inbounds %struct.termnets, %struct.termnets* %166, i64 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %162, i64 %169
  %171 = load %struct.dimbox*, %struct.dimbox** %170, align 8
  %172 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %171, i64 0, i32 13
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %173, i32 noundef %161, i32 noundef %158) #6
  br label %175

175:                                              ; preds = %155, %147
  br label %176

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.termbox, %struct.termbox* %.0, i64 0, i32 0
  %178 = load %struct.termbox*, %struct.termbox** %177, align 8
  br label %146, !llvm.loop !6

179:                                              ; preds = %146
  %180 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %219

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %216, %183
  %.01 = phi i32 [ 1, %183 ], [ %217, %216 ]
  %185 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 18
  %186 = load i32, i32* %185, align 4
  %.not13 = icmp sgt i32 %.01, %186
  br i1 %.not13, label %218, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 20
  %189 = load %struct.uncombox*, %struct.uncombox** %188, align 8
  %190 = zext i32 %.01 to i64
  %191 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %189, i64 %190, i32 9
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %48, %192
  %194 = zext i32 %.01 to i64
  %195 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %189, i64 %194, i32 10
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %50, %196
  %198 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %39, i64 0, i32 20
  %199 = load %struct.uncombox*, %struct.uncombox** %198, align 8
  %200 = zext i32 %.01 to i64
  %201 = getelementptr inbounds %struct.uncombox, %struct.uncombox* %199, i64 %200, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.dimbox**, %struct.dimbox*** @netarray, align 8
  %204 = load %struct.termnets**, %struct.termnets*** @termarray, align 8
  %205 = sext i32 %202 to i64
  %206 = getelementptr inbounds %struct.termnets*, %struct.termnets** %204, i64 %205
  %207 = load %struct.termnets*, %struct.termnets** %206, align 8
  %208 = getelementptr inbounds %struct.termnets, %struct.termnets* %207, i64 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.dimbox*, %struct.dimbox** %203, i64 %210
  %212 = load %struct.dimbox*, %struct.dimbox** %211, align 8
  %213 = getelementptr inbounds %struct.dimbox, %struct.dimbox* %212, i64 0, i32 13
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* noundef %214, i32 noundef %193, i32 noundef %197) #6
  br label %216

216:                                              ; preds = %187
  %217 = add nuw nsw i32 %.01, 1
  br label %184, !llvm.loop !7

218:                                              ; preds = %184
  br label %219

219:                                              ; preds = %218, %179
  br label %220

220:                                              ; preds = %219
  %221 = add nuw nsw i32 %.02, 1
  br label %31, !llvm.loop !8

222:                                              ; preds = %31
  %223 = load i32, i32* @blockl, align 4
  %224 = load i32, i32* @blockr, align 4
  %225 = load i32, i32* @blockb, align 4
  %226 = load i32, i32* @blockt, align 4
  %227 = call i64 @fwrite(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i64 6, i64 1, %struct._IO_FILE* nonnull %24)
  %228 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %24, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 noundef %12, i32 noundef %223, i32 noundef %225, i32 noundef %223, i32 noundef %226, i32 noundef %224, i32 noundef %226, i32 noundef %224, i32 noundef %225, i32 noundef %223, i32 noundef %225) #6
  %229 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* nonnull %24)
  %230 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %24) #6
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

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly willreturn }

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
