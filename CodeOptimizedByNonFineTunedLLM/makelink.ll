; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makelink.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Prolangs-C/TimberWolfMC/makelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlink1 = type { i32, %struct.dlink1*, %struct.dlink1* }
%struct.tnode = type { i32, i32, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, %struct.tnode*, i32, i32, %struct.plist* }
%struct.plist = type { i32, %struct.plist* }
%struct.edgebox = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@hFixedList = external dso_local global %struct.dlink1*, align 8
@edgeCount = external dso_local global i32, align 4
@hFixedEnd = external dso_local global %struct.dlink1*, align 8
@vFixedList = external dso_local global %struct.dlink1*, align 8
@vFixedEnd = external dso_local global %struct.dlink1*, align 8
@hFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@vFixedEdgeRoot = external dso_local global %struct.tnode*, align 8
@Vroot = external dso_local global %struct.tnode*, align 8
@Vptrs = external dso_local global %struct.dlink1**, align 8
@edgeList = external dso_local global %struct.edgebox*, align 8
@Hroot = external dso_local global %struct.tnode*, align 8
@Hptrs = external dso_local global %struct.dlink1**, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @makelink() #0 {
  %1 = alloca %struct.tnode*, align 8
  %2 = alloca %struct.dlink1*, align 8
  %3 = alloca %struct.dlink1*, align 8
  %4 = alloca %struct.dlink1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call noalias i8* @malloc(i64 noundef 24) #3
  %8 = bitcast i8* %7 to %struct.dlink1*
  store %struct.dlink1* %8, %struct.dlink1** @hFixedList, align 8
  %9 = load i32, i32* @edgeCount, align 4
  %10 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %11 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = call noalias i8* @malloc(i64 noundef 24) #3
  %13 = bitcast i8* %12 to %struct.dlink1*
  %14 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %15 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %14, i32 0, i32 2
  store %struct.dlink1* %13, %struct.dlink1** %15, align 8
  %16 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %17 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %16, i32 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %17, align 8
  %18 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %19 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %18, i32 0, i32 2
  %20 = load %struct.dlink1*, %struct.dlink1** %19, align 8
  %21 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %20, i32 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %21, align 8
  %22 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %23 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %24 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %23, i32 0, i32 2
  %25 = load %struct.dlink1*, %struct.dlink1** %24, align 8
  %26 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %25, i32 0, i32 1
  store %struct.dlink1* %22, %struct.dlink1** %26, align 8
  %27 = load i32, i32* @edgeCount, align 4
  %28 = sub nsw i32 %27, 2
  %29 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %30 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %29, i32 0, i32 2
  %31 = load %struct.dlink1*, %struct.dlink1** %30, align 8
  %32 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %34 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %33, i32 0, i32 2
  %35 = load %struct.dlink1*, %struct.dlink1** %34, align 8
  store %struct.dlink1* %35, %struct.dlink1** @hFixedEnd, align 8
  %36 = call noalias i8* @malloc(i64 noundef 24) #3
  %37 = bitcast i8* %36 to %struct.dlink1*
  store %struct.dlink1* %37, %struct.dlink1** @vFixedList, align 8
  %38 = load i32, i32* @edgeCount, align 4
  %39 = sub nsw i32 %38, 3
  %40 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %41 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = call noalias i8* @malloc(i64 noundef 24) #3
  %43 = bitcast i8* %42 to %struct.dlink1*
  %44 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %45 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %44, i32 0, i32 2
  store %struct.dlink1* %43, %struct.dlink1** %45, align 8
  %46 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %47 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %46, i32 0, i32 1
  store %struct.dlink1* null, %struct.dlink1** %47, align 8
  %48 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %49 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %48, i32 0, i32 2
  %50 = load %struct.dlink1*, %struct.dlink1** %49, align 8
  %51 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %50, i32 0, i32 2
  store %struct.dlink1* null, %struct.dlink1** %51, align 8
  %52 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %53 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %54 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %53, i32 0, i32 2
  %55 = load %struct.dlink1*, %struct.dlink1** %54, align 8
  %56 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %55, i32 0, i32 1
  store %struct.dlink1* %52, %struct.dlink1** %56, align 8
  %57 = load i32, i32* @edgeCount, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %60 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %59, i32 0, i32 2
  %61 = load %struct.dlink1*, %struct.dlink1** %60, align 8
  %62 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %64 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %63, i32 0, i32 2
  %65 = load %struct.dlink1*, %struct.dlink1** %64, align 8
  store %struct.dlink1* %65, %struct.dlink1** @vFixedEnd, align 8
  %66 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %66, %struct.dlink1** %3, align 8
  %67 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  %68 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %67, i32 0, i32 2
  %69 = load %struct.dlink1*, %struct.dlink1** %68, align 8
  store %struct.dlink1* %69, %struct.dlink1** %4, align 8
  br label %70

70:                                               ; preds = %74, %0
  call void @tpop(%struct.tnode** noundef @hFixedEdgeRoot, %struct.tnode** noundef %1, i32* noundef %5, i32* noundef %6)
  %71 = load %struct.tnode*, %struct.tnode** %1, align 8
  %72 = icmp eq %struct.tnode* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %93

74:                                               ; preds = %70
  %75 = call noalias i8* @malloc(i64 noundef 24) #3
  %76 = bitcast i8* %75 to %struct.dlink1*
  store %struct.dlink1* %76, %struct.dlink1** %2, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %79 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %81 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %82 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %81, i32 0, i32 1
  store %struct.dlink1* %80, %struct.dlink1** %82, align 8
  %83 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %84 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %85 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %84, i32 0, i32 2
  store %struct.dlink1* %83, %struct.dlink1** %85, align 8
  %86 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %87 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %88 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %87, i32 0, i32 2
  store %struct.dlink1* %86, %struct.dlink1** %88, align 8
  %89 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %90 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %91 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %90, i32 0, i32 1
  store %struct.dlink1* %89, %struct.dlink1** %91, align 8
  %92 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  store %struct.dlink1* %92, %struct.dlink1** %3, align 8
  br label %70

93:                                               ; preds = %73
  %94 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %94, %struct.dlink1** %3, align 8
  %95 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  %96 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %95, i32 0, i32 2
  %97 = load %struct.dlink1*, %struct.dlink1** %96, align 8
  store %struct.dlink1* %97, %struct.dlink1** %4, align 8
  br label %98

98:                                               ; preds = %102, %93
  call void @tpop(%struct.tnode** noundef @vFixedEdgeRoot, %struct.tnode** noundef %1, i32* noundef %5, i32* noundef %6)
  %99 = load %struct.tnode*, %struct.tnode** %1, align 8
  %100 = icmp eq %struct.tnode* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  br label %121

102:                                              ; preds = %98
  %103 = call noalias i8* @malloc(i64 noundef 24) #3
  %104 = bitcast i8* %103 to %struct.dlink1*
  store %struct.dlink1* %104, %struct.dlink1** %2, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %107 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %109 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %110 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %109, i32 0, i32 1
  store %struct.dlink1* %108, %struct.dlink1** %110, align 8
  %111 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %112 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %113 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %112, i32 0, i32 2
  store %struct.dlink1* %111, %struct.dlink1** %113, align 8
  %114 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %115 = load %struct.dlink1*, %struct.dlink1** %3, align 8
  %116 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %115, i32 0, i32 2
  store %struct.dlink1* %114, %struct.dlink1** %116, align 8
  %117 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  %118 = load %struct.dlink1*, %struct.dlink1** %4, align 8
  %119 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %118, i32 0, i32 1
  store %struct.dlink1* %117, %struct.dlink1** %119, align 8
  %120 = load %struct.dlink1*, %struct.dlink1** %2, align 8
  store %struct.dlink1* %120, %struct.dlink1** %3, align 8
  br label %98

121:                                              ; preds = %101
  call void @makeVtree()
  call void @makeHtree()
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local void @tpop(%struct.tnode** noundef, %struct.tnode** noundef, i32* noundef, i32* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeVtree() #0 {
  %1 = alloca %struct.dlink1*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @Vroot, align 8
  %5 = call noalias i8* @malloc(i64 noundef 800) #3
  %6 = bitcast i8* %5 to %struct.dlink1**
  store %struct.dlink1** %6, %struct.dlink1*** @Vptrs, align 8
  store i32 0, i32* %4, align 4
  store i32 -1000000, i32* %2, align 4
  %7 = load %struct.dlink1*, %struct.dlink1** @vFixedList, align 8
  store %struct.dlink1* %7, %struct.dlink1** %1, align 8
  br label %8

8:                                                ; preds = %52, %0
  %9 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %10 = icmp ne %struct.dlink1* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %13 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %15, i64 %17
  %19 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %24, i64 %26
  %28 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = srem i32 %31, 100
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %36 = bitcast %struct.dlink1** %35 to i8*
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 100
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call i8* @realloc(i8* noundef %36, i64 noundef %40) #3
  %42 = bitcast i8* %41 to %struct.dlink1**
  store %struct.dlink1** %42, %struct.dlink1*** @Vptrs, align 8
  br label %43

43:                                               ; preds = %34, %23
  %44 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %45 = load %struct.dlink1**, %struct.dlink1*** @Vptrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %45, i64 %47
  store %struct.dlink1* %44, %struct.dlink1** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  call void @tinsert(%struct.tnode** noundef @Vroot, i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %11
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %54 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %53, i32 0, i32 2
  %55 = load %struct.dlink1*, %struct.dlink1** %54, align 8
  store %struct.dlink1* %55, %struct.dlink1** %1, align 8
  br label %8, !llvm.loop !4

56:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makeHtree() #0 {
  %1 = alloca %struct.dlink1*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tnode* null, %struct.tnode** @Hroot, align 8
  %5 = call noalias i8* @malloc(i64 noundef 800) #3
  %6 = bitcast i8* %5 to %struct.dlink1**
  store %struct.dlink1** %6, %struct.dlink1*** @Hptrs, align 8
  store i32 0, i32* %4, align 4
  store i32 -1000000, i32* %2, align 4
  %7 = load %struct.dlink1*, %struct.dlink1** @hFixedList, align 8
  store %struct.dlink1* %7, %struct.dlink1** %1, align 8
  br label %8

8:                                                ; preds = %52, %0
  %9 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %10 = icmp ne %struct.dlink1* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %8
  %12 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %13 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %3, align 4
  %15 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %15, i64 %17
  %19 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %2, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %11
  %24 = load %struct.edgebox*, %struct.edgebox** @edgeList, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %24, i64 %26
  %28 = getelementptr inbounds %struct.edgebox, %struct.edgebox* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = srem i32 %31, 100
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %36 = bitcast %struct.dlink1** %35 to i8*
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 100
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call i8* @realloc(i8* noundef %36, i64 noundef %40) #3
  %42 = bitcast i8* %41 to %struct.dlink1**
  store %struct.dlink1** %42, %struct.dlink1*** @Hptrs, align 8
  br label %43

43:                                               ; preds = %34, %23
  %44 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %45 = load %struct.dlink1**, %struct.dlink1*** @Hptrs, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dlink1*, %struct.dlink1** %45, i64 %47
  store %struct.dlink1* %44, %struct.dlink1** %48, align 8
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %4, align 4
  call void @tinsert(%struct.tnode** noundef @Hroot, i32 noundef %49, i32 noundef %50)
  br label %51

51:                                               ; preds = %43, %11
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.dlink1*, %struct.dlink1** %1, align 8
  %54 = getelementptr inbounds %struct.dlink1, %struct.dlink1* %53, i32 0, i32 2
  %55 = load %struct.dlink1*, %struct.dlink1** %54, align 8
  store %struct.dlink1* %55, %struct.dlink1** %1, align 8
  br label %8, !llvm.loop !6

56:                                               ; preds = %8
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
