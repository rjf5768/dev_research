; ModuleID = './density.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/density.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }

@eNum = external dso_local global i32, align 4
@eArray = external dso_local global %struct.ebox*, align 8
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@eIndexArray = external dso_local global i32**, align 8
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"CHANNEL DENSITIES:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"channel:%d  node1:%d  node2:%d  density:%d\0A\00", align 1
@numXnodes = external dso_local global i32, align 4
@xNodeArray = external dso_local global %struct.wcbox**, align 8
@defaultTracks = external dso_local global i32, align 4
@pitch = external dso_local global i32, align 4
@numYnodes = external dso_local global i32, align 4
@yNodeArray = external dso_local global %struct.wcbox**, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@cellList = external dso_local global %struct.clbox**, align 8
@numberCells = external dso_local global i32, align 4
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"CELL: <%d>\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"edge:%d  extraSpace:%d  \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"HorV:%d  loc:%d  start:%d  \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"end:%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @density() #0 {
  br label %1

1:                                                ; preds = %7, %0
  %.02 = phi i32 [ 1, %0 ], [ %8, %7 ]
  %2 = load i32, i32* @eNum, align 4
  %.not = icmp sgt i32 %.02, %2
  br i1 %.not, label %9, label %3

3:                                                ; preds = %1
  %4 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %5 = zext i32 %.02 to i64
  %6 = getelementptr inbounds %struct.ebox, %struct.ebox* %4, i64 %5, i32 12
  store %struct.tnode* null, %struct.tnode** %6, align 8
  br label %7

7:                                                ; preds = %3
  %8 = add nuw nsw i32 %.02, 1
  br label %1, !llvm.loop !4

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %76, %9
  %.0 = phi i32 [ 1, %9 ], [ %77, %76 ]
  %11 = load i32, i32* @largestNet, align 4
  %.not33 = icmp sgt i32 %.0, %11
  br i1 %.not33, label %78, label %12

12:                                               ; preds = %10
  %13 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %14 = zext i32 %.0 to i64
  %15 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %13, i64 %14, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %13, i64 %17, i32 0
  %19 = load %struct.altbox**, %struct.altbox*** %18, align 8
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds %struct.altbox*, %struct.altbox** %19, i64 %20
  %22 = load %struct.altbox*, %struct.altbox** %21, align 8
  %23 = getelementptr inbounds %struct.altbox, %struct.altbox* %22, i64 0, i32 2
  br label %24

24:                                               ; preds = %73, %12
  %.032.in = phi %struct.chanbox** [ %23, %12 ], [ %74, %73 ]
  %.032 = load %struct.chanbox*, %struct.chanbox** %.032.in, align 8
  %.not53 = icmp eq %struct.chanbox* %.032, null
  br i1 %.not53, label %75, label %25

25:                                               ; preds = %24
  %26 = load i32**, i32*** @eIndexArray, align 8
  %27 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %26, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %40 = sext i32 %36 to i64
  %41 = getelementptr inbounds %struct.ebox, %struct.ebox* %39, i64 %40, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 2
  %46 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %47 = sext i32 %36 to i64
  %48 = getelementptr inbounds %struct.ebox, %struct.ebox* %46, i64 %47, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %49, %51
  br label %62

53:                                               ; preds = %25
  %54 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 3
  %55 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %56 = sext i32 %36 to i64
  %57 = getelementptr inbounds %struct.ebox, %struct.ebox* %55, i64 %56, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %58, %60
  br label %62

62:                                               ; preds = %53, %44
  %.05 = phi i32 [ %52, %44 ], [ %61, %53 ]
  %.04.in = phi i32* [ %45, %44 ], [ %54, %53 ]
  %.04 = load i32, i32* %.04.in, align 4
  %63 = icmp sgt i32 %.05, %.04
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %66 = sext i32 %36 to i64
  %67 = getelementptr inbounds %struct.ebox, %struct.ebox* %65, i64 %66, i32 12
  call void @tinsert(%struct.tnode** noundef nonnull %67, i32 noundef %.04, i32 noundef 1) #4
  %68 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %69 = sext i32 %36 to i64
  %70 = getelementptr inbounds %struct.ebox, %struct.ebox* %68, i64 %69, i32 12
  %71 = add nsw i32 %.05, 1
  call void @tinsert(%struct.tnode** noundef nonnull %70, i32 noundef %71, i32 noundef -1) #4
  br label %72

72:                                               ; preds = %64, %62
  br label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.032, i64 0, i32 4
  br label %24, !llvm.loop !6

75:                                               ; preds = %24
  br label %76

76:                                               ; preds = %75
  %77 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !7

78:                                               ; preds = %10
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %80 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %79)
  %81 = call noalias dereferenceable_or_null(80008) i8* @malloc(i64 noundef 80008) #4
  %82 = bitcast i8* %81 to %struct.tnode**
  br label %83

83:                                               ; preds = %158, %78
  %.13 = phi i32 [ 1, %78 ], [ %159, %158 ]
  %84 = load i32, i32* @eNum, align 4
  %.not34 = icmp sgt i32 %.13, %84
  br i1 %.not34, label %160, label %85

85:                                               ; preds = %83
  %86 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %87 = zext i32 %.13 to i64
  %88 = getelementptr inbounds %struct.ebox, %struct.ebox* %86, i64 %87, i32 12
  %89 = load %struct.tnode*, %struct.tnode** %88, align 8
  %90 = icmp eq %struct.tnode* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %93 = zext i32 %.13 to i64
  %94 = getelementptr inbounds %struct.ebox, %struct.ebox* %92, i64 %93, i32 10
  store i32 0, i32* %94, align 8
  br label %158

95:                                               ; preds = %85
  %96 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %97 = zext i32 %.13 to i64
  %98 = getelementptr inbounds %struct.ebox, %struct.ebox* %96, i64 %97, i32 12
  %99 = load %struct.tnode*, %struct.tnode** %98, align 8
  store %struct.tnode* %99, %struct.tnode** %82, align 8
  br label %100

100:                                              ; preds = %144, %95
  %.022 = phi i32 [ 0, %95 ], [ %.224, %144 ]
  %.014 = phi i32 [ 0, %95 ], [ %.216, %144 ]
  %.013 = phi i32 [ 0, %95 ], [ %102, %144 ]
  %.06 = phi i32 [ 0, %95 ], [ %.28, %144 ]
  %.not50 = icmp slt i32 %.014, %.013
  br i1 %.not50, label %145, label %101

101:                                              ; preds = %100
  %102 = add nuw nsw i32 %.013, 1
  %103 = zext i32 %.013 to i64
  %104 = getelementptr inbounds %struct.tnode*, %struct.tnode** %82, i64 %103
  %105 = load %struct.tnode*, %struct.tnode** %104, align 8
  %106 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %129

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 2
  %111 = load %struct.tnode*, %struct.tnode** %110, align 8
  %112 = add nsw i32 %.014, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.tnode*, %struct.tnode** %82, i64 %113
  store %struct.tnode* %111, %struct.tnode** %114, align 8
  %115 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 3
  %116 = load %struct.tnode*, %struct.tnode** %115, align 8
  %117 = add nsw i32 %.014, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.tnode*, %struct.tnode** %82, i64 %118
  store %struct.tnode* %116, %struct.tnode** %119, align 8
  %120 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 4
  %121 = load %struct.tnode*, %struct.tnode** %120, align 8
  %.not52 = icmp eq %struct.tnode* %121, null
  br i1 %.not52, label %128, label %122

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 4
  %124 = load %struct.tnode*, %struct.tnode** %123, align 8
  %125 = add nsw i32 %.014, 3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.tnode*, %struct.tnode** %82, i64 %126
  store %struct.tnode* %124, %struct.tnode** %127, align 8
  br label %128

128:                                              ; preds = %122, %109
  %.115 = phi i32 [ %125, %122 ], [ %117, %109 ]
  br label %144

129:                                              ; preds = %101
  %130 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 9
  br label %131

131:                                              ; preds = %133, %129
  %.031.in = phi %struct.plist** [ %130, %129 ], [ %139, %133 ]
  %.17 = phi i32 [ %.06, %129 ], [ %138, %133 ]
  %.031 = load %struct.plist*, %struct.plist** %.031.in, align 8
  %.not51 = icmp eq %struct.plist* %.031, null
  br i1 %.not51, label %140, label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.tnode, %struct.tnode* %105, i64 0, i32 9
  %135 = load %struct.plist*, %struct.plist** %134, align 8
  %136 = getelementptr inbounds %struct.plist, %struct.plist* %135, i64 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %.17, %137
  %139 = getelementptr inbounds %struct.plist, %struct.plist* %.031, i64 0, i32 1
  br label %131, !llvm.loop !8

140:                                              ; preds = %131
  %141 = icmp sgt i32 %.17, %.022
  br i1 %141, label %142, label %143

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %140
  %.123 = phi i32 [ %.17, %142 ], [ %.022, %140 ]
  br label %144

144:                                              ; preds = %143, %128
  %.224 = phi i32 [ %.022, %128 ], [ %.123, %143 ]
  %.216 = phi i32 [ %.115, %128 ], [ %.014, %143 ]
  %.28 = phi i32 [ %.06, %128 ], [ %.17, %143 ]
  br label %100, !llvm.loop !9

145:                                              ; preds = %100
  %146 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %147 = zext i32 %.13 to i64
  %148 = getelementptr inbounds %struct.ebox, %struct.ebox* %146, i64 %147, i32 10
  store i32 %.022, i32* %148, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %150 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %151 = zext i32 %.13 to i64
  %152 = getelementptr inbounds %struct.ebox, %struct.ebox* %150, i64 %151, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = zext i32 %.13 to i64
  %155 = getelementptr inbounds %struct.ebox, %struct.ebox* %150, i64 %154, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %149, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 noundef %.13, i32 noundef %153, i32 noundef %156, i32 noundef %.022) #4
  br label %158

158:                                              ; preds = %145, %91
  %159 = add nuw nsw i32 %.13, 1
  br label %83, !llvm.loop !10

160:                                              ; preds = %83
  call void @free(i8* noundef %81) #4
  br label %161

161:                                              ; preds = %222, %160
  %.09 = phi i32 [ 1, %160 ], [ %223, %222 ]
  %162 = load i32, i32* @numXnodes, align 4
  %.not35 = icmp sgt i32 %.09, %162
  br i1 %.not35, label %224, label %163

163:                                              ; preds = %161
  %164 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %165 = zext i32 %.09 to i64
  %166 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %164, i64 %165
  br label %167

167:                                              ; preds = %219, %163
  %.027.in = phi %struct.wcbox** [ %166, %163 ], [ %220, %219 ]
  %.027 = load %struct.wcbox*, %struct.wcbox** %.027.in, align 8
  %.not48 = icmp eq %struct.wcbox* %.027, null
  br i1 %.not48, label %221, label %168

168:                                              ; preds = %167
  %169 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %173

172:                                              ; preds = %168
  br label %219

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  store i32 0, i32* %174, align 8
  %175 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %176, align 4
  br label %178

178:                                              ; preds = %192, %173
  %.017 = phi i32 [ 1, %173 ], [ %193, %192 ]
  %.not49 = icmp sgt i32 %.017, %177
  br i1 %.not49, label %194, label %179

179:                                              ; preds = %178
  %180 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %181 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = zext i32 %.017 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ebox, %struct.ebox* %180, i64 %186, i32 10
  %188 = load i32, i32* %187, align 8
  %189 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, %188
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %179
  %193 = add nuw nsw i32 %.017, 1
  br label %178, !llvm.loop !11

194:                                              ; preds = %178
  %195 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = load i32, i32* @defaultTracks, align 4
  %200 = add nsw i32 %199, 2
  %201 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %200
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* @pitch, align 4
  %205 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  %206 = mul nsw i32 %203, %204
  store i32 %206, i32* %205, align 8
  br label %218

207:                                              ; preds = %194
  %208 = load i32, i32* @defaultTracks, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* @defaultTracks, align 4
  %212 = add nsw i32 %211, 1
  %213 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  store i32 %212, i32* %213, align 8
  %214 = load i32, i32* @pitch, align 4
  %215 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 3
  %216 = mul nsw i32 %212, %214
  store i32 %216, i32* %215, align 8
  br label %217

217:                                              ; preds = %210, %207
  br label %218

218:                                              ; preds = %217, %198
  br label %219

219:                                              ; preds = %218, %172
  %220 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.027, i64 0, i32 4
  br label %167, !llvm.loop !12

221:                                              ; preds = %167
  br label %222

222:                                              ; preds = %221
  %223 = add nuw nsw i32 %.09, 1
  br label %161, !llvm.loop !13

224:                                              ; preds = %161
  br label %225

225:                                              ; preds = %286, %224
  %.110 = phi i32 [ 1, %224 ], [ %287, %286 ]
  %226 = load i32, i32* @numYnodes, align 4
  %.not36 = icmp sgt i32 %.110, %226
  br i1 %.not36, label %288, label %227

227:                                              ; preds = %225
  %228 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %229 = zext i32 %.110 to i64
  %230 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %228, i64 %229
  br label %231

231:                                              ; preds = %283, %227
  %.128.in = phi %struct.wcbox** [ %230, %227 ], [ %284, %283 ]
  %.128 = load %struct.wcbox*, %struct.wcbox** %.128.in, align 8
  %.not46 = icmp eq %struct.wcbox* %.128, null
  br i1 %.not46, label %285, label %232

232:                                              ; preds = %231
  %233 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %283

237:                                              ; preds = %232
  %238 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  store i32 0, i32* %238, align 8
  %239 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 2
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %240, align 4
  br label %242

242:                                              ; preds = %256, %237
  %.118 = phi i32 [ 1, %237 ], [ %257, %256 ]
  %.not47 = icmp sgt i32 %.118, %241
  br i1 %.not47, label %258, label %243

243:                                              ; preds = %242
  %244 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %245 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = zext i32 %.118 to i64
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.ebox, %struct.ebox* %244, i64 %250, i32 10
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, %252
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %243
  %257 = add nuw nsw i32 %.118, 1
  br label %242, !llvm.loop !14

258:                                              ; preds = %242
  %259 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %271

262:                                              ; preds = %258
  %263 = load i32, i32* @defaultTracks, align 4
  %264 = add nsw i32 %263, 2
  %265 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  %266 = load i32, i32* %265, align 8
  %267 = add nsw i32 %266, %264
  store i32 %267, i32* %265, align 8
  %268 = load i32, i32* @pitch, align 4
  %269 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  %270 = mul nsw i32 %267, %268
  store i32 %270, i32* %269, align 8
  br label %282

271:                                              ; preds = %258
  %272 = load i32, i32* @defaultTracks, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i32, i32* @defaultTracks, align 4
  %276 = add nsw i32 %275, 1
  %277 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  store i32 %276, i32* %277, align 8
  %278 = load i32, i32* @pitch, align 4
  %279 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 3
  %280 = mul nsw i32 %276, %278
  store i32 %280, i32* %279, align 8
  br label %281

281:                                              ; preds = %274, %271
  br label %282

282:                                              ; preds = %281, %262
  br label %283

283:                                              ; preds = %282, %236
  %284 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.128, i64 0, i32 4
  br label %231, !llvm.loop !15

285:                                              ; preds = %231
  br label %286

286:                                              ; preds = %285
  %287 = add nuw nsw i32 %.110, 1
  br label %225, !llvm.loop !16

288:                                              ; preds = %225
  br label %289

289:                                              ; preds = %436, %288
  %.211 = phi i32 [ 1, %288 ], [ %437, %436 ]
  %290 = load i32, i32* @numXnodes, align 4
  %.not37 = icmp sgt i32 %.211, %290
  br i1 %.not37, label %438, label %291

291:                                              ; preds = %289
  %292 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %293 = zext i32 %.211 to i64
  %294 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %292, i64 %293
  br label %295

295:                                              ; preds = %433, %291
  %.229.in = phi %struct.wcbox** [ %294, %291 ], [ %434, %433 ]
  %.229 = load %struct.wcbox*, %struct.wcbox** %.229.in, align 8
  %.not43 = icmp eq %struct.wcbox* %.229, null
  br i1 %.not43, label %435, label %296

296:                                              ; preds = %295
  %297 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = icmp eq i32 %298, 1
  br i1 %299, label %300, label %301

300:                                              ; preds = %296
  br label %433

301:                                              ; preds = %296
  %302 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %303 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 1
  %306 = load i32, i32* %305, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.ebox, %struct.ebox* %302, i64 %307, i32 8
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %311 = sext i32 %309 to i64
  %312 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %310, i64 %311, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.ebox, %struct.ebox* %317, i64 %321, i32 9
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %324, i64 %325, i32 0
  %327 = load i32, i32* %326, align 4
  br label %328

328:                                              ; preds = %330, %301
  %.025 = phi i32 [ 0, %301 ], [ %340, %330 ]
  %.219 = phi i32 [ 1, %301 ], [ %341, %330 ]
  %.not44 = icmp sgt i32 %.219, %316
  br i1 %.not44, label %342, label %329

329:                                              ; preds = %328
  br label %330

330:                                              ; preds = %329
  %331 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %332 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = zext i32 %.219 to i64
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.ebox, %struct.ebox* %331, i64 %337, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %.025, %339
  %341 = add nuw nsw i32 %.219, 1
  br label %328, !llvm.loop !17

342:                                              ; preds = %328
  %343 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = sdiv i32 %344, 2
  %.neg45 = sdiv i32 %344, -2
  %346 = add i32 %.neg45, %344
  %347 = icmp sgt i32 %313, 0
  br i1 %347, label %348, label %389

348:                                              ; preds = %342
  %349 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %350 = sext i32 %313 to i64
  %351 = getelementptr inbounds %struct.clbox*, %struct.clbox** %349, i64 %350
  br label %352

352:                                              ; preds = %358, %348
  %.01.in = phi %struct.clbox** [ %351, %348 ], [ %359, %358 ]
  %.01 = load %struct.clbox*, %struct.clbox** %.01.in, align 8
  %353 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, %309
  br i1 %355, label %356, label %357

356:                                              ; preds = %352
  br label %360

357:                                              ; preds = %352
  br label %358

358:                                              ; preds = %357
  %359 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 7
  br label %352

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = sub nsw i32 %.025, %362
  %364 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 6
  %365 = load i32, i32* %364, align 8
  %366 = icmp slt i32 %363, %365
  br i1 %366, label %367, label %373

367:                                              ; preds = %360
  %368 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = sub nsw i32 %.025, %369
  %371 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 6
  store i32 %370, i32* %371, align 8
  %372 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 1
  store i32 %345, i32* %372, align 4
  br label %373

373:                                              ; preds = %367, %360
  %374 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 2
  store i32 0, i32* %374, align 8
  %375 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %376 = sext i32 %309 to i64
  %377 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %375, i64 %376, i32 3
  %378 = load i32, i32* %377, align 4
  %379 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 3
  store i32 %378, i32* %379, align 4
  %380 = sext i32 %309 to i64
  %381 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %375, i64 %380, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 4
  store i32 %382, i32* %383, align 8
  %384 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %385 = sext i32 %309 to i64
  %386 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %384, i64 %385, i32 2
  %387 = load i32, i32* %386, align 4
  %388 = getelementptr inbounds %struct.clbox, %struct.clbox* %.01, i64 0, i32 5
  store i32 %387, i32* %388, align 4
  br label %389

389:                                              ; preds = %373, %342
  %390 = icmp sgt i32 %327, 0
  br i1 %390, label %391, label %432

391:                                              ; preds = %389
  %392 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %393 = sext i32 %327 to i64
  %394 = getelementptr inbounds %struct.clbox*, %struct.clbox** %392, i64 %393
  br label %395

395:                                              ; preds = %401, %391
  %.1.in = phi %struct.clbox** [ %394, %391 ], [ %402, %401 ]
  %.1 = load %struct.clbox*, %struct.clbox** %.1.in, align 8
  %396 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = icmp eq i32 %397, %323
  br i1 %398, label %399, label %400

399:                                              ; preds = %395
  br label %403

400:                                              ; preds = %395
  br label %401

401:                                              ; preds = %400
  %402 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 7
  br label %395

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = sub nsw i32 %.025, %405
  %407 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 6
  %408 = load i32, i32* %407, align 8
  %409 = icmp slt i32 %406, %408
  br i1 %409, label %410, label %416

410:                                              ; preds = %403
  %411 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 3
  %412 = load i32, i32* %411, align 8
  %413 = sub nsw i32 %.025, %412
  %414 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 6
  store i32 %413, i32* %414, align 8
  %415 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 1
  store i32 %346, i32* %415, align 4
  br label %416

416:                                              ; preds = %410, %403
  %417 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 2
  store i32 0, i32* %417, align 8
  %418 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %419 = sext i32 %323 to i64
  %420 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %418, i64 %419, i32 3
  %421 = load i32, i32* %420, align 4
  %422 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 3
  store i32 %421, i32* %422, align 4
  %423 = sext i32 %323 to i64
  %424 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %418, i64 %423, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 4
  store i32 %425, i32* %426, align 8
  %427 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %428 = sext i32 %323 to i64
  %429 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %427, i64 %428, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = getelementptr inbounds %struct.clbox, %struct.clbox* %.1, i64 0, i32 5
  store i32 %430, i32* %431, align 4
  br label %432

432:                                              ; preds = %416, %389
  br label %433

433:                                              ; preds = %432, %300
  %434 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.229, i64 0, i32 4
  br label %295, !llvm.loop !18

435:                                              ; preds = %295
  br label %436

436:                                              ; preds = %435
  %437 = add nuw nsw i32 %.211, 1
  br label %289, !llvm.loop !19

438:                                              ; preds = %289
  br label %439

439:                                              ; preds = %586, %438
  %.312 = phi i32 [ 1, %438 ], [ %587, %586 ]
  %440 = load i32, i32* @numYnodes, align 4
  %.not38 = icmp sgt i32 %.312, %440
  br i1 %.not38, label %588, label %441

441:                                              ; preds = %439
  %442 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %443 = zext i32 %.312 to i64
  %444 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %442, i64 %443
  br label %445

445:                                              ; preds = %583, %441
  %.330.in = phi %struct.wcbox** [ %444, %441 ], [ %584, %583 ]
  %.330 = load %struct.wcbox*, %struct.wcbox** %.330.in, align 8
  %.not41 = icmp eq %struct.wcbox* %.330, null
  br i1 %.not41, label %585, label %446

446:                                              ; preds = %445
  %447 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp eq i32 %448, 1
  br i1 %449, label %450, label %451

450:                                              ; preds = %446
  br label %583

451:                                              ; preds = %446
  %452 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %453 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 2
  %454 = load i32*, i32** %453, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 1
  %456 = load i32, i32* %455, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.ebox, %struct.ebox* %452, i64 %457, i32 8
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %461 = sext i32 %459 to i64
  %462 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %460, i64 %461, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 2
  %465 = load i32*, i32** %464, align 8
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %468 = sext i32 %466 to i64
  %469 = getelementptr inbounds i32, i32* %465, i64 %468
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.ebox, %struct.ebox* %467, i64 %471, i32 9
  %473 = load i32, i32* %472, align 4
  %474 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %475 = sext i32 %473 to i64
  %476 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %474, i64 %475, i32 0
  %477 = load i32, i32* %476, align 4
  br label %478

478:                                              ; preds = %480, %451
  %.126 = phi i32 [ 0, %451 ], [ %490, %480 ]
  %.320 = phi i32 [ 1, %451 ], [ %491, %480 ]
  %.not42 = icmp sgt i32 %.320, %466
  br i1 %.not42, label %492, label %479

479:                                              ; preds = %478
  br label %480

480:                                              ; preds = %479
  %481 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %482 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 2
  %483 = load i32*, i32** %482, align 8
  %484 = zext i32 %.320 to i64
  %485 = getelementptr inbounds i32, i32* %483, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.ebox, %struct.ebox* %481, i64 %487, i32 2
  %489 = load i32, i32* %488, align 8
  %490 = add nsw i32 %.126, %489
  %491 = add nuw nsw i32 %.320, 1
  br label %478, !llvm.loop !20

492:                                              ; preds = %478
  %493 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = sdiv i32 %494, 2
  %.neg = sdiv i32 %494, -2
  %496 = add i32 %.neg, %494
  %497 = icmp sgt i32 %463, 0
  br i1 %497, label %498, label %539

498:                                              ; preds = %492
  %499 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %500 = sext i32 %463 to i64
  %501 = getelementptr inbounds %struct.clbox*, %struct.clbox** %499, i64 %500
  br label %502

502:                                              ; preds = %508, %498
  %.2.in = phi %struct.clbox** [ %501, %498 ], [ %509, %508 ]
  %.2 = load %struct.clbox*, %struct.clbox** %.2.in, align 8
  %503 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = icmp eq i32 %504, %459
  br i1 %505, label %506, label %507

506:                                              ; preds = %502
  br label %510

507:                                              ; preds = %502
  br label %508

508:                                              ; preds = %507
  %509 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 7
  br label %502

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 3
  %512 = load i32, i32* %511, align 8
  %513 = sub nsw i32 %.126, %512
  %514 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 6
  %515 = load i32, i32* %514, align 8
  %516 = icmp slt i32 %513, %515
  br i1 %516, label %517, label %523

517:                                              ; preds = %510
  %518 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 3
  %519 = load i32, i32* %518, align 8
  %520 = sub nsw i32 %.126, %519
  %521 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 6
  store i32 %520, i32* %521, align 8
  %522 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 1
  store i32 %495, i32* %522, align 4
  br label %523

523:                                              ; preds = %517, %510
  %524 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 2
  store i32 1, i32* %524, align 8
  %525 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %526 = sext i32 %459 to i64
  %527 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %525, i64 %526, i32 3
  %528 = load i32, i32* %527, align 4
  %529 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 3
  store i32 %528, i32* %529, align 4
  %530 = sext i32 %459 to i64
  %531 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %525, i64 %530, i32 1
  %532 = load i32, i32* %531, align 4
  %533 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 4
  store i32 %532, i32* %533, align 8
  %534 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %535 = sext i32 %459 to i64
  %536 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %534, i64 %535, i32 2
  %537 = load i32, i32* %536, align 4
  %538 = getelementptr inbounds %struct.clbox, %struct.clbox* %.2, i64 0, i32 5
  store i32 %537, i32* %538, align 4
  br label %539

539:                                              ; preds = %523, %492
  %540 = icmp sgt i32 %477, 0
  br i1 %540, label %541, label %582

541:                                              ; preds = %539
  %542 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %543 = sext i32 %477 to i64
  %544 = getelementptr inbounds %struct.clbox*, %struct.clbox** %542, i64 %543
  br label %545

545:                                              ; preds = %551, %541
  %.3.in = phi %struct.clbox** [ %544, %541 ], [ %552, %551 ]
  %.3 = load %struct.clbox*, %struct.clbox** %.3.in, align 8
  %546 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 0
  %547 = load i32, i32* %546, align 8
  %548 = icmp eq i32 %547, %473
  br i1 %548, label %549, label %550

549:                                              ; preds = %545
  br label %553

550:                                              ; preds = %545
  br label %551

551:                                              ; preds = %550
  %552 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 7
  br label %545

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 3
  %555 = load i32, i32* %554, align 8
  %556 = sub nsw i32 %.126, %555
  %557 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 6
  %558 = load i32, i32* %557, align 8
  %559 = icmp slt i32 %556, %558
  br i1 %559, label %560, label %566

560:                                              ; preds = %553
  %561 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 3
  %562 = load i32, i32* %561, align 8
  %563 = sub nsw i32 %.126, %562
  %564 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 6
  store i32 %563, i32* %564, align 8
  %565 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 1
  store i32 %496, i32* %565, align 4
  br label %566

566:                                              ; preds = %560, %553
  %567 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 2
  store i32 1, i32* %567, align 8
  %568 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %569 = sext i32 %473 to i64
  %570 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %568, i64 %569, i32 3
  %571 = load i32, i32* %570, align 4
  %572 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 3
  store i32 %571, i32* %572, align 4
  %573 = sext i32 %473 to i64
  %574 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %568, i64 %573, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 4
  store i32 %575, i32* %576, align 8
  %577 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %578 = sext i32 %473 to i64
  %579 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %577, i64 %578, i32 2
  %580 = load i32, i32* %579, align 4
  %581 = getelementptr inbounds %struct.clbox, %struct.clbox* %.3, i64 0, i32 5
  store i32 %580, i32* %581, align 4
  br label %582

582:                                              ; preds = %566, %539
  br label %583

583:                                              ; preds = %582, %450
  %584 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.330, i64 0, i32 4
  br label %445, !llvm.loop !21

585:                                              ; preds = %445
  br label %586

586:                                              ; preds = %585
  %587 = add nuw nsw i32 %.312, 1
  br label %439, !llvm.loop !22

588:                                              ; preds = %439
  br label %589

589:                                              ; preds = %622, %588
  %.421 = phi i32 [ 1, %588 ], [ %623, %622 ]
  %590 = load i32, i32* @numberCells, align 4
  %.not39 = icmp sgt i32 %.421, %590
  br i1 %.not39, label %624, label %591

591:                                              ; preds = %589
  %592 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %593 = zext i32 %.421 to i64
  %594 = getelementptr inbounds %struct.clbox*, %struct.clbox** %592, i64 %593
  %595 = load %struct.clbox*, %struct.clbox** %594, align 8
  %596 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %597 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %596, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 noundef %.421) #4
  br label %598

598:                                              ; preds = %618, %591
  %.4 = phi %struct.clbox* [ %595, %591 ], [ %620, %618 ]
  %.not40 = icmp eq %struct.clbox* %.4, null
  br i1 %.not40, label %621, label %599

599:                                              ; preds = %598
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %601 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 1
  %604 = load i32, i32* %603, align 4
  %605 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %600, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 noundef %602, i32 noundef %604) #4
  %606 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %607 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 2
  %608 = load i32, i32* %607, align 8
  %609 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 4
  %612 = load i32, i32* %611, align 8
  %613 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %606, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 noundef %608, i32 noundef %610, i32 noundef %612) #4
  %614 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %615 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 5
  %616 = load i32, i32* %615, align 4
  %617 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %614, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 noundef %616) #4
  br label %618

618:                                              ; preds = %599
  %619 = getelementptr inbounds %struct.clbox, %struct.clbox* %.4, i64 0, i32 7
  %620 = load %struct.clbox*, %struct.clbox** %619, align 8
  br label %598, !llvm.loop !23

621:                                              ; preds = %598
  br label %622

622:                                              ; preds = %621
  %623 = add nuw nsw i32 %.421, 1
  br label %589, !llvm.loop !24

624:                                              ; preds = %589
  ret void
}

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
