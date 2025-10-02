; ModuleID = './rmain.ll'
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
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.tnode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @finalShot, align 4
  %6 = load i32, i32* @doCompaction, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @bareFlag, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @routerMaxPaths, align 4
  store i32 %12, i32* @MAXPATHS, align 4
  %13 = load i32, i32* @routerExtraS, align 4
  br label %15

14:                                               ; preds = %8
  store i32 1, i32* @MAXPATHS, align 4
  br label %15

15:                                               ; preds = %14, %11
  %storemerge33 = phi i32 [ 1, %14 ], [ %13, %11 ]
  %storemerge = phi i32 [ 1, %14 ], [ 0, %11 ]
  br label %17

16:                                               ; preds = %0
  store i32 1, i32* @MAXPATHS, align 4
  br label %17

17:                                               ; preds = %16, %15
  %storemerge35 = phi i32 [ %storemerge33, %15 ], [ 1, %16 ]
  %storemerge34 = phi i32 [ %storemerge, %15 ], [ 1, %16 ]
  store i32 %storemerge35, i32* @EXTRASOURCES, align 4
  store i32 %storemerge34, i32* @bareMinimum, align 4
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %19 = load i8*, i8** @cktName, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %18, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* noundef %19) #4
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %22 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %21, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %26 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* noundef nonnull %26) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

28:                                               ; preds = %17
  call void @readgraph(%struct._IO_FILE* noundef nonnull %22) #4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %30 = load i8*, i8** @cktName, align 8
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull %29, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef %30) #4
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %33 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %32, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #4
  %34 = icmp eq %struct._IO_FILE* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %37 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef nonnull %36) #4
  call void @exit(i32 noundef 0) #5
  br label %UnifiedUnreachableBlock

38:                                               ; preds = %28
  call void @readpnode(%struct._IO_FILE* noundef nonnull %33) #4
  call void @printnets() #4
  %39 = load i32, i32* @doChannelGraph, align 4
  %.not = icmp eq i32 %39, 0
  br i1 %.not, label %41, label %40

40:                                               ; preds = %38
  call void @density() #4
  call void @bellman() #4
  br label %41

41:                                               ; preds = %40, %38
  %42 = call i32 @fclose(%struct._IO_FILE* noundef nonnull %33) #4
  br label %43

43:                                               ; preds = %61, %41
  %.03 = phi i32 [ 1, %41 ], [ %62, %61 ]
  %44 = load i32, i32* @eNum, align 4
  %.not8 = icmp sgt i32 %.03, %44
  br i1 %.not8, label %63, label %45

45:                                               ; preds = %43
  %46 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %47 = zext i32 %.03 to i64
  %48 = getelementptr inbounds %struct.ebox, %struct.ebox* %46, i64 %47, i32 12
  %49 = load %struct.tnode*, %struct.tnode** %48, align 8
  %.not32 = icmp eq %struct.tnode* %49, null
  br i1 %.not32, label %60, label %50

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %58, %50
  %52 = load %struct.ebox*, %struct.ebox** @eArray, align 8
  %53 = zext i32 %.03 to i64
  %54 = getelementptr inbounds %struct.ebox, %struct.ebox* %52, i64 %53, i32 12
  call void @tpop(%struct.tnode** noundef nonnull %54, %struct.tnode** noundef nonnull %2, i32* noundef nonnull %3, i32* noundef nonnull %4) #4
  %55 = load %struct.tnode*, %struct.tnode** %2, align 8
  %56 = icmp eq %struct.tnode* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  br label %51

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %45
  br label %61

61:                                               ; preds = %60
  %62 = add nuw nsw i32 %.03, 1
  br label %43, !llvm.loop !4

63:                                               ; preds = %43
  %64 = load i8*, i8** bitcast (%struct.ebox** @eArray to i8**), align 8
  call void @free(i8* noundef %64) #4
  br label %65

65:                                               ; preds = %73, %63
  %.1 = phi i32 [ 1, %63 ], [ %74, %73 ]
  %66 = load i32, i32* @numRects, align 4
  %.not9 = icmp sgt i32 %.1, %66
  br i1 %.not9, label %75, label %67

67:                                               ; preds = %65
  %68 = load i32**, i32*** @eIndexArray, align 8
  %69 = zext i32 %.1 to i64
  %70 = getelementptr inbounds i32*, i32** %68, i64 %69
  %71 = bitcast i32** %70 to i8**
  %72 = load i8*, i8** %71, align 8
  call void @free(i8* noundef %72) #4
  br label %73

73:                                               ; preds = %67
  %74 = add nuw nsw i32 %.1, 1
  br label %65, !llvm.loop !6

75:                                               ; preds = %65
  %76 = load i8*, i8** bitcast (i32*** @eIndexArray to i8**), align 8
  call void @free(i8* noundef %76) #4
  br label %77

77:                                               ; preds = %97, %75
  %.2 = phi i32 [ 1, %75 ], [ %98, %97 ]
  %78 = load i32, i32* @numXnodes, align 4
  %.not10 = icmp sgt i32 %.2, %78
  br i1 %.not10, label %99, label %79

79:                                               ; preds = %77
  %80 = load %struct.wcbox**, %struct.wcbox*** @xNodeArray, align 8
  %81 = zext i32 %.2 to i64
  %82 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %80, i64 %81
  %83 = load %struct.wcbox*, %struct.wcbox** %82, align 8
  br label %84

84:                                               ; preds = %92, %79
  %.05 = phi %struct.wcbox* [ %83, %79 ], [ %94, %92 ]
  %.not30 = icmp eq %struct.wcbox* %.05, null
  br i1 %.not30, label %96, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.05, i64 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %.not31 = icmp eq i32* %87, null
  br i1 %.not31, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.05, i64 0, i32 2
  %90 = bitcast i32** %89 to i8**
  %91 = load i8*, i8** %90, align 8
  call void @free(i8* noundef %91) #4
  br label %92

92:                                               ; preds = %88, %85
  %93 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.05, i64 0, i32 4
  %94 = load %struct.wcbox*, %struct.wcbox** %93, align 8
  %95 = bitcast %struct.wcbox* %.05 to i8*
  call void @free(i8* noundef %95) #4
  br label %84, !llvm.loop !7

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96
  %98 = add nuw nsw i32 %.2, 1
  br label %77, !llvm.loop !8

99:                                               ; preds = %77
  br label %100

100:                                              ; preds = %120, %99
  %.3 = phi i32 [ 1, %99 ], [ %121, %120 ]
  %101 = load i32, i32* @numYnodes, align 4
  %.not11 = icmp sgt i32 %.3, %101
  br i1 %.not11, label %122, label %102

102:                                              ; preds = %100
  %103 = load %struct.wcbox**, %struct.wcbox*** @yNodeArray, align 8
  %104 = zext i32 %.3 to i64
  %105 = getelementptr inbounds %struct.wcbox*, %struct.wcbox** %103, i64 %104
  %106 = load %struct.wcbox*, %struct.wcbox** %105, align 8
  br label %107

107:                                              ; preds = %115, %102
  %.16 = phi %struct.wcbox* [ %106, %102 ], [ %117, %115 ]
  %.not28 = icmp eq %struct.wcbox* %.16, null
  br i1 %.not28, label %119, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.16, i64 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %.not29 = icmp eq i32* %110, null
  br i1 %.not29, label %115, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.16, i64 0, i32 2
  %113 = bitcast i32** %112 to i8**
  %114 = load i8*, i8** %113, align 8
  call void @free(i8* noundef %114) #4
  br label %115

115:                                              ; preds = %111, %108
  %116 = getelementptr inbounds %struct.wcbox, %struct.wcbox* %.16, i64 0, i32 4
  %117 = load %struct.wcbox*, %struct.wcbox** %116, align 8
  %118 = bitcast %struct.wcbox* %.16 to i8*
  call void @free(i8* noundef %118) #4
  br label %107, !llvm.loop !9

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119
  %121 = add nuw nsw i32 %.3, 1
  br label %100, !llvm.loop !10

122:                                              ; preds = %100
  %123 = load i8*, i8** bitcast (%struct.wcbox*** @xNodeArray to i8**), align 8
  call void @free(i8* noundef %123) #4
  %124 = load i8*, i8** bitcast (%struct.wcbox*** @yNodeArray to i8**), align 8
  call void @free(i8* noundef %124) #4
  %125 = load i8*, i8** bitcast (%struct.edgebox** @edgeList to i8**), align 8
  call void @free(i8* noundef %125) #4
  %126 = load i8*, i8** bitcast (%struct.bellbox** @xBellArray to i8**), align 8
  call void @free(i8* noundef %126) #4
  %127 = load i8*, i8** bitcast (%struct.bellbox** @yBellArray to i8**), align 8
  call void @free(i8* noundef %127) #4
  br label %128

128:                                              ; preds = %152, %122
  %.4 = phi i32 [ 1, %122 ], [ %153, %152 ]
  %129 = load i32, i32* @pnodeAlength, align 4
  %.not12 = icmp sgt i32 %.4, %129
  br i1 %.not12, label %154, label %130

130:                                              ; preds = %128
  %131 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %132 = zext i32 %.4 to i64
  %133 = getelementptr inbounds %struct.pnode, %struct.pnode* %131, i64 %132, i32 2
  %134 = load %struct.list2*, %struct.list2** %133, align 8
  br label %135

135:                                              ; preds = %136, %130
  %.07 = phi %struct.list2* [ %134, %130 ], [ %138, %136 ]
  %.not26 = icmp eq %struct.list2* %.07, null
  br i1 %.not26, label %140, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.list2, %struct.list2* %.07, i64 0, i32 1
  %138 = load %struct.list2*, %struct.list2** %137, align 8
  %139 = bitcast %struct.list2* %.07 to i8*
  call void @free(i8* noundef %139) #4
  br label %135, !llvm.loop !11

140:                                              ; preds = %135
  %141 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %142 = zext i32 %.4 to i64
  %143 = getelementptr inbounds %struct.pnode, %struct.pnode* %141, i64 %142, i32 1
  %144 = load %struct.nnode*, %struct.nnode** %143, align 8
  %.not27 = icmp eq %struct.nnode* %144, null
  br i1 %.not27, label %151, label %145

145:                                              ; preds = %140
  %146 = load %struct.pnode*, %struct.pnode** @pnodeArray, align 8
  %147 = zext i32 %.4 to i64
  %148 = getelementptr inbounds %struct.pnode, %struct.pnode* %146, i64 %147, i32 1
  %149 = bitcast %struct.nnode** %148 to i8**
  %150 = load i8*, i8** %149, align 8
  call void @free(i8* noundef %150) #4
  br label %151

151:                                              ; preds = %145, %140
  br label %152

152:                                              ; preds = %151
  %153 = add nuw nsw i32 %.4, 1
  br label %128, !llvm.loop !12

154:                                              ; preds = %128
  %155 = load i8*, i8** bitcast (%struct.pnode** @pnodeArray to i8**), align 8
  call void @free(i8* noundef %155) #4
  br label %156

156:                                              ; preds = %171, %154
  %.5 = phi i32 [ 1, %154 ], [ %172, %171 ]
  %157 = load i32, i32* @numnodes, align 4
  %158 = load i32, i32* @maxpnode, align 4
  %159 = add nsw i32 %157, %158
  %.not13 = icmp sgt i32 %.5, %159
  br i1 %.not13, label %173, label %160

160:                                              ; preds = %156
  %161 = load %struct.gnode**, %struct.gnode*** @gnodeArray, align 8
  %162 = zext i32 %.5 to i64
  %163 = getelementptr inbounds %struct.gnode*, %struct.gnode** %161, i64 %162
  %164 = load %struct.gnode*, %struct.gnode** %163, align 8
  br label %165

165:                                              ; preds = %166, %160
  %.0 = phi %struct.gnode* [ %164, %160 ], [ %168, %166 ]
  %.not25 = icmp eq %struct.gnode* %.0, null
  br i1 %.not25, label %170, label %166

166:                                              ; preds = %165
  %167 = getelementptr inbounds %struct.gnode, %struct.gnode* %.0, i64 0, i32 7
  %168 = load %struct.gnode*, %struct.gnode** %167, align 8
  %169 = bitcast %struct.gnode* %.0 to i8*
  call void @free(i8* noundef %169) #4
  br label %165, !llvm.loop !13

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170
  %172 = add nuw nsw i32 %.5, 1
  br label %156, !llvm.loop !14

173:                                              ; preds = %156
  %174 = load i8*, i8** bitcast (%struct.gnode*** @gnodeArray to i8**), align 8
  call void @free(i8* noundef %174) #4
  br label %175

175:                                              ; preds = %183, %173
  %.6 = phi i32 [ 1, %173 ], [ %184, %183 ]
  %176 = icmp ult i32 %.6, 5
  br i1 %176, label %177, label %185

177:                                              ; preds = %175
  %178 = load i16**, i16*** @gtrace, align 8
  %179 = zext i32 %.6 to i64
  %180 = getelementptr inbounds i16*, i16** %178, i64 %179
  %181 = bitcast i16** %180 to i8**
  %182 = load i8*, i8** %181, align 8
  call void @free(i8* noundef %182) #4
  br label %183

183:                                              ; preds = %177
  %184 = add nuw nsw i32 %.6, 1
  br label %175, !llvm.loop !15

185:                                              ; preds = %175
  %186 = load i8*, i8** bitcast (i16*** @gtrace to i8**), align 8
  call void @free(i8* noundef %186) #4
  br label %187

187:                                              ; preds = %233, %185
  %.7 = phi i32 [ 1, %185 ], [ %234, %233 ]
  %188 = load i32, i32* @largestNet, align 4
  %.not14 = icmp sgt i32 %.7, %188
  br i1 %.not14, label %235, label %189

189:                                              ; preds = %187
  br label %190

190:                                              ; preds = %225, %189
  %.01 = phi i32 [ 1, %189 ], [ %226, %225 ]
  %191 = load i32, i32* @MAXPATHS, align 4
  %.not23 = icmp sgt i32 %.01, %191
  br i1 %.not23, label %227, label %192

192:                                              ; preds = %190
  %193 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %194 = zext i32 %.7 to i64
  %195 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %193, i64 %194, i32 0
  %196 = load %struct.altbox**, %struct.altbox*** %195, align 8
  %197 = zext i32 %.01 to i64
  %198 = getelementptr inbounds %struct.altbox*, %struct.altbox** %196, i64 %197
  %199 = load %struct.altbox*, %struct.altbox** %198, align 8
  %200 = getelementptr inbounds %struct.altbox, %struct.altbox* %199, i64 0, i32 2
  %201 = load %struct.chanbox*, %struct.chanbox** %200, align 8
  br label %202

202:                                              ; preds = %203, %192
  %.04 = phi %struct.chanbox* [ %201, %192 ], [ %205, %203 ]
  %.not24 = icmp eq %struct.chanbox* %.04, null
  br i1 %.not24, label %207, label %203

203:                                              ; preds = %202
  %204 = getelementptr inbounds %struct.chanbox, %struct.chanbox* %.04, i64 0, i32 4
  %205 = load %struct.chanbox*, %struct.chanbox** %204, align 8
  %206 = bitcast %struct.chanbox* %.04 to i8*
  call void @free(i8* noundef %206) #4
  br label %202, !llvm.loop !16

207:                                              ; preds = %202
  %208 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %209 = zext i32 %.7 to i64
  %210 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %208, i64 %209, i32 0
  %211 = load %struct.altbox**, %struct.altbox*** %210, align 8
  %212 = zext i32 %.01 to i64
  %213 = getelementptr inbounds %struct.altbox*, %struct.altbox** %211, i64 %212
  %214 = bitcast %struct.altbox** %213 to i8***
  %215 = load i8**, i8*** %214, align 8
  %216 = load i8*, i8** %215, align 8
  call void @free(i8* noundef %216) #4
  %217 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %218 = zext i32 %.7 to i64
  %219 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %217, i64 %218, i32 0
  %220 = load %struct.altbox**, %struct.altbox*** %219, align 8
  %221 = zext i32 %.01 to i64
  %222 = getelementptr inbounds %struct.altbox*, %struct.altbox** %220, i64 %221
  %223 = bitcast %struct.altbox** %222 to i8**
  %224 = load i8*, i8** %223, align 8
  call void @free(i8* noundef %224) #4
  br label %225

225:                                              ; preds = %207
  %226 = add nuw nsw i32 %.01, 1
  br label %190, !llvm.loop !17

227:                                              ; preds = %190
  %228 = load %struct.nrbox*, %struct.nrbox** @netRoutes, align 8
  %229 = zext i32 %.7 to i64
  %230 = getelementptr inbounds %struct.nrbox, %struct.nrbox* %228, i64 %229, i32 0
  %231 = bitcast %struct.altbox*** %230 to i8**
  %232 = load i8*, i8** %231, align 8
  call void @free(i8* noundef %232) #4
  br label %233

233:                                              ; preds = %227
  %234 = add nuw nsw i32 %.7, 1
  br label %187, !llvm.loop !18

235:                                              ; preds = %187
  %236 = load i8*, i8** bitcast (%struct.nrbox** @netRoutes to i8**), align 8
  call void @free(i8* noundef %236) #4
  br label %237

237:                                              ; preds = %246, %235
  %.8 = phi i32 [ 1, %235 ], [ %247, %246 ]
  %238 = load i32, i32* @MAXPATHS, align 4
  %239 = shl nsw i32 %238, 1
  %.not15 = icmp sgt i32 %.8, %239
  br i1 %.not15, label %248, label %240

240:                                              ; preds = %237
  %241 = load i16**, i16*** @savePaths, align 8
  %242 = zext i32 %.8 to i64
  %243 = getelementptr inbounds i16*, i16** %241, i64 %242
  %244 = bitcast i16** %243 to i8**
  %245 = load i8*, i8** %244, align 8
  call void @free(i8* noundef %245) #4
  br label %246

246:                                              ; preds = %240
  %247 = add nuw nsw i32 %.8, 1
  br label %237, !llvm.loop !19

248:                                              ; preds = %237
  %249 = load i8*, i8** bitcast (i16*** @savePaths to i8**), align 8
  call void @free(i8* noundef %249) #4
  br label %250

250:                                              ; preds = %263, %248
  %.9 = phi i32 [ 1, %248 ], [ %264, %263 ]
  %251 = load i32, i32* @numpins, align 4
  %.not16 = icmp sgt i32 %.9, %251
  br i1 %.not16, label %265, label %252

252:                                              ; preds = %250
  %253 = load i8**, i8*** @pnameArray, align 8
  %254 = zext i32 %.9 to i64
  %255 = getelementptr inbounds i8*, i8** %253, i64 %254
  %256 = load i8*, i8** %255, align 8
  %.not22 = icmp eq i8* %256, null
  br i1 %.not22, label %262, label %257

257:                                              ; preds = %252
  %258 = load i8**, i8*** @pnameArray, align 8
  %259 = zext i32 %.9 to i64
  %260 = getelementptr inbounds i8*, i8** %258, i64 %259
  %261 = load i8*, i8** %260, align 8
  call void @free(i8* noundef %261) #4
  br label %262

262:                                              ; preds = %257, %252
  br label %263

263:                                              ; preds = %262
  %264 = add nuw nsw i32 %.9, 1
  br label %250, !llvm.loop !20

265:                                              ; preds = %250
  %266 = load i8*, i8** bitcast (i8*** @pnameArray to i8**), align 8
  call void @free(i8* noundef %266) #4
  br label %267

267:                                              ; preds = %280, %265
  %.10 = phi i32 [ 1, %265 ], [ %281, %280 ]
  %268 = load i32, i32* @largestNet, align 4
  %.not17 = icmp sgt i32 %.10, %268
  br i1 %.not17, label %282, label %269

269:                                              ; preds = %267
  %270 = load i8**, i8*** @nnameArray, align 8
  %271 = zext i32 %.10 to i64
  %272 = getelementptr inbounds i8*, i8** %270, i64 %271
  %273 = load i8*, i8** %272, align 8
  %.not21 = icmp eq i8* %273, null
  br i1 %.not21, label %279, label %274

274:                                              ; preds = %269
  %275 = load i8**, i8*** @nnameArray, align 8
  %276 = zext i32 %.10 to i64
  %277 = getelementptr inbounds i8*, i8** %275, i64 %276
  %278 = load i8*, i8** %277, align 8
  call void @free(i8* noundef %278) #4
  br label %279

279:                                              ; preds = %274, %269
  br label %280

280:                                              ; preds = %279
  %281 = add nuw nsw i32 %.10, 1
  br label %267, !llvm.loop !21

282:                                              ; preds = %267
  %283 = load i8*, i8** bitcast (i8*** @nnameArray to i8**), align 8
  call void @free(i8* noundef %283) #4
  %284 = load i8*, i8** bitcast (i32** @pinOffset to i8**), align 8
  call void @free(i8* noundef %284) #4
  %285 = load i8*, i8** bitcast (i16** @segList to i8**), align 8
  call void @free(i8* noundef %285) #4
  br label %286

286:                                              ; preds = %295, %282
  %.11 = phi i32 [ 0, %282 ], [ %296, %295 ]
  %287 = load i32, i32* @pnodeAlength, align 4
  %288 = icmp slt i32 %.11, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load i16**, i16*** @netSegArray, align 8
  %291 = zext i32 %.11 to i64
  %292 = getelementptr inbounds i16*, i16** %290, i64 %291
  %293 = bitcast i16** %292 to i8**
  %294 = load i8*, i8** %293, align 8
  call void @free(i8* noundef %294) #4
  br label %295

295:                                              ; preds = %289
  %296 = add nuw nsw i32 %.11, 1
  br label %286, !llvm.loop !22

297:                                              ; preds = %286
  %298 = load i8*, i8** bitcast (i16*** @netSegArray to i8**), align 8
  call void @free(i8* noundef %298) #4
  %299 = load i8*, i8** bitcast (i16** @sourceList to i8**), align 8
  call void @free(i8* noundef %299) #4
  %300 = load i8*, i8** bitcast (i16** @targetList to i8**), align 8
  call void @free(i8* noundef %300) #4
  %301 = load i8*, i8** bitcast (i16** @delSourceList to i8**), align 8
  call void @free(i8* noundef %301) #4
  %302 = load i8*, i8** bitcast (i16** @addTargetList to i8**), align 8
  call void @free(i8* noundef %302) #4
  br label %303

303:                                              ; preds = %313, %297
  %.12 = phi i32 [ 1, %297 ], [ %314, %313 ]
  %304 = load i32, i32* @EXTRASOURCES, align 4
  %305 = load i32, i32* @MAXPATHS, align 4
  %306 = mul nsw i32 %304, %305
  %.not18 = icmp sgt i32 %.12, %306
  br i1 %.not18, label %315, label %307

307:                                              ; preds = %303
  %308 = load i32**, i32*** @pathList, align 8
  %309 = zext i32 %.12 to i64
  %310 = getelementptr inbounds i32*, i32** %308, i64 %309
  %311 = bitcast i32** %310 to i8**
  %312 = load i8*, i8** %311, align 8
  call void @free(i8* noundef %312) #4
  br label %313

313:                                              ; preds = %307
  %314 = add nuw nsw i32 %.12, 1
  br label %303, !llvm.loop !23

315:                                              ; preds = %303
  %316 = load i8*, i8** bitcast (i32*** @pathList to i8**), align 8
  call void @free(i8* noundef %316) #4
  br label %317

317:                                              ; preds = %327, %315
  %.13 = phi i32 [ 1, %315 ], [ %328, %327 ]
  %318 = load i32, i32* @MAXPATHS, align 4
  %319 = shl nsw i32 %318, 1
  %320 = add nsw i32 %319, 2
  %.not19 = icmp sgt i32 %.13, %320
  br i1 %.not19, label %329, label %321

321:                                              ; preds = %317
  %322 = load %struct.path*, %struct.path** @pathArray, align 8
  %323 = zext i32 %.13 to i64
  %324 = getelementptr inbounds %struct.path, %struct.path* %322, i64 %323, i32 0
  %325 = bitcast i16** %324 to i8**
  %326 = load i8*, i8** %325, align 8
  call void @free(i8* noundef %326) #4
  br label %327

327:                                              ; preds = %321
  %328 = add nuw nsw i32 %.13, 1
  br label %317, !llvm.loop !24

329:                                              ; preds = %317
  %330 = load i8*, i8** bitcast (%struct.path** @pathArray to i8**), align 8
  call void @free(i8* noundef %330) #4
  %331 = load i8*, i8** bitcast (i16** @tempArray to i8**), align 8
  call void @free(i8* noundef %331) #4
  %332 = load %struct.quad*, %struct.quad** @pinlist, align 8
  br label %333

333:                                              ; preds = %334, %329
  %.02 = phi %struct.quad* [ %332, %329 ], [ %336, %334 ]
  %.not20 = icmp eq %struct.quad* %.02, null
  br i1 %.not20, label %338, label %334

334:                                              ; preds = %333
  %335 = getelementptr inbounds %struct.quad, %struct.quad* %.02, i64 0, i32 4
  %336 = load %struct.quad*, %struct.quad** %335, align 8
  %337 = bitcast %struct.quad* %.02 to i8*
  call void @free(i8* noundef %337) #4
  br label %333, !llvm.loop !25

338:                                              ; preds = %333
  ret void

UnifiedUnreachableBlock:                          ; preds = %35, %24
  unreachable
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
