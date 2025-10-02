; ModuleID = './bitonic.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/bisort/bitonic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }
%_wyvern_thunk_type.4 = type { i32 (%_wyvern_thunk_type.4*)*, i32, i1, i32 }
%_wyvern_thunk_type.0 = type { i32 (%_wyvern_thunk_type.0*)*, i32, i1, i32 }
%struct.future_cell_int = type { %struct.node* }

@flag = dso_local global i32 0, align 4
@foo = dso_local global i32 0, align 4
@InOrder.counter = internal global i8 0, align 1
@.str = private unnamed_addr constant [11 x i8] c"%d @ 0x%x\0A\00", align 1
@NDim = dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Bisort with %d size of dim %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"**************************************\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BEGINNING BITONIC SORT ALGORITHM HERE\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Sorted Tree:\0A\00", align 1
@NumNodes = dso_local global i32 0, align 4
@str = private unnamed_addr constant [39 x i8] c"**************************************\00", align 1
@str.1 = private unnamed_addr constant [38 x i8] c"BEGINNING BITONIC SORT ALGORITHM HERE\00", align 1
@str.2 = private unnamed_addr constant [39 x i8] c"**************************************\00", align 1
@str.3 = private unnamed_addr constant [13 x i8] c"Sorted Tree:\00", align 1
@str.4 = private unnamed_addr constant [13 x i8] c"Sorted Tree:\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InOrder(%struct.node* noundef readonly %0) #0 {
  %.not = icmp eq %struct.node* %0, null
  br i1 %.not, label %15, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %6 = load %struct.node*, %struct.node** %5, align 8
  call void @InOrder(%struct.node* noundef %4)
  %7 = load i8, i8* @InOrder.counter, align 1
  %8 = add i8 %7, 1
  store i8 %8, i8* @InOrder.counter, align 1
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 noundef %12, i32 noundef 0) #9
  br label %14

14:                                               ; preds = %10, %2
  call void @InOrder(%struct.node* noundef %6)
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @mult(i32 noundef %0, i32 noundef %1) #2 {
  %3 = sdiv i32 %0, 10000
  %4 = srem i32 %0, 10000
  %5 = sdiv i32 %1, 10000
  %6 = srem i32 %1, 10000
  %7 = mul nsw i32 %4, %5
  %8 = mul nsw i32 %3, %6
  %9 = add nsw i32 %7, %8
  %10 = srem i32 %9, 10000
  %11 = mul nsw i32 %10, 10000
  %12 = mul nsw i32 %4, %6
  %13 = add nsw i32 %11, %12
  ret i32 %13
}

; Function Attrs: nofree noinline norecurse nosync nounwind readnone uwtable
define dso_local i32 @skiprand(i32 noundef %0, i32 noundef %1) #3 {
  br label %3

3:                                                ; preds = %5, %2
  %.01 = phi i32 [ %1, %2 ], [ %7, %5 ]
  %.0 = phi i32 [ %0, %2 ], [ %6, %5 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %8, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %4
  %6 = call i32 @random(i32 noundef %.0)
  %7 = add nsw i32 %.01, -1
  br label %3, !llvm.loop !4

8:                                                ; preds = %3
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @random(i32 noundef %0) #2 {
  %2 = call i32 @mult(i32 noundef %0, i32 noundef 31415821)
  %3 = add nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @RandTree(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %_wyvern_thunk_alloca3 = alloca %_wyvern_thunk_type.4, align 8
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %5 = alloca %struct.future_cell_int, align 8
  %6 = load i32, i32* @foo, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @foo, align 4
  %8 = icmp sgt i32 %0, 1
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = load i32, i32* @NDim, align 4
  %11 = icmp sgt i32 %10, %3
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i32, i32* @NDim, align 4
  %14 = xor i32 %3, -1
  %15 = add i32 %13, %14
  %16 = shl i32 1, %15
  %17 = add nsw i32 %16, %2
  br label %19

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18, %12
  %.0 = phi i32 [ %17, %12 ], [ %2, %18 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_RandTree_727164322, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunkcall2 = call i32 @_wyvern_slice_memo_RandTree_727164322(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %20 = srem i32 %_wyvern_thunkcall2, 100
  %21 = call dereferenceable_or_null(24) i8* @malloc(i32 noundef 24) #9
  %22 = bitcast i8* %21 to %struct.node*
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 1
  store %struct.node* null, %struct.node** %24, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2
  store %struct.node* null, %struct.node** %25, align 8
  %26 = sdiv i32 %0, 2
  %27 = add nsw i32 %3, 1
  %28 = call %struct.node* @_wyvern_calleeclone_RandTree_1319648085(i32 noundef %26, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %.0, i32 noundef %27)
  %29 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %5, i64 0, i32 0
  store %struct.node* %28, %struct.node** %29, align 8
  %30 = sdiv i32 %0, 2
  %31 = add nsw i32 %0, 1
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_RandTree_727164322(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %32 = call i32 @skiprand(i32 noundef %_wyvern_thunkcall, i32 noundef %31)
  %_wyvern_thunk_fptr_gep4 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca3, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.4*)* @_wyvern_slice_memo_RandTree_519965733, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_gep4, align 8
  %_wyvern_thunk_flag_gep5 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca3, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep5, align 4
  %_wyvern_thunk_arg_gep_6 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunk_alloca3, i64 0, i32 3
  store i32 %3, i32* %_wyvern_thunk_arg_gep_6, align 8
  %33 = call %struct.node* @_wyvern_calleeclone_RandTree_3527950276(i32 noundef %30, i32 noundef %32, i32 noundef %2, %_wyvern_thunk_type.4* noundef nonnull %_wyvern_thunk_alloca3)
  %34 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %5, i64 0, i32 0
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 1
  store %struct.node* %35, %struct.node** %36, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2
  store %struct.node* %33, %struct.node** %37, align 8
  br label %39

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %38, %19
  %.01 = phi %struct.node* [ %22, %19 ], [ null, %38 ]
  ret %struct.node* %.01
}

declare dso_local i8* @malloc(i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @SwapValue(%struct.node* nocapture noundef %0, %struct.node* nocapture noundef %1) #4 {
  %3 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %6, i32* %8, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @SwapValLeft(%struct.node* nocapture noundef writeonly %0, %struct.node* nocapture noundef writeonly %1, %struct.node* noundef %2, %struct.node* noundef %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 1
  store %struct.node* %2, %struct.node** %8, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  store %struct.node* %3, %struct.node** %9, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %5, i32* %10, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @SwapValRight(%struct.node* nocapture noundef writeonly %0, %struct.node* nocapture noundef writeonly %1, %struct.node* noundef %2, %struct.node* noundef %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 0
  store i32 %4, i32* %7, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %1, i64 0, i32 2
  store %struct.node* %2, %struct.node** %8, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  store %struct.node* %3, %struct.node** %9, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %5, i32* %10, align 8
  ret void
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @Bimerge(%struct.node* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %7 = load %struct.node*, %struct.node** %6, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = icmp sgt i32 %5, %1
  %11 = zext i1 %10 to i32
  %12 = xor i32 %11, %2
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %15, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %1, i32* %14, align 8
  br label %15

15:                                               ; preds = %13, %3
  %.0 = phi i32 [ %5, %13 ], [ %1, %3 ]
  br label %16

16:                                               ; preds = %41, %15
  %.03 = phi %struct.node* [ %7, %15 ], [ %.36, %41 ]
  %.01 = phi %struct.node* [ %9, %15 ], [ %.3, %41 ]
  %.not7 = icmp eq %struct.node* %.03, null
  br i1 %.not7, label %42, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.node, %struct.node* %.03, i64 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %.03, i64 0, i32 1
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %.03, i64 0, i32 2
  %23 = load %struct.node*, %struct.node** %22, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %.01, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %.01, i64 0, i32 1
  %27 = load %struct.node*, %struct.node** %26, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %.01, i64 0, i32 2
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = icmp sgt i32 %19, %25
  %31 = zext i1 %30 to i32
  %32 = xor i32 %31, %2
  %.not9 = icmp eq i32 %12, 0
  br i1 %.not9, label %37, label %33

33:                                               ; preds = %17
  %.not11 = icmp eq i32 %32, 0
  br i1 %.not11, label %35, label %34

34:                                               ; preds = %33
  call void @SwapValRight(%struct.node* noundef nonnull %.03, %struct.node* noundef %.01, %struct.node* noundef %23, %struct.node* noundef %29, i32 noundef %19, i32 noundef %25)
  br label %36

35:                                               ; preds = %33
  br label %36

36:                                               ; preds = %35, %34
  %.14 = phi %struct.node* [ %21, %34 ], [ %23, %35 ]
  %.12 = phi %struct.node* [ %27, %34 ], [ %29, %35 ]
  br label %41

37:                                               ; preds = %17
  %.not10 = icmp eq i32 %32, 0
  br i1 %.not10, label %39, label %38

38:                                               ; preds = %37
  call void @SwapValLeft(%struct.node* noundef nonnull %.03, %struct.node* noundef %.01, %struct.node* noundef %21, %struct.node* noundef %27, i32 noundef %19, i32 noundef %25)
  br label %40

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %38
  %.25 = phi %struct.node* [ %23, %38 ], [ %21, %39 ]
  %.2 = phi %struct.node* [ %29, %38 ], [ %27, %39 ]
  br label %41

41:                                               ; preds = %40, %36
  %.36 = phi %struct.node* [ %.14, %36 ], [ %.25, %40 ]
  %.3 = phi %struct.node* [ %.12, %36 ], [ %.2, %40 ]
  br label %16, !llvm.loop !6

42:                                               ; preds = %16
  %43 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %44 = load %struct.node*, %struct.node** %43, align 8
  %.not8 = icmp eq %struct.node* %44, null
  br i1 %.not8, label %55, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %47 = load %struct.node*, %struct.node** %46, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %49 = load %struct.node*, %struct.node** %48, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @Bimerge(%struct.node* noundef %47, i32 noundef %51, i32 noundef %2)
  %53 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = call i32 @Bimerge(%struct.node* noundef %49, i32 noundef %.0, i32 noundef %2)
  br label %55

55:                                               ; preds = %45, %42
  %.1 = phi i32 [ %54, %45 ], [ %.0, %42 ]
  ret i32 %.1
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @Bisort(%struct.node* nocapture noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %5 = load %struct.node*, %struct.node** %4, align 8
  %6 = icmp eq %struct.node* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, %1
  %11 = zext i1 %10 to i32
  %.not1 = icmp eq i32 %11, %2
  br i1 %.not1, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %1, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %7
  %.0 = phi i32 [ %14, %12 ], [ %1, %7 ]
  br label %29

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 1
  %19 = load %struct.node*, %struct.node** %18, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 2
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @Bisort(%struct.node* noundef %19, i32 noundef %23, i32 noundef %2)
  %25 = getelementptr inbounds %struct.node, %struct.node* %0, i64 0, i32 0
  store i32 %24, i32* %25, align 8
  %.not = icmp eq i32 %2, 0
  %26 = zext i1 %.not to i32
  %27 = call i32 @Bisort(%struct.node* noundef %21, i32 noundef %1, i32 noundef %26)
  %28 = call i32 @Bimerge(%struct.node* noundef %0, i32 noundef %27, i32 noundef %2)
  br label %29

29:                                               ; preds = %17, %16
  %.1 = phi i32 [ %.0, %16 ], [ %28, %17 ]
  ret i32 %.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = call i32 @dealwithargs(i32 noundef %0, i8** noundef %1) #9
  %4 = load i32, i32* @NDim, align 4
  %5 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %3, i32 noundef %4) #9
  %6 = call %struct.node* @RandTree(i32 noundef %3, i32 noundef 12345768, i32 noundef 0, i32 noundef 0)
  %7 = call i32 @random(i32 noundef 245867)
  %8 = srem i32 %7, 100
  %9 = load i32, i32* @flag, align 4
  %.not = icmp eq i32 %9, 0
  br i1 %.not, label %12, label %10

10:                                               ; preds = %2
  call void @InOrder(%struct.node* noundef %6)
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %8) #9
  br label %12

12:                                               ; preds = %10, %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str, i64 0, i64 0))
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @str.1, i64 0, i64 0))
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([39 x i8], [39 x i8]* @str.2, i64 0, i64 0))
  %13 = call i32 @Bisort(%struct.node* noundef %6, i32 noundef %8, i32 noundef 0)
  %14 = load i32, i32* @flag, align 4
  %.not3 = icmp eq i32 %14, 0
  br i1 %.not3, label %17, label %15

15:                                               ; preds = %12
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.4, i64 0, i64 0))
  call void @InOrder(%struct.node* noundef %6)
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %13) #9
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 @Bisort(%struct.node* noundef %6, i32 noundef %13, i32 noundef 1)
  %19 = load i32, i32* @flag, align 4
  %.not4 = icmp eq i32 %19, 0
  br i1 %.not4, label %22, label %20

20:                                               ; preds = %17
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @str.3, i64 0, i64 0))
  call void @InOrder(%struct.node* noundef %6)
  %21 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 noundef %18) #9
  br label %22

22:                                               ; preds = %20, %17
  ret i32 0
}

declare dso_local i32 @dealwithargs(i32 noundef, i8** noundef) #1

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_RandTree_727164322(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = call i32 @random(i32 noundef %_wyvern_arg_)
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @_wyvern_calleeclone_RandTree_1319648085(i32 noundef %0, %_wyvern_thunk_type.0* noundef %_wyvern_thunkptr, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.future_cell_int, align 8
  %5 = load i32, i32* @foo, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @foo, align 4
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  %9 = load i32, i32* @NDim, align 4
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* @NDim, align 4
  %13 = xor i32 %2, -1
  %14 = add i32 %12, %13
  %15 = shl i32 1, %14
  %16 = add nsw i32 %15, %1
  br label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %11
  %.0 = phi i32 [ %16, %11 ], [ %1, %17 ]
  %_wyvern_thunk_fptr_addr1 = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr2 = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr1, align 8
  %_wyvern_thunkcall3 = call i32 %_wyvern_thunkfptr2(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.0*)*, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.0* %_wyvern_thunkptr) #9
  %19 = call i32 @random(i32 noundef %_wyvern_thunkcall)
  %20 = srem i32 %19, 100
  %21 = call dereferenceable_or_null(24) i8* @malloc(i32 noundef 24) #9
  %22 = bitcast i8* %21 to %struct.node*
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 1
  store %struct.node* null, %struct.node** %24, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2
  store %struct.node* null, %struct.node** %25, align 8
  %26 = sdiv i32 %0, 2
  %27 = add nsw i32 %2, 1
  %28 = call %struct.node* @RandTree(i32 noundef %26, i32 noundef %19, i32 noundef %.0, i32 noundef %27)
  %29 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %4, i64 0, i32 0
  store %struct.node* %28, %struct.node** %29, align 8
  %30 = sdiv i32 %0, 2
  %31 = add nsw i32 %0, 1
  %32 = call i32 @skiprand(i32 noundef %19, i32 noundef %31)
  %33 = add nsw i32 %2, 1
  %34 = call %struct.node* @RandTree(i32 noundef %30, i32 noundef %32, i32 noundef %1, i32 noundef %33)
  %35 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %4, i64 0, i32 0
  %36 = load %struct.node*, %struct.node** %35, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 1
  store %struct.node* %36, %struct.node** %37, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %22, i64 0, i32 2
  store %struct.node* %34, %struct.node** %38, align 8
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %18
  %.01 = phi %struct.node* [ %22, %18 ], [ null, %39 ]
  ret %struct.node* %.01
}

; Function Attrs: nounwind readonly willreturn
define i32 @_wyvern_slice_memo_RandTree_519965733(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #7 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load i32, i32* %_wyvern_arg_addr_, align 4
  %0 = add nsw i32 %_wyvern_arg_, 1
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32 %0, i32* %_wyvern_memo_val_addr, align 4
  ret i32 %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @_wyvern_calleeclone_RandTree_3527950276(i32 noundef %0, i32 noundef %1, i32 noundef %2, %_wyvern_thunk_type.4* noundef %_wyvern_thunkptr) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.0, align 8
  %4 = alloca %struct.future_cell_int, align 8
  %5 = load i32, i32* @foo, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @foo, align 4
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = load i32, i32* @NDim, align 4
  %_wyvern_thunk_fptr_addr11 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr12 = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr11, align 8
  %_wyvern_thunkcall13 = call i32 %_wyvern_thunkfptr12(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9
  %10 = icmp slt i32 %_wyvern_thunkcall13, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* @NDim, align 4
  %_wyvern_thunk_fptr_addr8 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr9 = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr8, align 8
  %_wyvern_thunkcall10 = call i32 %_wyvern_thunkfptr9(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9
  %13 = xor i32 %_wyvern_thunkcall10, -1
  %14 = add i32 %12, %13
  %15 = shl i32 1, %14
  %16 = add nsw i32 %15, %2
  br label %18

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17, %11
  %.0 = phi i32 [ %16, %11 ], [ %2, %17 ]
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32 (%_wyvern_thunk_type.0*)* @_wyvern_slice_memo_RandTree_727164322, i32 (%_wyvern_thunk_type.0*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 4
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.0, %_wyvern_thunk_type.0* %_wyvern_thunk_alloca, i64 0, i32 3
  store i32 %1, i32* %_wyvern_thunk_arg_gep_, align 8
  %_wyvern_thunkcall2 = call i32 @_wyvern_slice_memo_RandTree_727164322(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %19 = srem i32 %_wyvern_thunkcall2, 100
  %20 = call dereferenceable_or_null(24) i8* @malloc(i32 noundef 24) #9
  %21 = bitcast i8* %20 to %struct.node*
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 1
  store %struct.node* null, %struct.node** %23, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 2
  store %struct.node* null, %struct.node** %24, align 8
  %25 = sdiv i32 %0, 2
  %_wyvern_thunk_fptr_addr5 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr6 = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr5, align 8
  %_wyvern_thunkcall7 = call i32 %_wyvern_thunkfptr6(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9
  %26 = add nsw i32 %_wyvern_thunkcall7, 1
  %27 = call %struct.node* @_wyvern_calleeclone_RandTree_1319648085(i32 noundef %25, %_wyvern_thunk_type.0* noundef nonnull %_wyvern_thunk_alloca, i32 noundef %.0, i32 noundef %26)
  %28 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %4, i64 0, i32 0
  store %struct.node* %27, %struct.node** %28, align 8
  %29 = sdiv i32 %0, 2
  %30 = add nsw i32 %0, 1
  %_wyvern_thunkcall = call i32 @_wyvern_slice_memo_RandTree_727164322(%_wyvern_thunk_type.0* nonnull %_wyvern_thunk_alloca)
  %31 = call i32 @skiprand(i32 noundef %_wyvern_thunkcall, i32 noundef %30)
  %_wyvern_thunk_fptr_addr2 = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr3 = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr2, align 8
  %_wyvern_thunkcall4 = call i32 %_wyvern_thunkfptr3(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.4, %_wyvern_thunk_type.4* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32 (%_wyvern_thunk_type.4*)*, i32 (%_wyvern_thunk_type.4*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall1 = call i32 %_wyvern_thunkfptr(%_wyvern_thunk_type.4* %_wyvern_thunkptr) #9
  %32 = add nsw i32 %_wyvern_thunkcall1, 1
  %33 = call %struct.node* @RandTree(i32 noundef %29, i32 noundef %31, i32 noundef %2, i32 noundef %32)
  %34 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %4, i64 0, i32 0
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 1
  store %struct.node* %35, %struct.node** %36, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %21, i64 0, i32 2
  store %struct.node* %33, %struct.node** %37, align 8
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %18
  %.01 = phi %struct.node* [ %21, %18 ], [ null, %38 ]
  ret %struct.node* %.01
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #8

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
