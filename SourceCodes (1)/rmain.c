; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/rmain.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/rmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.tnode* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.wcbox = type { i32, i32, i32*, i32, %struct.wcbox* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bellbox = type { i32, i32 }
%struct.pnode = type { i32, %struct.nnode*, %struct.list2* }
%struct.nnode = type { i32, i32, i16, i16 }
%struct.list2 = type { i32, %struct.list2* }
%struct.gnode = type { i32, i32, i32, i32, i32, i32, i32, %struct.gnode* }
%struct.nrbox = type { %struct.altbox**, i32, i32, i32 }
%struct.altbox = type { i32*, i32, %struct.chanbox* }
%struct.chanbox = type { i32, i32, i32, i32, %struct.chanbox* }
%struct.path = type { i16*, i32, i32, i32, [5 x i32] }
%struct.quad = type { i32, i32, i32, i32, %struct.quad*, %struct.quad* }

@finalShot = external dso_local global i32, align 4
@doCompaction = external dso_local global i32, align 4
@bareFlag = external dso_local global i32, align 4
@routerMaxPaths = external dso_local global i32, align 4
@MAXPATHS = external dso_local global i32, align 4
@routerExtraS = external dso_local global i32, align 4
@EXTRASOURCES = external dso_local global i32, align 4
@bareMinimum = dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s.gph\00", align 1
@cktName = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fpo = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"Error: file: %s not present\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.twf\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"can't open %s\0A\00", align 1
@doChannelGraph = external dso_local global i32, align 4
@eNum = external dso_local global i32, align 4
@eArray = external dso_local global %struct.ebox*, align 8
@numRects = external dso_local global i32, align 4
@eIndexArray = external dso_local global i32**, align 8
@numXnodes = external dso_local global i32, align 4
@xNodeArray = external dso_local global %struct.wcbox**, align 8
@numYnodes = external dso_local global i32, align 4
@yNodeArray = external dso_local global %struct.wcbox**, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@xBellArray = external dso_local global %struct.bellbox*, align 8
@yBellArray = external dso_local global %struct.bellbox*, align 8
@pnodeAlength = external dso_local global i32, align 4
@pnodeArray = external dso_local global %struct.pnode*, align 8
@numnodes = external dso_local global i32, align 4
@maxpnode = external dso_local global i32, align 4
@gnodeArray = external dso_local global %struct.gnode**, align 8
@gtrace = external dso_local global i16**, align 8
@largestNet = external dso_local global i32, align 4
@netRoutes = external dso_local global %struct.nrbox*, align 8
@savePaths = external dso_local global i16**, align 8
@numpins = external dso_local global i32, align 4
@pnameArray = external dso_local global i8**, align 8
@nnameArray = external dso_local global i8**, align 8
@pinOffset = external dso_local global i32*, align 8
@segList = external dso_local global i16*, align 8
@netSegArray = external dso_local global i16**, align 8
@sourceList = external dso_local global i16*, align 8
@targetList = external dso_local global i16*, align 8
@delSourceList = external dso_local global i16*, align 8
@addTargetList = external dso_local global i16*, align 8
@pathList = external dso_local global i32**, align 8
@pathArray = external dso_local global %struct.path*, align 8
@tempArray = external dso_local global i16*, align 8
@pinlist = external dso_local global %struct.quad*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @rmain() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca [1024 x i8], align 16
  %3 = alloca %struct.gnode*, align 8
  %4 = alloca %struct.gnode*, align 8
  %5 = alloca %struct.quad*, align 8
  %6 = alloca %struct.quad*, align 8
  %7 = alloca %struct.chanbox*, align 8
  %8 = alloca %struct.chanbox*, align 8
  %9 = alloca %struct.nnode*, align 8
  %10 = alloca %struct.tnode*, align 8
  %11 = alloca %struct.list2*, align 8
  %12 = alloca %struct.list2*, align 8
  %13 = alloca %struct.wcbox*, align 8
  %14 = alloca %struct.wcbox*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i32, i32* @finalShot, align 4
  %20 = load i32, i32* @doCompaction, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %0
  %23 = load i32, i32* @bareFlag, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @routerMaxPaths, align 4
  store i32 %26, i32* @MAXPATHS, align 4
  %27 = load i32, i32* @routerExtraS, align 4
  store i32 %27, i32* @EXTRASOURCES, align 4
  store i32 0, i32* @bareMinimum, align 4
  br label %29

28:                                               ; preds = %22
  store i32 1, i32* @MAXPATHS, align 4
  store i32 1, i32* @EXTRASOURCES, align 4
  store i32 1, i32* @bareMinimum, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %31

30:                                               ; preds = %0
  store i32 1, i32* @MAXPATHS, align 4
  store i32 1, i32* @EXTRASOURCES, align 4
  store i32 1, i32* @bareMinimum, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %33 = load i8*, i8** @cktName, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %33) #4
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %36 = call noalias %struct._IO_FILE* @fopen(i8* noundef %35, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %1, align 8
  %37 = icmp eq %struct._IO_FILE* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* noundef %40)
  call void @exit(i32 noundef 0) #5
  unreachable

42:                                               ; preds = %31
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @readgraph(%struct._IO_FILE* noundef %43)
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %45 = load i8*, i8** @cktName, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef %44, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %45) #4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %48 = call noalias %struct._IO_FILE* @fopen(i8* noundef %47, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %48, %struct._IO_FILE** %1, align 8
  %49 = icmp eq %struct._IO_FILE* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %2, i64 0, i64 0
  %52 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef %51)
  call void @exit(i32 noundef 0) #5
  unreachable

53:                                               ; preds = %42
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  call void @readpnode(%struct._IO_FILE* noundef %54)
  call void @printnets()
  %55 = load i32, i32* @doChannelGraph, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  call void @density()
  call void @bellman()
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %60 = call i32 @fclose(%struct._IO_FILE* noundef %59)
  store i32 1, i32* %15, align 4
  br label %61

61:                                               ; preds = %86, %58
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @eNum, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ebox, %struct.ebox* %66, i64 %68
  %70 = getelementptr inbounds %struct.ebox, %struct.ebox* %69, i32 0, i32 12
  %71 = load %struct.tnode*, %struct.tnode** %70, align 8
  %72 = icmp ne %struct.tnode* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %83, %73
  %75 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %76 = load i32, i32* %15, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ebox, %struct.ebox* %75, i64 %77
  %79 = getelementptr inbounds %struct.ebox, %struct.ebox* %78, i32 0, i32 12
  call void @tpop(%struct.tnode** noundef %79, %struct.tnode** noundef %10, i32* noundef %17, i32* noundef %18)
  %80 = load %struct.tnode*, %struct.tnode** %10, align 8
  %81 = icmp eq %struct.tnode* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %84

83:                                               ; preds = %74
  br label %74

84:                                               ; preds = %82
  br label %85

85:                                               ; preds = %84, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %15, align 4
  br label %61, !llvm.loop !4

89:                                               ; preds = %61
  %90 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %91 = bitcast %struct.ebox* %90 to i8*
  call void @free(i8* noundef %91) #4
  store i32 1, i32* %15, align 4
  br label %92

92:                                               ; preds = %103, %89
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @numRects, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load i32**, i32*** @eIndexArray, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = bitcast i32* %101 to i8*
  call void @free(i8* noundef %102) #4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %15, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %15, align 4
  br label %92, !llvm.loop !6

106:                                              ; preds = %92
  %107 = load i32**, i32*** @eIndexArray, align 8
  %108 = bitcast i32** %107 to i8*
  call void @free(i8* noundef %108) #4
  store i32 1, i32* %15, align 4
  br label %109

109:                                              ; preds = %140, %106
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @numXnodes, align 4
  %112 = icmp sle i32 %110, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %109
  %114 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %114, i64 %116
  %118 = load %struct.wcbox*, %struct.wcbox** %117, align 8
  store %struct.wcbox* %118, %struct.wcbox** %13, align 8
  br label %119

119:                                              ; preds = %132, %113
  %120 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %121 = icmp ne %struct.wcbox* %120, null
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %124 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %129 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = bitcast i32* %130 to i8*
  call void @free(i8* noundef %131) #4
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %134 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %133, i32 0, i32 4
  %135 = load %struct.wcbox*, %struct.wcbox** %134, align 8
  store %struct.wcbox* %135, %struct.wcbox** %14, align 8
  %136 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %137 = bitcast %struct.wcbox* %136 to i8*
  call void @free(i8* noundef %137) #4
  %138 = load %struct.wcbox*, %struct.wcbox** %14, align 8
  store %struct.wcbox* %138, %struct.wcbox** %13, align 8
  br label %119, !llvm.loop !7

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %15, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  br label %109, !llvm.loop !8

143:                                              ; preds = %109
  store i32 1, i32* %15, align 4
  br label %144

144:                                              ; preds = %175, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @numYnodes, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %178

148:                                              ; preds = %144
  %149 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %149, i64 %151
  %153 = load %struct.wcbox*, %struct.wcbox** %152, align 8
  store %struct.wcbox* %153, %struct.wcbox** %13, align 8
  br label %154

154:                                              ; preds = %167, %148
  %155 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %156 = icmp ne %struct.wcbox* %155, null
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %159 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %164 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* noundef %166) #4
  br label %167

167:                                              ; preds = %162, %157
  %168 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %169 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %168, i32 0, i32 4
  %170 = load %struct.wcbox*, %struct.wcbox** %169, align 8
  store %struct.wcbox* %170, %struct.wcbox** %14, align 8
  %171 = load %struct.wcbox*, %struct.wcbox** %13, align 8
  %172 = bitcast %struct.wcbox* %171 to i8*
  call void @free(i8* noundef %172) #4
  %173 = load %struct.wcbox*, %struct.wcbox** %14, align 8
  store %struct.wcbox* %173, %struct.wcbox** %13, align 8
  br label %154, !llvm.loop !9

174:                                              ; preds = %154
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %144, !llvm.loop !10

178:                                              ; preds = %144
  %179 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %180 = bitcast %struct.wcbox** %179 to i8*
  call void @free(i8* noundef %180) #4
  %181 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %182 = bitcast %struct.wcbox** %181 to i8*
  call void @free(i8* noundef %182) #4
  %183 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %184 = bitcast %struct.edgebox* %183 to i8*
  call void @free(i8* noundef %184) #4
  %185 = load %struct.bellbox*, %struct.bellbox** @xBellArray, align 8
  %186 = bitcast %struct.bellbox* %185 to i8*
  call void @free(i8* noundef %186) #4
  %187 = load %struct.bellbox*, %struct.bellbox** @yBellArray, align 8
  %188 = bitcast %struct.bellbox* %187 to i8*
  call void @free(i8* noundef %188) #4
  store i32 1, i32* %15, align 4
  br label %189

189:                                              ; preds = %228, %178
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* @pnodeAlength, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %231

193:                                              ; preds = %189
  %194 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %195 = load i32, i32* %15, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.pnode, %struct.pnode* %194, i64 %196
  %198 = getelementptr inbounds %struct.pnode, %struct.pnode* %197, i32 0, i32 2
  %199 = load %struct.list2*, %struct.list2** %198, align 8
  store %struct.list2* %199, %struct.list2** %11, align 8
  br label %200

200:                                              ; preds = %203, %193
  %201 = load %struct.list2*, %struct.list2** %11, align 8
  %202 = icmp ne %struct.list2* %201, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %200
  %204 = load %struct.list2*, %struct.list2** %11, align 8
  %205 = getelementptr inbounds %struct.list2, %struct.list2* %204, i32 0, i32 1
  %206 = load %struct.list2*, %struct.list2** %205, align 8
  store %struct.list2* %206, %struct.list2** %12, align 8
  %207 = load %struct.list2*, %struct.list2** %11, align 8
  %208 = bitcast %struct.list2* %207 to i8*
  call void @free(i8* noundef %208) #4
  %209 = load %struct.list2*, %struct.list2** %12, align 8
  store %struct.list2* %209, %struct.list2** %11, align 8
  br label %200, !llvm.loop !11

210:                                              ; preds = %200
  %211 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.pnode, %struct.pnode* %211, i64 %213
  %215 = getelementptr inbounds %struct.pnode, %struct.pnode* %214, i32 0, i32 1
  %216 = load %struct.nnode*, %struct.nnode** %215, align 8
  store %struct.nnode* %216, %struct.nnode** %9, align 8
  %217 = load %struct.nnode*, %struct.nnode** %9, align 8
  %218 = icmp ne %struct.nnode* %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.pnode, %struct.pnode* %220, i64 %222
  %224 = getelementptr inbounds %struct.pnode, %struct.pnode* %223, i32 0, i32 1
  %225 = load %struct.nnode*, %struct.nnode** %224, align 8
  %226 = bitcast %struct.nnode* %225 to i8*
  call void @free(i8* noundef %226) #4
  br label %227

227:                                              ; preds = %219, %210
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %15, align 4
  br label %189, !llvm.loop !12

231:                                              ; preds = %189
  %232 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %233 = bitcast %struct.pnode* %232 to i8*
  call void @free(i8* noundef %233) #4
  store i32 1, i32* %15, align 4
  br label %234

234:                                              ; preds = %257, %231
  %235 = load i32, i32* %15, align 4
  %236 = load i32, i32* @numnodes, align 4
  %237 = load i32, i32* @maxpnode, align 4
  %238 = add nsw i32 %236, %237
  %239 = icmp sle i32 %235, %238
  br i1 %239, label %240, label %260

240:                                              ; preds = %234
  %241 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %242 = load i32, i32* %15, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.gnode*, %struct.gnode** %241, i64 %243
  %245 = load %struct.gnode*, %struct.gnode** %244, align 8
  store %struct.gnode* %245, %struct.gnode** %3, align 8
  br label %246

246:                                              ; preds = %249, %240
  %247 = load %struct.gnode*, %struct.gnode** %3, align 8
  %248 = icmp ne %struct.gnode* %247, null
  br i1 %248, label %249, label %256

249:                                              ; preds = %246
  %250 = load %struct.gnode*, %struct.gnode** %3, align 8
  %251 = getelementptr inbounds %struct.gnode, %struct.gnode* %250, i32 0, i32 7
  %252 = load %struct.gnode*, %struct.gnode** %251, align 8
  store %struct.gnode* %252, %struct.gnode** %4, align 8
  %253 = load %struct.gnode*, %struct.gnode** %3, align 8
  %254 = bitcast %struct.gnode* %253 to i8*
  call void @free(i8* noundef %254) #4
  %255 = load %struct.gnode*, %struct.gnode** %4, align 8
  store %struct.gnode* %255, %struct.gnode** %3, align 8
  br label %246, !llvm.loop !13

256:                                              ; preds = %246
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %15, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %15, align 4
  br label %234, !llvm.loop !14

260:                                              ; preds = %234
  %261 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %262 = bitcast %struct.gnode** %261 to i8*
  call void @free(i8* noundef %262) #4
  store i32 1, i32* %15, align 4
  br label %263

263:                                              ; preds = %273, %260
  %264 = load i32, i32* %15, align 4
  %265 = icmp sle i32 %264, 4
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load i16**, i16*** @gtrace, align 8
  %268 = load i32, i32* %15, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i16*, i16** %267, i64 %269
  %271 = load i16*, i16** %270, align 8
  %272 = bitcast i16* %271 to i8*
  call void @free(i8* noundef %272) #4
  br label %273

273:                                              ; preds = %266
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %263, !llvm.loop !15

276:                                              ; preds = %263
  %277 = load i16**, i16*** @gtrace, align 8
  %278 = bitcast i16** %277 to i8*
  call void @free(i8* noundef %278) #4
  store i32 1, i32* %15, align 4
  br label %279

279:                                              ; preds = %347, %276
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* @largestNet, align 4
  %282 = icmp sle i32 %280, %281
  br i1 %282, label %283, label %350

283:                                              ; preds = %279
  store i32 1, i32* %16, align 4
  br label %284

284:                                              ; preds = %336, %283
  %285 = load i32, i32* %16, align 4
  %286 = load i32, i32* @MAXPATHS, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %339

288:                                              ; preds = %284
  %289 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %289, i64 %291
  %293 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %292, i32 0, i32 0
  %294 = load %struct.altbox**, %struct.altbox*** %293, align 8
  %295 = load i32, i32* %16, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.altbox*, %struct.altbox** %294, i64 %296
  %298 = load %struct.altbox*, %struct.altbox** %297, align 8
  %299 = getelementptr inbounds %struct.altbox, %struct.altbox* %298, i32 0, i32 2
  %300 = load %struct.chanbox*, %struct.chanbox** %299, align 8
  store %struct.chanbox* %300, %struct.chanbox** %7, align 8
  br label %301

301:                                              ; preds = %304, %288
  %302 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %303 = icmp ne %struct.chanbox* %302, null
  br i1 %303, label %304, label %311

304:                                              ; preds = %301
  %305 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %306 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %305, i32 0, i32 4
  %307 = load %struct.chanbox*, %struct.chanbox** %306, align 8
  store %struct.chanbox* %307, %struct.chanbox** %8, align 8
  %308 = load %struct.chanbox*, %struct.chanbox** %7, align 8
  %309 = bitcast %struct.chanbox* %308 to i8*
  call void @free(i8* noundef %309) #4
  %310 = load %struct.chanbox*, %struct.chanbox** %8, align 8
  store %struct.chanbox* %310, %struct.chanbox** %7, align 8
  br label %301, !llvm.loop !16

311:                                              ; preds = %301
  %312 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %313 = load i32, i32* %15, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %312, i64 %314
  %316 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %315, i32 0, i32 0
  %317 = load %struct.altbox**, %struct.altbox*** %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.altbox*, %struct.altbox** %317, i64 %319
  %321 = load %struct.altbox*, %struct.altbox** %320, align 8
  %322 = getelementptr inbounds %struct.altbox, %struct.altbox* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = bitcast i32* %323 to i8*
  call void @free(i8* noundef %324) #4
  %325 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %326 = load i32, i32* %15, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %325, i64 %327
  %329 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %328, i32 0, i32 0
  %330 = load %struct.altbox**, %struct.altbox*** %329, align 8
  %331 = load i32, i32* %16, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.altbox*, %struct.altbox** %330, i64 %332
  %334 = load %struct.altbox*, %struct.altbox** %333, align 8
  %335 = bitcast %struct.altbox* %334 to i8*
  call void @free(i8* noundef %335) #4
  br label %336

336:                                              ; preds = %311
  %337 = load i32, i32* %16, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %16, align 4
  br label %284, !llvm.loop !17

339:                                              ; preds = %284
  %340 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %340, i64 %342
  %344 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %343, i32 0, i32 0
  %345 = load %struct.altbox**, %struct.altbox*** %344, align 8
  %346 = bitcast %struct.altbox** %345 to i8*
  call void @free(i8* noundef %346) #4
  br label %347

347:                                              ; preds = %339
  %348 = load i32, i32* %15, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %15, align 4
  br label %279, !llvm.loop !18

350:                                              ; preds = %279
  %351 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %352 = bitcast %struct.nrbox* %351 to i8*
  call void @free(i8* noundef %352) #4
  store i32 1, i32* %15, align 4
  br label %353

353:                                              ; preds = %365, %350
  %354 = load i32, i32* %15, align 4
  %355 = load i32, i32* @MAXPATHS, align 4
  %356 = mul nsw i32 2, %355
  %357 = icmp sle i32 %354, %356
  br i1 %357, label %358, label %368

358:                                              ; preds = %353
  %359 = load i16**, i16*** @savePaths, align 8
  %360 = load i32, i32* %15, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i16*, i16** %359, i64 %361
  %363 = load i16*, i16** %362, align 8
  %364 = bitcast i16* %363 to i8*
  call void @free(i8* noundef %364) #4
  br label %365

365:                                              ; preds = %358
  %366 = load i32, i32* %15, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %15, align 4
  br label %353, !llvm.loop !19

368:                                              ; preds = %353
  %369 = load i16**, i16*** @savePaths, align 8
  %370 = bitcast i16** %369 to i8*
  call void @free(i8* noundef %370) #4
  store i32 1, i32* %15, align 4
  br label %371

371:                                              ; preds = %389, %368
  %372 = load i32, i32* %15, align 4
  %373 = load i32, i32* @numpins, align 4
  %374 = icmp sle i32 %372, %373
  br i1 %374, label %375, label %392

375:                                              ; preds = %371
  %376 = load i8**, i8*** @pnameArray, align 8
  %377 = load i32, i32* %15, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8*, i8** %376, i64 %378
  %380 = load i8*, i8** %379, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %382, label %388

382:                                              ; preds = %375
  %383 = load i8**, i8*** @pnameArray, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8*, i8** %383, i64 %385
  %387 = load i8*, i8** %386, align 8
  call void @free(i8* noundef %387) #4
  br label %388

388:                                              ; preds = %382, %375
  br label %389

389:                                              ; preds = %388
  %390 = load i32, i32* %15, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %15, align 4
  br label %371, !llvm.loop !20

392:                                              ; preds = %371
  %393 = load i8**, i8*** @pnameArray, align 8
  %394 = bitcast i8** %393 to i8*
  call void @free(i8* noundef %394) #4
  store i32 1, i32* %15, align 4
  br label %395

395:                                              ; preds = %413, %392
  %396 = load i32, i32* %15, align 4
  %397 = load i32, i32* @largestNet, align 4
  %398 = icmp sle i32 %396, %397
  br i1 %398, label %399, label %416

399:                                              ; preds = %395
  %400 = load i8**, i8*** @nnameArray, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8*, i8** %400, i64 %402
  %404 = load i8*, i8** %403, align 8
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %412

406:                                              ; preds = %399
  %407 = load i8**, i8*** @nnameArray, align 8
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i8*, i8** %407, i64 %409
  %411 = load i8*, i8** %410, align 8
  call void @free(i8* noundef %411) #4
  br label %412

412:                                              ; preds = %406, %399
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %15, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %15, align 4
  br label %395, !llvm.loop !21

416:                                              ; preds = %395
  %417 = load i8**, i8*** @nnameArray, align 8
  %418 = bitcast i8** %417 to i8*
  call void @free(i8* noundef %418) #4
  %419 = load i32*, i32** @pinOffset, align 8
  %420 = bitcast i32* %419 to i8*
  call void @free(i8* noundef %420) #4
  %421 = load i16*, i16** @segList, align 8
  %422 = bitcast i16* %421 to i8*
  call void @free(i8* noundef %422) #4
  store i32 0, i32* %15, align 4
  br label %423

423:                                              ; preds = %434, %416
  %424 = load i32, i32* %15, align 4
  %425 = load i32, i32* @pnodeAlength, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %437

427:                                              ; preds = %423
  %428 = load i16**, i16*** @netSegArray, align 8
  %429 = load i32, i32* %15, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i16*, i16** %428, i64 %430
  %432 = load i16*, i16** %431, align 8
  %433 = bitcast i16* %432 to i8*
  call void @free(i8* noundef %433) #4
  br label %434

434:                                              ; preds = %427
  %435 = load i32, i32* %15, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %15, align 4
  br label %423, !llvm.loop !22

437:                                              ; preds = %423
  %438 = load i16**, i16*** @netSegArray, align 8
  %439 = bitcast i16** %438 to i8*
  call void @free(i8* noundef %439) #4
  %440 = load i16*, i16** @sourceList, align 8
  %441 = bitcast i16* %440 to i8*
  call void @free(i8* noundef %441) #4
  %442 = load i16*, i16** @targetList, align 8
  %443 = bitcast i16* %442 to i8*
  call void @free(i8* noundef %443) #4
  %444 = load i16*, i16** @delSourceList, align 8
  %445 = bitcast i16* %444 to i8*
  call void @free(i8* noundef %445) #4
  %446 = load i16*, i16** @addTargetList, align 8
  %447 = bitcast i16* %446 to i8*
  call void @free(i8* noundef %447) #4
  store i32 1, i32* %15, align 4
  br label %448

448:                                              ; preds = %461, %437
  %449 = load i32, i32* %15, align 4
  %450 = load i32, i32* @EXTRASOURCES, align 4
  %451 = load i32, i32* @MAXPATHS, align 4
  %452 = mul nsw i32 %450, %451
  %453 = icmp sle i32 %449, %452
  br i1 %453, label %454, label %464

454:                                              ; preds = %448
  %455 = load i32**, i32*** @pathList, align 8
  %456 = load i32, i32* %15, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32*, i32** %455, i64 %457
  %459 = load i32*, i32** %458, align 8
  %460 = bitcast i32* %459 to i8*
  call void @free(i8* noundef %460) #4
  br label %461

461:                                              ; preds = %454
  %462 = load i32, i32* %15, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %15, align 4
  br label %448, !llvm.loop !23

464:                                              ; preds = %448
  %465 = load i32**, i32*** @pathList, align 8
  %466 = bitcast i32** %465 to i8*
  call void @free(i8* noundef %466) #4
  store i32 1, i32* %15, align 4
  br label %467

467:                                              ; preds = %481, %464
  %468 = load i32, i32* %15, align 4
  %469 = load i32, i32* @MAXPATHS, align 4
  %470 = mul nsw i32 2, %469
  %471 = add nsw i32 2, %470
  %472 = icmp sle i32 %468, %471
  br i1 %472, label %473, label %484

473:                                              ; preds = %467
  %474 = load %struct.path*, %struct.path** @pathArray, align 8
  %475 = load i32, i32* %15, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.path, %struct.path* %474, i64 %476
  %478 = getelementptr inbounds %struct.path, %struct.path* %477, i32 0, i32 0
  %479 = load i16*, i16** %478, align 8
  %480 = bitcast i16* %479 to i8*
  call void @free(i8* noundef %480) #4
  br label %481

481:                                              ; preds = %473
  %482 = load i32, i32* %15, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %15, align 4
  br label %467, !llvm.loop !24

484:                                              ; preds = %467
  %485 = load %struct.path*, %struct.path** @pathArray, align 8
  %486 = bitcast %struct.path* %485 to i8*
  call void @free(i8* noundef %486) #4
  %487 = load i16*, i16** @tempArray, align 8
  %488 = bitcast i16* %487 to i8*
  call void @free(i8* noundef %488) #4
  %489 = load %struct.quad*, %struct.quad** @pinlist, align 8
  store %struct.quad* %489, %struct.quad** %5, align 8
  br label %490

490:                                              ; preds = %493, %484
  %491 = load %struct.quad*, %struct.quad** %5, align 8
  %492 = icmp ne %struct.quad* %491, null
  br i1 %492, label %493, label %500

493:                                              ; preds = %490
  %494 = load %struct.quad*, %struct.quad** %5, align 8
  %495 = getelementptr inbounds %struct.quad, %struct.quad* %494, i32 0, i32 4
  %496 = load %struct.quad*, %struct.quad** %495, align 8
  store %struct.quad* %496, %struct.quad** %6, align 8
  %497 = load %struct.quad*, %struct.quad** %5, align 8
  %498 = bitcast %struct.quad* %497 to i8*
  call void @free(i8* noundef %498) #4
  %499 = load %struct.quad*, %struct.quad** %6, align 8
  store %struct.quad* %499, %struct.quad** %5, align 8
  br label %490, !llvm.loop !25

500:                                              ; preds = %490
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

declare dso_local void @readgraph(%struct._IO_FILE* noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local void @readpnode(%struct._IO_FILE* noundef) #2

declare dso_local void @printnets() #2

declare dso_local void @density() #2

declare dso_local void @bellman() #2

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #2

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

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
!25 = distinct !{!25, !5}
