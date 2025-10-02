; ModuleID = './splay.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No elements in tree! [delete_min]\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Can't create node\00", align 1
@str.1 = private unnamed_addr constant [34 x i8] c"No elements in tree! [delete_min]\00", align 1

; Function Attrs: nofree noinline nosync nounwind readonly uwtable
define dso_local %struct.splay_node* @find(%struct.splay_node* noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp slt i64 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  %.not1 = icmp eq %struct.splay_node* %8, null
  br i1 %.not1, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  %12 = call %struct.splay_node* @find(%struct.splay_node* noundef %11, i64 noundef %1)
  br label %25

13:                                               ; preds = %6, %2
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, %1
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %19 = load %struct.splay_node*, %struct.splay_node** %18, align 8
  %.not = icmp eq %struct.splay_node* %19, null
  br i1 %.not, label %24, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %22 = load %struct.splay_node*, %struct.splay_node** %21, align 8
  %23 = call %struct.splay_node* @find(%struct.splay_node* noundef %22, i64 noundef %1)
  br label %25

24:                                               ; preds = %17, %13
  br label %25

25:                                               ; preds = %24, %20, %9
  %.0 = phi %struct.splay_node* [ %12, %9 ], [ %23, %20 ], [ %0, %24 ]
  ret %struct.splay_node* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.splay_node* @rotate(%struct.splay_node* noundef returned %0) #1 {
  %2 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %3 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %4 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 2
  %5 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %6 = icmp eq %struct.splay_node* %5, %0
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %9 = load %struct.splay_node*, %struct.splay_node** %8, align 8
  %10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  %12 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i64 0, i32 2
  store %struct.splay_node* %9, %struct.splay_node** %12, align 8
  %13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %.not2 = icmp eq %struct.splay_node* %14, null
  br i1 %.not2, label %21, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %17 = load %struct.splay_node*, %struct.splay_node** %16, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %19 = load %struct.splay_node*, %struct.splay_node** %18, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i64 0, i32 1
  store %struct.splay_node* %17, %struct.splay_node** %20, align 8
  br label %21

21:                                               ; preds = %15, %7
  %22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %23 = load %struct.splay_node*, %struct.splay_node** %22, align 8
  %24 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  store %struct.splay_node* %23, %struct.splay_node** %24, align 8
  br label %43

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %27 = load %struct.splay_node*, %struct.splay_node** %26, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i64 0, i32 3
  store %struct.splay_node* %27, %struct.splay_node** %30, align 8
  %31 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %32 = load %struct.splay_node*, %struct.splay_node** %31, align 8
  %.not = icmp eq %struct.splay_node* %32, null
  br i1 %.not, label %39, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %35 = load %struct.splay_node*, %struct.splay_node** %34, align 8
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %37 = load %struct.splay_node*, %struct.splay_node** %36, align 8
  %38 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i64 0, i32 1
  store %struct.splay_node* %35, %struct.splay_node** %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %41 = load %struct.splay_node*, %struct.splay_node** %40, align 8
  %42 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  store %struct.splay_node* %41, %struct.splay_node** %42, align 8
  br label %43

43:                                               ; preds = %39, %21
  %44 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %45 = load %struct.splay_node*, %struct.splay_node** %44, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i64 0, i32 1
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i64 0, i32 1
  store %struct.splay_node* %0, %struct.splay_node** %48, align 8
  %.not1 = icmp eq %struct.splay_node* %47, null
  br i1 %.not1, label %60, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %47, i64 0, i32 2
  %51 = load %struct.splay_node*, %struct.splay_node** %50, align 8
  %52 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  %53 = load %struct.splay_node*, %struct.splay_node** %52, align 8
  %54 = icmp eq %struct.splay_node* %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %47, i64 0, i32 2
  store %struct.splay_node* %0, %struct.splay_node** %56, align 8
  br label %59

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %47, i64 0, i32 3
  store %struct.splay_node* %0, %struct.splay_node** %58, align 8
  br label %59

59:                                               ; preds = %57, %55
  br label %60

60:                                               ; preds = %59, %43
  %61 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 1
  store %struct.splay_node* %47, %struct.splay_node** %61, align 8
  ret %struct.splay_node* %0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local noalias i8* @splay(%struct.splay_node** nocapture noundef %0, i64 noundef %1) #2 {
  %3 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %4 = call %struct.splay_node* @find(%struct.splay_node* noundef %3, i64 noundef %1)
  br label %5

5:                                                ; preds = %59, %2
  %6 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %7 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %.not = icmp eq %struct.splay_node* %7, null
  br i1 %.not, label %60, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %10 = load %struct.splay_node*, %struct.splay_node** %9, align 8
  %11 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %10, i64 0, i32 1
  %12 = load %struct.splay_node*, %struct.splay_node** %11, align 8
  %13 = icmp eq %struct.splay_node* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %4)
  br label %59

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %18 = load %struct.splay_node*, %struct.splay_node** %17, align 8
  %19 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %18, i64 0, i32 2
  %20 = load %struct.splay_node*, %struct.splay_node** %19, align 8
  %21 = icmp eq %struct.splay_node* %20, %4
  br i1 %21, label %22, label %35

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %24 = load %struct.splay_node*, %struct.splay_node** %23, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i64 0, i32 1
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i64 0, i32 2
  %28 = load %struct.splay_node*, %struct.splay_node** %27, align 8
  %29 = icmp eq %struct.splay_node* %28, %24
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %32 = load %struct.splay_node*, %struct.splay_node** %31, align 8
  %33 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %32)
  %34 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %4)
  br label %58

35:                                               ; preds = %22, %16
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %37 = load %struct.splay_node*, %struct.splay_node** %36, align 8
  %38 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i64 0, i32 3
  %39 = load %struct.splay_node*, %struct.splay_node** %38, align 8
  %40 = icmp eq %struct.splay_node* %39, %4
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %43 = load %struct.splay_node*, %struct.splay_node** %42, align 8
  %44 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %43, i64 0, i32 1
  %45 = load %struct.splay_node*, %struct.splay_node** %44, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i64 0, i32 3
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = icmp eq %struct.splay_node* %47, %43
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  %51 = load %struct.splay_node*, %struct.splay_node** %50, align 8
  %52 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %51)
  %53 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %4)
  br label %57

54:                                               ; preds = %41, %35
  %55 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %4)
  %56 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %4)
  br label %57

57:                                               ; preds = %54, %49
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %14
  br label %5, !llvm.loop !4

60:                                               ; preds = %5
  store %struct.splay_node* %4, %struct.splay_node** %0, align 8
  ret i8* undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tree(%struct.splay_node* noundef %0) #3 {
  %.not = icmp eq %struct.splay_node* %0, null
  br i1 %.not, label %8, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 2
  %4 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  call void @free_tree(%struct.splay_node* noundef %4)
  %5 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %0, i64 0, i32 3
  %6 = load %struct.splay_node*, %struct.splay_node** %5, align 8
  call void @free_tree(%struct.splay_node* noundef %6)
  %7 = bitcast %struct.splay_node* %0 to i8*
  call void @free(i8* noundef %7) #10
  br label %8

8:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.splay_node* @create_node(i64 %0) #3 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call noalias dereferenceable_or_null(40) i8* @malloc(i64 noundef 40) #10
  %4 = bitcast i8* %3 to %struct.splay_node*
  %.not = icmp eq i8* %3, null
  br i1 %.not, label %5, label %6

5:                                                ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #11
  unreachable

6:                                                ; preds = %1
  %tmpcast = bitcast i64* %2 to %struct.point*
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %7, align 8
  %8 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %8, align 8
  %9 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %9, align 8
  %10 = bitcast i64* %2 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = mul nsw i32 %11, 10000
  %13 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i64 0, i32 0, i32 1
  %19 = bitcast %struct.point* %18 to i64*
  %20 = load i64, i64* %2, align 8
  store i64 %20, i64* %19, align 8
  ret %struct.splay_node* %4
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #4

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local noalias %struct.splay_node* @init() #8 {
  ret %struct.splay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @insert(%struct.splay_node** nocapture noundef %0, i64 %1) #3 {
  %3 = call %struct.splay_node* @create_node(i64 %1)
  %4 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %.not = icmp eq %struct.splay_node* %4, null
  br i1 %.not, label %53, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i8* @splay(%struct.splay_node** noundef nonnull %0, i64 noundef %7)
  %9 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %12 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i64 0, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %54

16:                                               ; preds = %5
  %17 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i64 0, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i64 0, i32 2
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 2
  store %struct.splay_node* %26, %struct.splay_node** %27, align 8
  %.not2 = icmp eq %struct.splay_node* %26, null
  br i1 %.not2, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 2
  %30 = load %struct.splay_node*, %struct.splay_node** %29, align 8
  %31 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %30, i64 0, i32 1
  store %struct.splay_node* %3, %struct.splay_node** %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %34 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 3
  store %struct.splay_node* %33, %struct.splay_node** %34, align 8
  %35 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %33, i64 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %35, align 8
  br label %49

36:                                               ; preds = %16
  %37 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %38 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i64 0, i32 3
  %39 = load %struct.splay_node*, %struct.splay_node** %38, align 8
  %40 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 3
  store %struct.splay_node* %39, %struct.splay_node** %40, align 8
  %.not1 = icmp eq %struct.splay_node* %39, null
  br i1 %.not1, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 3
  %43 = load %struct.splay_node*, %struct.splay_node** %42, align 8
  %44 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %43, i64 0, i32 1
  store %struct.splay_node* %3, %struct.splay_node** %44, align 8
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %47 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %3, i64 0, i32 2
  store %struct.splay_node* %46, %struct.splay_node** %47, align 8
  %48 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %46, i64 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %48, align 8
  br label %49

49:                                               ; preds = %45, %32
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %52 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %51, i64 0, i32 1
  store %struct.splay_node* %3, %struct.splay_node** %52, align 8
  br label %53

53:                                               ; preds = %50, %2
  store %struct.splay_node* %3, %struct.splay_node** %0, align 8
  br label %54

54:                                               ; preds = %53, %15
  ret i8* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @delete_min(%struct.splay_node** nocapture noundef %0) #3 {
  %2 = alloca %struct.splay_element, align 8
  %3 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %.not = icmp eq %struct.splay_node* %3, null
  br i1 %.not, label %16, label %4

4:                                                ; preds = %1
  %5 = call i8* @splay(%struct.splay_node** noundef nonnull %0, i64 noundef -1)
  %6 = bitcast %struct.splay_node** %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = bitcast %struct.splay_element* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %8, i8* noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false)
  %9 = getelementptr inbounds i8, i8* %7, i64 32
  %10 = bitcast i8* %9 to %struct.splay_node**
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  store %struct.splay_node* %11, %struct.splay_node** %0, align 8
  %.not1 = icmp eq %struct.splay_node* %11, null
  br i1 %.not1, label %15, label %12

12:                                               ; preds = %4
  %13 = load %struct.splay_node*, %struct.splay_node** %0, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i64 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %14, align 8
  br label %15

15:                                               ; preds = %12, %4
  call void @free(i8* noundef %7) #10
  br label %18

16:                                               ; preds = %1
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([34 x i8], [34 x i8]* @str.1, i64 0, i64 0))
  %17 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %2, i64 0, i32 1
  br label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %2, i64 0, i32 1
  br label %20

20:                                               ; preds = %18, %16
  %storemerge.in.in = phi %struct.point* [ %19, %18 ], [ %17, %16 ]
  %storemerge.in = bitcast %struct.point* %storemerge.in.in to i64*
  %storemerge = load i64, i64* %storemerge.in, align 8
  ret i64 %storemerge
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #9

attributes #0 = { nofree noinline nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
