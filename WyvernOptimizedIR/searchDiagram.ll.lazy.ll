; ModuleID = './searchDiagram.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/searchDiagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SearchDiagramStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.BitfieldStruct = type { i32, i8* }

@.str = private unnamed_addr constant [52 x i8] c"Bummer. outerIdx: %d, innerIdx: %d, node count: %d\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef readonly %0, %struct.NodeStruct* noundef readnone %1) #0 {
  %.not = icmp eq %struct.SearchDiagramStruct* %0, null
  br i1 %.not, label %3, label %4

3:                                                ; preds = %2
  br label %21

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %18, %4
  %.01 = phi i32 [ 0, %4 ], [ %19, %18 ]
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %0, i64 %6, i32 0
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %.not3 = icmp eq %struct.NodeStruct* %8, null
  br i1 %.not3, label %20, label %9

9:                                                ; preds = %5
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %0, i64 %10, i32 0
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %11, align 8
  %13 = icmp eq %struct.NodeStruct* %12, %1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %0, i64 %15
  br label %21

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17
  %19 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %14, %3
  %.0 = phi %struct.SearchDiagramStruct* [ %16, %14 ], [ null, %20 ], [ null, %3 ]
  ret %struct.SearchDiagramStruct* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SearchDiagramStruct* @SearchDiagram_build(%struct.NodeListStruct* noundef readonly %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %1, -1
  %.not = icmp eq %struct.NodeListStruct* %0, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4, %2
  br label %164

7:                                                ; preds = %4
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = call noalias i8* @malloc(i64 noundef %10) #5
  %12 = bitcast i8* %11 to %struct.SearchDiagramStruct*
  %.not12 = icmp eq i8* %11, null
  br i1 %.not12, label %13, label %14

13:                                               ; preds = %7
  br label %164

14:                                               ; preds = %7
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %15, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %16, align 8
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %17, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %18, align 8
  br label %19

19:                                               ; preds = %93, %14
  %.08 = phi i32 [ %3, %14 ], [ %.19, %93 ]
  %.06 = phi i32 [ 0, %14 ], [ %53, %93 ]
  %.02 = phi %struct.NodeListStruct* [ %0, %14 ], [ %95, %93 ]
  %.not13 = icmp eq %struct.NodeListStruct* %.02, null
  br i1 %.not13, label %96, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.02, i64 0, i32 0
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %21, align 8
  %23 = zext i32 %.06 to i64
  %24 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %23, i32 0
  store %struct.NodeStruct* %22, %struct.NodeStruct** %24, align 8
  %25 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i64 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i64 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %26, %28
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %20
  %32 = add nsw i32 %29, 1
  %33 = sext i32 %32 to i64
  %34 = shl nsw i64 %33, 4
  %35 = call noalias i8* @malloc(i64 noundef %34) #5
  %36 = zext i32 %.06 to i64
  %37 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %36, i32 1
  %38 = bitcast %struct.EdgeReferencesStruct** %37 to i8**
  store i8* %35, i8** %38, align 8
  %39 = zext i32 %.06 to i64
  %40 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %39, i32 1
  %41 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %40, align 8
  %42 = sext i32 %29 to i64
  %43 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %41, i64 %42, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %43, align 8
  %44 = zext i32 %.06 to i64
  %45 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %44, i32 1
  %46 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %45, align 8
  %47 = sext i32 %29 to i64
  %48 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %46, i64 %47, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %48, align 8
  br label %52

49:                                               ; preds = %20
  %50 = zext i32 %.06 to i64
  %51 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %50, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %51, align 8
  br label %52

52:                                               ; preds = %49, %31
  %53 = add nuw nsw i32 %.06, 1
  %54 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i64 0, i32 6
  br label %55

55:                                               ; preds = %89, %52
  %.19 = phi i32 [ %.08, %52 ], [ %90, %89 ]
  %.04.in = phi %struct.NodeListStruct** [ %54, %52 ], [ %91, %89 ]
  %.04 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.04.in, align 8
  %.not19 = icmp eq %struct.NodeListStruct* %.04, null
  br i1 %.not19, label %92, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.04, i64 0, i32 0
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %57, align 8
  %59 = sext i32 %.19 to i64
  %60 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %59, i32 0
  store %struct.NodeStruct* %58, %struct.NodeStruct** %60, align 8
  %61 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %58, i64 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %58, i64 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %62, %64
  %66 = icmp sgt i32 %62, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %56
  %68 = add nsw i32 %65, 1
  %69 = sext i32 %68 to i64
  %70 = shl nsw i64 %69, 4
  %71 = call noalias i8* @malloc(i64 noundef %70) #5
  %72 = sext i32 %.19 to i64
  %73 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %72, i32 1
  %74 = bitcast %struct.EdgeReferencesStruct** %73 to i8**
  store i8* %71, i8** %74, align 8
  %75 = sext i32 %.19 to i64
  %76 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %75, i32 1
  %77 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %76, align 8
  %78 = sext i32 %65 to i64
  %79 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %77, i64 %78, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %79, align 8
  %80 = sext i32 %.19 to i64
  %81 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %80, i32 1
  %82 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %81, align 8
  %83 = sext i32 %65 to i64
  %84 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %82, i64 %83, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %84, align 8
  br label %88

85:                                               ; preds = %56
  %86 = sext i32 %.19 to i64
  %87 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %86, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %87, align 8
  br label %88

88:                                               ; preds = %85, %67
  br label %89

89:                                               ; preds = %88
  %90 = add nsw i32 %.19, -1
  %91 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.04, i64 0, i32 1
  br label %55, !llvm.loop !6

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %92
  %94 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.02, i64 0, i32 1
  %95 = load %struct.NodeListStruct*, %struct.NodeListStruct** %94, align 8
  br label %19, !llvm.loop !7

96:                                               ; preds = %19
  %97 = add nsw i32 %.08, 1
  %.not14 = icmp eq i32 %.06, %97
  br i1 %.not14, label %100, label %98

98:                                               ; preds = %96
  %99 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 noundef %.06, i32 noundef %.08, i32 noundef %1) #5
  br label %100

100:                                              ; preds = %98, %96
  %101 = add nsw i32 %1, -1
  br label %102

102:                                              ; preds = %160, %100
  %.2 = phi i32 [ %101, %100 ], [ %.3, %160 ]
  %.17 = phi i32 [ 0, %100 ], [ %128, %160 ]
  %.13 = phi %struct.NodeListStruct* [ %0, %100 ], [ %162, %160 ]
  %.not15 = icmp eq %struct.NodeListStruct* %.13, null
  br i1 %.not15, label %163, label %103

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.13, i64 0, i32 0
  %105 = load %struct.NodeStruct*, %struct.NodeStruct** %104, align 8
  %106 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %105, i64 0, i32 7
  br label %107

107:                                              ; preds = %124, %103
  %.010 = phi i32 [ 0, %103 ], [ %126, %124 ]
  %.01.in = phi %struct.EdgeListStruct** [ %106, %103 ], [ %125, %124 ]
  %.01 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.01.in, align 8
  %.not16 = icmp eq %struct.EdgeListStruct* %.01, null
  br i1 %.not16, label %127, label %108

108:                                              ; preds = %107
  %109 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 1
  %110 = load %struct.NodeStruct*, %struct.NodeStruct** %109, align 8
  %111 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef nonnull %12, %struct.NodeStruct* noundef %110)
  %112 = zext i32 %.17 to i64
  %113 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %112, i32 1
  %114 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %113, align 8
  %115 = zext i32 %.010 to i64
  %116 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %114, i64 %115, i32 0
  store %struct.NodeStruct* %110, %struct.NodeStruct** %116, align 8
  %117 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %111, i64 0, i32 1
  %118 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %117, align 8
  %119 = zext i32 %.17 to i64
  %120 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %119, i32 1
  %121 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %120, align 8
  %122 = zext i32 %.010 to i64
  %123 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %121, i64 %122, i32 1
  store %struct.EdgeReferencesStruct* %118, %struct.EdgeReferencesStruct** %123, align 8
  br label %124

124:                                              ; preds = %108
  %125 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.01, i64 0, i32 2
  %126 = add nuw nsw i32 %.010, 1
  br label %107, !llvm.loop !8

127:                                              ; preds = %107
  %128 = add nuw nsw i32 %.17, 1
  %129 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %105, i64 0, i32 6
  br label %130

130:                                              ; preds = %156, %127
  %.3 = phi i32 [ %.2, %127 ], [ %157, %156 ]
  %.15.in = phi %struct.NodeListStruct** [ %129, %127 ], [ %158, %156 ]
  %.15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %.15.in, align 8
  %.not17 = icmp eq %struct.NodeListStruct* %.15, null
  br i1 %.not17, label %159, label %131

131:                                              ; preds = %130
  %132 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 0
  %133 = load %struct.NodeStruct*, %struct.NodeStruct** %132, align 8
  %134 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %133, i64 0, i32 7
  br label %135

135:                                              ; preds = %152, %131
  %.111 = phi i32 [ 0, %131 ], [ %154, %152 ]
  %.1.in = phi %struct.EdgeListStruct** [ %134, %131 ], [ %153, %152 ]
  %.1 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %.1.in, align 8
  %.not18 = icmp eq %struct.EdgeListStruct* %.1, null
  br i1 %.not18, label %155, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 1
  %138 = load %struct.NodeStruct*, %struct.NodeStruct** %137, align 8
  %139 = call %struct.SearchDiagramStruct* @SearchDiagram_findNode(%struct.SearchDiagramStruct* noundef nonnull %12, %struct.NodeStruct* noundef %138)
  %140 = sext i32 %.3 to i64
  %141 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %140, i32 1
  %142 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %141, align 8
  %143 = zext i32 %.111 to i64
  %144 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %142, i64 %143, i32 0
  store %struct.NodeStruct* %138, %struct.NodeStruct** %144, align 8
  %145 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %139, i64 0, i32 1
  %146 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %145, align 8
  %147 = sext i32 %.3 to i64
  %148 = getelementptr inbounds %struct.SearchDiagramStruct, %struct.SearchDiagramStruct* %12, i64 %147, i32 1
  %149 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %148, align 8
  %150 = zext i32 %.111 to i64
  %151 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %149, i64 %150, i32 1
  store %struct.EdgeReferencesStruct* %146, %struct.EdgeReferencesStruct** %151, align 8
  br label %152

152:                                              ; preds = %136
  %153 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %.1, i64 0, i32 2
  %154 = add nuw nsw i32 %.111, 1
  br label %135, !llvm.loop !9

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155
  %157 = add nsw i32 %.3, -1
  %158 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.15, i64 0, i32 1
  br label %130, !llvm.loop !10

159:                                              ; preds = %130
  br label %160

160:                                              ; preds = %159
  %161 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %.13, i64 0, i32 1
  %162 = load %struct.NodeListStruct*, %struct.NodeListStruct** %161, align 8
  br label %102, !llvm.loop !11

163:                                              ; preds = %102
  br label %164

164:                                              ; preds = %163, %13, %6
  %.0 = phi %struct.SearchDiagramStruct* [ null, %6 ], [ %12, %163 ], [ null, %13 ]
  ret %struct.SearchDiagramStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %0, %struct.EdgeReferencesStruct* noundef readonly %1, i8** noundef %2, %struct.NodePtrVecStruct* noundef %3, %struct.BitfieldStruct* noundef %4) #1 {
  %.not = icmp eq %struct.NodeStruct* %0, null
  br i1 %.not, label %10, label %6

6:                                                ; preds = %5
  %.not4 = icmp eq %struct.EdgeReferencesStruct* %1, null
  br i1 %.not4, label %10, label %7

7:                                                ; preds = %6
  %.not5 = icmp eq i8** %2, null
  br i1 %.not5, label %10, label %8

8:                                                ; preds = %7
  %.not6 = icmp eq %struct.NodePtrVecStruct* %3, null
  br i1 %.not6, label %10, label %9

9:                                                ; preds = %8
  %.not7 = icmp eq %struct.BitfieldStruct* %4, null
  br i1 %.not7, label %10, label %11

10:                                               ; preds = %9, %8, %7, %6, %5
  br label %83

11:                                               ; preds = %9
  %12 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef nonnull %4, %struct.NodeStruct* noundef nonnull %0) #5
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  br label %83

14:                                               ; preds = %11
  %15 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %3, %struct.NodeStruct* noundef nonnull %0) #5
  br label %16

16:                                               ; preds = %62, %14
  %.01 = phi i32 [ 0, %14 ], [ %63, %62 ]
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %17, i32 0
  %19 = load %struct.NodeStruct*, %struct.NodeStruct** %18, align 8
  %.not8 = icmp eq %struct.NodeStruct* %19, null
  br i1 %.not8, label %64, label %20

20:                                               ; preds = %16
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %21, i32 0
  %23 = load %struct.NodeStruct*, %struct.NodeStruct** %22, align 8
  %24 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %23, i64 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %.not10 = icmp eq i8* %25, null
  br i1 %.not10, label %61, label %26

26:                                               ; preds = %20
  %27 = zext i32 %.01 to i64
  %28 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %27, i32 0
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %28, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i64 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %31, i8* noundef nonnull dereferenceable(1) %32) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %26
  %36 = getelementptr inbounds i8*, i8** %2, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %40, i32 0
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %41, align 8
  %43 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef nonnull %3, %struct.NodeStruct* noundef %42) #5
  br label %83

44:                                               ; preds = %35
  %45 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef 50) #5
  %46 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %4, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.BitfieldStruct* @Bitfield_new(i32 noundef %47) #5
  %49 = zext i32 %.01 to i64
  %50 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %49, i32 0
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  %52 = zext i32 %.01 to i64
  %53 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %52, i32 1
  %54 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %2, i64 1
  %56 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %51, %struct.EdgeReferencesStruct* noundef %54, i8** noundef nonnull %55, %struct.NodePtrVecStruct* noundef %45, %struct.BitfieldStruct* noundef %48)
  call void @Bitfield_delete(%struct.BitfieldStruct* noundef %48) #5
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef nonnull %3, %struct.NodePtrVecStruct* noundef %45, i1 noundef zeroext true) #5
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %45) #5
  br label %83

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %20
  br label %62

62:                                               ; preds = %61
  %63 = add nuw nsw i32 %.01, 1
  br label %16, !llvm.loop !12

64:                                               ; preds = %16
  br label %65

65:                                               ; preds = %79, %64
  %.1 = phi i32 [ 0, %64 ], [ %80, %79 ]
  %66 = zext i32 %.1 to i64
  %67 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %66, i32 0
  %68 = load %struct.NodeStruct*, %struct.NodeStruct** %67, align 8
  %.not9 = icmp eq %struct.NodeStruct* %68, null
  br i1 %.not9, label %81, label %69

69:                                               ; preds = %65
  %70 = zext i32 %.1 to i64
  %71 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %70, i32 0
  %72 = load %struct.NodeStruct*, %struct.NodeStruct** %71, align 8
  %73 = zext i32 %.1 to i64
  %74 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %1, i64 %73, i32 1
  %75 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %74, align 8
  %76 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* noundef %72, %struct.EdgeReferencesStruct* noundef %75, i8** noundef nonnull %2, %struct.NodePtrVecStruct* noundef nonnull %3, %struct.BitfieldStruct* noundef nonnull %4)
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %83

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78
  %80 = add nuw nsw i32 %.1, 1
  br label %65, !llvm.loop !13

81:                                               ; preds = %65
  %82 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef nonnull %3) #5
  br label %83

83:                                               ; preds = %81, %77, %57, %39, %13, %10
  %.0 = phi i1 [ false, %13 ], [ true, %39 ], [ true, %57 ], [ true, %77 ], [ false, %81 ], [ false, %10 ]
  ret i1 %.0
}

declare dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* noundef, %struct.NodeStruct* noundef) #3

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #4

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #3

declare dso_local %struct.BitfieldStruct* @Bitfield_new(i32 noundef) #3

declare dso_local void @Bitfield_delete(%struct.BitfieldStruct* noundef) #3

declare dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* noundef, %struct.NodePtrVecStruct* noundef, i1 noundef zeroext) #3

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #3

declare dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* noundef) #3

attributes #0 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }

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
