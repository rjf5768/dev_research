; ModuleID = './Fheap.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/Fheap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@hTable = internal global [10000 x %struct._Heap*] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"r < MAX_RANK\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/Fheap.c\00", align 1
@__PRETTY_FUNCTION__.DeleteMin = private unnamed_addr constant [26 x i8] c"HeapP *DeleteMin(HeapP *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"h != NULL\00", align 1
@__PRETTY_FUNCTION__.DecreaseKey = private unnamed_addr constant [42 x i8] c"HeapP *DecreaseKey(HeapP *, HeapP *, int)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"i != NULL\00", align 1
@__PRETTY_FUNCTION__.RemoveChild = private unnamed_addr constant [26 x i8] c"void RemoveChild(HeapP *)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@__PRETTY_FUNCTION__.FixRank = private unnamed_addr constant [27 x i8] c"void FixRank(HeapP *, int)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"delta > 0\00", align 1
@__PRETTY_FUNCTION__.Delete = private unnamed_addr constant [32 x i8] c"HeapP *Delete(HeapP *, HeapP *)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"(h1 != NULL) && (h2 != NULL)\00", align 1
@__PRETTY_FUNCTION__.CombineLists = private unnamed_addr constant [36 x i8] c"void CombineLists(HeapP *, HeapP *)\00", align 1
@__PRETTY_FUNCTION__.AddEntry = private unnamed_addr constant [32 x i8] c"void AddEntry(HeapP *, HeapP *)\00", align 1
@__PRETTY_FUNCTION__.RemoveEntry = private unnamed_addr constant [28 x i8] c"HeapP *RemoveEntry(HeapP *)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"Oops, could not malloc\0A\00", align 1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable writeonly
define dso_local void @InitFHeap() #0 {
  br label %1

1:                                                ; preds = %6, %0
  %.0 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %2 = icmp ult i32 %.0, 10000
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = zext i32 %.0 to i64
  %5 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %4
  store %struct._Heap* null, %struct._Heap** %5, align 8
  br label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %.0, 1
  br label %1, !llvm.loop !4

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct._Heap* @MakeHeap() #1 {
  ret %struct._Heap* null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._Vertices* @FindMin(%struct._Heap* noundef readonly %0) #2 {
  %2 = icmp eq %struct._Heap* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 0
  %6 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  br label %7

7:                                                ; preds = %4, %3
  %.0 = phi %struct._Vertices* [ null, %3 ], [ %6, %4 ]
  ret %struct._Vertices* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Insert(%struct._Heap** nocapture noundef %0, %struct._Vertices* noundef %1) #3 {
  %3 = call %struct._Heap* @NewHeap(%struct._Vertices* noundef %1)
  %4 = load %struct._Heap*, %struct._Heap** %0, align 8
  %5 = call %struct._Heap* @Meld(%struct._Heap* noundef %4, %struct._Heap* noundef %3)
  store %struct._Heap* %5, %struct._Heap** %0, align 8
  ret %struct._Heap* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @NewHeap(%struct._Vertices* noundef %0) #3 {
  %2 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #8
  %3 = bitcast i8* %2 to %struct._Heap*
  %4 = icmp eq i8* %2, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %6) #9
  call void @exit(i32 noundef 1) #10
  unreachable

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 0
  store %struct._Vertices* %0, %struct._Vertices** %9, align 8
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 1
  store %struct._Heap* null, %struct._Heap** %10, align 8
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 2
  store %struct._Heap* null, %struct._Heap** %11, align 8
  %12 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 3
  %13 = bitcast %struct._Heap** %12 to i8**
  store i8* %2, i8** %13, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 4
  %15 = bitcast %struct._Heap** %14 to i8**
  store i8* %2, i8** %15, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 5
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i64 0, i32 6
  store i16 0, i16* %17, align 4
  ret %struct._Heap* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Meld(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #3 {
  %3 = icmp eq %struct._Heap* %1, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %16

5:                                                ; preds = %2
  %6 = icmp eq %struct._Heap* %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %16

8:                                                ; preds = %5
  call void @CombineLists(%struct._Heap* noundef nonnull %0, %struct._Heap* noundef nonnull %1)
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 0
  %10 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 0
  %12 = load %struct._Vertices*, %struct._Vertices** %11, align 8
  %13 = call i32 @LessThan(%struct._Vertices* noundef %10, %struct._Vertices* noundef %12) #8
  %.not = icmp eq i32 %13, 0
  br i1 %.not, label %15, label %14

14:                                               ; preds = %8
  br label %16

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15, %14, %7, %4
  %.0 = phi %struct._Heap* [ %0, %4 ], [ %1, %7 ], [ %0, %14 ], [ %1, %15 ]
  ret %struct._Heap* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CombineLists(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct._Heap* %1, null
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.CombineLists, i64 0, i64 0)) #10
  unreachable

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %8 = load %struct._Heap*, %struct._Heap** %7, align 8
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i64 0, i32 4
  store %struct._Heap* %1, %struct._Heap** %9, align 8
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 3
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  %12 = getelementptr inbounds %struct._Heap, %struct._Heap* %11, i64 0, i32 4
  store %struct._Heap* %0, %struct._Heap** %12, align 8
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %14 = load %struct._Heap*, %struct._Heap** %13, align 8
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 3
  %16 = load %struct._Heap*, %struct._Heap** %15, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  store %struct._Heap* %16, %struct._Heap** %17, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 3
  store %struct._Heap* %14, %struct._Heap** %18, align 8
  ret void
}

declare dso_local i32 @LessThan(%struct._Vertices* noundef, %struct._Vertices* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DeleteMin(%struct._Heap* noundef %0) #3 {
  %2 = icmp eq %struct._Heap* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %173

4:                                                ; preds = %1
  %5 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef nonnull %0)
  %6 = icmp eq %struct._Heap* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = bitcast %struct._Heap* %0 to i8*
  call void @free(i8* noundef %8) #8
  br label %173

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  %12 = icmp eq %struct._Heap* %5, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  store %struct._Heap* null, %struct._Heap** %14, align 8
  br label %15

15:                                               ; preds = %13, %9
  br label %16

16:                                               ; preds = %67, %15
  %.09 = phi %struct._Heap* [ %5, %15 ], [ %18, %67 ]
  %.04 = phi i32 [ 0, %15 ], [ %.15, %67 ]
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %.09, i64 0, i32 3
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %.09, i64 0, i32 3
  store %struct._Heap* %.09, %struct._Heap** %19, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %.09, i64 0, i32 4
  store %struct._Heap* %.09, %struct._Heap** %20, align 8
  %21 = getelementptr inbounds %struct._Heap, %struct._Heap* %.09, i64 0, i32 1
  store %struct._Heap* null, %struct._Heap** %21, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %.09, i64 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 10000
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %27

26:                                               ; preds = %16
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %25
  br label %28

28:                                               ; preds = %60, %27
  %.110 = phi %struct._Heap* [ %.09, %27 ], [ %.211, %60 ]
  %.02 = phi i32 [ %23, %27 ], [ %56, %60 ]
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %29
  %31 = load %struct._Heap*, %struct._Heap** %30, align 8
  %.not = icmp eq %struct._Heap* %31, null
  br i1 %.not, label %61, label %32

32:                                               ; preds = %28
  %33 = sext i32 %.02 to i64
  %34 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %33
  %35 = load %struct._Heap*, %struct._Heap** %34, align 8
  %36 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i64 0, i32 0
  %37 = load %struct._Vertices*, %struct._Vertices** %36, align 8
  %38 = getelementptr inbounds %struct._Heap, %struct._Heap* %.110, i64 0, i32 0
  %39 = load %struct._Vertices*, %struct._Vertices** %38, align 8
  %40 = call i32 @LessThan(%struct._Vertices* noundef %37, %struct._Vertices* noundef %39) #8
  %.not30 = icmp eq i32 %40, 0
  br i1 %.not30, label %48, label %41

41:                                               ; preds = %32
  %42 = sext i32 %.02 to i64
  %43 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %42
  %44 = load %struct._Heap*, %struct._Heap** %43, align 8
  call void @AddEntry(%struct._Heap* noundef %44, %struct._Heap* noundef %.110)
  %45 = sext i32 %.02 to i64
  %46 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %45
  %47 = load %struct._Heap*, %struct._Heap** %46, align 8
  br label %52

48:                                               ; preds = %32
  %49 = sext i32 %.02 to i64
  %50 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %49
  %51 = load %struct._Heap*, %struct._Heap** %50, align 8
  call void @AddEntry(%struct._Heap* noundef %.110, %struct._Heap* noundef %51)
  br label %52

52:                                               ; preds = %48, %41
  %.211 = phi %struct._Heap* [ %47, %41 ], [ %.110, %48 ]
  %53 = sext i32 %.02 to i64
  %54 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %53
  store %struct._Heap* null, %struct._Heap** %54, align 8
  %55 = getelementptr inbounds %struct._Heap, %struct._Heap* %.211, i64 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 10000
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %60

59:                                               ; preds = %52
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

60:                                               ; preds = %58
  br label %28, !llvm.loop !6

61:                                               ; preds = %28
  %62 = sext i32 %.02 to i64
  %63 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %62
  store %struct._Heap* %.110, %struct._Heap** %63, align 8
  %64 = icmp sgt i32 %.02, %.04
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %61
  %.15 = phi i32 [ %.02, %65 ], [ %.04, %61 ]
  br label %67

67:                                               ; preds = %66
  %.not20 = icmp eq %struct._Heap* %18, %5
  br i1 %.not20, label %68, label %16, !llvm.loop !7

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %70 = load %struct._Heap*, %struct._Heap** %69, align 8
  %.not21 = icmp eq %struct._Heap* %70, null
  br i1 %.not21, label %129, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %73 = load %struct._Heap*, %struct._Heap** %72, align 8
  br label %74

74:                                               ; preds = %125, %71
  %.312 = phi %struct._Heap* [ %73, %71 ], [ %76, %125 ]
  %.26 = phi i32 [ %.15, %71 ], [ %.3, %125 ]
  %75 = getelementptr inbounds %struct._Heap, %struct._Heap* %.312, i64 0, i32 3
  %76 = load %struct._Heap*, %struct._Heap** %75, align 8
  %77 = getelementptr inbounds %struct._Heap, %struct._Heap* %.312, i64 0, i32 3
  store %struct._Heap* %.312, %struct._Heap** %77, align 8
  %78 = getelementptr inbounds %struct._Heap, %struct._Heap* %.312, i64 0, i32 4
  store %struct._Heap* %.312, %struct._Heap** %78, align 8
  %79 = getelementptr inbounds %struct._Heap, %struct._Heap* %.312, i64 0, i32 1
  store %struct._Heap* null, %struct._Heap** %79, align 8
  %80 = getelementptr inbounds %struct._Heap, %struct._Heap* %.312, i64 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 10000
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %85

84:                                               ; preds = %74
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %118, %85
  %.413 = phi %struct._Heap* [ %.312, %85 ], [ %.5, %118 ]
  %.13 = phi i32 [ %81, %85 ], [ %114, %118 ]
  %87 = sext i32 %.13 to i64
  %88 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %87
  %89 = load %struct._Heap*, %struct._Heap** %88, align 8
  %.not27 = icmp eq %struct._Heap* %89, null
  br i1 %.not27, label %119, label %90

90:                                               ; preds = %86
  %91 = sext i32 %.13 to i64
  %92 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %91
  %93 = load %struct._Heap*, %struct._Heap** %92, align 8
  %94 = getelementptr inbounds %struct._Heap, %struct._Heap* %93, i64 0, i32 0
  %95 = load %struct._Vertices*, %struct._Vertices** %94, align 8
  %96 = getelementptr inbounds %struct._Heap, %struct._Heap* %.413, i64 0, i32 0
  %97 = load %struct._Vertices*, %struct._Vertices** %96, align 8
  %98 = call i32 @LessThan(%struct._Vertices* noundef %95, %struct._Vertices* noundef %97) #8
  %.not29 = icmp eq i32 %98, 0
  br i1 %.not29, label %106, label %99

99:                                               ; preds = %90
  %100 = sext i32 %.13 to i64
  %101 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %100
  %102 = load %struct._Heap*, %struct._Heap** %101, align 8
  call void @AddEntry(%struct._Heap* noundef %102, %struct._Heap* noundef %.413)
  %103 = sext i32 %.13 to i64
  %104 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %103
  %105 = load %struct._Heap*, %struct._Heap** %104, align 8
  br label %110

106:                                              ; preds = %90
  %107 = sext i32 %.13 to i64
  %108 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %107
  %109 = load %struct._Heap*, %struct._Heap** %108, align 8
  call void @AddEntry(%struct._Heap* noundef %.413, %struct._Heap* noundef %109)
  br label %110

110:                                              ; preds = %106, %99
  %.5 = phi %struct._Heap* [ %105, %99 ], [ %.413, %106 ]
  %111 = sext i32 %.13 to i64
  %112 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %111
  store %struct._Heap* null, %struct._Heap** %112, align 8
  %113 = getelementptr inbounds %struct._Heap, %struct._Heap* %.5, i64 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 10000
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %118

117:                                              ; preds = %110
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

118:                                              ; preds = %116
  br label %86, !llvm.loop !8

119:                                              ; preds = %86
  %120 = sext i32 %.13 to i64
  %121 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %120
  store %struct._Heap* %.413, %struct._Heap** %121, align 8
  %122 = icmp sgt i32 %.13, %.26
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123, %119
  %.3 = phi i32 [ %.13, %123 ], [ %.26, %119 ]
  br label %125

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %127 = load %struct._Heap*, %struct._Heap** %126, align 8
  %.not28 = icmp eq %struct._Heap* %76, %127
  br i1 %.not28, label %128, label %74, !llvm.loop !9

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %68
  %.4 = phi i32 [ %.3, %128 ], [ %.15, %68 ]
  br label %130

130:                                              ; preds = %137, %129
  %.07 = phi i32 [ 0, %129 ], [ %138, %137 ]
  %.not22 = icmp sgt i32 %.07, %.4
  br i1 %.not22, label %.loopexit, label %131

131:                                              ; preds = %130
  %132 = zext i32 %.07 to i64
  %133 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %132
  %134 = load %struct._Heap*, %struct._Heap** %133, align 8
  %.not26 = icmp eq %struct._Heap* %134, null
  br i1 %.not26, label %136, label %135

135:                                              ; preds = %131
  br label %139

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  %138 = add nuw nsw i32 %.07, 1
  br label %130, !llvm.loop !10

.loopexit:                                        ; preds = %130
  br label %139

139:                                              ; preds = %.loopexit, %135
  %140 = zext i32 %.07 to i64
  %141 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %140
  %142 = load %struct._Heap*, %struct._Heap** %141, align 8
  %143 = zext i32 %.07 to i64
  %144 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %143
  store %struct._Heap* null, %struct._Heap** %144, align 8
  br label %145

145:                                              ; preds = %170, %139
  %.18.in = phi i32 [ %.07, %139 ], [ %.18, %170 ]
  %.01 = phi %struct._Heap* [ %142, %139 ], [ %.2, %170 ]
  %.18 = add nuw nsw i32 %.18.in, 1
  %.not23.not = icmp slt i32 %.18.in, %.4
  br i1 %.not23.not, label %146, label %171

146:                                              ; preds = %145
  %147 = zext i32 %.18 to i64
  %148 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %147
  %149 = load %struct._Heap*, %struct._Heap** %148, align 8
  %.not24 = icmp eq %struct._Heap* %149, null
  br i1 %.not24, label %169, label %150

150:                                              ; preds = %146
  %151 = zext i32 %.18 to i64
  %152 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %151
  %153 = load %struct._Heap*, %struct._Heap** %152, align 8
  call void @CombineLists(%struct._Heap* noundef %142, %struct._Heap* noundef %153)
  %154 = zext i32 %.18 to i64
  %155 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %154
  %156 = load %struct._Heap*, %struct._Heap** %155, align 8
  %157 = getelementptr inbounds %struct._Heap, %struct._Heap* %156, i64 0, i32 0
  %158 = load %struct._Vertices*, %struct._Vertices** %157, align 8
  %159 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %160 = load %struct._Vertices*, %struct._Vertices** %159, align 8
  %161 = call i32 @LessThan(%struct._Vertices* noundef %158, %struct._Vertices* noundef %160) #8
  %.not25 = icmp eq i32 %161, 0
  br i1 %.not25, label %166, label %162

162:                                              ; preds = %150
  %163 = zext i32 %.18 to i64
  %164 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %163
  %165 = load %struct._Heap*, %struct._Heap** %164, align 8
  br label %166

166:                                              ; preds = %162, %150
  %.1 = phi %struct._Heap* [ %165, %162 ], [ %.01, %150 ]
  %167 = zext i32 %.18 to i64
  %168 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %167
  store %struct._Heap* null, %struct._Heap** %168, align 8
  br label %169

169:                                              ; preds = %166, %146
  %.2 = phi %struct._Heap* [ %.1, %166 ], [ %.01, %146 ]
  br label %170

170:                                              ; preds = %169
  br label %145, !llvm.loop !11

171:                                              ; preds = %145
  %172 = bitcast %struct._Heap* %0 to i8*
  call void @free(i8* noundef %172) #8
  br label %173

173:                                              ; preds = %171, %7, %3
  %.0 = phi %struct._Heap* [ null, %3 ], [ null, %7 ], [ %.01, %171 ]
  ret %struct._Heap* %.0

UnifiedUnreachableBlock:                          ; preds = %117, %84, %59, %26
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @RemoveEntry(%struct._Heap* noundef readonly %0) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.RemoveEntry, i64 0, i64 0)) #10
  unreachable

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %6 = load %struct._Heap*, %struct._Heap** %5, align 8
  %7 = icmp eq %struct._Heap* %6, %0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  br label %22

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 4
  %12 = load %struct._Heap*, %struct._Heap** %11, align 8
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %14 = load %struct._Heap*, %struct._Heap** %13, align 8
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %14, i64 0, i32 4
  store %struct._Heap* %12, %struct._Heap** %15, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %17 = load %struct._Heap*, %struct._Heap** %16, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 4
  %19 = load %struct._Heap*, %struct._Heap** %18, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i64 0, i32 3
  store %struct._Heap* %17, %struct._Heap** %20, align 8
  %21 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  br label %22

22:                                               ; preds = %10, %8
  %.0.in = phi %struct._Heap** [ %9, %8 ], [ %21, %10 ]
  %.0 = load %struct._Heap*, %struct._Heap** %.0.in, align 8
  ret %struct._Heap* %.0
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddEntry(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %2
  %.not1 = icmp eq %struct._Heap* %1, null
  br i1 %.not1, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.AddEntry, i64 0, i64 0)) #10
  unreachable

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %8 = load %struct._Heap*, %struct._Heap** %7, align 8
  %9 = icmp eq %struct._Heap* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  store %struct._Heap* %1, %struct._Heap** %11, align 8
  br label %15

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 2
  %14 = load %struct._Heap*, %struct._Heap** %13, align 8
  call void @CombineLists(%struct._Heap* noundef %14, %struct._Heap* noundef nonnull %1)
  br label %15

15:                                               ; preds = %12, %10
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 1
  store %struct._Heap* %0, %struct._Heap** %16, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %18, %20
  %22 = add nsw i32 %21, 1
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 5
  store i32 %22, i32* %23, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DecreaseKey(%struct._Heap* noundef %0, %struct._Heap* noundef %1, i32 noundef %2) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %5, label %4

4:                                                ; preds = %3
  br label %6

5:                                                ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %4
  %.not1 = icmp eq %struct._Heap* %1, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %6
  br label %9

8:                                                ; preds = %6
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 1
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  %12 = icmp eq %struct._Heap* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  call void @RemoveChild(%struct._Heap* noundef nonnull %1)
  call void @CombineLists(%struct._Heap* noundef nonnull %0, %struct._Heap* noundef nonnull %1)
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 0
  %16 = load %struct._Vertices*, %struct._Vertices** %15, align 8
  %17 = call %struct._Vertices* @Subtract(%struct._Vertices* noundef %16, i32 noundef %2) #8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 0
  store %struct._Vertices* %17, %struct._Vertices** %18, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 0
  %20 = load %struct._Vertices*, %struct._Vertices** %19, align 8
  %21 = call i32 @LessThan(%struct._Vertices* noundef %17, %struct._Vertices* noundef %20) #8
  %.not2 = icmp eq i32 %21, 0
  br i1 %.not2, label %23, label %22

22:                                               ; preds = %14
  br label %24

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %22
  %.0 = phi %struct._Heap* [ %1, %22 ], [ %0, %23 ]
  ret %struct._Heap* %.0

UnifiedUnreachableBlock:                          ; preds = %8, %5
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RemoveChild(%struct._Heap* noundef %0) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %3, label %2

2:                                                ; preds = %1
  br label %4

3:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 1
  %6 = load %struct._Heap*, %struct._Heap** %5, align 8
  %.not1 = icmp eq %struct._Heap* %6, null
  br i1 %.not1, label %8, label %7

7:                                                ; preds = %4
  br label %9

8:                                                ; preds = %4
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i64 0, i32 2
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  %12 = icmp eq %struct._Heap* %11, %0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %15 = load %struct._Heap*, %struct._Heap** %14, align 8
  %16 = icmp eq %struct._Heap* %15, %0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i64 0, i32 2
  store %struct._Heap* null, %struct._Heap** %18, align 8
  br label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %6, i64 0, i32 2
  store %struct._Heap* %21, %struct._Heap** %22, align 8
  br label %23

23:                                               ; preds = %19, %17
  br label %24

24:                                               ; preds = %23, %9
  %25 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef nonnull %0)
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  call void @FixRank(%struct._Heap* noundef nonnull %6, i32 noundef %28)
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 3
  store %struct._Heap* %0, %struct._Heap** %29, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 4
  store %struct._Heap* %0, %struct._Heap** %30, align 8
  %31 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 1
  store %struct._Heap* null, %struct._Heap** %31, align 8
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %3
  unreachable
}

declare dso_local %struct._Vertices* @Subtract(%struct._Vertices* noundef, i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @FixRank(%struct._Heap* noundef %0, i32 noundef %1) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  br label %9

8:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %17, %9
  %.0 = phi %struct._Heap* [ %0, %9 ], [ %16, %17 ]
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, %1
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %.0, i64 0, i32 1
  %16 = load %struct._Heap*, %struct._Heap** %15, align 8
  br label %17

17:                                               ; preds = %10
  %.not1 = icmp eq %struct._Heap* %16, null
  br i1 %.not1, label %18, label %10, !llvm.loop !12

18:                                               ; preds = %17
  ret void

UnifiedUnreachableBlock:                          ; preds = %8, %4
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Delete(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #3 {
  %.not = icmp eq %struct._Heap* %0, null
  br i1 %.not, label %4, label %3

3:                                                ; preds = %2
  br label %5

4:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

5:                                                ; preds = %3
  %.not3 = icmp eq %struct._Heap* %1, null
  br i1 %.not3, label %7, label %6

6:                                                ; preds = %5
  br label %8

7:                                                ; preds = %5
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #10
  br label %UnifiedUnreachableBlock

8:                                                ; preds = %6
  %9 = icmp eq %struct._Heap* %0, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = call %struct._Heap* @DeleteMin(%struct._Heap* noundef nonnull %0)
  br label %42

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 1
  %14 = load %struct._Heap*, %struct._Heap** %13, align 8
  %15 = icmp eq %struct._Heap* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef nonnull %1)
  br label %19

18:                                               ; preds = %12
  call void @RemoveChild(%struct._Heap* noundef nonnull %1)
  br label %19

19:                                               ; preds = %18, %16
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 2
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  %.not4 = icmp eq %struct._Heap* %21, null
  br i1 %.not4, label %40, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %1, i64 0, i32 2
  br label %24

24:                                               ; preds = %37, %22
  %.02 = phi %struct._Heap* [ %21, %22 ], [ %26, %37 ]
  %.01 = phi %struct._Heap* [ %0, %22 ], [ %.1, %37 ]
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %.02, i64 0, i32 3
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = getelementptr inbounds %struct._Heap, %struct._Heap* %.02, i64 0, i32 3
  store %struct._Heap* %.02, %struct._Heap** %27, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %.02, i64 0, i32 4
  store %struct._Heap* %.02, %struct._Heap** %28, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %.02, i64 0, i32 1
  store %struct._Heap* null, %struct._Heap** %29, align 8
  call void @CombineLists(%struct._Heap* noundef %.01, %struct._Heap* noundef %.02)
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %.02, i64 0, i32 0
  %31 = load %struct._Vertices*, %struct._Vertices** %30, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %33 = load %struct._Vertices*, %struct._Vertices** %32, align 8
  %34 = call i32 @LessThan(%struct._Vertices* noundef %31, %struct._Vertices* noundef %33) #8
  %.not5 = icmp eq i32 %34, 0
  br i1 %.not5, label %36, label %35

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %24
  %.1 = phi %struct._Heap* [ %.02, %35 ], [ %.01, %24 ]
  br label %37

37:                                               ; preds = %36
  %38 = load %struct._Heap*, %struct._Heap** %23, align 8
  %.not6 = icmp eq %struct._Heap* %26, %38
  br i1 %.not6, label %39, label %24, !llvm.loop !13

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %19
  %.2 = phi %struct._Heap* [ %.1, %39 ], [ %0, %19 ]
  %41 = bitcast %struct._Heap* %1 to i8*
  call void @free(i8* noundef %41) #8
  br label %42

42:                                               ; preds = %40, %10
  %.0 = phi %struct._Heap* [ %11, %10 ], [ %.2, %40 ]
  ret %struct._Heap* %.0

UnifiedUnreachableBlock:                          ; preds = %7, %4
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local %struct._Vertices* @ItemOf(%struct._Heap* nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct._Heap, %struct._Heap* %0, i64 0, i32 0
  %3 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  ret %struct._Vertices* %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Find(%struct._Heap* noundef readonly %0, %struct._Vertices* noundef %1) #3 {
  %3 = icmp eq %struct._Heap* %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %27

5:                                                ; preds = %2
  br label %6

6:                                                ; preds = %25, %5
  %.01 = phi %struct._Heap* [ %0, %5 ], [ %24, %25 ]
  %7 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %8 = load %struct._Vertices*, %struct._Vertices** %7, align 8
  %9 = call i32 @Equal(%struct._Vertices* noundef %8, %struct._Vertices* noundef %1) #8
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %11, label %10

10:                                               ; preds = %6
  br label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 0
  %13 = load %struct._Vertices*, %struct._Vertices** %12, align 8
  %14 = call i32 @LessThan(%struct._Vertices* noundef %13, %struct._Vertices* noundef %1) #8
  %.not4 = icmp eq i32 %14, 0
  br i1 %.not4, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 2
  %17 = load %struct._Heap*, %struct._Heap** %16, align 8
  %18 = call %struct._Heap* @Find(%struct._Heap* noundef %17, %struct._Vertices* noundef %1)
  %.not6 = icmp eq %struct._Heap* %18, null
  br i1 %.not6, label %20, label %19

19:                                               ; preds = %15
  br label %27

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %11
  br label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %.01, i64 0, i32 3
  %24 = load %struct._Heap*, %struct._Heap** %23, align 8
  br label %25

25:                                               ; preds = %22
  %.not5 = icmp eq %struct._Heap* %24, %0
  br i1 %.not5, label %26, label %6, !llvm.loop !14

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26, %19, %10, %4
  %.0 = phi %struct._Heap* [ null, %4 ], [ %.01, %10 ], [ %18, %19 ], [ null, %26 ]
  ret %struct._Heap* %.0
}

declare dso_local i32 @Equal(%struct._Vertices* noundef, %struct._Vertices* noundef) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

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
