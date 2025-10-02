; ModuleID = './contain.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/contain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_contain(%struct.set_family* noundef %0) #0 {
  %2 = call i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef nonnull @descend)
  %3 = call i32 @rm_equal(i32** noundef %2, i32 (...)* noundef nonnull @descend)
  %4 = call i32 @rm_contain(i32** noundef %2)
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.set_family* @sf_unlist(i32** noundef %2, i32 noundef %4, i32 noundef %6)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  ret %struct.set_family* %7
}

declare dso_local i32 @descend(...) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_rev_contain(%struct.set_family* noundef %0) #0 {
  %2 = call i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef nonnull @ascend)
  %3 = call i32 @rm_equal(i32** noundef %2, i32 (...)* noundef nonnull @ascend)
  %4 = call i32 @rm_rev_contain(i32** noundef %2)
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.set_family* @sf_unlist(i32** noundef %2, i32 noundef %4, i32 noundef %6)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  ret %struct.set_family* %7
}

declare dso_local i32 @ascend(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_ind_contain(%struct.set_family* noundef %0, i32* nocapture noundef %1) #0 {
  %3 = call i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef nonnull @descend)
  %4 = call i32 @rm_equal(i32** noundef %3, i32 (...)* noundef nonnull @descend)
  %5 = call i32 @rm_contain(i32** noundef %3)
  %6 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %9 = load i32*, i32** %8, align 8
  %10 = call %struct.set_family* @sf_ind_unlist(i32** noundef %3, i32 noundef %5, i32 noundef %7, i32* noundef %1, i32* noundef %9)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  ret %struct.set_family* %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_dupl(%struct.set_family* noundef %0) #0 {
  %2 = call i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef nonnull @descend)
  %3 = call i32 @rm_equal(i32** noundef %2, i32 (...)* noundef nonnull @descend)
  %4 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.set_family* @sf_unlist(i32** noundef %2, i32 noundef %3, i32 noundef %5)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  ret %struct.set_family* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_union(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = call i32** @sf_list(%struct.set_family* noundef %0)
  %4 = call i32** @sf_list(%struct.set_family* noundef %1)
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %10
  %.pn = phi %struct.set_family* [ %0, %10 ], [ %1, %11 ]
  %.in = getelementptr inbounds %struct.set_family, %struct.set_family* %.pn, i64 0, i32 3
  %13 = load i32, i32* %.in, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = call i8* @malloc(i64 noundef %16) #3
  %18 = bitcast i8* %17 to i32**
  %19 = call i32 @rm2_equal(i32** noundef %3, i32** noundef %4, i32** noundef %18, i32 (...)* noundef nonnull @descend)
  %20 = call i32 @rm2_contain(i32** noundef %3, i32** noundef %4)
  %21 = call i32 @rm2_contain(i32** noundef %4, i32** noundef %3)
  %22 = add nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.set_family* @sf_merge(i32** noundef %3, i32** noundef %4, i32** noundef %18, i32 noundef %23, i32 noundef %25)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %1) #3
  ret %struct.set_family* %26
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @dist_merge(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 11), align 8
  %4 = load i32*, i32** %3, align 8
  %5 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %4, i32* noundef %1) #3
  %6 = call i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef nonnull @d1_order)
  %7 = call i32 @d1_rm_equal(i32** noundef %6, i32 (...)* noundef nonnull @d1_order)
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.set_family* @sf_unlist(i32** noundef %6, i32 noundef %7, i32 noundef %9)
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %0) #3
  ret %struct.set_family* %10
}

declare dso_local i32* @set_copy(...) #1

declare dso_local i32 @d1_order(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @d1merge(%struct.set_family* noundef %0, i32 noundef %1) #0 {
  %3 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i64 0, i32 10), align 8
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32*, i32** %3, i64 %4
  %6 = load i32*, i32** %5, align 8
  %7 = call %struct.set_family* @dist_merge(%struct.set_family* noundef %0, i32* noundef %6)
  ret %struct.set_family* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d1_rm_equal(i32** noundef %0, i32 (...)* nocapture noundef readonly %1) #0 {
  %3 = load i32*, i32** %0, align 8
  %.not = icmp eq i32* %3, null
  br i1 %.not, label %45, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %36, %4
  %.02 = phi i32 [ 0, %4 ], [ %.13, %36 ]
  %.01 = phi i32 [ 1, %4 ], [ %37, %36 ]
  %.0 = phi i32 [ 0, %4 ], [ %.1, %36 ]
  %6 = zext i32 %.01 to i64
  %7 = getelementptr inbounds i32*, i32** %0, i64 %6
  %8 = load i32*, i32** %7, align 8
  %.not4 = icmp eq i32* %8, null
  br i1 %.not4, label %38, label %9

9:                                                ; preds = %5
  %10 = sext i32 %.02 to i64
  %11 = getelementptr inbounds i32*, i32** %0, i64 %10
  %12 = zext i32 %.01 to i64
  %13 = getelementptr inbounds i32*, i32** %0, i64 %12
  %14 = bitcast i32 (...)* %1 to i32 (i32**, i32**, ...)*
  %15 = call i32 (i32**, i32**, ...) %14(i32** noundef nonnull %11, i32** noundef nonnull %13) #3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = sext i32 %.02 to i64
  %19 = getelementptr inbounds i32*, i32** %0, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = sext i32 %.02 to i64
  %22 = getelementptr inbounds i32*, i32** %0, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds i32*, i32** %0, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %20, i32* noundef %23, i32* noundef %26) #3
  br label %35

28:                                               ; preds = %9
  %29 = sext i32 %.02 to i64
  %30 = getelementptr inbounds i32*, i32** %0, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = add nsw i32 %.0, 1
  %33 = sext i32 %.0 to i64
  %34 = getelementptr inbounds i32*, i32** %0, i64 %33
  store i32* %31, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %17
  %.13 = phi i32 [ %.02, %17 ], [ %.01, %28 ]
  %.1 = phi i32 [ %.0, %17 ], [ %32, %28 ]
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !4

38:                                               ; preds = %5
  %39 = sext i32 %.02 to i64
  %40 = getelementptr inbounds i32*, i32** %0, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = add nsw i32 %.0, 1
  %43 = sext i32 %.0 to i64
  %44 = getelementptr inbounds i32*, i32** %0, i64 %43
  store i32* %41, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %2
  %.2 = phi i32 [ %42, %38 ], [ 0, %2 ]
  %46 = sext i32 %.2 to i64
  %47 = getelementptr inbounds i32*, i32** %0, i64 %46
  store i32* null, i32** %47, align 8
  ret i32 %.2
}

declare dso_local i32* @set_or(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm_equal(i32** noundef %0, i32 (...)* nocapture noundef readonly %1) #0 {
  %3 = load i32*, i32** %0, align 8
  %.not = icmp eq i32* %3, null
  br i1 %.not, label %18, label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %14, %4
  %.pn = phi i32** [ %0, %4 ], [ %.01, %14 ]
  %.0 = phi i32** [ %0, %4 ], [ %.1, %14 ]
  %.01 = getelementptr inbounds i32*, i32** %.pn, i64 1
  %6 = load i32*, i32** %.01, align 8
  %.not2 = icmp eq i32* %6, null
  br i1 %.not2, label %15, label %7

7:                                                ; preds = %5
  %8 = bitcast i32 (...)* %1 to i32 (i32**, i32**, ...)*
  %9 = call i32 (i32**, i32**, ...) %8(i32** noundef nonnull %.01, i32** noundef nonnull %.pn) #3
  %.not3 = icmp eq i32 %9, 0
  br i1 %.not3, label %13, label %10

10:                                               ; preds = %7
  %11 = load i32*, i32** %.pn, align 8
  %12 = getelementptr inbounds i32*, i32** %.0, i64 1
  store i32* %11, i32** %.0, align 8
  br label %13

13:                                               ; preds = %10, %7
  %.1 = phi i32** [ %12, %10 ], [ %.0, %7 ]
  br label %14

14:                                               ; preds = %13
  br label %5, !llvm.loop !6

15:                                               ; preds = %5
  %16 = load i32*, i32** %.pn, align 8
  %17 = getelementptr inbounds i32*, i32** %.0, i64 1
  store i32* %16, i32** %.0, align 8
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %15, %2
  %.2 = phi i32** [ %17, %15 ], [ %0, %2 ]
  %19 = ptrtoint i32** %.2 to i64
  %20 = ptrtoint i32** %0 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 3
  %23 = trunc i64 %22 to i32
  ret i32 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @rm_contain(i32** noundef %0) #2 {
  br label %2

2:                                                ; preds = %37, %1
  %.07 = phi i32** [ %0, %1 ], [ %.18, %37 ]
  %.05 = phi i32 [ -1, %1 ], [ %.16, %37 ]
  %.03 = phi i32** [ undef, %1 ], [ %.14, %37 ]
  %.01 = phi i32** [ %0, %1 ], [ %3, %37 ]
  %3 = getelementptr inbounds i32*, i32** %.01, i64 1
  %4 = load i32*, i32** %.01, align 8
  %.not = icmp eq i32* %4, null
  br i1 %.not, label %38, label %5

5:                                                ; preds = %2
  %6 = load i32, i32* %4, align 4
  %7 = lshr i32 %6, 16
  %.not10 = icmp eq i32 %7, %.05
  br i1 %.not10, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 16
  br label %11

11:                                               ; preds = %8, %5
  %.16 = phi i32 [ %10, %8 ], [ %.05, %5 ]
  %.14 = phi i32** [ %.07, %8 ], [ %.03, %5 ]
  br label %12

12:                                               ; preds = %33, %11
  %.02 = phi i32** [ %0, %11 ], [ %14, %33 ]
  %.not11 = icmp eq i32** %.02, %.14
  br i1 %.not11, label %35, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i32*, i32** %.02, i64 1
  %15 = load i32*, i32** %.02, align 8
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 1023
  br label %18

18:                                               ; preds = %29, %13
  %.0 = phi i32 [ %17, %13 ], [ %30, %29 ]
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds i32, i32* %4, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %15, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %.not12 = icmp eq i32 %26, 0
  br i1 %.not12, label %28, label %27

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.0, -1
  %31 = icmp sgt i32 %.0, 1
  br i1 %31, label %18, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %29
  br label %32

32:                                               ; preds = %.loopexit, %27
  %.1 = phi i32 [ %.0, %27 ], [ %30, %.loopexit ]
  %.not13 = icmp eq i32 %.1, 0
  br i1 %.not13, label %34, label %33

33:                                               ; preds = %32
  br label %12, !llvm.loop !8

34:                                               ; preds = %32
  br label %37

35:                                               ; preds = %12
  %36 = getelementptr inbounds i32*, i32** %.07, i64 1
  store i32* %4, i32** %.07, align 8
  br label %37

37:                                               ; preds = %35, %34
  %.18 = phi i32** [ %.07, %34 ], [ %36, %35 ]
  br label %2, !llvm.loop !9

38:                                               ; preds = %2
  store i32* null, i32** %.07, align 8
  %39 = ptrtoint i32** %.07 to i64
  %40 = ptrtoint i32** %0 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 3
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @rm_rev_contain(i32** noundef %0) #2 {
  br label %2

2:                                                ; preds = %37, %1
  %.07 = phi i32** [ %0, %1 ], [ %.18, %37 ]
  %.05 = phi i32 [ -1, %1 ], [ %.16, %37 ]
  %.03 = phi i32** [ undef, %1 ], [ %.14, %37 ]
  %.01 = phi i32** [ %0, %1 ], [ %3, %37 ]
  %3 = getelementptr inbounds i32*, i32** %.01, i64 1
  %4 = load i32*, i32** %.01, align 8
  %.not = icmp eq i32* %4, null
  br i1 %.not, label %38, label %5

5:                                                ; preds = %2
  %6 = load i32, i32* %4, align 4
  %7 = lshr i32 %6, 16
  %.not10 = icmp eq i32 %7, %.05
  br i1 %.not10, label %11, label %8

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = lshr i32 %9, 16
  br label %11

11:                                               ; preds = %8, %5
  %.16 = phi i32 [ %10, %8 ], [ %.05, %5 ]
  %.14 = phi i32** [ %.07, %8 ], [ %.03, %5 ]
  br label %12

12:                                               ; preds = %33, %11
  %.02 = phi i32** [ %0, %11 ], [ %14, %33 ]
  %.not11 = icmp eq i32** %.02, %.14
  br i1 %.not11, label %35, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i32*, i32** %.02, i64 1
  %15 = load i32*, i32** %.02, align 8
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1023
  br label %18

18:                                               ; preds = %29, %13
  %.0 = phi i32 [ %17, %13 ], [ %30, %29 ]
  %19 = sext i32 %.0 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %4, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  %.not12 = icmp eq i32 %26, 0
  br i1 %.not12, label %28, label %27

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = add nsw i32 %.0, -1
  %31 = icmp sgt i32 %.0, 1
  br i1 %31, label %18, label %.loopexit, !llvm.loop !10

.loopexit:                                        ; preds = %29
  br label %32

32:                                               ; preds = %.loopexit, %27
  %.1 = phi i32 [ %.0, %27 ], [ %30, %.loopexit ]
  %.not13 = icmp eq i32 %.1, 0
  br i1 %.not13, label %34, label %33

33:                                               ; preds = %32
  br label %12, !llvm.loop !11

34:                                               ; preds = %32
  br label %37

35:                                               ; preds = %12
  %36 = getelementptr inbounds i32*, i32** %.07, i64 1
  store i32* %4, i32** %.07, align 8
  br label %37

37:                                               ; preds = %35, %34
  %.18 = phi i32** [ %.07, %34 ], [ %36, %35 ]
  br label %2, !llvm.loop !12

38:                                               ; preds = %2
  store i32* null, i32** %.07, align 8
  %39 = ptrtoint i32** %.07 to i64
  %40 = ptrtoint i32** %0 to i64
  %41 = sub i64 %39, %40
  %42 = lshr exact i64 %41, 3
  %43 = trunc i64 %42 to i32
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm2_equal(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32 (...)* nocapture noundef readonly %3) #0 {
  br label %5

5:                                                ; preds = %28, %4
  %.09 = phi i32** [ %0, %4 ], [ %.110, %28 ]
  %.06 = phi i32** [ %1, %4 ], [ %.17, %28 ]
  %.04 = phi i32** [ %2, %4 ], [ %.15, %28 ]
  %.01 = phi i32** [ %1, %4 ], [ %.12, %28 ]
  %.0 = phi i32** [ %0, %4 ], [ %.1, %28 ]
  %6 = load i32*, i32** %.0, align 8
  %.not = icmp eq i32* %6, null
  br i1 %.not, label %10, label %7

7:                                                ; preds = %5
  %8 = load i32*, i32** %.01, align 8
  %9 = icmp ne i32* %8, null
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i1 [ false, %5 ], [ %9, %7 ]
  br i1 %11, label %12, label %29

12:                                               ; preds = %10
  %13 = bitcast i32 (...)* %3 to i32 (i32**, i32**, ...)*
  %14 = call i32 (i32**, i32**, ...) %13(i32** noundef nonnull %.0, i32** noundef %.01) #3
  switch i32 %14, label %28 [
    i32 -1, label %15
    i32 0, label %19
    i32 1, label %24
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i32*, i32** %.0, i64 1
  %17 = load i32*, i32** %.0, align 8
  %18 = getelementptr inbounds i32*, i32** %.09, i64 1
  store i32* %17, i32** %.09, align 8
  br label %28

19:                                               ; preds = %12
  %20 = getelementptr inbounds i32*, i32** %.0, i64 1
  %21 = load i32*, i32** %.0, align 8
  %22 = getelementptr inbounds i32*, i32** %.04, i64 1
  store i32* %21, i32** %.04, align 8
  %23 = getelementptr inbounds i32*, i32** %.01, i64 1
  br label %28

24:                                               ; preds = %12
  %25 = getelementptr inbounds i32*, i32** %.01, i64 1
  %26 = load i32*, i32** %.01, align 8
  %27 = getelementptr inbounds i32*, i32** %.06, i64 1
  store i32* %26, i32** %.06, align 8
  br label %28

28:                                               ; preds = %24, %19, %15, %12
  %.110 = phi i32** [ %.09, %12 ], [ %.09, %24 ], [ %.09, %19 ], [ %18, %15 ]
  %.17 = phi i32** [ %.06, %12 ], [ %27, %24 ], [ %.06, %19 ], [ %.06, %15 ]
  %.15 = phi i32** [ %.04, %12 ], [ %.04, %24 ], [ %22, %19 ], [ %.04, %15 ]
  %.12 = phi i32** [ %.01, %12 ], [ %25, %24 ], [ %23, %19 ], [ %.01, %15 ]
  %.1 = phi i32** [ %.0, %12 ], [ %.0, %24 ], [ %20, %19 ], [ %16, %15 ]
  br label %5, !llvm.loop !13

29:                                               ; preds = %10
  br label %30

30:                                               ; preds = %32, %29
  %.211 = phi i32** [ %.09, %29 ], [ %35, %32 ]
  %.2 = phi i32** [ %.0, %29 ], [ %33, %32 ]
  %31 = load i32*, i32** %.2, align 8
  %.not12 = icmp eq i32* %31, null
  br i1 %.not12, label %36, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds i32*, i32** %.2, i64 1
  %34 = load i32*, i32** %.2, align 8
  %35 = getelementptr inbounds i32*, i32** %.211, i64 1
  store i32* %34, i32** %.211, align 8
  br label %30, !llvm.loop !14

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %39, %36
  %.28 = phi i32** [ %.06, %36 ], [ %42, %39 ]
  %.23 = phi i32** [ %.01, %36 ], [ %40, %39 ]
  %38 = load i32*, i32** %.23, align 8
  %.not13 = icmp eq i32* %38, null
  br i1 %.not13, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds i32*, i32** %.23, i64 1
  %41 = load i32*, i32** %.23, align 8
  %42 = getelementptr inbounds i32*, i32** %.28, i64 1
  store i32* %41, i32** %.28, align 8
  br label %37, !llvm.loop !15

43:                                               ; preds = %37
  store i32* null, i32** %.04, align 8
  store i32* null, i32** %.28, align 8
  store i32* null, i32** %.211, align 8
  %44 = ptrtoint i32** %.04 to i64
  %45 = ptrtoint i32** %2 to i64
  %46 = sub i64 %44, %45
  %47 = lshr exact i64 %46, 3
  %48 = trunc i64 %47 to i32
  ret i32 %48
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @rm2_contain(i32** noundef %0, i32** nocapture noundef readonly %1) #2 {
  br label %3

3:                                                ; preds = %40, %2
  %.03 = phi i32** [ %0, %2 ], [ %4, %40 ]
  %.01 = phi i32** [ %0, %2 ], [ %.12, %40 ]
  %4 = getelementptr inbounds i32*, i32** %.03, i64 1
  %5 = load i32*, i32** %.03, align 8
  %.not = icmp eq i32* %5, null
  br i1 %.not, label %41, label %6

6:                                                ; preds = %3
  br label %7

7:                                                ; preds = %36, %6
  %.04 = phi i32** [ %1, %6 ], [ %8, %36 ]
  %8 = getelementptr inbounds i32*, i32** %.04, i64 1
  %9 = load i32*, i32** %.04, align 8
  %.not6 = icmp eq i32* %9, null
  br i1 %.not6, label %16, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %9, align 4
  %12 = lshr i32 %11, 16
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %13, 16
  %15 = icmp ugt i32 %12, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ false, %7 ], [ %15, %10 ]
  br i1 %17, label %18, label %38

18:                                               ; preds = %16
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 1023
  br label %21

21:                                               ; preds = %32, %18
  %.0 = phi i32 [ %20, %18 ], [ %33, %32 ]
  %22 = sext i32 %.0 to i64
  %23 = getelementptr inbounds i32, i32* %5, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %.0 to i64
  %26 = getelementptr inbounds i32, i32* %9, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  %.not7 = icmp eq i32 %29, 0
  br i1 %.not7, label %31, label %30

30:                                               ; preds = %21
  br label %35

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31
  %33 = add nsw i32 %.0, -1
  %34 = icmp sgt i32 %.0, 1
  br i1 %34, label %21, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %32
  br label %35

35:                                               ; preds = %.loopexit, %30
  %.1 = phi i32 [ %.0, %30 ], [ %33, %.loopexit ]
  %.not8 = icmp eq i32 %.1, 0
  br i1 %.not8, label %37, label %36

36:                                               ; preds = %35
  br label %7, !llvm.loop !17

37:                                               ; preds = %35
  br label %40

38:                                               ; preds = %16
  %39 = getelementptr inbounds i32*, i32** %.01, i64 1
  store i32* %5, i32** %.01, align 8
  br label %40

40:                                               ; preds = %38, %37
  %.12 = phi i32** [ %.01, %37 ], [ %39, %38 ]
  br label %3, !llvm.loop !18

41:                                               ; preds = %3
  store i32* null, i32** %.01, align 8
  %42 = ptrtoint i32** %.01 to i64
  %43 = ptrtoint i32** %0 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 3
  %46 = trunc i64 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @sf_sort(%struct.set_family* nocapture noundef readonly %0, i32 (...)* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call i8* @malloc(i64 noundef %7) #3
  %9 = bitcast i8* %8 to i32**
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = mul nsw i32 %13, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  br label %19

19:                                               ; preds = %28, %2
  %.01 = phi i32* [ %11, %2 ], [ %33, %28 ]
  %.0 = phi i32** [ %9, %2 ], [ %29, %28 ]
  %20 = icmp ult i32* %.01, %18
  br i1 %20, label %21, label %34

21:                                               ; preds = %19
  %22 = load i32, i32* %.01, align 4
  %23 = and i32 %22, 65535
  store i32 %23, i32* %.01, align 4
  %24 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* noundef nonnull %.01) #3
  %25 = shl i32 %24, 16
  %26 = load i32, i32* %.01, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %.01, align 4
  store i32* %.01, i32** %.0, align 8
  br label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds i32*, i32** %.0, i64 1
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %.01, i64 %32
  br label %19, !llvm.loop !19

34:                                               ; preds = %19
  store i32* null, i32** %.0, align 8
  %35 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = bitcast i32 (...)* %1 to i32 (i8*, i8*)*
  call void @qsort(i8* noundef %8, i64 noundef %37, i64 noundef 8, i32 (i8*, i8*)* noundef %38) #3
  ret i32** %9
}

declare dso_local i32 @set_ord(...) #1

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @sf_list(%struct.set_family* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = call i8* @malloc(i64 noundef %6) #3
  %8 = bitcast i8* %7 to i32**
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %10, i64 %16
  br label %18

18:                                               ; preds = %21, %1
  %.01 = phi i32* [ %10, %1 ], [ %26, %21 ]
  %.0 = phi i32** [ %8, %1 ], [ %22, %21 ]
  %19 = icmp ult i32* %.01, %17
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  store i32* %.01, i32** %.0, align 8
  br label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds i32*, i32** %.0, i64 1
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %.01, i64 %25
  br label %18, !llvm.loop !20

27:                                               ; preds = %18
  store i32* null, i32** %.0, align 8
  ret i32** %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_unlist(i32** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %1, i32 noundef %2) #3
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i64 0, i32 3
  store i32 %1, i32* %5, align 4
  %6 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i64 0, i32 5
  %7 = load i32*, i32** %6, align 8
  br label %8

8:                                                ; preds = %24, %3
  %.02 = phi i32* [ %7, %3 ], [ %28, %24 ]
  %.01 = phi i32** [ %0, %3 ], [ %9, %24 ]
  %9 = getelementptr inbounds i32*, i32** %.01, i64 1
  %10 = load i32*, i32** %.01, align 8
  %.not = icmp eq i32* %10, null
  br i1 %.not, label %29, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %10, align 4
  %13 = and i32 %12, 1023
  br label %14

14:                                               ; preds = %20, %11
  %.0 = phi i32 [ %13, %11 ], [ %21, %20 ]
  %15 = sext i32 %.0 to i64
  %16 = getelementptr inbounds i32, i32* %10, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %.0 to i64
  %19 = getelementptr inbounds i32, i32* %.02, i64 %18
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %.0, -1
  %22 = icmp sgt i32 %.0, 0
  br i1 %22, label %14, label %23, !llvm.loop !21

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %.02, i64 %27
  br label %8, !llvm.loop !22

29:                                               ; preds = %8
  %.not3 = icmp eq i32** %0, null
  br i1 %.not3, label %32, label %30

30:                                               ; preds = %29
  %31 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %31)
  br label %32

32:                                               ; preds = %30, %29
  ret %struct.set_family* %4
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_ind_unlist(i32** noundef %0, i32 noundef %1, i32 noundef %2, i32* nocapture noundef %3, i32* noundef %4) #0 {
  %6 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %1, i32 noundef %2) #3
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 3
  store i32 %1, i32* %7, align 4
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 2
  %10 = call i8* @malloc(i64 noundef %9) #3
  %11 = bitcast i8* %10 to i32*
  %12 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 5
  %13 = load i32*, i32** %12, align 8
  br label %14

14:                                               ; preds = %42, %5
  %.03 = phi i32* [ %13, %5 ], [ %46, %42 ]
  %.02 = phi i32** [ %0, %5 ], [ %15, %42 ]
  %.01 = phi i32 [ 0, %5 ], [ %47, %42 ]
  %15 = getelementptr inbounds i32*, i32** %.02, i64 1
  %16 = load i32*, i32** %.02, align 8
  %.not = icmp eq i32* %16, null
  br i1 %.not, label %48, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %16, align 4
  %19 = and i32 %18, 1023
  br label %20

20:                                               ; preds = %26, %17
  %.0 = phi i32 [ %19, %17 ], [ %27, %26 ]
  %21 = sext i32 %.0 to i64
  %22 = getelementptr inbounds i32, i32* %16, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %.0 to i64
  %25 = getelementptr inbounds i32, i32* %.03, i64 %24
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20
  %27 = add nsw i32 %.0, -1
  %28 = icmp sgt i32 %.0, 0
  br i1 %28, label %20, label %29, !llvm.loop !23

29:                                               ; preds = %26
  %30 = ptrtoint i32* %16 to i64
  %31 = ptrtoint i32* %4 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 2
  %34 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = sdiv i64 %33, %36
  %38 = getelementptr inbounds i32, i32* %3, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds i32, i32* %11, i64 %40
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i64 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %.03, i64 %45
  %47 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !24

48:                                               ; preds = %14
  br label %49

49:                                               ; preds = %57, %48
  %.1 = phi i32 [ 0, %48 ], [ %58, %57 ]
  %50 = icmp slt i32 %.1, %1
  br i1 %50, label %51, label %59

51:                                               ; preds = %49
  %52 = zext i32 %.1 to i64
  %53 = getelementptr inbounds i32, i32* %11, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %.1 to i64
  %56 = getelementptr inbounds i32, i32* %3, i64 %55
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %51
  %58 = add nuw nsw i32 %.1, 1
  br label %49, !llvm.loop !25

59:                                               ; preds = %49
  %.not4 = icmp eq i8* %10, null
  br i1 %.not4, label %61, label %60

60:                                               ; preds = %59
  call void @free(i8* noundef %10)
  br label %61

61:                                               ; preds = %60, %59
  %.not5 = icmp eq i32** %0, null
  br i1 %.not5, label %64, label %62

62:                                               ; preds = %61
  %63 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %63)
  br label %64

64:                                               ; preds = %62, %61
  ret %struct.set_family* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_merge(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [3 x i32**], align 16
  %7 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %3, i32 noundef %4) #3
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 3
  store i32 %3, i32* %8, align 4
  %9 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 5
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 0
  store i32** %0, i32*** %11, align 16
  %12 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 1
  store i32** %1, i32*** %12, align 8
  %13 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 2
  store i32** %2, i32*** %13, align 16
  br label %14

14:                                               ; preds = %44, %5
  %.03 = phi i32 [ 0, %5 ], [ %45, %44 ]
  %15 = icmp ult i32 %.03, 2
  br i1 %15, label %16, label %46

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %42, %16
  %.01.in = phi i32 [ %.03, %16 ], [ %.01, %42 ]
  %.01 = add nuw nsw i32 %.01.in, 1
  %18 = icmp ult i32 %.01.in, 2
  br i1 %18, label %19, label %43

19:                                               ; preds = %17
  %20 = zext i32 %.03 to i64
  %21 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %20
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = zext i32 %.01 to i64
  %25 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %24
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %23, i32* noundef %27) #3
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = zext i32 %.01 to i64
  %32 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %31
  %33 = load i32**, i32*** %32, align 8
  %34 = zext i32 %.03 to i64
  %35 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %34
  %36 = load i32**, i32*** %35, align 8
  %37 = zext i32 %.01 to i64
  %38 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %37
  store i32** %36, i32*** %38, align 8
  %39 = zext i32 %.03 to i64
  %40 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 %39
  store i32** %33, i32*** %40, align 8
  br label %41

41:                                               ; preds = %30, %19
  br label %42

42:                                               ; preds = %41
  br label %17, !llvm.loop !26

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43
  %45 = add nuw nsw i32 %.03, 1
  br label %14, !llvm.loop !27

46:                                               ; preds = %14
  %47 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 0
  %48 = load i32**, i32*** %47, align 16
  %49 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds [3 x i32**], [3 x i32**]* %6, i64 0, i64 2
  %52 = load i32**, i32*** %51, align 16
  br label %53

53:                                               ; preds = %86, %46
  %.08 = phi i32** [ %52, %46 ], [ %.19, %86 ]
  %.05 = phi i32** [ %50, %46 ], [ %.27, %86 ]
  %.04 = phi i32** [ %48, %46 ], [ %.2, %86 ]
  %.02 = phi i32* [ %10, %46 ], [ %73, %86 ]
  %54 = load i32*, i32** %.04, align 8
  %.not = icmp eq i32* %54, null
  br i1 %.not, label %87, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds i32*, i32** %.04, i64 1
  %57 = load i32*, i32** %.04, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1023
  br label %60

60:                                               ; preds = %66, %55
  %.0 = phi i32 [ %59, %55 ], [ %67, %66 ]
  %61 = sext i32 %.0 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %.0 to i64
  %65 = getelementptr inbounds i32, i32* %.02, i64 %64
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60
  %67 = add nsw i32 %.0, -1
  %68 = icmp sgt i32 %.0, 0
  br i1 %68, label %60, label %69, !llvm.loop !28

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i64 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %.02, i64 %72
  %74 = load i32*, i32** %56, align 8
  %75 = load i32*, i32** %.08, align 8
  %76 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %74, i32* noundef %75) #3
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %86

79:                                               ; preds = %69
  %80 = load i32*, i32** %56, align 8
  %81 = load i32*, i32** %.05, align 8
  %82 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %80, i32* noundef %81) #3
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84, %79
  %.16 = phi i32** [ %56, %84 ], [ %.05, %79 ]
  %.1 = phi i32** [ %.05, %84 ], [ %56, %79 ]
  br label %86

86:                                               ; preds = %85, %78
  %.19 = phi i32** [ %56, %78 ], [ %.08, %85 ]
  %.27 = phi i32** [ %.08, %78 ], [ %.16, %85 ]
  %.2 = phi i32** [ %.05, %78 ], [ %.1, %85 ]
  br label %53, !llvm.loop !29

87:                                               ; preds = %53
  %.not10 = icmp eq i32** %0, null
  br i1 %.not10, label %90, label %88

88:                                               ; preds = %87
  %89 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %89)
  br label %90

90:                                               ; preds = %88, %87
  %.not11 = icmp eq i32** %1, null
  br i1 %.not11, label %93, label %91

91:                                               ; preds = %90
  %92 = bitcast i32** %1 to i8*
  call void @free(i8* noundef %92)
  br label %93

93:                                               ; preds = %91, %90
  %.not12 = icmp eq i32** %2, null
  br i1 %.not12, label %96, label %94

94:                                               ; preds = %93
  %95 = bitcast i32** %2 to i8*
  call void @free(i8* noundef %95)
  br label %96

96:                                               ; preds = %94, %93
  ret %struct.set_family* %7
}

declare dso_local i32 @desc1(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
