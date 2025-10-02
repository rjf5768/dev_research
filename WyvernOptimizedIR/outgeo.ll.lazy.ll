; ModuleID = './outgeo.ll'
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
  %1 = alloca [1024 x i8], align 16
  %2 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %3 = load i8*, i8** @cktName, align 8
  %4 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %2, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %3) #5
  %5 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %6 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #5
  %7 = icmp eq %struct._IO_FILE* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %10) #5
  call void @exit(i32 noundef 0) #6
  unreachable

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %72, %12
  %.01 = phi i32 [ 1, %12 ], [ %73, %72 ]
  %14 = load i32, i32* @numcells, align 4
  %.not = icmp sgt i32 %.01, %14
  br i1 %.not, label %74, label %15

15:                                               ; preds = %13
  %16 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %16, i64 %17
  %19 = load %struct.cellbox*, %struct.cellbox** %18, align 8
  %20 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 21, i64 %22
  %24 = load %struct.tilebox*, %struct.tilebox** %23, align 8
  %25 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 5
  %32 = load i32, i32* %31, align 8
  call void @initPts(i32 noundef %.01, i8* noundef %30, i32 noundef %32) #5
  br label %33

33:                                               ; preds = %43, %15
  %.pn = phi %struct.tilebox* [ %24, %15 ], [ %.0, %43 ]
  %.0.in = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.pn, i64 0, i32 0
  %.0 = load %struct.tilebox*, %struct.tilebox** %.0.in, align 8
  %.not56 = icmp eq %struct.tilebox* %.0, null
  br i1 %.not56, label %44, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %.0, i64 0, i32 12
  %42 = load i32, i32* %41, align 4
  call void @addPts(i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42) #5
  br label %43

43:                                               ; preds = %34
  br label %33, !llvm.loop !4

44:                                               ; preds = %33
  call void @unbust() #5
  %45 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %19, i64 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef %46) #5
  %48 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %49 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %48, i64 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 noundef %51) #5
  br label %53

53:                                               ; preds = %69, %44
  %.043 = phi i32 [ 1, %44 ], [ %70, %69 ]
  %54 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %55 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %54, i64 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %.043, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.bustbox*, %struct.bustbox** @PtsOut, align 8
  %60 = zext i32 %.043 to i64
  %61 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %60, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %26, %62
  %64 = zext i32 %.043 to i64
  %65 = getelementptr inbounds %struct.bustbox, %struct.bustbox* %59, i64 %64, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %28, %66
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 noundef %63, i32 noundef %67) #5
  br label %69

69:                                               ; preds = %58
  %70 = add nuw nsw i32 %.043, 1
  br label %53, !llvm.loop !6

71:                                               ; preds = %53
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* nonnull %6)
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.01, 1
  br label %13, !llvm.loop !7

74:                                               ; preds = %13
  %75 = load i32, i32* @numcells, align 4
  br label %76

76:                                               ; preds = %134, %74
  %.031 = phi i32 [ -100000000, %74 ], [ %.233, %134 ]
  %.019 = phi i32 [ -100000000, %74 ], [ %.221, %134 ]
  %.07 = phi i32 [ 100000000, %74 ], [ %.29, %134 ]
  %.02 = phi i32 [ 100000000, %74 ], [ %.24, %134 ]
  %.1.in = phi i32 [ %75, %74 ], [ %.1, %134 ]
  %.1 = add nsw i32 %.1.in, 1
  %77 = load i32, i32* @numcells, align 4
  %78 = load i32, i32* @numpads, align 4
  %79 = add nsw i32 %77, %78
  %.not44.not = icmp slt i32 %.1.in, %79
  br i1 %.not44.not, label %80, label %135

80:                                               ; preds = %76
  %81 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %82 = sext i32 %.1 to i64
  %83 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %81, i64 %82
  %84 = load %struct.cellbox*, %struct.cellbox** %83, align 8
  %85 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 11
  %86 = load i32, i32* %85, align 8
  %.not55 = icmp eq i32 %86, 1
  br i1 %.not55, label %88, label %87

87:                                               ; preds = %80
  br label %134

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %84, i64 0, i32 21, i64 %95
  %97 = load %struct.tilebox*, %struct.tilebox** %96, align 8
  %98 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %90, %99
  %101 = icmp slt i32 %100, %.02
  br i1 %101, label %102, label %106

102:                                              ; preds = %88
  %103 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %90, %104
  br label %106

106:                                              ; preds = %102, %88
  %.13 = phi i32 [ %105, %102 ], [ %.02, %88 ]
  %107 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 10
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %90, %108
  %110 = icmp sgt i32 %109, %.019
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %90, %113
  br label %115

115:                                              ; preds = %111, %106
  %.120 = phi i32 [ %114, %111 ], [ %.019, %106 ]
  %116 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 11
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %92, %117
  %119 = icmp slt i32 %118, %.07
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 11
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %92, %122
  br label %124

124:                                              ; preds = %120, %115
  %.18 = phi i32 [ %123, %120 ], [ %.07, %115 ]
  %125 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 12
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %92, %126
  %128 = icmp sgt i32 %127, %.031
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %97, i64 0, i32 12
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %92, %131
  br label %133

133:                                              ; preds = %129, %124
  %.132 = phi i32 [ %132, %129 ], [ %.031, %124 ]
  br label %134

134:                                              ; preds = %133, %87
  %.233 = phi i32 [ %.031, %87 ], [ %.132, %133 ]
  %.221 = phi i32 [ %.019, %87 ], [ %.120, %133 ]
  %.29 = phi i32 [ %.07, %87 ], [ %.18, %133 ]
  %.24 = phi i32 [ %.02, %87 ], [ %.13, %133 ]
  br label %76, !llvm.loop !8

135:                                              ; preds = %76
  %.not45 = icmp eq i32 %.031, -100000000
  br i1 %.not45, label %140, label %136

136:                                              ; preds = %135
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #5
  %138 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* nonnull %6)
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.02, i32 noundef %.07, i32 noundef %.02, i32 noundef %.031, i32 noundef %.019, i32 noundef %.031, i32 noundef %.019, i32 noundef %.07) #5
  br label %140

140:                                              ; preds = %136, %135
  %141 = load i32, i32* @numcells, align 4
  br label %142

142:                                              ; preds = %200, %140
  %.334 = phi i32 [ -100000000, %140 ], [ %.536, %200 ]
  %.322 = phi i32 [ -100000000, %140 ], [ %.524, %200 ]
  %.310 = phi i32 [ 100000000, %140 ], [ %.512, %200 ]
  %.35 = phi i32 [ 100000000, %140 ], [ %.5, %200 ]
  %.2.in = phi i32 [ %141, %140 ], [ %.2, %200 ]
  %.2 = add nsw i32 %.2.in, 1
  %143 = load i32, i32* @numcells, align 4
  %144 = load i32, i32* @numpads, align 4
  %145 = add nsw i32 %143, %144
  %.not46.not = icmp slt i32 %.2.in, %145
  br i1 %.not46.not, label %146, label %201

146:                                              ; preds = %142
  %147 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %148 = sext i32 %.2 to i64
  %149 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %147, i64 %148
  %150 = load %struct.cellbox*, %struct.cellbox** %149, align 8
  %151 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 11
  %152 = load i32, i32* %151, align 8
  %.not54 = icmp eq i32 %152, 2
  br i1 %.not54, label %154, label %153

153:                                              ; preds = %146
  br label %200

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %150, i64 0, i32 21, i64 %161
  %163 = load %struct.tilebox*, %struct.tilebox** %162, align 8
  %164 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 9
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %156, %165
  %167 = icmp slt i32 %166, %.35
  br i1 %167, label %168, label %172

168:                                              ; preds = %154
  %169 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 9
  %170 = load i32, i32* %169, align 8
  %171 = add nsw i32 %156, %170
  br label %172

172:                                              ; preds = %168, %154
  %.46 = phi i32 [ %171, %168 ], [ %.35, %154 ]
  %173 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %156, %174
  %176 = icmp sgt i32 %175, %.322
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 10
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %156, %179
  br label %181

181:                                              ; preds = %177, %172
  %.423 = phi i32 [ %180, %177 ], [ %.322, %172 ]
  %182 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 11
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %158, %183
  %185 = icmp slt i32 %184, %.310
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %158, %188
  br label %190

190:                                              ; preds = %186, %181
  %.411 = phi i32 [ %189, %186 ], [ %.310, %181 ]
  %191 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 12
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %158, %192
  %194 = icmp sgt i32 %193, %.334
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %163, i64 0, i32 12
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %158, %197
  br label %199

199:                                              ; preds = %195, %190
  %.435 = phi i32 [ %198, %195 ], [ %.334, %190 ]
  br label %200

200:                                              ; preds = %199, %153
  %.536 = phi i32 [ %.334, %153 ], [ %.435, %199 ]
  %.524 = phi i32 [ %.322, %153 ], [ %.423, %199 ]
  %.512 = phi i32 [ %.310, %153 ], [ %.411, %199 ]
  %.5 = phi i32 [ %.35, %153 ], [ %.46, %199 ]
  br label %142, !llvm.loop !9

201:                                              ; preds = %142
  %.not47 = icmp eq i32 %.334, -100000000
  br i1 %.not47, label %206, label %202

202:                                              ; preds = %201
  %203 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)) #5
  %204 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* nonnull %6)
  %205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.35, i32 noundef %.310, i32 noundef %.35, i32 noundef %.334, i32 noundef %.322, i32 noundef %.334, i32 noundef %.322, i32 noundef %.310) #5
  br label %206

206:                                              ; preds = %202, %201
  %207 = load i32, i32* @numcells, align 4
  br label %208

208:                                              ; preds = %266, %206
  %.637 = phi i32 [ -100000000, %206 ], [ %.839, %266 ]
  %.625 = phi i32 [ -100000000, %206 ], [ %.827, %266 ]
  %.613 = phi i32 [ 100000000, %206 ], [ %.815, %266 ]
  %.6 = phi i32 [ 100000000, %206 ], [ %.8, %266 ]
  %.3.in = phi i32 [ %207, %206 ], [ %.3, %266 ]
  %.3 = add nsw i32 %.3.in, 1
  %209 = load i32, i32* @numcells, align 4
  %210 = load i32, i32* @numpads, align 4
  %211 = add nsw i32 %209, %210
  %.not48.not = icmp slt i32 %.3.in, %211
  br i1 %.not48.not, label %212, label %267

212:                                              ; preds = %208
  %213 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %214 = sext i32 %.3 to i64
  %215 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %213, i64 %214
  %216 = load %struct.cellbox*, %struct.cellbox** %215, align 8
  %217 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i64 0, i32 11
  %218 = load i32, i32* %217, align 8
  %.not53 = icmp eq i32 %218, 3
  br i1 %.not53, label %220, label %219

219:                                              ; preds = %212
  br label %266

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i64 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i64 0, i32 3
  %224 = load i32, i32* %223, align 8
  %225 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i64 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %216, i64 0, i32 21, i64 %227
  %229 = load %struct.tilebox*, %struct.tilebox** %228, align 8
  %230 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 9
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %222, %231
  %233 = icmp slt i32 %232, %.6
  br i1 %233, label %234, label %238

234:                                              ; preds = %220
  %235 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 9
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %222, %236
  br label %238

238:                                              ; preds = %234, %220
  %.7 = phi i32 [ %237, %234 ], [ %.6, %220 ]
  %239 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 10
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %222, %240
  %242 = icmp sgt i32 %241, %.625
  br i1 %242, label %243, label %247

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 10
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %222, %245
  br label %247

247:                                              ; preds = %243, %238
  %.726 = phi i32 [ %246, %243 ], [ %.625, %238 ]
  %248 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 11
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %224, %249
  %251 = icmp slt i32 %250, %.613
  br i1 %251, label %252, label %256

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 11
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %224, %254
  br label %256

256:                                              ; preds = %252, %247
  %.714 = phi i32 [ %255, %252 ], [ %.613, %247 ]
  %257 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 12
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %224, %258
  %260 = icmp sgt i32 %259, %.637
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %229, i64 0, i32 12
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %224, %263
  br label %265

265:                                              ; preds = %261, %256
  %.738 = phi i32 [ %264, %261 ], [ %.637, %256 ]
  br label %266

266:                                              ; preds = %265, %219
  %.839 = phi i32 [ %.637, %219 ], [ %.738, %265 ]
  %.827 = phi i32 [ %.625, %219 ], [ %.726, %265 ]
  %.815 = phi i32 [ %.613, %219 ], [ %.714, %265 ]
  %.8 = phi i32 [ %.6, %219 ], [ %.7, %265 ]
  br label %208, !llvm.loop !10

267:                                              ; preds = %208
  %.not49 = icmp eq i32 %.637, -100000000
  br i1 %.not49, label %272, label %268

268:                                              ; preds = %267
  %269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0)) #5
  %270 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* nonnull %6)
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.6, i32 noundef %.613, i32 noundef %.6, i32 noundef %.637, i32 noundef %.625, i32 noundef %.637, i32 noundef %.625, i32 noundef %.613) #5
  br label %272

272:                                              ; preds = %268, %267
  %273 = load i32, i32* @numcells, align 4
  br label %274

274:                                              ; preds = %332, %272
  %.940 = phi i32 [ -100000000, %272 ], [ %.1142, %332 ]
  %.928 = phi i32 [ -100000000, %272 ], [ %.1130, %332 ]
  %.916 = phi i32 [ 100000000, %272 ], [ %.1118, %332 ]
  %.9 = phi i32 [ 100000000, %272 ], [ %.11, %332 ]
  %.4.in = phi i32 [ %273, %272 ], [ %.4, %332 ]
  %.4 = add nsw i32 %.4.in, 1
  %275 = load i32, i32* @numcells, align 4
  %276 = load i32, i32* @numpads, align 4
  %277 = add nsw i32 %275, %276
  %.not50.not = icmp slt i32 %.4.in, %277
  br i1 %.not50.not, label %278, label %333

278:                                              ; preds = %274
  %279 = load %struct.cellbox**, %struct.cellbox*** @cellarray, align 8
  %280 = sext i32 %.4 to i64
  %281 = getelementptr inbounds %struct.cellbox*, %struct.cellbox** %279, i64 %280
  %282 = load %struct.cellbox*, %struct.cellbox** %281, align 8
  %283 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 11
  %284 = load i32, i32* %283, align 8
  %.not52 = icmp eq i32 %284, 4
  br i1 %.not52, label %286, label %285

285:                                              ; preds = %278
  br label %332

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.cellbox, %struct.cellbox* %282, i64 0, i32 21, i64 %293
  %295 = load %struct.tilebox*, %struct.tilebox** %294, align 8
  %296 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 9
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %288, %297
  %299 = icmp slt i32 %298, %.9
  br i1 %299, label %300, label %304

300:                                              ; preds = %286
  %301 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 9
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %288, %302
  br label %304

304:                                              ; preds = %300, %286
  %.10 = phi i32 [ %303, %300 ], [ %.9, %286 ]
  %305 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 10
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %288, %306
  %308 = icmp sgt i32 %307, %.928
  br i1 %308, label %309, label %313

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 10
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %288, %311
  br label %313

313:                                              ; preds = %309, %304
  %.1029 = phi i32 [ %312, %309 ], [ %.928, %304 ]
  %314 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 11
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %290, %315
  %317 = icmp slt i32 %316, %.916
  br i1 %317, label %318, label %322

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 11
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %290, %320
  br label %322

322:                                              ; preds = %318, %313
  %.1017 = phi i32 [ %321, %318 ], [ %.916, %313 ]
  %323 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 12
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %290, %324
  %326 = icmp sgt i32 %325, %.940
  br i1 %326, label %327, label %331

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct.tilebox, %struct.tilebox* %295, i64 0, i32 12
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %290, %329
  br label %331

331:                                              ; preds = %327, %322
  %.1041 = phi i32 [ %330, %327 ], [ %.940, %322 ]
  br label %332

332:                                              ; preds = %331, %285
  %.1142 = phi i32 [ %.940, %285 ], [ %.1041, %331 ]
  %.1130 = phi i32 [ %.928, %285 ], [ %.1029, %331 ]
  %.1118 = phi i32 [ %.916, %285 ], [ %.1017, %331 ]
  %.11 = phi i32 [ %.9, %285 ], [ %.10, %331 ]
  br label %274, !llvm.loop !11

333:                                              ; preds = %274
  %.not51 = icmp eq i32 %.940, -100000000
  br i1 %.not51, label %338, label %334

334:                                              ; preds = %333
  %335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0)) #5
  %336 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* nonnull %6)
  %337 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef nonnull %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %.9, i32 noundef %.916, i32 noundef %.9, i32 noundef %.940, i32 noundef %.928, i32 noundef %.940, i32 noundef %.928, i32 noundef %.916) #5
  br label %338

338:                                              ; preds = %334, %333
  %339 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %6) #5
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

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
