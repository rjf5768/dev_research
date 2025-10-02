; ModuleID = './systemCallMap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/systemCallMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* noundef %0, i32 noundef %1) #0 {
  %3 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #5
  %4 = bitcast i8* %3 to %struct.SystemCallMapElementStruct*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %17, label %5

5:                                                ; preds = %2
  %6 = call noalias i8* @strdup(i8* noundef %0) #5
  %7 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %4, i64 0, i32 0
  store i8* %6, i8** %7, align 8
  %8 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %4, i64 0, i32 1
  store i32 -1, i32* %8, align 8
  %.not1 = icmp eq i8* %6, null
  br i1 %.not1, label %9, label %10

9:                                                ; preds = %5
  call void @free(i8* noundef %3) #5
  br label %18

10:                                               ; preds = %5
  %11 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef %1) #5
  %12 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %4, i64 0, i32 2
  store %struct.NodePtrVecStruct* %11, %struct.NodePtrVecStruct** %12, align 8
  %.not2 = icmp eq %struct.NodePtrVecStruct* %11, null
  br i1 %.not2, label %13, label %16

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %4, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  call void @free(i8* noundef %15) #5
  call void @free(i8* noundef %3) #5
  br label %18

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %2
  br label %18

18:                                               ; preds = %17, %13, %9
  %.0 = phi %struct.SystemCallMapElementStruct* [ %4, %17 ], [ null, %13 ], [ null, %9 ]
  ret %struct.SystemCallMapElementStruct* %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

declare dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef readonly %0) #0 {
  %.not = icmp eq %struct.SystemCallMapElementStruct* %0, null
  br i1 %.not, label %11, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %0, i64 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %.not1 = icmp eq i8* %4, null
  br i1 %.not1, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %0, i64 0, i32 0
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #5
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %0, i64 0, i32 2
  %10 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %9, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef %10) #5
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

declare dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.SystemCallMapStruct* @SystemCallMap_new(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %19

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = shl nsw i64 %5, 3
  %7 = call noalias i8* @malloc(i64 noundef %6) #5
  %.not = icmp eq i8* %7, null
  br i1 %.not, label %18, label %8

8:                                                ; preds = %4
  %9 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #5
  %10 = bitcast i8* %9 to %struct.SystemCallMapStruct*
  %.not2 = icmp eq i8* %9, null
  br i1 %.not2, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i64 0, i32 1
  store i32 %0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i64 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i64 0, i32 2
  %15 = bitcast %struct.SystemCallMapElementStruct*** %14 to i8**
  store i8* %7, i8** %15, align 8
  br label %17

16:                                               ; preds = %8
  call void @free(i8* noundef %7) #5
  br label %17

17:                                               ; preds = %16, %11
  br label %18

18:                                               ; preds = %17, %4
  %.01 = phi %struct.SystemCallMapStruct* [ %10, %17 ], [ null, %4 ]
  br label %19

19:                                               ; preds = %18, %3
  %.0 = phi %struct.SystemCallMapStruct* [ null, %3 ], [ %.01, %18 ]
  ret %struct.SystemCallMapStruct* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMap_delete(%struct.SystemCallMapStruct* noundef readonly %0) #0 {
  %.not = icmp eq %struct.SystemCallMapStruct* %0, null
  br i1 %.not, label %2, label %3

2:                                                ; preds = %1
  br label %16

3:                                                ; preds = %1
  br label %4

4:                                                ; preds = %14, %3
  %.0 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %5 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %.0, %6
  br i1 %7, label %8, label %.loopexit

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %10 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %9, align 8
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %10, i64 %11
  %13 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %12, align 8
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef %13)
  br label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !4

.loopexit:                                        ; preds = %4
  br label %16

16:                                               ; preds = %.loopexit, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* noundef %0, i8* noundef %1, %struct.NodeStruct* noundef %2) #0 {
  %.not = icmp eq %struct.SystemCallMapStruct* %0, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %3
  %.not3 = icmp eq i8* %1, null
  br i1 %.not3, label %6, label %5

5:                                                ; preds = %4
  %.not4 = icmp eq %struct.NodeStruct* %2, null
  br i1 %.not4, label %6, label %7

6:                                                ; preds = %5, %4, %3
  br label %92

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %41, %7
  %.01 = phi i32 [ 0, %7 ], [ %42, %41 ]
  %9 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %.01, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %14 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %13, align 8
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %14, i64 %15
  %17 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %16, align 8
  %18 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %17, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(1) %19) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %24 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %23, align 8
  %25 = zext i32 %.01 to i64
  %26 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %24, i64 %25
  %27 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %26, align 8
  %28 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %27, i64 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %2, i64 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %2, i64 0, i32 3
  store i32 %.01, i32* %31, align 8
  %32 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %33 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %32, align 8
  %34 = zext i32 %.01 to i64
  %35 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %33, i64 %34
  %36 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %35, align 8
  %37 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %36, i64 0, i32 2
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %37, align 8
  %39 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %38, %struct.NodeStruct* noundef nonnull %2) #5
  br label %92

40:                                               ; preds = %12
  br label %41

41:                                               ; preds = %40
  %42 = add nuw nsw i32 %.01, 1
  br label %8, !llvm.loop !6

43:                                               ; preds = %8
  %44 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %51 = bitcast %struct.SystemCallMapElementStruct*** %50 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = shl nsw i64 %56, 3
  %58 = call i8* @realloc(i8* noundef %52, i64 noundef %57) #5
  %59 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %60 = bitcast %struct.SystemCallMapElementStruct*** %59 to i8**
  store i8* %58, i8** %60, align 8
  %.not6 = icmp eq i8* %58, null
  br i1 %.not6, label %65, label %61

61:                                               ; preds = %49
  %62 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %66

65:                                               ; preds = %49
  br label %92

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %43
  %68 = call %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* noundef nonnull %1, i32 noundef 8)
  %.not5 = icmp eq %struct.SystemCallMapElementStruct* %68, null
  br i1 %.not5, label %69, label %70

69:                                               ; preds = %67
  br label %92

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %68, i64 0, i32 2
  %72 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %71, align 8
  %73 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef %72, %struct.NodeStruct* noundef nonnull %2) #5
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* noundef nonnull %68)
  br label %75

75:                                               ; preds = %74, %70
  %76 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %68, i64 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %2, i64 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %68, i64 0, i32 1
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %2, i64 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %84 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %83, align 8
  %85 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %84, i64 %87
  store %struct.SystemCallMapElementStruct* %68, %struct.SystemCallMapElementStruct** %88, align 8
  %89 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %75, %69, %65, %22, %6
  %.0 = phi i1 [ %39, %22 ], [ true, %75 ], [ false, %69 ], [ false, %65 ], [ false, %6 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strcmp(i8* noundef, i8* noundef) #3

declare dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* noundef, %struct.NodeStruct* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* noundef readonly %0, i8* noundef readonly %1) #4 {
  %.not = icmp eq %struct.SystemCallMapStruct* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  %.not3 = icmp eq i8* %1, null
  br i1 %.not3, label %4, label %5

4:                                                ; preds = %3, %2
  br label %32

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %29, %5
  %.01 = phi i32 [ 0, %5 ], [ %30, %29 ]
  %7 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %.01, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %12 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %11, align 8
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %12, i64 %13
  %15 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %14, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %15, i64 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* noundef nonnull %1, i8* noundef nonnull dereferenceable(1) %17) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %22 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %21, align 8
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %22, i64 %23
  %25 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %24, align 8
  %26 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %25, i64 0, i32 2
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %26, align 8
  br label %32

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !7

31:                                               ; preds = %6
  br label %32

32:                                               ; preds = %31, %20, %4
  %.0 = phi %struct.NodePtrVecStruct* [ %27, %20 ], [ null, %31 ], [ null, %4 ]
  ret %struct.NodePtrVecStruct* %.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* nocapture noundef readonly %0, i8* noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %19, %2
  %.01 = phi i32 [ 0, %2 ], [ %20, %19 ]
  %4 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp slt i32 %.01, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %0, i64 0, i32 2
  %9 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %8, align 8
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, i64 %10
  %12 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %11, align 8
  %13 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %12, i64 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(1) %14) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %7
  br label %22

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18
  %20 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !8

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %.0 = phi i32 [ %.01, %17 ], [ -1, %21 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nounwind readonly uwtable
define dso_local zeroext i1 @SystemCallMap_signatureRepresented(%struct.SystemCallMapStruct* nocapture noundef readonly %0, i8** nocapture noundef readonly %1) #4 {
  br label %3

3:                                                ; preds = %20, %2
  %.01 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.0 = phi i8 [ 1, %2 ], [ %.1, %20 ]
  %4 = zext i32 %.01 to i64
  %5 = getelementptr inbounds i8*, i8** %1, i64 %4
  %6 = load i8*, i8** %5, align 8
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %3
  %8 = and i8 %.0, 1
  %9 = icmp ne i8 %8, 0
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i1 [ false, %3 ], [ %9, %7 ]
  br i1 %11, label %12, label %22

12:                                               ; preds = %10
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* noundef %0, i8* noundef %15)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %12
  %.1 = phi i8 [ 0, %18 ], [ %.0, %12 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !9

22:                                               ; preds = %10
  %23 = and i8 %.0, 1
  %24 = icmp ne i8 %23, 0
  ret i1 %24
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
