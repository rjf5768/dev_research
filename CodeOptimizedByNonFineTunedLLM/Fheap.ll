; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ft/Fheap.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitFHeap() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10000
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %7
  store %struct._Heap* null, %struct._Heap** %8, align 8
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2, !llvm.loop !4

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @MakeHeap() #0 {
  ret %struct._Heap* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @FindMin(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %4 = load %struct._Heap*, %struct._Heap** %3, align 8
  %5 = icmp eq %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct._Vertices* null, %struct._Vertices** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct._Heap*, %struct._Heap** %3, align 8
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 0
  %10 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  store %struct._Vertices* %10, %struct._Vertices** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  ret %struct._Vertices* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Insert(%struct._Heap** noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca %struct._Heap**, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap** %0, %struct._Heap*** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %7 = call %struct._Heap* @NewHeap(%struct._Vertices* noundef %6)
  store %struct._Heap* %7, %struct._Heap** %5, align 8
  %8 = load %struct._Heap**, %struct._Heap*** %3, align 8
  %9 = load %struct._Heap*, %struct._Heap** %8, align 8
  %10 = load %struct._Heap*, %struct._Heap** %5, align 8
  %11 = call %struct._Heap* @Meld(%struct._Heap* noundef %9, %struct._Heap* noundef %10)
  %12 = load %struct._Heap**, %struct._Heap*** %3, align 8
  store %struct._Heap* %11, %struct._Heap** %12, align 8
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  ret %struct._Heap* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @NewHeap(%struct._Vertices* noundef %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = call noalias i8* @malloc(i64 noundef 48) #4
  %5 = bitcast i8* %4 to %struct._Heap*
  store %struct._Heap* %5, %struct._Heap** %3, align 8
  %6 = load %struct._Heap*, %struct._Heap** %3, align 8
  %7 = icmp eq %struct._Heap* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 noundef 1) #5
  unreachable

11:                                               ; preds = %1
  %12 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %13 = load %struct._Heap*, %struct._Heap** %3, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 0
  store %struct._Vertices* %12, %struct._Vertices** %14, align 8
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %16, align 8
  %17 = load %struct._Heap*, %struct._Heap** %3, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %18, align 8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = getelementptr inbounds %struct._Heap, %struct._Heap* %20, i32 0, i32 3
  store %struct._Heap* %19, %struct._Heap** %21, align 8
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 4
  store %struct._Heap* %22, %struct._Heap** %24, align 8
  %25 = load %struct._Heap*, %struct._Heap** %3, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 5
  store i32 0, i32* %26, align 8
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 6
  store i16 0, i16* %28, align 4
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Meld(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Heap* %1, %struct._Heap** %5, align 8
  %6 = load %struct._Heap*, %struct._Heap** %5, align 8
  %7 = icmp eq %struct._Heap* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %9, %struct._Heap** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct._Heap*, %struct._Heap** %4, align 8
  %12 = icmp eq %struct._Heap* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %14, %struct._Heap** %3, align 8
  br label %30

15:                                               ; preds = %10
  %16 = load %struct._Heap*, %struct._Heap** %4, align 8
  %17 = load %struct._Heap*, %struct._Heap** %5, align 8
  call void @CombineLists(%struct._Heap* noundef %16, %struct._Heap* noundef %17)
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 0
  %20 = load %struct._Vertices*, %struct._Vertices** %19, align 8
  %21 = load %struct._Heap*, %struct._Heap** %5, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 0
  %23 = load %struct._Vertices*, %struct._Vertices** %22, align 8
  %24 = call i32 @LessThan(%struct._Vertices* noundef %20, %struct._Vertices* noundef %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %27, %struct._Heap** %3, align 8
  br label %30

28:                                               ; preds = %15
  %29 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %29, %struct._Heap** %3, align 8
  br label %30

30:                                               ; preds = %28, %26, %13, %8
  %31 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CombineLists(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store %struct._Heap* %1, %struct._Heap** %4, align 8
  %6 = load %struct._Heap*, %struct._Heap** %3, align 8
  %7 = icmp ne %struct._Heap* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  %10 = icmp ne %struct._Heap* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 410, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.CombineLists, i64 0, i64 0)) #5
  unreachable

13:                                               ; preds = %11
  %14 = load %struct._Heap*, %struct._Heap** %3, align 8
  store %struct._Heap* %14, %struct._Heap** %5, align 8
  %15 = load %struct._Heap*, %struct._Heap** %4, align 8
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 3
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 4
  store %struct._Heap* %15, %struct._Heap** %19, align 8
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = load %struct._Heap*, %struct._Heap** %4, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 3
  %23 = load %struct._Heap*, %struct._Heap** %22, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 4
  store %struct._Heap* %20, %struct._Heap** %24, align 8
  %25 = load %struct._Heap*, %struct._Heap** %3, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 3
  %27 = load %struct._Heap*, %struct._Heap** %26, align 8
  store %struct._Heap* %27, %struct._Heap** %5, align 8
  %28 = load %struct._Heap*, %struct._Heap** %4, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 3
  %30 = load %struct._Heap*, %struct._Heap** %29, align 8
  %31 = load %struct._Heap*, %struct._Heap** %3, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  store %struct._Heap* %30, %struct._Heap** %32, align 8
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  %34 = load %struct._Heap*, %struct._Heap** %4, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  store %struct._Heap* %33, %struct._Heap** %35, align 8
  ret void
}

declare dso_local i32 @LessThan(%struct._Vertices* noundef, %struct._Vertices* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DeleteMin(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._Heap*, align 8
  %8 = alloca %struct._Heap*, align 8
  %9 = alloca %struct._Heap*, align 8
  %10 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct._Heap*, %struct._Heap** %3, align 8
  %12 = icmp eq %struct._Heap* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct._Heap* null, %struct._Heap** %2, align 8
  br label %280

14:                                               ; preds = %1
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef %15)
  store %struct._Heap* %16, %struct._Heap** %7, align 8
  %17 = load %struct._Heap*, %struct._Heap** %7, align 8
  %18 = icmp eq %struct._Heap* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = bitcast %struct._Heap* %20 to i8*
  call void @free(i8* noundef %21) #4
  store %struct._Heap* null, %struct._Heap** %2, align 8
  br label %280

22:                                               ; preds = %14
  %23 = load %struct._Heap*, %struct._Heap** %7, align 8
  %24 = load %struct._Heap*, %struct._Heap** %3, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 2
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = icmp eq %struct._Heap* %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %32, %struct._Heap** %8, align 8
  br label %33

33:                                               ; preds = %111, %31
  %34 = load %struct._Heap*, %struct._Heap** %8, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  %36 = load %struct._Heap*, %struct._Heap** %35, align 8
  store %struct._Heap* %36, %struct._Heap** %9, align 8
  %37 = load %struct._Heap*, %struct._Heap** %8, align 8
  %38 = load %struct._Heap*, %struct._Heap** %8, align 8
  %39 = getelementptr inbounds %struct._Heap, %struct._Heap* %38, i32 0, i32 3
  store %struct._Heap* %37, %struct._Heap** %39, align 8
  %40 = load %struct._Heap*, %struct._Heap** %8, align 8
  %41 = load %struct._Heap*, %struct._Heap** %8, align 8
  %42 = getelementptr inbounds %struct._Heap, %struct._Heap* %41, i32 0, i32 4
  store %struct._Heap* %40, %struct._Heap** %42, align 8
  %43 = load %struct._Heap*, %struct._Heap** %8, align 8
  %44 = getelementptr inbounds %struct._Heap, %struct._Heap* %43, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %44, align 8
  %45 = load %struct._Heap*, %struct._Heap** %8, align 8
  %46 = getelementptr inbounds %struct._Heap, %struct._Heap* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 10000
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %52

51:                                               ; preds = %33
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #5
  unreachable

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %98, %52
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %55
  %57 = load %struct._Heap*, %struct._Heap** %56, align 8
  %58 = icmp ne %struct._Heap* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %61
  %63 = load %struct._Heap*, %struct._Heap** %62, align 8
  %64 = getelementptr inbounds %struct._Heap, %struct._Heap* %63, i32 0, i32 0
  %65 = load %struct._Vertices*, %struct._Vertices** %64, align 8
  %66 = load %struct._Heap*, %struct._Heap** %8, align 8
  %67 = getelementptr inbounds %struct._Heap, %struct._Heap* %66, i32 0, i32 0
  %68 = load %struct._Vertices*, %struct._Vertices** %67, align 8
  %69 = call i32 @LessThan(%struct._Vertices* noundef %65, %struct._Vertices* noundef %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %73
  %75 = load %struct._Heap*, %struct._Heap** %74, align 8
  %76 = load %struct._Heap*, %struct._Heap** %8, align 8
  call void @AddEntry(%struct._Heap* noundef %75, %struct._Heap* noundef %76)
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %78
  %80 = load %struct._Heap*, %struct._Heap** %79, align 8
  store %struct._Heap* %80, %struct._Heap** %8, align 8
  br label %87

81:                                               ; preds = %59
  %82 = load %struct._Heap*, %struct._Heap** %8, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %84
  %86 = load %struct._Heap*, %struct._Heap** %85, align 8
  call void @AddEntry(%struct._Heap* noundef %82, %struct._Heap* noundef %86)
  br label %87

87:                                               ; preds = %81, %71
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %89
  store %struct._Heap* null, %struct._Heap** %90, align 8
  %91 = load %struct._Heap*, %struct._Heap** %8, align 8
  %92 = getelementptr inbounds %struct._Heap, %struct._Heap* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 10000
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %98

97:                                               ; preds = %87
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 184, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #5
  unreachable

98:                                               ; preds = %96
  br label %53, !llvm.loop !6

99:                                               ; preds = %53
  %100 = load %struct._Heap*, %struct._Heap** %8, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %102
  store %struct._Heap* %100, %struct._Heap** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %99
  %110 = load %struct._Heap*, %struct._Heap** %9, align 8
  store %struct._Heap* %110, %struct._Heap** %8, align 8
  br label %111

111:                                              ; preds = %109
  %112 = load %struct._Heap*, %struct._Heap** %8, align 8
  %113 = load %struct._Heap*, %struct._Heap** %7, align 8
  %114 = icmp ne %struct._Heap* %112, %113
  br i1 %114, label %33, label %115, !llvm.loop !7

115:                                              ; preds = %111
  %116 = load %struct._Heap*, %struct._Heap** %3, align 8
  %117 = getelementptr inbounds %struct._Heap, %struct._Heap* %116, i32 0, i32 2
  %118 = load %struct._Heap*, %struct._Heap** %117, align 8
  %119 = icmp ne %struct._Heap* %118, null
  br i1 %119, label %120, label %209

120:                                              ; preds = %115
  %121 = load %struct._Heap*, %struct._Heap** %3, align 8
  %122 = getelementptr inbounds %struct._Heap, %struct._Heap* %121, i32 0, i32 2
  %123 = load %struct._Heap*, %struct._Heap** %122, align 8
  store %struct._Heap* %123, %struct._Heap** %8, align 8
  br label %124

124:                                              ; preds = %202, %120
  %125 = load %struct._Heap*, %struct._Heap** %8, align 8
  %126 = getelementptr inbounds %struct._Heap, %struct._Heap* %125, i32 0, i32 3
  %127 = load %struct._Heap*, %struct._Heap** %126, align 8
  store %struct._Heap* %127, %struct._Heap** %9, align 8
  %128 = load %struct._Heap*, %struct._Heap** %8, align 8
  %129 = load %struct._Heap*, %struct._Heap** %8, align 8
  %130 = getelementptr inbounds %struct._Heap, %struct._Heap* %129, i32 0, i32 3
  store %struct._Heap* %128, %struct._Heap** %130, align 8
  %131 = load %struct._Heap*, %struct._Heap** %8, align 8
  %132 = load %struct._Heap*, %struct._Heap** %8, align 8
  %133 = getelementptr inbounds %struct._Heap, %struct._Heap* %132, i32 0, i32 4
  store %struct._Heap* %131, %struct._Heap** %133, align 8
  %134 = load %struct._Heap*, %struct._Heap** %8, align 8
  %135 = getelementptr inbounds %struct._Heap, %struct._Heap* %134, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %135, align 8
  %136 = load %struct._Heap*, %struct._Heap** %8, align 8
  %137 = getelementptr inbounds %struct._Heap, %struct._Heap* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 10000
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  br label %143

142:                                              ; preds = %124
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 211, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #5
  unreachable

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %189, %143
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %146
  %148 = load %struct._Heap*, %struct._Heap** %147, align 8
  %149 = icmp ne %struct._Heap* %148, null
  br i1 %149, label %150, label %190

150:                                              ; preds = %144
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %152
  %154 = load %struct._Heap*, %struct._Heap** %153, align 8
  %155 = getelementptr inbounds %struct._Heap, %struct._Heap* %154, i32 0, i32 0
  %156 = load %struct._Vertices*, %struct._Vertices** %155, align 8
  %157 = load %struct._Heap*, %struct._Heap** %8, align 8
  %158 = getelementptr inbounds %struct._Heap, %struct._Heap* %157, i32 0, i32 0
  %159 = load %struct._Vertices*, %struct._Vertices** %158, align 8
  %160 = call i32 @LessThan(%struct._Vertices* noundef %156, %struct._Vertices* noundef %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %150
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %164
  %166 = load %struct._Heap*, %struct._Heap** %165, align 8
  %167 = load %struct._Heap*, %struct._Heap** %8, align 8
  call void @AddEntry(%struct._Heap* noundef %166, %struct._Heap* noundef %167)
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %169
  %171 = load %struct._Heap*, %struct._Heap** %170, align 8
  store %struct._Heap* %171, %struct._Heap** %8, align 8
  br label %178

172:                                              ; preds = %150
  %173 = load %struct._Heap*, %struct._Heap** %8, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %175
  %177 = load %struct._Heap*, %struct._Heap** %176, align 8
  call void @AddEntry(%struct._Heap* noundef %173, %struct._Heap* noundef %177)
  br label %178

178:                                              ; preds = %172, %162
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %180
  store %struct._Heap* null, %struct._Heap** %181, align 8
  %182 = load %struct._Heap*, %struct._Heap** %8, align 8
  %183 = getelementptr inbounds %struct._Heap, %struct._Heap* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp slt i32 %185, 10000
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %189

188:                                              ; preds = %178
  call void @__assert_fail(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 225, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #5
  unreachable

189:                                              ; preds = %187
  br label %144, !llvm.loop !8

190:                                              ; preds = %144
  %191 = load %struct._Heap*, %struct._Heap** %8, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %193
  store %struct._Heap* %191, %struct._Heap** %194, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %198, %190
  %201 = load %struct._Heap*, %struct._Heap** %9, align 8
  store %struct._Heap* %201, %struct._Heap** %8, align 8
  br label %202

202:                                              ; preds = %200
  %203 = load %struct._Heap*, %struct._Heap** %8, align 8
  %204 = load %struct._Heap*, %struct._Heap** %3, align 8
  %205 = getelementptr inbounds %struct._Heap, %struct._Heap* %204, i32 0, i32 2
  %206 = load %struct._Heap*, %struct._Heap** %205, align 8
  %207 = icmp ne %struct._Heap* %203, %206
  br i1 %207, label %124, label %208, !llvm.loop !9

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208, %115
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %222, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %216
  %218 = load %struct._Heap*, %struct._Heap** %217, align 8
  %219 = icmp ne %struct._Heap* %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %225

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %210, !llvm.loop !10

225:                                              ; preds = %220, %210
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %227
  %229 = load %struct._Heap*, %struct._Heap** %228, align 8
  store %struct._Heap* %229, %struct._Heap** %7, align 8
  %230 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %230, %struct._Heap** %10, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %232
  store %struct._Heap* null, %struct._Heap** %233, align 8
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %273, %225
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %276

240:                                              ; preds = %236
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %242
  %244 = load %struct._Heap*, %struct._Heap** %243, align 8
  %245 = icmp ne %struct._Heap* %244, null
  br i1 %245, label %246, label %272

246:                                              ; preds = %240
  %247 = load %struct._Heap*, %struct._Heap** %7, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %249
  %251 = load %struct._Heap*, %struct._Heap** %250, align 8
  call void @CombineLists(%struct._Heap* noundef %247, %struct._Heap* noundef %251)
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %253
  %255 = load %struct._Heap*, %struct._Heap** %254, align 8
  %256 = getelementptr inbounds %struct._Heap, %struct._Heap* %255, i32 0, i32 0
  %257 = load %struct._Vertices*, %struct._Vertices** %256, align 8
  %258 = load %struct._Heap*, %struct._Heap** %10, align 8
  %259 = getelementptr inbounds %struct._Heap, %struct._Heap* %258, i32 0, i32 0
  %260 = load %struct._Vertices*, %struct._Vertices** %259, align 8
  %261 = call i32 @LessThan(%struct._Vertices* noundef %257, %struct._Vertices* noundef %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %246
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %265
  %267 = load %struct._Heap*, %struct._Heap** %266, align 8
  store %struct._Heap* %267, %struct._Heap** %10, align 8
  br label %268

268:                                              ; preds = %263, %246
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %270
  store %struct._Heap* null, %struct._Heap** %271, align 8
  br label %272

272:                                              ; preds = %268, %240
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %236, !llvm.loop !11

276:                                              ; preds = %236
  %277 = load %struct._Heap*, %struct._Heap** %3, align 8
  %278 = bitcast %struct._Heap* %277 to i8*
  call void @free(i8* noundef %278) #4
  %279 = load %struct._Heap*, %struct._Heap** %10, align 8
  store %struct._Heap* %279, %struct._Heap** %2, align 8
  br label %280

280:                                              ; preds = %276, %19, %13
  %281 = load %struct._Heap*, %struct._Heap** %2, align 8
  ret %struct._Heap* %281
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @RemoveEntry(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %4 = load %struct._Heap*, %struct._Heap** %3, align 8
  %5 = icmp ne %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 468, i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.RemoveEntry, i64 0, i64 0)) #5
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Heap*, %struct._Heap** %3, align 8
  %10 = load %struct._Heap*, %struct._Heap** %3, align 8
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 3
  %12 = load %struct._Heap*, %struct._Heap** %11, align 8
  %13 = icmp eq %struct._Heap* %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 2
  %17 = load %struct._Heap*, %struct._Heap** %16, align 8
  store %struct._Heap* %17, %struct._Heap** %2, align 8
  br label %36

18:                                               ; preds = %8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 4
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 3
  %24 = load %struct._Heap*, %struct._Heap** %23, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 4
  store %struct._Heap* %21, %struct._Heap** %25, align 8
  %26 = load %struct._Heap*, %struct._Heap** %3, align 8
  %27 = getelementptr inbounds %struct._Heap, %struct._Heap* %26, i32 0, i32 3
  %28 = load %struct._Heap*, %struct._Heap** %27, align 8
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 4
  %31 = load %struct._Heap*, %struct._Heap** %30, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  store %struct._Heap* %28, %struct._Heap** %32, align 8
  %33 = load %struct._Heap*, %struct._Heap** %3, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 3
  %35 = load %struct._Heap*, %struct._Heap** %34, align 8
  store %struct._Heap* %35, %struct._Heap** %2, align 8
  br label %36

36:                                               ; preds = %18, %14
  %37 = load %struct._Heap*, %struct._Heap** %2, align 8
  ret %struct._Heap* %37
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddEntry(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store %struct._Heap* %1, %struct._Heap** %4, align 8
  %5 = load %struct._Heap*, %struct._Heap** %3, align 8
  %6 = icmp ne %struct._Heap* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 437, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.AddEntry, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %3, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 2
  %15 = load %struct._Heap*, %struct._Heap** %14, align 8
  %16 = icmp eq %struct._Heap* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 2
  store %struct._Heap* %18, %struct._Heap** %20, align 8
  br label %26

21:                                               ; preds = %12
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 2
  %24 = load %struct._Heap*, %struct._Heap** %23, align 8
  %25 = load %struct._Heap*, %struct._Heap** %4, align 8
  call void @CombineLists(%struct._Heap* noundef %24, %struct._Heap* noundef %25)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = load %struct._Heap*, %struct._Heap** %4, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 1
  store %struct._Heap* %27, %struct._Heap** %29, align 8
  %30 = load %struct._Heap*, %struct._Heap** %3, align 8
  %31 = getelementptr inbounds %struct._Heap, %struct._Heap* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct._Heap*, %struct._Heap** %4, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  %38 = load %struct._Heap*, %struct._Heap** %3, align 8
  %39 = getelementptr inbounds %struct._Heap, %struct._Heap* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DecreaseKey(%struct._Heap* noundef %0, %struct._Heap* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca i32, align 4
  store %struct._Heap* %0, %struct._Heap** %5, align 8
  store %struct._Heap* %1, %struct._Heap** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct._Heap*, %struct._Heap** %5, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 274, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %6, align 8
  %14 = icmp ne %struct._Heap* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 275, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #5
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._Heap*, %struct._Heap** %6, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 1
  %20 = load %struct._Heap*, %struct._Heap** %19, align 8
  %21 = icmp eq %struct._Heap* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @RemoveChild(%struct._Heap* noundef %23)
  %24 = load %struct._Heap*, %struct._Heap** %5, align 8
  %25 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @CombineLists(%struct._Heap* noundef %24, %struct._Heap* noundef %25)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct._Heap*, %struct._Heap** %6, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 0
  %29 = load %struct._Vertices*, %struct._Vertices** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct._Vertices* @Subtract(%struct._Vertices* noundef %29, i32 noundef %30)
  %32 = load %struct._Heap*, %struct._Heap** %6, align 8
  %33 = getelementptr inbounds %struct._Heap, %struct._Heap* %32, i32 0, i32 0
  store %struct._Vertices* %31, %struct._Vertices** %33, align 8
  %34 = load %struct._Heap*, %struct._Heap** %6, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 0
  %36 = load %struct._Vertices*, %struct._Vertices** %35, align 8
  %37 = load %struct._Heap*, %struct._Heap** %5, align 8
  %38 = getelementptr inbounds %struct._Heap, %struct._Heap* %37, i32 0, i32 0
  %39 = load %struct._Vertices*, %struct._Vertices** %38, align 8
  %40 = call i32 @LessThan(%struct._Vertices* noundef %36, %struct._Vertices* noundef %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %43, %struct._Heap** %4, align 8
  br label %46

44:                                               ; preds = %26
  %45 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %45, %struct._Heap** %4, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct._Heap*, %struct._Heap** %4, align 8
  ret %struct._Heap* %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RemoveChild(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %4 = load %struct._Heap*, %struct._Heap** %2, align 8
  %5 = icmp ne %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 301, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #5
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Heap*, %struct._Heap** %2, align 8
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 1
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  store %struct._Heap* %11, %struct._Heap** %3, align 8
  %12 = load %struct._Heap*, %struct._Heap** %3, align 8
  %13 = icmp ne %struct._Heap* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %16

15:                                               ; preds = %8
  call void @__assert_fail(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 305, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #5
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._Heap*, %struct._Heap** %3, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 2
  %19 = load %struct._Heap*, %struct._Heap** %18, align 8
  %20 = load %struct._Heap*, %struct._Heap** %2, align 8
  %21 = icmp eq %struct._Heap* %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct._Heap*, %struct._Heap** %2, align 8
  %24 = load %struct._Heap*, %struct._Heap** %2, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 3
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = icmp eq %struct._Heap* %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %30, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load %struct._Heap*, %struct._Heap** %2, align 8
  %33 = getelementptr inbounds %struct._Heap, %struct._Heap* %32, i32 0, i32 3
  %34 = load %struct._Heap*, %struct._Heap** %33, align 8
  %35 = load %struct._Heap*, %struct._Heap** %3, align 8
  %36 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i32 0, i32 2
  store %struct._Heap* %34, %struct._Heap** %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct._Heap*, %struct._Heap** %2, align 8
  %40 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef %39)
  %41 = load %struct._Heap*, %struct._Heap** %3, align 8
  %42 = load %struct._Heap*, %struct._Heap** %2, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  call void @FixRank(%struct._Heap* noundef %41, i32 noundef %45)
  %46 = load %struct._Heap*, %struct._Heap** %2, align 8
  %47 = load %struct._Heap*, %struct._Heap** %2, align 8
  %48 = getelementptr inbounds %struct._Heap, %struct._Heap* %47, i32 0, i32 3
  store %struct._Heap* %46, %struct._Heap** %48, align 8
  %49 = load %struct._Heap*, %struct._Heap** %2, align 8
  %50 = load %struct._Heap*, %struct._Heap** %2, align 8
  %51 = getelementptr inbounds %struct._Heap, %struct._Heap* %50, i32 0, i32 4
  store %struct._Heap* %49, %struct._Heap** %51, align 8
  %52 = load %struct._Heap*, %struct._Heap** %2, align 8
  %53 = getelementptr inbounds %struct._Heap, %struct._Heap* %52, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %53, align 8
  ret void
}

declare dso_local %struct._Vertices* @Subtract(%struct._Vertices* noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FixRank(%struct._Heap* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._Heap*, %struct._Heap** %3, align 8
  %6 = icmp ne %struct._Heap* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 329, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #5
  unreachable

9:                                                ; preds = %7
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 330, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #5
  unreachable

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %26, %14
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load %struct._Heap*, %struct._Heap** %3, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 1
  %25 = load %struct._Heap*, %struct._Heap** %24, align 8
  store %struct._Heap* %25, %struct._Heap** %3, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = icmp ne %struct._Heap* %27, null
  br i1 %28, label %15, label %29, !llvm.loop !12

29:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Delete(%struct._Heap* noundef %0, %struct._Heap* noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Heap* %1, %struct._Heap** %5, align 8
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 346, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #5
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  %14 = icmp ne %struct._Heap* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 noundef 347, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #5
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = load %struct._Heap*, %struct._Heap** %5, align 8
  %20 = icmp eq %struct._Heap* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct._Heap*, %struct._Heap** %4, align 8
  %23 = call %struct._Heap* @DeleteMin(%struct._Heap* noundef %22)
  store %struct._Heap* %23, %struct._Heap** %3, align 8
  br label %78

24:                                               ; preds = %17
  %25 = load %struct._Heap*, %struct._Heap** %5, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 1
  %27 = load %struct._Heap*, %struct._Heap** %26, align 8
  %28 = icmp eq %struct._Heap* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct._Heap*, %struct._Heap** %5, align 8
  %31 = call %struct._Heap* @RemoveEntry(%struct._Heap* noundef %30)
  br label %34

32:                                               ; preds = %24
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  call void @RemoveChild(%struct._Heap* noundef %33)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct._Heap*, %struct._Heap** %5, align 8
  %36 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i32 0, i32 2
  %37 = load %struct._Heap*, %struct._Heap** %36, align 8
  store %struct._Heap* %37, %struct._Heap** %6, align 8
  %38 = load %struct._Heap*, %struct._Heap** %6, align 8
  %39 = icmp ne %struct._Heap* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %67, %40
  %42 = load %struct._Heap*, %struct._Heap** %6, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 3
  %44 = load %struct._Heap*, %struct._Heap** %43, align 8
  store %struct._Heap* %44, %struct._Heap** %7, align 8
  %45 = load %struct._Heap*, %struct._Heap** %6, align 8
  %46 = load %struct._Heap*, %struct._Heap** %6, align 8
  %47 = getelementptr inbounds %struct._Heap, %struct._Heap* %46, i32 0, i32 3
  store %struct._Heap* %45, %struct._Heap** %47, align 8
  %48 = load %struct._Heap*, %struct._Heap** %6, align 8
  %49 = load %struct._Heap*, %struct._Heap** %6, align 8
  %50 = getelementptr inbounds %struct._Heap, %struct._Heap* %49, i32 0, i32 4
  store %struct._Heap* %48, %struct._Heap** %50, align 8
  %51 = load %struct._Heap*, %struct._Heap** %6, align 8
  %52 = getelementptr inbounds %struct._Heap, %struct._Heap* %51, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %52, align 8
  %53 = load %struct._Heap*, %struct._Heap** %4, align 8
  %54 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @CombineLists(%struct._Heap* noundef %53, %struct._Heap* noundef %54)
  %55 = load %struct._Heap*, %struct._Heap** %6, align 8
  %56 = getelementptr inbounds %struct._Heap, %struct._Heap* %55, i32 0, i32 0
  %57 = load %struct._Vertices*, %struct._Vertices** %56, align 8
  %58 = load %struct._Heap*, %struct._Heap** %4, align 8
  %59 = getelementptr inbounds %struct._Heap, %struct._Heap* %58, i32 0, i32 0
  %60 = load %struct._Vertices*, %struct._Vertices** %59, align 8
  %61 = call i32 @LessThan(%struct._Vertices* noundef %57, %struct._Vertices* noundef %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %64, %struct._Heap** %4, align 8
  br label %65

65:                                               ; preds = %63, %41
  %66 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %66, %struct._Heap** %6, align 8
  br label %67

67:                                               ; preds = %65
  %68 = load %struct._Heap*, %struct._Heap** %6, align 8
  %69 = load %struct._Heap*, %struct._Heap** %5, align 8
  %70 = getelementptr inbounds %struct._Heap, %struct._Heap* %69, i32 0, i32 2
  %71 = load %struct._Heap*, %struct._Heap** %70, align 8
  %72 = icmp ne %struct._Heap* %68, %71
  br i1 %72, label %41, label %73, !llvm.loop !13

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct._Heap*, %struct._Heap** %5, align 8
  %76 = bitcast %struct._Heap* %75 to i8*
  call void @free(i8* noundef %76) #4
  %77 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %77, %struct._Heap** %3, align 8
  br label %78

78:                                               ; preds = %74, %21
  %79 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %79
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #2

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @ItemOf(%struct._Heap* noundef %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %3 = load %struct._Heap*, %struct._Heap** %2, align 8
  %4 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 0
  %5 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  ret %struct._Vertices* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Find(%struct._Heap* noundef %0, %struct._Vertices* noundef %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp eq %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct._Heap* null, %struct._Heap** %3, align 8
  br label %50

11:                                               ; preds = %2
  %12 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %12, %struct._Heap** %6, align 8
  br label %13

13:                                               ; preds = %45, %11
  %14 = load %struct._Heap*, %struct._Heap** %6, align 8
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %14, i32 0, i32 0
  %16 = load %struct._Vertices*, %struct._Vertices** %15, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %18 = call i32 @Equal(%struct._Vertices* noundef %16, %struct._Vertices* noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %21, %struct._Heap** %3, align 8
  br label %50

22:                                               ; preds = %13
  %23 = load %struct._Heap*, %struct._Heap** %6, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 0
  %25 = load %struct._Vertices*, %struct._Vertices** %24, align 8
  %26 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %27 = call i32 @LessThan(%struct._Vertices* noundef %25, %struct._Vertices* noundef %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct._Heap*, %struct._Heap** %6, align 8
  %31 = getelementptr inbounds %struct._Heap, %struct._Heap* %30, i32 0, i32 2
  %32 = load %struct._Heap*, %struct._Heap** %31, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %34 = call %struct._Heap* @Find(%struct._Heap* noundef %32, %struct._Vertices* noundef %33)
  store %struct._Heap* %34, %struct._Heap** %7, align 8
  %35 = load %struct._Heap*, %struct._Heap** %7, align 8
  %36 = icmp ne %struct._Heap* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %38, %struct._Heap** %3, align 8
  br label %50

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct._Heap*, %struct._Heap** %6, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 3
  %44 = load %struct._Heap*, %struct._Heap** %43, align 8
  store %struct._Heap* %44, %struct._Heap** %6, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load %struct._Heap*, %struct._Heap** %6, align 8
  %47 = load %struct._Heap*, %struct._Heap** %4, align 8
  %48 = icmp ne %struct._Heap* %46, %47
  br i1 %48, label %13, label %49, !llvm.loop !14

49:                                               ; preds = %45
  store %struct._Heap* null, %struct._Heap** %3, align 8
  br label %50

50:                                               ; preds = %49, %37, %20, %10
  %51 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %51
}

declare dso_local i32 @Equal(%struct._Vertices* noundef, %struct._Vertices* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
