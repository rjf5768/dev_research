; ModuleID = './lists.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/Shootout/lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DLL = type { i32, %struct.DLL*, %struct.DLL* }

@.str = private unnamed_addr constant [12 x i8] c"length: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i:%3d  v:%3d  n:%3d  p:%3d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"[last entry points to list head]\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"[val of next of tail is:  %d]\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"li2 and li1 are not equal\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"li2 should be empty now\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"li3 should be empty now\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"li1 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"last value wrong, wanted %d, got %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"li2 first value wrong, wanted %d, got %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"li1 size wrong, wanted %d, got %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"li1 and li2 are not equal\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [33 x i8] c"[last entry points to list head]\00", align 1
@str.1 = private unnamed_addr constant [26 x i8] c"li2 and li1 are not equal\00", align 1
@str.2 = private unnamed_addr constant [24 x i8] c"li2 should be empty now\00", align 1
@str.3 = private unnamed_addr constant [24 x i8] c"li3 should be empty now\00", align 1
@str.4 = private unnamed_addr constant [26 x i8] c"li1 and li2 are not equal\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @list_push_tail(%struct.DLL* noundef %0, %struct.DLL* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i64 0, i32 1
  store %struct.DLL* %1, %struct.DLL** %5, align 8
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  store %struct.DLL* %0, %struct.DLL** %6, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  store %struct.DLL* %1, %struct.DLL** %7, align 8
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 2
  store %struct.DLL* %4, %struct.DLL** %8, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.DLL* @list_pop_tail(%struct.DLL* noundef %0) #0 {
  %2 = call i32 @list_empty(%struct.DLL* noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %14

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %6 = load %struct.DLL*, %struct.DLL** %5, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i64 0, i32 2
  %8 = load %struct.DLL*, %struct.DLL** %7, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %8, i64 0, i32 1
  store %struct.DLL* %0, %struct.DLL** %9, align 8
  %10 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  store %struct.DLL* %8, %struct.DLL** %10, align 8
  %11 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  br label %14

14:                                               ; preds = %4, %3
  %.0 = phi %struct.DLL* [ null, %3 ], [ %6, %4 ]
  ret %struct.DLL* %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @list_empty(%struct.DLL* nocapture noundef readonly %0) #1 {
  %2 = call i32 @list_length(%struct.DLL* noundef %0)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local void @list_push_head(%struct.DLL* noundef %0, %struct.DLL* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  store %struct.DLL* %1, %struct.DLL** %5, align 8
  %6 = getelementptr inbounds %struct.DLL, %struct.DLL* %4, i64 0, i32 2
  store %struct.DLL* %1, %struct.DLL** %6, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  store %struct.DLL* %4, %struct.DLL** %7, align 8
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 2
  store %struct.DLL* %0, %struct.DLL** %8, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn
define dso_local %struct.DLL* @list_pop_head(%struct.DLL* noundef %0) #0 {
  %2 = call i32 @list_empty(%struct.DLL* noundef %0)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %4, label %3

3:                                                ; preds = %1
  br label %16

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %6 = load %struct.DLL*, %struct.DLL** %5, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i64 0, i32 1
  %8 = load %struct.DLL*, %struct.DLL** %7, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  store %struct.DLL* %8, %struct.DLL** %9, align 8
  %10 = getelementptr inbounds %struct.DLL, %struct.DLL* %6, i64 0, i32 1
  %11 = load %struct.DLL*, %struct.DLL** %10, align 8
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %11, i64 0, i32 2
  store %struct.DLL* %0, %struct.DLL** %12, align 8
  %13 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %4, %3
  %.0 = phi %struct.DLL* [ null, %3 ], [ %6, %4 ]
  ret %struct.DLL* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @list_equal(%struct.DLL* noundef readonly %0, %struct.DLL* noundef readonly %1) #2 {
  br label %3

3:                                                ; preds = %13, %2
  %.02 = phi %struct.DLL* [ %0, %2 ], [ %15, %13 ]
  %.01 = phi %struct.DLL* [ %1, %2 ], [ %17, %13 ]
  %4 = getelementptr inbounds %struct.DLL, %struct.DLL* %.02, i64 0, i32 1
  %5 = load %struct.DLL*, %struct.DLL** %4, align 8
  %.not = icmp eq %struct.DLL* %5, %0
  br i1 %.not, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %.02, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  %.not6 = icmp eq i32 %8, %10
  br i1 %.not6, label %12, label %11

11:                                               ; preds = %6
  br label %29

12:                                               ; preds = %6
  br label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %.02, i64 0, i32 1
  %15 = load %struct.DLL*, %struct.DLL** %14, align 8
  %16 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 1
  %17 = load %struct.DLL*, %struct.DLL** %16, align 8
  br label %3, !llvm.loop !4

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %.02, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %.not5 = icmp eq i32 %20, %22
  br i1 %.not5, label %24, label %23

23:                                               ; preds = %18
  br label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 1
  %26 = load %struct.DLL*, %struct.DLL** %25, align 8
  %27 = icmp eq %struct.DLL* %26, %1
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %24, %23, %11
  %.0 = phi i32 [ 0, %11 ], [ 0, %23 ], [ %28, %24 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_print(i8* noundef %0, %struct.DLL* nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %1, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8
  %5 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %0) #10
  %6 = call i32 @list_length(%struct.DLL* noundef %1)
  %7 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 noundef %6) #10
  br label %8

8:                                                ; preds = %24, %2
  %.pn = phi %struct.DLL* [ %1, %2 ], [ %.01, %24 ]
  %.0 = phi i32 [ 0, %2 ], [ %12, %24 ]
  %.01.in = getelementptr inbounds %struct.DLL, %struct.DLL* %.pn, i64 0, i32 1
  %.01 = load %struct.DLL*, %struct.DLL** %.01.in, align 8
  %9 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 1
  %10 = load %struct.DLL*, %struct.DLL** %9, align 8
  %.not = icmp eq %struct.DLL* %10, %4
  br i1 %.not, label %25, label %11

11:                                               ; preds = %8
  %12 = add nuw nsw i32 %.0, 1
  %13 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 1
  %16 = load %struct.DLL*, %struct.DLL** %15, align 8
  %17 = getelementptr inbounds %struct.DLL, %struct.DLL* %16, i64 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 2
  %20 = load %struct.DLL*, %struct.DLL** %19, align 8
  %21 = getelementptr inbounds %struct.DLL, %struct.DLL* %20, i64 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 noundef %12, i32 noundef %14, i32 noundef %18, i32 noundef %22) #10
  br label %24

24:                                               ; preds = %11
  br label %8, !llvm.loop !6

25:                                               ; preds = %8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.DLL, %struct.DLL* %.01, i64 0, i32 1
  %27 = load %struct.DLL*, %struct.DLL** %26, align 8
  %28 = getelementptr inbounds %struct.DLL, %struct.DLL* %27, i64 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 noundef %29) #10
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @puts(i8* nocapture noundef readonly) #4

declare dso_local i32 @printf(i8* noundef, ...) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal i32 @list_length(%struct.DLL* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 0
  %3 = load i32, i32* %2, align 8
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_new() #3 {
  %1 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #10
  %2 = bitcast i8* %1 to %struct.DLL*
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 1
  %4 = bitcast %struct.DLL** %3 to i8**
  store i8* %1, i8** %4, align 8
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 2
  %6 = bitcast %struct.DLL** %5 to i8**
  store i8* %1, i8** %6, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %2, i64 0, i32 0
  store i32 0, i32* %7, align 8
  ret %struct.DLL* %2
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_sequence(i32 noundef %0, i32 noundef %1) #3 {
  %3 = icmp sgt i32 %0, %1
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %2
  %.01 = phi i32 [ %0, %4 ], [ %1, %2 ]
  %.0 = phi i32 [ %1, %4 ], [ %0, %2 ]
  %6 = sub nsw i32 %.01, %.0
  %7 = add nsw i32 %6, 1
  %8 = add nsw i32 %6, 2
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 24
  %11 = call noalias i8* @malloc(i64 noundef %10) #10
  %12 = bitcast i8* %11 to %struct.DLL*
  %13 = add nsw i32 %.0, -1
  br label %14

14:                                               ; preds = %28, %5
  %.03 = phi i32 [ 0, %5 ], [ %30, %28 ]
  %.02 = phi i32 [ 1, %5 ], [ %31, %28 ]
  %.1 = phi i32 [ %13, %5 ], [ %29, %28 ]
  %.not = icmp sgt i32 %.03, %6
  br i1 %.not, label %32, label %15

15:                                               ; preds = %14
  %16 = add nuw nsw i32 %.03, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %17
  %19 = zext i32 %.03 to i64
  %20 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %19, i32 1
  store %struct.DLL* %18, %struct.DLL** %20, align 8
  %21 = add nsw i32 %.02, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %22
  %24 = zext i32 %.02 to i64
  %25 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %24, i32 2
  store %struct.DLL* %23, %struct.DLL** %25, align 8
  %26 = zext i32 %.03 to i64
  %27 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %26, i32 0
  store i32 %.1, i32* %27, align 8
  br label %28

28:                                               ; preds = %15
  %29 = add nsw i32 %.1, 1
  %30 = add nuw nsw i32 %.03, 1
  %31 = add nuw nsw i32 %.02, 1
  br label %14, !llvm.loop !7

32:                                               ; preds = %14
  %33 = sext i32 %7 to i64
  %34 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %33
  %35 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 0, i32 2
  store %struct.DLL* %34, %struct.DLL** %35, align 8
  %36 = sext i32 %7 to i64
  %37 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %36, i32 1
  %38 = bitcast %struct.DLL** %37 to i8**
  store i8* %11, i8** %38, align 8
  %39 = sext i32 %6 to i64
  %40 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %39
  %41 = sext i32 %7 to i64
  %42 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %41, i32 2
  store %struct.DLL* %40, %struct.DLL** %42, align 8
  %43 = sext i32 %7 to i64
  %44 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 %43, i32 0
  store i32 %.1, i32* %44, align 8
  %45 = getelementptr inbounds %struct.DLL, %struct.DLL* %12, i64 0, i32 0
  store i32 %7, i32* %45, align 8
  ret %struct.DLL* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.DLL* @list_copy(%struct.DLL* nocapture noundef readonly %0) #3 {
  %2 = call i32 @list_length(%struct.DLL* noundef %0)
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = mul nsw i64 %4, 24
  %6 = call noalias i8* @malloc(i64 noundef %5) #10
  %7 = bitcast i8* %6 to %struct.DLL*
  br label %8

8:                                                ; preds = %23, %1
  %.02 = phi i32 [ 1, %1 ], [ %25, %23 ]
  %.01 = phi i32 [ 0, %1 ], [ %24, %23 ]
  %.0 = phi %struct.DLL* [ %0, %1 ], [ %27, %23 ]
  %9 = icmp slt i32 %.01, %2
  br i1 %9, label %10, label %28

10:                                               ; preds = %8
  %11 = zext i32 %.02 to i64
  %12 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %11
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %13, i32 1
  store %struct.DLL* %12, %struct.DLL** %14, align 8
  %15 = zext i32 %.01 to i64
  %16 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %15
  %17 = zext i32 %.02 to i64
  %18 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %17, i32 2
  store %struct.DLL* %16, %struct.DLL** %18, align 8
  %19 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = zext i32 %.01 to i64
  %22 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %21, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = add nuw nsw i32 %.01, 1
  %25 = add nuw nsw i32 %.02, 1
  %26 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 1
  %27 = load %struct.DLL*, %struct.DLL** %26, align 8
  br label %8, !llvm.loop !8

28:                                               ; preds = %8
  %29 = sext i32 %2 to i64
  %30 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %29
  %31 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 0, i32 2
  store %struct.DLL* %30, %struct.DLL** %31, align 8
  %32 = sext i32 %2 to i64
  %33 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %32, i32 1
  %34 = bitcast %struct.DLL** %33 to i8**
  store i8* %6, i8** %34, align 8
  %35 = call %struct.DLL* @list_last(%struct.DLL* noundef %0)
  %36 = getelementptr inbounds %struct.DLL, %struct.DLL* %35, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %2 to i64
  %39 = getelementptr inbounds %struct.DLL, %struct.DLL* %7, i64 %38, i32 0
  store i32 %37, i32* %39, align 8
  ret %struct.DLL* %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.DLL* @list_last(%struct.DLL* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 2
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  ret %struct.DLL* %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @list_reverse(%struct.DLL* noundef %0) #7 {
  br label %2

2:                                                ; preds = %9, %1
  %.0 = phi %struct.DLL* [ %0, %1 ], [ %4, %9 ]
  %3 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 1
  %4 = load %struct.DLL*, %struct.DLL** %3, align 8
  %5 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 2
  %6 = load %struct.DLL*, %struct.DLL** %5, align 8
  %7 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 1
  store %struct.DLL* %6, %struct.DLL** %7, align 8
  %8 = getelementptr inbounds %struct.DLL, %struct.DLL* %.0, i64 0, i32 2
  store %struct.DLL* %4, %struct.DLL** %8, align 8
  br label %9

9:                                                ; preds = %2
  %.not = icmp eq %struct.DLL* %4, %0
  br i1 %.not, label %10, label %2, !llvm.loop !9

10:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test_lists() #3 {
  %1 = call %struct.DLL* @list_sequence(i32 noundef 1, i32 noundef 100)
  %2 = call %struct.DLL* @list_copy(%struct.DLL* noundef %1)
  %3 = call %struct.DLL* @list_new()
  %4 = call i32 @list_equal(%struct.DLL* noundef %2, %struct.DLL* noundef %1)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %5, label %6

5:                                                ; preds = %0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %9, %6
  %8 = call i32 @list_empty(%struct.DLL* noundef %2)
  %.not1 = icmp eq i32 %8, 0
  br i1 %.not1, label %9, label %11

9:                                                ; preds = %7
  %10 = call %struct.DLL* @list_pop_head(%struct.DLL* noundef %2)
  call void @list_push_tail(%struct.DLL* noundef %3, %struct.DLL* noundef %10)
  br label %7, !llvm.loop !10

11:                                               ; preds = %7
  %12 = call i32 @list_empty(%struct.DLL* noundef %2)
  %.not2 = icmp eq i32 %12, 0
  br i1 %.not2, label %13, label %14

13:                                               ; preds = %11
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %17, %14
  %16 = call i32 @list_empty(%struct.DLL* noundef %3)
  %.not4 = icmp eq i32 %16, 0
  br i1 %.not4, label %17, label %19

17:                                               ; preds = %15
  %18 = call %struct.DLL* @list_pop_tail(%struct.DLL* noundef %3)
  call void @list_push_tail(%struct.DLL* noundef %2, %struct.DLL* noundef %18)
  br label %15, !llvm.loop !11

19:                                               ; preds = %15
  %20 = call i32 @list_empty(%struct.DLL* noundef %3)
  %.not5 = icmp eq i32 %20, 0
  br i1 %.not5, label %21, label %22

21:                                               ; preds = %19
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.3, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

22:                                               ; preds = %19
  call void @list_reverse(%struct.DLL* noundef %1)
  %23 = call %struct.DLL* @list_first(%struct.DLL* noundef %1)
  %24 = getelementptr inbounds %struct.DLL, %struct.DLL* %23, i64 0, i32 0
  %25 = load i32, i32* %24, align 8
  %.not7 = icmp eq i32 %25, 100
  br i1 %.not7, label %31, label %26

26:                                               ; preds = %22
  %27 = call %struct.DLL* @list_first(%struct.DLL* noundef %1)
  %28 = getelementptr inbounds %struct.DLL, %struct.DLL* %27, i64 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 noundef 100, i32 noundef %29) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

31:                                               ; preds = %22
  %32 = call %struct.DLL* @list_last(%struct.DLL* noundef %1)
  %33 = getelementptr inbounds %struct.DLL, %struct.DLL* %32, i64 0, i32 0
  %34 = load i32, i32* %33, align 8
  %.not8 = icmp eq i32 %34, 1
  br i1 %.not8, label %40, label %35

35:                                               ; preds = %31
  %36 = call %struct.DLL* @list_last(%struct.DLL* noundef %1)
  %37 = getelementptr inbounds %struct.DLL, %struct.DLL* %36, i64 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef 100, i32 noundef %38) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

40:                                               ; preds = %31
  %41 = call %struct.DLL* @list_first(%struct.DLL* noundef %2)
  %42 = getelementptr inbounds %struct.DLL, %struct.DLL* %41, i64 0, i32 0
  %43 = load i32, i32* %42, align 8
  %.not9 = icmp eq i32 %43, 100
  br i1 %.not9, label %49, label %44

44:                                               ; preds = %40
  %45 = call %struct.DLL* @list_first(%struct.DLL* noundef %2)
  %46 = getelementptr inbounds %struct.DLL, %struct.DLL* %45, i64 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 noundef 100, i32 noundef %47) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

49:                                               ; preds = %40
  %50 = call %struct.DLL* @list_last(%struct.DLL* noundef %2)
  %51 = getelementptr inbounds %struct.DLL, %struct.DLL* %50, i64 0, i32 0
  %52 = load i32, i32* %51, align 8
  %.not10 = icmp eq i32 %52, 1
  br i1 %.not10, label %58, label %53

53:                                               ; preds = %49
  %54 = call %struct.DLL* @list_last(%struct.DLL* noundef %2)
  %55 = getelementptr inbounds %struct.DLL, %struct.DLL* %54, i64 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 noundef 100, i32 noundef %56) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

58:                                               ; preds = %49
  %59 = call i32 @list_length(%struct.DLL* noundef %1)
  %.not11 = icmp eq i32 %59, 100
  br i1 %.not11, label %63, label %60

60:                                               ; preds = %58
  %61 = call i32 @list_length(%struct.DLL* noundef %1)
  %62 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 noundef 100, i32 noundef %61) #10
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

63:                                               ; preds = %58
  %64 = call i32 @list_equal(%struct.DLL* noundef %1, %struct.DLL* noundef %2)
  %.not12 = icmp eq i32 %64, 0
  br i1 %.not12, label %65, label %66

65:                                               ; preds = %63
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.4, i64 0, i64 0))
  call void @exit(i32 noundef 1) #11
  br label %UnifiedUnreachableBlock

66:                                               ; preds = %63
  %67 = call i32 @list_length(%struct.DLL* noundef %1)
  %68 = bitcast %struct.DLL* %1 to i8*
  call void @free(i8* noundef %68) #10
  %69 = bitcast %struct.DLL* %2 to i8*
  call void @free(i8* noundef %69) #10
  %70 = bitcast %struct.DLL* %3 to i8*
  call void @free(i8* noundef %70) #10
  ret i32 %67

UnifiedUnreachableBlock:                          ; preds = %65, %60, %53, %44, %35, %26, %21, %13, %5
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define internal %struct.DLL* @list_first(%struct.DLL* nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.DLL, %struct.DLL* %0, i64 0, i32 1
  %3 = load %struct.DLL*, %struct.DLL** %2, align 8
  ret %struct.DLL* %3
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** nocapture noundef readonly %1) #3 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds i8*, i8** %1, i64 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i32 @atoi(i8* noundef %6) #12
  br label %9

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ %7, %4 ], [ 3000000, %8 ]
  br label %11

11:                                               ; preds = %12, %9
  %.01 = phi i32 [ %10, %9 ], [ %13, %12 ]
  %.0 = phi i32 [ 0, %9 ], [ %14, %12 ]
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %15, label %12

12:                                               ; preds = %11
  %13 = add nsw i32 %.01, -1
  %14 = call i32 @test_lists()
  br label %11, !llvm.loop !12

15:                                               ; preds = %11
  %16 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %.0) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @atoi(i8* noundef) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind readonly willreturn }

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
