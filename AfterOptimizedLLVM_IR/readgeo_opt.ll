; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readgeo.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/readgeo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clbox = type { i32, i32, i32, i32, i32, i32, i32, %struct.clbox* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@bbr = external dso_local global i32, align 4
@bbt = external dso_local global i32, align 4
@bbl = external dso_local global i32, align 4
@bbb = external dso_local global i32, align 4
@edgeCount = external dso_local global i32, align 4
@hFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@vFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@hEdgeRoot = external dso_local global %struct.tnode*, align 8
@vEdgeRoot = external dso_local global %struct.tnode*, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@cellList = external dso_local global %struct.clbox**, align 8
@.str = private unnamed_addr constant [5 x i8] c" %s \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cell\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %d %d \00", align 1
@fpdebug = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Found unparsable keyword: < %s > in \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"the .geo file\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Current cell: %d\0A\00", align 1
@numberCells = external dso_local global i32, align 4
@numProbes = external dso_local global i32, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @readgeo(%struct._IO_FILE* noundef %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [32 x i8], align 16
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
  %15 = alloca %struct.clbox*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i32 0, i32* @bbr, align 4
  store i32 0, i32* @bbt, align 4
  store i32 10000000, i32* @bbl, align 4
  store i32 10000000, i32* @bbb, align 4
  store i32 0, i32* @edgeCount, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store %struct.tnode* null, %struct.tnode** @hFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vFixedEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @hEdgeRoot, align 8
  store %struct.tnode* null, %struct.tnode** @vEdgeRoot, align 8
  %16 = call noalias i8* @malloc(i64 noundef 16040) #5
  %17 = bitcast i8* %16 to %struct.edgebox*
  store %struct.edgebox* %17, %struct.edgebox** @edgeList, align 8
  %18 = call noalias i8* @malloc(i64 noundef 400) #5
  %19 = bitcast i8* %18 to %struct.clbox**
  store %struct.clbox** %19, %struct.clbox*** @cellList, align 8
  store i32 1, i32* %14, align 4
  br label %20

20:                                               ; preds = %28, %1
  %21 = load i32, i32* %14, align 4
  %22 = icmp sle i32 %21, 49
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.clbox*, %struct.clbox** %24, i64 %26
  store %struct.clbox* null, %struct.clbox** %27, align 8
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  br label %20, !llvm.loop !4

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %479, %31
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %33, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %480

37:                                               ; preds = %32
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %39 = call i32 @strcmp(i8* noundef %38, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %470

41:                                               ; preds = %37
  store %struct.clbox* null, %struct.clbox** %15, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  %44 = srem i32 %43, 50
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %48 = bitcast %struct.clbox** %47 to i8*
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 50
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 8
  %53 = call i8* @realloc(i8* noundef %48, i64 noundef %52) #5
  %54 = bitcast i8* %53 to %struct.clbox**
  store %struct.clbox** %54, %struct.clbox*** @cellList, align 8
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %66, %46
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 49
  %60 = icmp sle i32 %57, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.clbox*, %struct.clbox** %62, i64 %64
  store %struct.clbox* null, %struct.clbox** %65, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %14, align 4
  br label %56, !llvm.loop !6

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %71, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %72)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %74, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* noundef %4)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %77 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %77)
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %343, %70
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %346

83:                                               ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %84, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* noundef %6, i32* noundef %7)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @bbr, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* @bbr, align 4
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @bbl, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* @bbl, align 4
  br label %97

97:                                               ; preds = %95, %91
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @bbt, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* @bbt, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @bbb, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* @bbb, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %8, align 4
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %9, align 4
  store i32 %114, i32* %11, align 4
  br label %342

115:                                              ; preds = %109
  %116 = load i32, i32* @edgeCount, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* @edgeCount, align 4
  %118 = load %struct.clbox*, %struct.clbox** %15, align 8
  %119 = icmp eq %struct.clbox* %118, null
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = call noalias i8* @malloc(i64 noundef 40) #5
  %122 = bitcast i8* %121 to %struct.clbox*
  %123 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.clbox*, %struct.clbox** %123, i64 %125
  store %struct.clbox* %122, %struct.clbox** %126, align 8
  %127 = load %struct.clbox**, %struct.clbox*** @cellList, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.clbox*, %struct.clbox** %127, i64 %129
  %131 = load %struct.clbox*, %struct.clbox** %130, align 8
  store %struct.clbox* %131, %struct.clbox** %15, align 8
  br label %140

132:                                              ; preds = %115
  %133 = call noalias i8* @malloc(i64 noundef 40) #5
  %134 = bitcast i8* %133 to %struct.clbox*
  %135 = load %struct.clbox*, %struct.clbox** %15, align 8
  %136 = getelementptr inbounds %struct.clbox, %struct.clbox* %135, i32 0, i32 7
  store %struct.clbox* %134, %struct.clbox** %136, align 8
  %137 = load %struct.clbox*, %struct.clbox** %15, align 8
  %138 = getelementptr inbounds %struct.clbox, %struct.clbox* %137, i32 0, i32 7
  %139 = load %struct.clbox*, %struct.clbox** %138, align 8
  store %struct.clbox* %139, %struct.clbox** %15, align 8
  br label %140

140:                                              ; preds = %132, %120
  %141 = load %struct.clbox*, %struct.clbox** %15, align 8
  %142 = getelementptr inbounds %struct.clbox, %struct.clbox* %141, i32 0, i32 7
  store %struct.clbox* null, %struct.clbox** %142, align 8
  %143 = load i32, i32* @edgeCount, align 4
  %144 = load %struct.clbox*, %struct.clbox** %15, align 8
  %145 = getelementptr inbounds %struct.clbox, %struct.clbox* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  %146 = load %struct.clbox*, %struct.clbox** %15, align 8
  %147 = getelementptr inbounds %struct.clbox, %struct.clbox* %146, i32 0, i32 1
  store i32 0, i32* %147, align 4
  %148 = load %struct.clbox*, %struct.clbox** %15, align 8
  %149 = getelementptr inbounds %struct.clbox, %struct.clbox* %148, i32 0, i32 6
  store i32 1000000, i32* %149, align 8
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %12, align 4
  %152 = icmp sgt i32 %151, 400
  br i1 %152, label %153, label %162

153:                                              ; preds = %140
  %154 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %155 = bitcast %struct.edgebox* %154 to i8*
  %156 = load i32, i32* @edgeCount, align 4
  %157 = add nsw i32 %156, 400
  %158 = sext i32 %157 to i64
  %159 = mul i64 %158, 40
  %160 = call i8* @realloc(i8* noundef %155, i64 noundef %159) #5
  %161 = bitcast i8* %160 to %struct.edgebox*
  store %struct.edgebox* %161, %struct.edgebox** @edgeList, align 8
  store i32 1, i32* %12, align 4
  br label %162

162:                                              ; preds = %153, %140
  %163 = load i32, i32* %5, align 4
  %164 = srem i32 %163, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %233

166:                                              ; preds = %162
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp sle i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32, i32* %9, align 4
  br label %174

172:                                              ; preds = %166
  %173 = load i32, i32* %7, align 4
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i32 [ %171, %170 ], [ %173, %172 ]
  %176 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %177 = load i32, i32* @edgeCount, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %176, i64 %178
  %180 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %179, i32 0, i32 1
  store i32 %175, i32* %180, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* %7, align 4
  br label %188

186:                                              ; preds = %174
  %187 = load i32, i32* %9, align 4
  br label %188

188:                                              ; preds = %186, %184
  %189 = phi i32 [ %185, %184 ], [ %187, %186 ]
  %190 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %191 = load i32, i32* @edgeCount, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %190, i64 %192
  %194 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %193, i32 0, i32 2
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %197 = load i32, i32* @edgeCount, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %196, i64 %198
  %200 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %199, i32 0, i32 3
  store i32 %195, i32* %200, align 4
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp sle i32 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %188
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %9, align 4
  %207 = sub nsw i32 %205, %206
  br label %212

208:                                              ; preds = %188
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sub nsw i32 %209, %210
  br label %212

212:                                              ; preds = %208, %204
  %213 = phi i32 [ %207, %204 ], [ %211, %208 ]
  %214 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %215 = load i32, i32* @edgeCount, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %214, i64 %216
  %218 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %217, i32 0, i32 4
  store i32 %213, i32* %218, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %7, align 4
  %221 = icmp sle i32 %219, %220
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 -1
  %224 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %225 = load i32, i32* @edgeCount, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %224, i64 %226
  %228 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %227, i32 0, i32 5
  store i32 %223, i32* %228, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @vFixedEdgeRoot, i32 noundef %229, i32 noundef %230)
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @vEdgeRoot, i32 noundef %231, i32 noundef %232)
  br label %300

233:                                              ; preds = %162
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp sle i32 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i32, i32* %8, align 4
  br label %241

239:                                              ; preds = %233
  %240 = load i32, i32* %6, align 4
  br label %241

241:                                              ; preds = %239, %237
  %242 = phi i32 [ %238, %237 ], [ %240, %239 ]
  %243 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %244 = load i32, i32* @edgeCount, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %243, i64 %245
  %247 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %246, i32 0, i32 1
  store i32 %242, i32* %247, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp sle i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %241
  %252 = load i32, i32* %6, align 4
  br label %255

253:                                              ; preds = %241
  %254 = load i32, i32* %8, align 4
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i32 [ %252, %251 ], [ %254, %253 ]
  %257 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %258 = load i32, i32* @edgeCount, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %257, i64 %259
  %261 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %260, i32 0, i32 2
  store i32 %256, i32* %261, align 4
  %262 = load i32, i32* %9, align 4
  %263 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %264 = load i32, i32* @edgeCount, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %263, i64 %265
  %267 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %266, i32 0, i32 3
  store i32 %262, i32* %267, align 4
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* %6, align 4
  %270 = icmp sle i32 %268, %269
  br i1 %270, label %271, label %275

271:                                              ; preds = %255
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* %8, align 4
  %274 = sub nsw i32 %272, %273
  br label %279

275:                                              ; preds = %255
  %276 = load i32, i32* %8, align 4
  %277 = load i32, i32* %6, align 4
  %278 = sub nsw i32 %276, %277
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i32 [ %274, %271 ], [ %278, %275 ]
  %281 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %282 = load i32, i32* @edgeCount, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %281, i64 %283
  %285 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %284, i32 0, i32 4
  store i32 %280, i32* %285, align 4
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp sle i32 %286, %287
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 1, i32 -1
  %291 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %292 = load i32, i32* @edgeCount, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %291, i64 %293
  %295 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %294, i32 0, i32 5
  store i32 %290, i32* %295, align 4
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @hFixedEdgeRoot, i32 noundef %296, i32 noundef %297)
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %298, i32 noundef %299)
  br label %300

300:                                              ; preds = %279, %212
  %301 = load i32, i32* %13, align 4
  %302 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %303 = load i32, i32* @edgeCount, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %302, i64 %304
  %306 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %305, i32 0, i32 0
  store i32 %301, i32* %306, align 4
  %307 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %308 = load i32, i32* @edgeCount, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %307, i64 %309
  %311 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %310, i32 0, i32 6
  store i32 1, i32* %311, align 4
  %312 = load i32, i32* @edgeCount, align 4
  %313 = add nsw i32 %312, 1
  %314 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %315 = load i32, i32* @edgeCount, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %314, i64 %316
  %318 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %317, i32 0, i32 8
  store i32 %313, i32* %318, align 4
  %319 = load i32, i32* %5, align 4
  %320 = icmp eq i32 %319, 2
  br i1 %320, label %321, label %331

321:                                              ; preds = %300
  %322 = load i32, i32* @edgeCount, align 4
  %323 = load i32, i32* %4, align 4
  %324 = add nsw i32 %322, %323
  %325 = sub nsw i32 %324, 1
  %326 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %327 = load i32, i32* @edgeCount, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %326, i64 %328
  %330 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %329, i32 0, i32 7
  store i32 %325, i32* %330, align 4
  br label %339

331:                                              ; preds = %300
  %332 = load i32, i32* @edgeCount, align 4
  %333 = sub nsw i32 %332, 1
  %334 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %335 = load i32, i32* @edgeCount, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %334, i64 %336
  %338 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %337, i32 0, i32 7
  store i32 %333, i32* %338, align 4
  br label %339

339:                                              ; preds = %331, %321
  %340 = load i32, i32* %6, align 4
  store i32 %340, i32* %8, align 4
  %341 = load i32, i32* %7, align 4
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %339, %112
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %5, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %5, align 4
  br label %79, !llvm.loop !7

346:                                              ; preds = %79
  %347 = load i32, i32* %10, align 4
  store i32 %347, i32* %6, align 4
  %348 = load i32, i32* %11, align 4
  store i32 %348, i32* %7, align 4
  %349 = load i32, i32* @edgeCount, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* @edgeCount, align 4
  %351 = call noalias i8* @malloc(i64 noundef 40) #5
  %352 = bitcast i8* %351 to %struct.clbox*
  %353 = load %struct.clbox*, %struct.clbox** %15, align 8
  %354 = getelementptr inbounds %struct.clbox, %struct.clbox* %353, i32 0, i32 7
  store %struct.clbox* %352, %struct.clbox** %354, align 8
  store %struct.clbox* %352, %struct.clbox** %15, align 8
  %355 = load %struct.clbox*, %struct.clbox** %15, align 8
  %356 = getelementptr inbounds %struct.clbox, %struct.clbox* %355, i32 0, i32 7
  store %struct.clbox* null, %struct.clbox** %356, align 8
  %357 = load i32, i32* @edgeCount, align 4
  %358 = load %struct.clbox*, %struct.clbox** %15, align 8
  %359 = getelementptr inbounds %struct.clbox, %struct.clbox* %358, i32 0, i32 0
  store i32 %357, i32* %359, align 8
  %360 = load %struct.clbox*, %struct.clbox** %15, align 8
  %361 = getelementptr inbounds %struct.clbox, %struct.clbox* %360, i32 0, i32 1
  store i32 0, i32* %361, align 4
  %362 = load %struct.clbox*, %struct.clbox** %15, align 8
  %363 = getelementptr inbounds %struct.clbox, %struct.clbox* %362, i32 0, i32 6
  store i32 1000000, i32* %363, align 8
  %364 = load i32, i32* %12, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %12, align 4
  %366 = icmp sgt i32 %365, 400
  br i1 %366, label %367, label %376

367:                                              ; preds = %346
  %368 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %369 = bitcast %struct.edgebox* %368 to i8*
  %370 = load i32, i32* @edgeCount, align 4
  %371 = add nsw i32 %370, 400
  %372 = sext i32 %371 to i64
  %373 = mul i64 %372, 40
  %374 = call i8* @realloc(i8* noundef %369, i64 noundef %373) #5
  %375 = bitcast i8* %374 to %struct.edgebox*
  store %struct.edgebox* %375, %struct.edgebox** @edgeList, align 8
  store i32 1, i32* %12, align 4
  br label %376

376:                                              ; preds = %367, %346
  %377 = load i32, i32* %13, align 4
  %378 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %379 = load i32, i32* @edgeCount, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %378, i64 %380
  %382 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %381, i32 0, i32 0
  store i32 %377, i32* %382, align 4
  %383 = load i32, i32* %8, align 4
  %384 = load i32, i32* %6, align 4
  %385 = icmp sle i32 %383, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %376
  %387 = load i32, i32* %8, align 4
  br label %390

388:                                              ; preds = %376
  %389 = load i32, i32* %6, align 4
  br label %390

390:                                              ; preds = %388, %386
  %391 = phi i32 [ %387, %386 ], [ %389, %388 ]
  %392 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %393 = load i32, i32* @edgeCount, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %392, i64 %394
  %396 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %395, i32 0, i32 1
  store i32 %391, i32* %396, align 4
  %397 = load i32, i32* %8, align 4
  %398 = load i32, i32* %6, align 4
  %399 = icmp sle i32 %397, %398
  br i1 %399, label %400, label %402

400:                                              ; preds = %390
  %401 = load i32, i32* %6, align 4
  br label %404

402:                                              ; preds = %390
  %403 = load i32, i32* %8, align 4
  br label %404

404:                                              ; preds = %402, %400
  %405 = phi i32 [ %401, %400 ], [ %403, %402 ]
  %406 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %407 = load i32, i32* @edgeCount, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %406, i64 %408
  %410 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %409, i32 0, i32 2
  store i32 %405, i32* %410, align 4
  %411 = load i32, i32* %9, align 4
  %412 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %413 = load i32, i32* @edgeCount, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %412, i64 %414
  %416 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %415, i32 0, i32 3
  store i32 %411, i32* %416, align 4
  %417 = load i32, i32* %8, align 4
  %418 = load i32, i32* %6, align 4
  %419 = icmp sle i32 %417, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %404
  %421 = load i32, i32* %6, align 4
  %422 = load i32, i32* %8, align 4
  %423 = sub nsw i32 %421, %422
  br label %428

424:                                              ; preds = %404
  %425 = load i32, i32* %8, align 4
  %426 = load i32, i32* %6, align 4
  %427 = sub nsw i32 %425, %426
  br label %428

428:                                              ; preds = %424, %420
  %429 = phi i32 [ %423, %420 ], [ %427, %424 ]
  %430 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %431 = load i32, i32* @edgeCount, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %430, i64 %432
  %434 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %433, i32 0, i32 4
  store i32 %429, i32* %434, align 4
  %435 = load i32, i32* %8, align 4
  %436 = load i32, i32* %6, align 4
  %437 = icmp sle i32 %435, %436
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 1, i32 -1
  %440 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %441 = load i32, i32* @edgeCount, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %440, i64 %442
  %444 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %443, i32 0, i32 5
  store i32 %439, i32* %444, align 4
  %445 = load i32, i32* @edgeCount, align 4
  %446 = sub nsw i32 %445, 1
  %447 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %448 = load i32, i32* @edgeCount, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %447, i64 %449
  %451 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %450, i32 0, i32 7
  store i32 %446, i32* %451, align 4
  %452 = load i32, i32* @edgeCount, align 4
  %453 = load i32, i32* %4, align 4
  %454 = sub nsw i32 %453, 1
  %455 = sub nsw i32 %452, %454
  %456 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %457 = load i32, i32* @edgeCount, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %456, i64 %458
  %460 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %459, i32 0, i32 8
  store i32 %455, i32* %460, align 4
  %461 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %462 = load i32, i32* @edgeCount, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %461, i64 %463
  %465 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %464, i32 0, i32 6
  store i32 1, i32* %465, align 4
  %466 = load i32, i32* %9, align 4
  %467 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @hFixedEdgeRoot, i32 noundef %466, i32 noundef %467)
  %468 = load i32, i32* %9, align 4
  %469 = load i32, i32* @edgeCount, align 4
  call void @tinsert(%struct.tnode** noundef @hEdgeRoot, i32 noundef %468, i32 noundef %469)
  br label %479

470:                                              ; preds = %37
  %471 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %472 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %473 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %471, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* noundef %472)
  %474 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %475 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %474, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %476 = load %struct._IO_FILE*, %struct._IO_FILE** @fpdebug, align 8
  %477 = load i32, i32* %13, align 4
  %478 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %476, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 noundef %477)
  call void @exit(i32 noundef 0) #7
  unreachable

479:                                              ; preds = %428
  br label %32, !llvm.loop !8

480:                                              ; preds = %32
  %481 = load i32, i32* %13, align 4
  store i32 %481, i32* @numberCells, align 4
  %482 = load i32, i32* @bbb, align 4
  %483 = add nsw i32 %482, -1
  store i32 %483, i32* @bbb, align 4
  %484 = load i32, i32* @bbt, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* @bbt, align 4
  %486 = load i32, i32* @bbl, align 4
  %487 = add nsw i32 %486, -1
  store i32 %487, i32* @bbl, align 4
  %488 = load i32, i32* @bbr, align 4
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* @bbr, align 4
  %490 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %491 = bitcast %struct.edgebox* %490 to i8*
  %492 = load i32, i32* @edgeCount, align 4
  %493 = mul nsw i32 3, %492
  %494 = add nsw i32 %493, 5
  %495 = sext i32 %494 to i64
  %496 = mul i64 %495, 40
  %497 = call i8* @realloc(i8* noundef %491, i64 noundef %496) #5
  %498 = bitcast i8* %497 to %struct.edgebox*
  store %struct.edgebox* %498, %struct.edgebox** @edgeList, align 8
  %499 = load i32, i32* @bbb, align 4
  %500 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %501 = load i32, i32* @edgeCount, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* @edgeCount, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %500, i64 %503
  %505 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %504, i32 0, i32 1
  store i32 %499, i32* %505, align 4
  %506 = load i32, i32* @bbt, align 4
  %507 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %508 = load i32, i32* @edgeCount, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %507, i64 %509
  %511 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %510, i32 0, i32 2
  store i32 %506, i32* %511, align 4
  %512 = load i32, i32* @bbl, align 4
  %513 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %514 = load i32, i32* @edgeCount, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %513, i64 %515
  %517 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %516, i32 0, i32 3
  store i32 %512, i32* %517, align 4
  %518 = load i32, i32* @bbt, align 4
  %519 = load i32, i32* @bbb, align 4
  %520 = sub nsw i32 %518, %519
  %521 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %522 = load i32, i32* @edgeCount, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %521, i64 %523
  %525 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %524, i32 0, i32 4
  store i32 %520, i32* %525, align 4
  %526 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %527 = load i32, i32* @edgeCount, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %526, i64 %528
  %530 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %529, i32 0, i32 6
  store i32 1, i32* %530, align 4
  %531 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %532 = load i32, i32* @edgeCount, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %531, i64 %533
  %535 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %534, i32 0, i32 5
  store i32 -1, i32* %535, align 4
  %536 = load i32, i32* @edgeCount, align 4
  %537 = add nsw i32 %536, 1
  %538 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %539 = load i32, i32* @edgeCount, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %538, i64 %540
  %542 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %541, i32 0, i32 7
  store i32 %537, i32* %542, align 4
  %543 = load i32, i32* @edgeCount, align 4
  %544 = add nsw i32 %543, 3
  %545 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %546 = load i32, i32* @edgeCount, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %545, i64 %547
  %549 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %548, i32 0, i32 8
  store i32 %544, i32* %549, align 4
  %550 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %551 = load i32, i32* @edgeCount, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %550, i64 %552
  %554 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %553, i32 0, i32 0
  store i32 -1, i32* %554, align 4
  %555 = load i32, i32* @bbl, align 4
  %556 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %557 = load i32, i32* @edgeCount, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* @edgeCount, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %556, i64 %559
  %561 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %560, i32 0, i32 1
  store i32 %555, i32* %561, align 4
  %562 = load i32, i32* @bbr, align 4
  %563 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %564 = load i32, i32* @edgeCount, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %563, i64 %565
  %567 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %566, i32 0, i32 2
  store i32 %562, i32* %567, align 4
  %568 = load i32, i32* @bbt, align 4
  %569 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %570 = load i32, i32* @edgeCount, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %569, i64 %571
  %573 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %572, i32 0, i32 3
  store i32 %568, i32* %573, align 4
  %574 = load i32, i32* @bbr, align 4
  %575 = load i32, i32* @bbl, align 4
  %576 = sub nsw i32 %574, %575
  %577 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %578 = load i32, i32* @edgeCount, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %577, i64 %579
  %581 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %580, i32 0, i32 4
  store i32 %576, i32* %581, align 4
  %582 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %583 = load i32, i32* @edgeCount, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %582, i64 %584
  %586 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %585, i32 0, i32 6
  store i32 1, i32* %586, align 4
  %587 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %588 = load i32, i32* @edgeCount, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %587, i64 %589
  %591 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %590, i32 0, i32 5
  store i32 -1, i32* %591, align 4
  %592 = load i32, i32* @edgeCount, align 4
  %593 = add nsw i32 %592, 1
  %594 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %595 = load i32, i32* @edgeCount, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %594, i64 %596
  %598 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %597, i32 0, i32 7
  store i32 %593, i32* %598, align 4
  %599 = load i32, i32* @edgeCount, align 4
  %600 = sub nsw i32 %599, 1
  %601 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %602 = load i32, i32* @edgeCount, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %601, i64 %603
  %605 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %604, i32 0, i32 8
  store i32 %600, i32* %605, align 4
  %606 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %607 = load i32, i32* @edgeCount, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %606, i64 %608
  %610 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %609, i32 0, i32 0
  store i32 -1, i32* %610, align 4
  %611 = load i32, i32* @bbb, align 4
  %612 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %613 = load i32, i32* @edgeCount, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* @edgeCount, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %612, i64 %615
  %617 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %616, i32 0, i32 1
  store i32 %611, i32* %617, align 4
  %618 = load i32, i32* @bbt, align 4
  %619 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %620 = load i32, i32* @edgeCount, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %619, i64 %621
  %623 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %622, i32 0, i32 2
  store i32 %618, i32* %623, align 4
  %624 = load i32, i32* @bbr, align 4
  %625 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %626 = load i32, i32* @edgeCount, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %625, i64 %627
  %629 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %628, i32 0, i32 3
  store i32 %624, i32* %629, align 4
  %630 = load i32, i32* @bbt, align 4
  %631 = load i32, i32* @bbb, align 4
  %632 = sub nsw i32 %630, %631
  %633 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %634 = load i32, i32* @edgeCount, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %633, i64 %635
  %637 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %636, i32 0, i32 4
  store i32 %632, i32* %637, align 4
  %638 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %639 = load i32, i32* @edgeCount, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %638, i64 %640
  %642 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %641, i32 0, i32 6
  store i32 1, i32* %642, align 4
  %643 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %644 = load i32, i32* @edgeCount, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %643, i64 %645
  %647 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %646, i32 0, i32 5
  store i32 1, i32* %647, align 4
  %648 = load i32, i32* @edgeCount, align 4
  %649 = add nsw i32 %648, 1
  %650 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %651 = load i32, i32* @edgeCount, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %650, i64 %652
  %654 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %653, i32 0, i32 7
  store i32 %649, i32* %654, align 4
  %655 = load i32, i32* @edgeCount, align 4
  %656 = sub nsw i32 %655, 1
  %657 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %658 = load i32, i32* @edgeCount, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %657, i64 %659
  %661 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %660, i32 0, i32 8
  store i32 %656, i32* %661, align 4
  %662 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %663 = load i32, i32* @edgeCount, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %662, i64 %664
  %666 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %665, i32 0, i32 0
  store i32 -1, i32* %666, align 4
  %667 = load i32, i32* @bbl, align 4
  %668 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %669 = load i32, i32* @edgeCount, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* @edgeCount, align 4
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %668, i64 %671
  %673 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %672, i32 0, i32 1
  store i32 %667, i32* %673, align 4
  %674 = load i32, i32* @bbr, align 4
  %675 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %676 = load i32, i32* @edgeCount, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %675, i64 %677
  %679 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %678, i32 0, i32 2
  store i32 %674, i32* %679, align 4
  %680 = load i32, i32* @bbb, align 4
  %681 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %682 = load i32, i32* @edgeCount, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %681, i64 %683
  %685 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %684, i32 0, i32 3
  store i32 %680, i32* %685, align 4
  %686 = load i32, i32* @bbr, align 4
  %687 = load i32, i32* @bbl, align 4
  %688 = sub nsw i32 %686, %687
  %689 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %690 = load i32, i32* @edgeCount, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %689, i64 %691
  %693 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %692, i32 0, i32 4
  store i32 %688, i32* %693, align 4
  %694 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %695 = load i32, i32* @edgeCount, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %694, i64 %696
  %698 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %697, i32 0, i32 6
  store i32 1, i32* %698, align 4
  %699 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %700 = load i32, i32* @edgeCount, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %699, i64 %701
  %703 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %702, i32 0, i32 5
  store i32 1, i32* %703, align 4
  %704 = load i32, i32* @edgeCount, align 4
  %705 = sub nsw i32 %704, 3
  %706 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %707 = load i32, i32* @edgeCount, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %706, i64 %708
  %710 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %709, i32 0, i32 7
  store i32 %705, i32* %710, align 4
  %711 = load i32, i32* @edgeCount, align 4
  %712 = sub nsw i32 %711, 1
  %713 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %714 = load i32, i32* @edgeCount, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %713, i64 %715
  %717 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %716, i32 0, i32 8
  store i32 %712, i32* %717, align 4
  %718 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %719 = load i32, i32* @edgeCount, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %718, i64 %720
  %722 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %721, i32 0, i32 0
  store i32 -1, i32* %722, align 4
  store i32 0, i32* @numProbes, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

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
