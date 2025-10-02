; ModuleID = './fulllink.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/fulllink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@Hlist = external dso_local global %struct.dlink1*, align 8
@edgeCount = external dso_local global i32, align 4
@Hend = external dso_local global %struct.dlink1*, align 8
@Vlist = external dso_local global %struct.dlink1*, align 8
@Vend = external dso_local global %struct.dlink1*, align 8
@hEdgeRoot = external dso_local global %struct.tnode*, align 8
@vEdgeRoot = external dso_local global %struct.tnode*, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8
@VDroot = external dso_local global %struct.tnode*, align 8
@VDptrs = external dso_local global %struct.dlink1**, align 8
@HRroot = external dso_local global %struct.tnode*, align 8
@HRptrs = external dso_local global %struct.dlink1**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @fulllink() #0 {
  %1 = alloca %struct.tnode*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  store i8* %4, i8** bitcast (%struct.dlink1** @Hlist to i8**), align 8
  %5 = load i32, i32* @edgeCount, align 4
  %.cast = bitcast i8* %4 to %struct.dlink1*
  %6 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast, i64 0, i32 0
  store i32 %5, i32* %6, align 8
  %7 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %.cast2 = bitcast i8* %4 to %struct.dlink1*
  %8 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast2, i64 0, i32 2
  %9 = bitcast %struct.dlink1** %8 to i8**
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast2, i64 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %10, align 8
  %.cast1 = bitcast i8* %7 to %struct.dlink1*
  %11 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast1, i64 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %11, align 8
  %12 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  %13 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i64 0, i32 2
  %14 = load %struct.dlink1*, %struct.dlink1** %13, align 8
  %15 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %14, i64 0, i32 1
  store %struct.dlink1* %12, %struct.dlink1** %15, align 8
  %16 = load i32, i32* @edgeCount, align 4
  %17 = add nsw i32 %16, -2
  %18 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  %19 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %18, i64 0, i32 2
  %20 = load %struct.dlink1*, %struct.dlink1** %19, align 8
  %21 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %20, i64 0, i32 0
  store i32 %17, i32* %21, align 8
  %22 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  %23 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %22, i64 0, i32 2
  %24 = load %struct.dlink1*, %struct.dlink1** %23, align 8
  store %struct.dlink1* %24, %struct.dlink1** @Hend, align 8
  %25 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  store i8* %25, i8** bitcast (%struct.dlink1** @Vlist to i8**), align 8
  %26 = load i32, i32* @edgeCount, align 4
  %27 = add nsw i32 %26, -3
  %.cast3 = bitcast i8* %25 to %struct.dlink1*
  %28 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast3, i64 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %30 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  %31 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %30, i64 0, i32 2
  %32 = bitcast %struct.dlink1** %31 to i8**
  store i8* %29, i8** %32, align 8
  %33 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %30, i64 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %33, align 8
  %.cast4 = bitcast i8* %29 to %struct.dlink1*
  %34 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.cast4, i64 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %34, align 8
  %35 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  %36 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %35, i64 0, i32 2
  %37 = load %struct.dlink1*, %struct.dlink1** %36, align 8
  %38 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %37, i64 0, i32 1
  store %struct.dlink1* %35, %struct.dlink1** %38, align 8
  %39 = load i32, i32* @edgeCount, align 4
  %40 = add nsw i32 %39, -1
  %41 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  %42 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %41, i64 0, i32 2
  %43 = load %struct.dlink1*, %struct.dlink1** %42, align 8
  %44 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %43, i64 0, i32 0
  store i32 %40, i32* %44, align 8
  %45 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  %46 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %45, i64 0, i32 2
  %47 = load %struct.dlink1*, %struct.dlink1** %46, align 8
  store %struct.dlink1* %47, %struct.dlink1** @Vend, align 8
  %48 = load %struct.dlink1*, %struct.dlink1** @Hlist, align 8
  %49 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %48, i64 0, i32 2
  %50 = load %struct.dlink1*, %struct.dlink1** %49, align 8
  br label %51

51:                                               ; preds = %55, %0
  %.0 = phi %struct.dlink1* [ %48, %0 ], [ %57, %55 ]
  call void @tpop(%struct.tnode** noundef nonnull @hEdgeRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #3
  %52 = load %struct.tnode*, %struct.tnode** %1, align 8
  %53 = icmp eq %struct.tnode* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %66

55:                                               ; preds = %51
  %56 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %57 = bitcast i8* %56 to %struct.dlink1*
  %58 = load i32, i32* %3, align 4
  %59 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %57, i64 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %57, i64 0, i32 1
  store %struct.dlink1* %.0, %struct.dlink1** %60, align 8
  %61 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %57, i64 0, i32 2
  store %struct.dlink1* %50, %struct.dlink1** %61, align 8
  %62 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  %63 = bitcast %struct.dlink1** %62 to i8**
  store i8* %56, i8** %63, align 8
  %64 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %50, i64 0, i32 1
  %65 = bitcast %struct.dlink1** %64 to i8**
  store i8* %56, i8** %65, align 8
  br label %51

66:                                               ; preds = %54
  %67 = load %struct.dlink1*, %struct.dlink1** @Vlist, align 8
  %68 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %67, i64 0, i32 2
  %69 = load %struct.dlink1*, %struct.dlink1** %68, align 8
  br label %70

70:                                               ; preds = %74, %66
  %.1 = phi %struct.dlink1* [ %67, %66 ], [ %76, %74 ]
  call void @tpop(%struct.tnode** noundef nonnull @vEdgeRoot, %struct.tnode** noundef nonnull %1, i32* noundef nonnull %2, i32* noundef nonnull %3) #3
  %71 = load %struct.tnode*, %struct.tnode** %1, align 8
  %72 = icmp eq %struct.tnode* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %85

74:                                               ; preds = %70
  %75 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  %76 = bitcast i8* %75 to %struct.dlink1*
  %77 = load i32, i32* %3, align 4
  %78 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %76, i64 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %76, i64 0, i32 1
  store %struct.dlink1* %.1, %struct.dlink1** %79, align 8
  %80 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %76, i64 0, i32 2
  store %struct.dlink1* %69, %struct.dlink1** %80, align 8
  %81 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.1, i64 0, i32 2
  %82 = bitcast %struct.dlink1** %81 to i8**
  store i8* %75, i8** %82, align 8
  %83 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %69, i64 0, i32 1
  %84 = bitcast %struct.dlink1** %83 to i8**
  store i8* %75, i8** %84, align 8
  br label %70

85:                                               ; preds = %73
  call void @makeVertDownTree()
  call void @makeHoriRiteTree()
  call void @makeVertTree()
  call void @makeHoriTree()
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeVertDownTree() #0 {
  store %struct.tnode* null, %struct.tnode** @VDroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #3
  store i8* %1, i8** bitcast (%struct.dlink1*** @VDptrs to i8**), align 8
  br label %2

2:                                                ; preds = %37, %0
  %.02 = phi i32 [ 0, %0 ], [ %.24, %37 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.2, %37 ]
  %.0.in = phi %struct.dlink1** [ @Vlist, %0 ], [ %38, %37 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %39, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %7, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %37

12:                                               ; preds = %3
  %13 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %13, i64 %14, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, %.01
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %20, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %.02, 1
  %24 = srem i32 %23, 100
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i8*, i8** bitcast (%struct.dlink1*** @VDptrs to i8**), align 8
  %28 = add nsw i32 %.02, 101
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call i8* @realloc(i8* noundef %27, i64 noundef %30) #3
  store i8* %31, i8** bitcast (%struct.dlink1*** @VDptrs to i8**), align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.dlink1**, %struct.dlink1*** @VDptrs, align 8
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %33, i64 %34
  store %struct.dlink1* %.0, %struct.dlink1** %35, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @VDroot, i32 noundef %22, i32 noundef %23) #3
  br label %36

36:                                               ; preds = %32, %12
  %.13 = phi i32 [ %23, %32 ], [ %.02, %12 ]
  %.1 = phi i32 [ %22, %32 ], [ %.01, %12 ]
  br label %37

37:                                               ; preds = %36, %11
  %.24 = phi i32 [ %.02, %11 ], [ %.13, %36 ]
  %.2 = phi i32 [ %.01, %11 ], [ %.1, %36 ]
  %38 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %2, !llvm.loop !4

39:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeHoriRiteTree() #0 {
  store %struct.tnode* null, %struct.tnode** @HRroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #3
  store i8* %1, i8** bitcast (%struct.dlink1*** @HRptrs to i8**), align 8
  br label %2

2:                                                ; preds = %37, %0
  %.02 = phi i32 [ 0, %0 ], [ %.24, %37 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.2, %37 ]
  %.0.in = phi %struct.dlink1** [ @Hlist, %0 ], [ %38, %37 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %39, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %7, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %37

12:                                               ; preds = %3
  %13 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %13, i64 %14, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %16, %.01
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %19, i64 %20, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %.02, 1
  %24 = srem i32 %23, 100
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i8*, i8** bitcast (%struct.dlink1*** @HRptrs to i8**), align 8
  %28 = add nsw i32 %.02, 101
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = call i8* @realloc(i8* noundef %27, i64 noundef %30) #3
  store i8* %31, i8** bitcast (%struct.dlink1*** @HRptrs to i8**), align 8
  br label %32

32:                                               ; preds = %26, %18
  %33 = load %struct.dlink1**, %struct.dlink1*** @HRptrs, align 8
  %34 = sext i32 %23 to i64
  %35 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %33, i64 %34
  store %struct.dlink1* %.0, %struct.dlink1** %35, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @HRroot, i32 noundef %22, i32 noundef %23) #3
  br label %36

36:                                               ; preds = %32, %12
  %.13 = phi i32 [ %23, %32 ], [ %.02, %12 ]
  %.1 = phi i32 [ %22, %32 ], [ %.01, %12 ]
  br label %37

37:                                               ; preds = %36, %11
  %.24 = phi i32 [ %.02, %11 ], [ %.13, %36 ]
  %.2 = phi i32 [ %.01, %11 ], [ %.1, %36 ]
  %38 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %2, !llvm.loop !6

39:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeVertTree() #0 {
  store %struct.tnode* null, %struct.tnode** @Vroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #3
  store i8* %1, i8** bitcast (%struct.dlink1*** @Vptrs to i8**), align 8
  br label %2

2:                                                ; preds = %30, %0
  %.02 = phi i32 [ 0, %0 ], [ %.13, %30 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.1, %30 ]
  %.0.in = phi %struct.dlink1** [ @Vlist, %0 ], [ %31, %30 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %7, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %12, i64 %13, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.02, 1
  %17 = srem i32 %16, 100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i8*, i8** bitcast (%struct.dlink1*** @Vptrs to i8**), align 8
  %21 = add nsw i32 %.02, 101
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call i8* @realloc(i8* noundef %20, i64 noundef %23) #3
  store i8* %24, i8** bitcast (%struct.dlink1*** @Vptrs to i8**), align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %26, i64 %27
  store %struct.dlink1* %.0, %struct.dlink1** %28, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @Vroot, i32 noundef %15, i32 noundef %16) #3
  br label %29

29:                                               ; preds = %25, %3
  %.13 = phi i32 [ %16, %25 ], [ %.02, %3 ]
  %.1 = phi i32 [ %15, %25 ], [ %.01, %3 ]
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %2, !llvm.loop !7

32:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeHoriTree() #0 {
  store %struct.tnode* null, %struct.tnode** @Hroot, align 8
  %1 = call noalias dereferenceable_or_null(800) i8* @malloc(i64 noundef 800) #3
  store i8* %1, i8** bitcast (%struct.dlink1*** @Hptrs to i8**), align 8
  br label %2

2:                                                ; preds = %30, %0
  %.02 = phi i32 [ 0, %0 ], [ %.13, %30 ]
  %.01 = phi i32 [ -1000000, %0 ], [ %.1, %30 ]
  %.0.in = phi %struct.dlink1** [ @Hlist, %0 ], [ %31, %30 ]
  %.0 = load %struct.dlink1*, %struct.dlink1** %.0.in, align 8
  %.not = icmp eq %struct.dlink1* %.0, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %6, i64 %7, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, %.01
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %12, i64 %13, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %.02, 1
  %17 = srem i32 %16, 100
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load i8*, i8** bitcast (%struct.dlink1*** @Hptrs to i8**), align 8
  %21 = add nsw i32 %.02, 101
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call i8* @realloc(i8* noundef %20, i64 noundef %23) #3
  store i8* %24, i8** bitcast (%struct.dlink1*** @Hptrs to i8**), align 8
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %27 = sext i32 %16 to i64
  %28 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %26, i64 %27
  store %struct.dlink1* %.0, %struct.dlink1** %28, align 8
  call void @tinsert(%struct.tnode** noundef nonnull @Hroot, i32 noundef %15, i32 noundef %16) #3
  br label %29

29:                                               ; preds = %25, %3
  %.13 = phi i32 [ %16, %25 ], [ %.02, %3 ]
  %.1 = phi i32 [ %15, %25 ], [ %.01, %3 ]
  br label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %.0, i64 0, i32 2
  br label %2, !llvm.loop !8

32:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

declare dso_local void @tinsert(%struct.tnode** noundef, i32 noundef, i32 noundef) #2

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
