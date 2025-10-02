; ModuleID = './chomp.ll'
source_filename = "/project/test/llvm-test-suite/SingleSource/Benchmarks/McGill/chomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._play = type { i32, i32*, %struct._list*, %struct._play* }
%struct._list = type { i32*, %struct._list* }
%_wyvern_thunk_type.36 = type { i32* (%_wyvern_thunk_type.36*)*, i32*, i1, %struct._list* }

@ncol = dso_local global i32 0, align 4
@nrow = dso_local global i32 0, align 4
@game_tree = dso_local global %struct._play* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"For state :\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"  value = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"We get, in order :\0A\00", align 1
@wanted = dso_local global %struct._list* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Mode : 1 -> multiple first moves\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"       2 -> report game\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"       3 -> good positions\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" Selection : \00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Enter number of Columns       : \00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Enter Initial number of Rows : \00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Enter Maximum number of Rows : \00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"The winning initial move for %d x %d CHOMP is (%d,%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Enter number of Columns : \00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Enter number of Rows    : \00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"player %d plays at (%d,%d)\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"player %d loses\0A\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"ATTENTION : representation is as in a _data structure\0A\00", align 1
@str = private unnamed_addr constant [2 x i8] c")\00", align 1
@str.1 = private unnamed_addr constant [12 x i8] c"For state :\00", align 1
@str.2 = private unnamed_addr constant [19 x i8] c"We get, in order :\00", align 1
@str.3 = private unnamed_addr constant [33 x i8] c"Mode : 1 -> multiple first moves\00", align 1
@str.4 = private unnamed_addr constant [24 x i8] c"       2 -> report game\00", align 1
@str.5 = private unnamed_addr constant [27 x i8] c"       3 -> good positions\00", align 1
@str.6 = private unnamed_addr constant [54 x i8] c"ATTENTION : representation is as in a _data structure\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @copy_data(i32* nocapture noundef readonly %0) #0 {
  %2 = load i32, i32* @ncol, align 4
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = call noalias i8* @malloc(i64 noundef %4) #7
  %6 = bitcast i8* %5 to i32*
  br label %7

7:                                                ; preds = %9, %1
  %.0 = phi i32 [ %2, %1 ], [ %8, %9 ]
  %8 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %15, label %9

9:                                                ; preds = %7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds i32, i32* %0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds i32, i32* %6, i64 %13
  store i32 %12, i32* %14, align 4
  br label %7, !llvm.loop !4

15:                                               ; preds = %7
  ret i32* %6
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @next_data(i32* nocapture noundef %0) #2 {
  br label %2

2:                                                ; preds = %22, %1
  %.01 = phi i32 [ 0, %1 ], [ %.12, %22 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %22 ]
  %3 = load i32, i32* @ncol, align 4
  %.not = icmp eq i32 %.01, %3
  br i1 %.not, label %5, label %4

4:                                                ; preds = %2
  %.not3 = icmp eq i32 %.0, 0
  br label %5

5:                                                ; preds = %4, %2
  %6 = phi i1 [ false, %2 ], [ %.not3, %4 ]
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = sext i32 %.01 to i64
  %9 = getelementptr inbounds i32, i32* %0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @nrow, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = sext i32 %.01 to i64
  %15 = getelementptr inbounds i32, i32* %0, i64 %14
  store i32 0, i32* %15, align 4
  %16 = add nsw i32 %.01, 1
  br label %22

17:                                               ; preds = %7
  %18 = sext i32 %.01 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %13
  %.12 = phi i32 [ %16, %13 ], [ %.01, %17 ]
  %.1 = phi i32 [ %.0, %13 ], [ 1, %17 ]
  br label %2, !llvm.loop !6

23:                                               ; preds = %5
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @melt_data(i32* nocapture noundef %0, i32* nocapture noundef readonly %1) #2 {
  %3 = load i32, i32* @ncol, align 4
  br label %4

4:                                                ; preds = %20, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %20 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %21, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %6
  %15 = sext i32 %5 to i64
  %16 = getelementptr inbounds i32, i32* %1, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %5 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %14, %6
  br label %4, !llvm.loop !7

21:                                               ; preds = %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @equal_data(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1) #3 {
  %3 = load i32, i32* @ncol, align 4
  br label %4

4:                                                ; preds = %16, %2
  %.0 = phi i32 [ %3, %2 ], [ %5, %16 ]
  %5 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %14, label %6

6:                                                ; preds = %4
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds i32, i32* %0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br label %14

14:                                               ; preds = %6, %4
  %15 = phi i1 [ false, %4 ], [ %13, %6 ]
  br i1 %15, label %16, label %17

16:                                               ; preds = %14
  br label %4, !llvm.loop !8

17:                                               ; preds = %14
  %18 = icmp slt i32 %.0, 1
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @valid_data(i32* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %10, %1
  %.01.in = phi i32* [ @nrow, %1 ], [ %12, %10 ]
  %.0 = phi i32 [ 0, %1 ], [ %13, %10 ]
  %3 = load i32, i32* @ncol, align 4
  %.not = icmp eq i32 %.0, %3
  br i1 %.not, label %.loopexit, label %4

4:                                                ; preds = %2
  %.01 = load i32, i32* %.01.in, align 4
  %5 = zext i32 %.0 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, %.01
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  br label %14

10:                                               ; preds = %4
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !9

.loopexit:                                        ; preds = %2
  br label %14

14:                                               ; preds = %.loopexit, %9
  %15 = load i32, i32* @ncol, align 4
  %16 = icmp eq i32 %.0, %15
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_list(%struct._list* noundef %0) #0 {
  %.not = icmp eq %struct._list* %0, null
  br i1 %.not, label %8, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct._list, %struct._list* %0, i64 0, i32 1
  %4 = load %struct._list*, %struct._list** %3, align 8
  call void @dump_list(%struct._list* noundef %4)
  %5 = bitcast %struct._list* %0 to i8**
  %6 = load i8*, i8** %5, align 8
  call void @free(i8* noundef %6) #7
  %7 = bitcast %struct._list* %0 to i8*
  call void @free(i8* noundef %7) #7
  br label %8

8:                                                ; preds = %2, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_play(%struct._play* noundef %0) #0 {
  %.not = icmp eq %struct._play* %0, null
  br i1 %.not, label %11, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct._play, %struct._play* %0, i64 0, i32 3
  %4 = load %struct._play*, %struct._play** %3, align 8
  call void @dump_play(%struct._play* noundef %4)
  %5 = getelementptr inbounds %struct._play, %struct._play* %0, i64 0, i32 2
  %6 = load %struct._list*, %struct._list** %5, align 8
  call void @dump_list(%struct._list* noundef %6)
  %7 = getelementptr inbounds %struct._play, %struct._play* %0, i64 0, i32 1
  %8 = bitcast i32** %7 to i8**
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #7
  %10 = bitcast %struct._play* %0 to i8*
  call void @free(i8* noundef %10) #7
  br label %11

11:                                               ; preds = %2, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @get_value(i32* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %6, %1
  %.0.in = phi %struct._play** [ @game_tree, %1 ], [ %7, %6 ]
  %.0 = load %struct._play*, %struct._play** %.0.in, align 8
  %3 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 1
  %4 = load i32*, i32** %3, align 8
  %5 = call i32 @equal_data(i32* noundef %4, i32* noundef %0)
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 3
  br label %2, !llvm.loop !10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 0
  %10 = load i32, i32* %9, align 8
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_data(i32* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %.0 = phi i32 [ 0, %1 ], [ %5, %13 ]
  %3 = load i32, i32* @ncol, align 4
  %.not = icmp eq i32 %.0, %3
  br i1 %.not, label %14, label %4

4:                                                ; preds = %2
  %5 = add nuw nsw i32 %.0, 1
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 noundef %8) #7
  %10 = load i32, i32* @ncol, align 4
  %.not1 = icmp eq i32 %5, %10
  br i1 %.not1, label %13, label %11

11:                                               ; preds = %4
  %12 = call i32 @putchar(i32 noundef 44) #7
  br label %13

13:                                               ; preds = %11, %4
  br label %2, !llvm.loop !11

14:                                               ; preds = %2
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #4

declare dso_local i32 @putchar(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_move(i32* nocapture noundef readonly %0) #0 {
  %2 = call i32 @putchar(i32 noundef 40) #7
  call void @show_data(i32* noundef %0)
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([2 x i8], [2 x i8]* @str, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_list(%struct._list* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct._list* [ %0, %1 ], [ %7, %3 ]
  %.not = icmp eq %struct._list* %.0, null
  br i1 %.not, label %8, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct._list, %struct._list* %.0, i64 0, i32 0
  %5 = load i32*, i32** %4, align 8
  call void @show_move(i32* noundef %5)
  %6 = getelementptr inbounds %struct._list, %struct._list* %.0, i64 0, i32 1
  %7 = load %struct._list*, %struct._list** %6, align 8
  br label %2, !llvm.loop !12

8:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_play(%struct._play* noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %3, %1
  %.0 = phi %struct._play* [ %0, %1 ], [ %12, %3 ]
  %.not = icmp eq %struct._play* %.0, null
  br i1 %.not, label %13, label %3

3:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @str.1, i64 0, i64 0))
  %4 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 1
  %5 = load i32*, i32** %4, align 8
  call void @show_data(i32* noundef %5)
  %6 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef %7) #7
  %puts1 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.2, i64 0, i64 0))
  %9 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 2
  %10 = load %struct._list*, %struct._list** %9, align 8
  call void @show_list(%struct._list* noundef %10)
  %11 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 3
  %12 = load %struct._play*, %struct._play** %11, align 8
  br label %2, !llvm.loop !13

13:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @in_wanted(i32* nocapture noundef readonly %0) #3 {
  br label %2

2:                                                ; preds = %8, %1
  %.01.in = phi %struct._list** [ @wanted, %1 ], [ %9, %8 ]
  %.01 = load %struct._list*, %struct._list** %.01.in, align 8
  %.not = icmp eq %struct._list* %.01, null
  br i1 %.not, label %.loopexit, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct._list, %struct._list* %.01, i64 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @equal_data(i32* noundef %5, i32* noundef %0)
  %.not4 = icmp eq i32 %6, 0
  br i1 %.not4, label %8, label %7

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._list, %struct._list* %.01, i64 0, i32 1
  br label %2, !llvm.loop !14

.loopexit:                                        ; preds = %2
  br label %10

10:                                               ; preds = %.loopexit, %7
  %11 = icmp eq %struct._list* %.01, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %14

13:                                               ; preds = %10
  br label %14

14:                                               ; preds = %13, %12
  %.0 = phi i32 [ 0, %12 ], [ 1, %13 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @make_data(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, i32* @ncol, align 4
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 2
  %6 = call noalias i8* @malloc(i64 noundef %5) #7
  %7 = bitcast i8* %6 to i32*
  br label %8

8:                                                ; preds = %13, %2
  %.0 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %.not = icmp eq i32 %.0, %1
  br i1 %.not, label %15, label %9

9:                                                ; preds = %8
  %10 = load i32, i32* @nrow, align 4
  %11 = zext i32 %.0 to i64
  %12 = getelementptr inbounds i32, i32* %7, i64 %11
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %.0, 1
  br label %8, !llvm.loop !15

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %21, %15
  %.1 = phi i32 [ %.0, %15 ], [ %22, %21 ]
  %17 = load i32, i32* @ncol, align 4
  %.not1 = icmp eq i32 %.1, %17
  br i1 %.not1, label %23, label %18

18:                                               ; preds = %16
  %19 = zext i32 %.1 to i64
  %20 = getelementptr inbounds i32, i32* %7, i64 %19
  store i32 %0, i32* %20, align 4
  br label %21

21:                                               ; preds = %18
  %22 = add nuw nsw i32 %.1, 1
  br label %16, !llvm.loop !16

23:                                               ; preds = %16
  ret i32* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._list* @make_list(i32* nocapture noundef readonly %0, i32* nocapture noundef %1, i32* nocapture noundef %2) #0 {
  store i32 1, i32* %1, align 4
  %4 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %5 = bitcast i8* %4 to %struct._list*
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 1
  store %struct._list* null, %struct._list** %6, align 8
  br label %7

7:                                                ; preds = %59, %3
  %.04 = phi i32 [ 0, %3 ], [ %60, %59 ]
  %.0 = phi %struct._list* [ %5, %3 ], [ %.1, %59 ]
  %8 = load i32, i32* @nrow, align 4
  %.not = icmp eq i32 %.04, %8
  br i1 %.not, label %61, label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %56, %9
  %.15 = phi i32 [ %.04, %9 ], [ %.4, %56 ]
  %.01 = phi i32 [ 0, %9 ], [ %57, %56 ]
  %.1 = phi %struct._list* [ %.0, %9 ], [ %.2, %56 ]
  %11 = load i32, i32* @ncol, align 4
  %.not8 = icmp eq i32 %.01, %11
  br i1 %.not8, label %58, label %12

12:                                               ; preds = %10
  %13 = call i32* @make_data(i32 noundef %.15, i32 noundef %.01)
  call void @melt_data(i32* noundef %13, i32* noundef %0)
  %14 = call i32 @equal_data(i32* noundef %13, i32* noundef %0)
  %.not9 = icmp eq i32 %14, 0
  br i1 %.not9, label %15, label %46

15:                                               ; preds = %12
  %16 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %17 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %18 = bitcast %struct._list** %17 to i8**
  store i8* %16, i8** %18, align 8
  %19 = call i32* @copy_data(i32* noundef %13)
  %20 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %21 = load %struct._list*, %struct._list** %20, align 8
  %22 = getelementptr inbounds %struct._list, %struct._list* %21, i64 0, i32 0
  store i32* %19, i32** %22, align 8
  %23 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %24 = load %struct._list*, %struct._list** %23, align 8
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i64 0, i32 1
  store %struct._list* null, %struct._list** %25, align 8
  %26 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %27 = load %struct._list*, %struct._list** %26, align 8
  %28 = load i32, i32* %1, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = call i32 @get_value(i32* noundef %13)
  store i32 %31, i32* %1, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %2, align 4
  %.not10 = icmp eq i32 %33, 0
  br i1 %.not10, label %34, label %45

34:                                               ; preds = %32
  %35 = load i32, i32* %1, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* @ncol, align 4
  %39 = add nsw i32 %38, -1
  %40 = load i32, i32* @nrow, align 4
  %41 = add nsw i32 %40, -1
  %42 = call i32 @in_wanted(i32* noundef %13)
  %.not11 = icmp eq i32 %42, 0
  br i1 %.not11, label %44, label %43

43:                                               ; preds = %37
  store i32 2, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %34, %32
  %.26 = phi i32 [ %.15, %32 ], [ %41, %44 ], [ %.15, %34 ]
  %.12 = phi i32 [ %.01, %32 ], [ %39, %44 ], [ %.01, %34 ]
  br label %54

46:                                               ; preds = %12
  %47 = icmp eq i32 %.01, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* @nrow, align 4
  %50 = add nsw i32 %49, -1
  br label %51

51:                                               ; preds = %48, %46
  %.3 = phi i32 [ %50, %48 ], [ %.15, %46 ]
  %52 = load i32, i32* @ncol, align 4
  %53 = add nsw i32 %52, -1
  br label %54

54:                                               ; preds = %51, %45
  %.4 = phi i32 [ %.3, %51 ], [ %.26, %45 ]
  %.23 = phi i32 [ %53, %51 ], [ %.12, %45 ]
  %.2 = phi %struct._list* [ %.1, %51 ], [ %27, %45 ]
  %55 = bitcast i32* %13 to i8*
  call void @free(i8* noundef %55) #7
  br label %56

56:                                               ; preds = %54
  %57 = add nsw i32 %.23, 1
  br label %10, !llvm.loop !17

58:                                               ; preds = %10
  br label %59

59:                                               ; preds = %58
  %60 = add nsw i32 %.15, 1
  br label %7, !llvm.loop !18

61:                                               ; preds = %7
  %62 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 1
  %63 = load %struct._list*, %struct._list** %62, align 8
  call void @free(i8* noundef %4) #7
  %.not7 = icmp eq %struct._list* %63, null
  br i1 %.not7, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %1, align 4
  %66 = sub nsw i32 1, %65
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %64, %61
  ret %struct._list* %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._play* @make_play(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %5 = bitcast i8* %4 to %struct._play*
  store %struct._play* null, %struct._play** @game_tree, align 8
  %6 = call i32* @make_data(i32 noundef 0, i32 noundef 0)
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %48, %1
  %.01 = phi %struct._play* [ %5, %1 ], [ %.12, %48 ]
  %.0 = phi i32* [ %6, %1 ], [ %.2, %48 ]
  %10 = call i32 @next_data(i32* noundef %.0)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %49, label %11

11:                                               ; preds = %9
  %12 = call i32 @valid_data(i32* noundef %.0)
  %.not3 = icmp eq i32 %12, 0
  br i1 %.not3, label %48, label %13

13:                                               ; preds = %11
  %14 = call noalias dereferenceable_or_null(32) i8* @malloc(i64 noundef 32) #7
  %15 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %16 = bitcast %struct._play** %15 to i8**
  store i8* %14, i8** %16, align 8
  %17 = load %struct._play*, %struct._play** @game_tree, align 8
  %18 = icmp eq %struct._play* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %21 = load %struct._play*, %struct._play** %20, align 8
  store %struct._play* %21, %struct._play** @game_tree, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = call i32* @copy_data(i32* noundef %.0)
  %24 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %25 = load %struct._play*, %struct._play** %24, align 8
  %26 = getelementptr inbounds %struct._play, %struct._play* %25, i64 0, i32 1
  store i32* %23, i32** %26, align 8
  %27 = call %struct._list* @make_list(i32* noundef %.0, i32* noundef nonnull %3, i32* noundef nonnull %2)
  %28 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %29 = load %struct._play*, %struct._play** %28, align 8
  %30 = getelementptr inbounds %struct._play, %struct._play* %29, i64 0, i32 2
  store %struct._list* %27, %struct._list** %30, align 8
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %33 = load %struct._play*, %struct._play** %32, align 8
  %34 = getelementptr inbounds %struct._play, %struct._play* %33, i64 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %36 = load %struct._play*, %struct._play** %35, align 8
  %37 = getelementptr inbounds %struct._play, %struct._play* %36, i64 0, i32 3
  store %struct._play* null, %struct._play** %37, align 8
  %38 = getelementptr inbounds %struct._play, %struct._play* %.01, i64 0, i32 3
  %39 = load %struct._play*, %struct._play** %38, align 8
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %47

42:                                               ; preds = %22
  %43 = bitcast i32* %.0 to i8*
  call void @free(i8* noundef %43) #7
  %44 = load i32, i32* @nrow, align 4
  %45 = load i32, i32* @ncol, align 4
  %46 = call i32* @make_data(i32 noundef %44, i32 noundef %45)
  br label %47

47:                                               ; preds = %42, %22
  %.1 = phi i32* [ %46, %42 ], [ %.0, %22 ]
  br label %48

48:                                               ; preds = %47, %11
  %.12 = phi %struct._play* [ %39, %47 ], [ %.01, %11 ]
  %.2 = phi i32* [ %.1, %47 ], [ %.0, %11 ]
  br label %9, !llvm.loop !19

49:                                               ; preds = %9
  %50 = getelementptr inbounds %struct._play, %struct._play* %5, i64 0, i32 3
  %51 = load %struct._play*, %struct._play** %50, align 8
  call void @free(i8* noundef %4) #7
  ret %struct._play* %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_wanted(i32* nocapture noundef readonly %0) #0 {
  %2 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %3 = bitcast i8* %2 to %struct._list*
  %4 = getelementptr inbounds %struct._list, %struct._list* %3, i64 0, i32 1
  store %struct._list* null, %struct._list** %4, align 8
  br label %5

5:                                                ; preds = %39, %1
  %.01 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %.0 = phi %struct._list* [ %3, %1 ], [ %.1, %39 ]
  %6 = load i32, i32* @nrow, align 4
  %.not = icmp eq i32 %.01, %6
  br i1 %.not, label %41, label %7

7:                                                ; preds = %5
  br label %8

8:                                                ; preds = %36, %7
  %.04 = phi i32 [ 0, %7 ], [ %37, %36 ]
  %.12 = phi i32 [ %.01, %7 ], [ %.3, %36 ]
  %.1 = phi %struct._list* [ %.0, %7 ], [ %.2, %36 ]
  %9 = load i32, i32* @ncol, align 4
  %.not6 = icmp eq i32 %.04, %9
  br i1 %.not6, label %38, label %10

10:                                               ; preds = %8
  %11 = call i32* @make_data(i32 noundef %.12, i32 noundef %.04)
  call void @melt_data(i32* noundef %11, i32* noundef %0)
  %12 = call i32 @equal_data(i32* noundef %11, i32* noundef %0)
  %.not7 = icmp eq i32 %12, 0
  br i1 %.not7, label %13, label %26

13:                                               ; preds = %10
  %14 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %15 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %16 = bitcast %struct._list** %15 to i8**
  store i8* %14, i8** %16, align 8
  %17 = call i32* @copy_data(i32* noundef %11)
  %18 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %19 = load %struct._list*, %struct._list** %18, align 8
  %20 = getelementptr inbounds %struct._list, %struct._list* %19, i64 0, i32 0
  store i32* %17, i32** %20, align 8
  %21 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %22 = load %struct._list*, %struct._list** %21, align 8
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i64 0, i32 1
  store %struct._list* null, %struct._list** %23, align 8
  %24 = getelementptr inbounds %struct._list, %struct._list* %.1, i64 0, i32 1
  %25 = load %struct._list*, %struct._list** %24, align 8
  br label %34

26:                                               ; preds = %10
  %27 = icmp eq i32 %.04, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load i32, i32* @nrow, align 4
  %30 = add nsw i32 %29, -1
  br label %31

31:                                               ; preds = %28, %26
  %.23 = phi i32 [ %30, %28 ], [ %.12, %26 ]
  %32 = load i32, i32* @ncol, align 4
  %33 = add nsw i32 %32, -1
  br label %34

34:                                               ; preds = %31, %13
  %.15 = phi i32 [ %33, %31 ], [ %.04, %13 ]
  %.3 = phi i32 [ %.23, %31 ], [ %.12, %13 ]
  %.2 = phi %struct._list* [ %.1, %31 ], [ %25, %13 ]
  %35 = bitcast i32* %11 to i8*
  call void @free(i8* noundef %35) #7
  br label %36

36:                                               ; preds = %34
  %37 = add nsw i32 %.15, 1
  br label %8, !llvm.loop !20

38:                                               ; preds = %8
  br label %39

39:                                               ; preds = %38
  %40 = add nsw i32 %.12, 1
  br label %5, !llvm.loop !21

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct._list, %struct._list* %3, i64 0, i32 1
  %43 = load %struct._list*, %struct._list** %42, align 8
  call void @free(i8* noundef %2) #7
  store %struct._list* %43, %struct._list** @wanted, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @get_good_move(%struct._list* noundef readonly %0) #0 {
  %_wyvern_thunk_alloca = alloca %_wyvern_thunk_type.36, align 8
  %2 = icmp eq %struct._list* %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  br label %20

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %15, %4
  %.01 = phi %struct._list* [ %0, %4 ], [ %17, %15 ]
  %6 = getelementptr inbounds %struct._list, %struct._list* %.01, i64 0, i32 1
  %7 = load %struct._list*, %struct._list** %6, align 8
  %.not = icmp eq %struct._list* %7, null
  br i1 %.not, label %13, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct._list, %struct._list* %.01, i64 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @get_value(i32* noundef %10)
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi i1 [ false, %5 ], [ %12, %8 ]
  br i1 %14, label %15, label %18

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct._list, %struct._list* %.01, i64 0, i32 1
  %17 = load %struct._list*, %struct._list** %16, align 8
  br label %5, !llvm.loop !22

18:                                               ; preds = %13
  %_wyvern_thunk_fptr_gep = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunk_alloca, i64 0, i32 0
  store i32* (%_wyvern_thunk_type.36*)* @_wyvern_slice_memo_get_good_move_985263324, i32* (%_wyvern_thunk_type.36*)** %_wyvern_thunk_fptr_gep, align 8
  %_wyvern_thunk_flag_gep = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunk_alloca, i64 0, i32 2
  store i1 false, i1* %_wyvern_thunk_flag_gep, align 8
  %_wyvern_thunk_arg_gep_ = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunk_alloca, i64 0, i32 3
  store %struct._list* %0, %struct._list** %_wyvern_thunk_arg_gep_, align 8
  %19 = call i32* @_wyvern_calleeclone_copy_data_0565445300(%_wyvern_thunk_type.36* noundef nonnull %_wyvern_thunk_alloca)
  br label %20

20:                                               ; preds = %18, %3
  %.0 = phi i32* [ null, %3 ], [ %19, %18 ]
  ret i32* %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @get_winning_move(%struct._play* nocapture noundef readonly %0) #0 {
  br label %2

2:                                                ; preds = %5, %1
  %.0 = phi %struct._play* [ %0, %1 ], [ %7, %5 ]
  %3 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 3
  %4 = load %struct._play*, %struct._play** %3, align 8
  %.not = icmp eq %struct._play* %4, null
  br i1 %.not, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 3
  %7 = load %struct._play*, %struct._play** %6, align 8
  br label %2, !llvm.loop !23

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 2
  %10 = load %struct._list*, %struct._list** %9, align 8
  %11 = call i32* @get_good_move(%struct._list* noundef %10)
  ret i32* %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct._list* @where(i32* nocapture noundef readonly %0, %struct._play* nocapture noundef readonly %1) #3 {
  br label %3

3:                                                ; preds = %7, %2
  %.0 = phi %struct._play* [ %1, %2 ], [ %9, %7 ]
  %4 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @equal_data(i32* noundef %5, i32* noundef %0)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 3
  %9 = load %struct._play*, %struct._play** %8, align 8
  br label %3, !llvm.loop !24

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct._play, %struct._play* %.0, i64 0, i32 2
  %12 = load %struct._list*, %struct._list** %11, align 8
  ret %struct._list* %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @get_real_move(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32* nocapture noundef writeonly %2, i32* nocapture noundef %3) #2 {
  br label %5

5:                                                ; preds = %13, %4
  %storemerge = phi i32 [ 0, %4 ], [ %15, %13 ]
  store i32 %storemerge, i32* %3, align 4
  %6 = sext i32 %storemerge to i64
  %7 = getelementptr inbounds i32, i32* %0, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %storemerge to i64
  %10 = getelementptr inbounds i32, i32* %1, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  br label %5, !llvm.loop !25

16:                                               ; preds = %5
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %2, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.3, i64 0, i64 0))
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @str.4, i64 0, i64 0))
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @str.5, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)) #7
  store i32 2, i32* %1, align 4
  switch i32 2, label %36 [
    i32 1, label %4
    i32 2, label %9
    i32 3, label %30
  ]

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %7, %4
  br i1 undef, label %8, label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  br label %5, !llvm.loop !26

8:                                                ; preds = %5
  br label %36

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0)) #7
  store i32 7, i32* @ncol, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0)) #7
  store i32 8, i32* @nrow, align 4
  %12 = call %struct._play* @make_play(i32 noundef 1)
  %13 = load i32, i32* @nrow, align 4
  %14 = load i32, i32* @ncol, align 4
  %15 = call i32* @make_data(i32 noundef %13, i32 noundef %14)
  br label %16

16:                                               ; preds = %26, %9
  %.02 = phi i32* [ %15, %9 ], [ %19, %26 ]
  %.01 = phi i32 [ 0, %9 ], [ %.1, %26 ]
  %.not6 = icmp eq i32* %.02, null
  br i1 %.not6, label %27, label %17

17:                                               ; preds = %16
  %18 = call %struct._list* @where(i32* noundef nonnull %.02, %struct._play* noundef %12)
  %19 = call i32* @get_good_move(%struct._list* noundef %18)
  %.not7 = icmp eq i32* %19, null
  br i1 %.not7, label %26, label %20

20:                                               ; preds = %17
  call void @get_real_move(i32* noundef nonnull %19, i32* noundef nonnull %.02, i32* noundef nonnull %1, i32* noundef nonnull %2)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 noundef %.01, i32 noundef %21, i32 noundef %22) #7
  %24 = sub nsw i32 1, %.01
  %25 = bitcast i32* %.02 to i8*
  call void @free(i8* noundef %25) #7
  br label %26

26:                                               ; preds = %20, %17
  %.1 = phi i32 [ %24, %20 ], [ %.01, %17 ]
  br label %16, !llvm.loop !27

27:                                               ; preds = %16
  call void @dump_play(%struct._play* noundef %12)
  %28 = sub nsw i32 1, %.01
  %29 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i32 noundef %28) #7
  br label %36

30:                                               ; preds = %0
  br label %31

31:                                               ; preds = %34, %30
  br i1 undef, label %35, label %32

32:                                               ; preds = %31
  br i1 undef, label %33, label %34

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %32
  br label %31, !llvm.loop !28

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %27, %8, %0
  ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8* noundef, ...) #4

; Function Attrs: nounwind readonly willreturn
define i32* @_wyvern_slice_memo_get_good_move_985263324(%_wyvern_thunk_type.36* %_wyvern_thunkptr) #5 {
_wyvern_memo_entry:
  %_wyvern_memo_val_addr = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunkptr, i64 0, i32 1
  %_wyvern_memo_flag_addr = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunkptr, i64 0, i32 2
  %_wyvern_memo_flag = load i1, i1* %_wyvern_memo_flag_addr, align 1
  br i1 %_wyvern_memo_flag, label %_wyvern_memo_ret, label %sliceclone_

_wyvern_memo_ret:                                 ; preds = %_wyvern_memo_entry
  %_wyvern_memo_val = load i32*, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %_wyvern_memo_val

sliceclone_:                                      ; preds = %_wyvern_memo_entry
  %_wyvern_arg_addr_ = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunkptr, i64 0, i32 3
  %_wyvern_arg_ = load %struct._list*, %struct._list** %_wyvern_arg_addr_, align 8
  %0 = icmp eq %struct._list* %_wyvern_arg_, null
  br i1 %0, label %_wyvern_unreachable, label %sliceclone_2

sliceclone_1:                                     ; preds = %sliceclone_3
  %1 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 0
  %2 = load i32*, i32** %1, align 8
  %3 = call i32 @get_value(i32* noundef %2)
  %4 = icmp ne i32 %3, 0
  br label %sliceclone_4

sliceclone_2:                                     ; preds = %sliceclone_
  br label %sliceclone_3

sliceclone_3:                                     ; preds = %sliceclone_5, %sliceclone_2
  %5 = phi %struct._list* [ %_wyvern_arg_, %sliceclone_2 ], [ %10, %sliceclone_5 ]
  %6 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 1
  %7 = load %struct._list*, %struct._list** %6, align 8
  %.not = icmp eq %struct._list* %7, null
  br i1 %.not, label %sliceclone_4, label %sliceclone_1

sliceclone_4:                                     ; preds = %sliceclone_3, %sliceclone_1
  %8 = phi i1 [ false, %sliceclone_3 ], [ %4, %sliceclone_1 ]
  br i1 %8, label %sliceclone_5, label %sliceclone_6

sliceclone_5:                                     ; preds = %sliceclone_4
  %9 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 1
  %10 = load %struct._list*, %struct._list** %9, align 8
  br label %sliceclone_3

sliceclone_6:                                     ; preds = %sliceclone_4
  %11 = getelementptr inbounds %struct._list, %struct._list* %5, i64 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i1 true, i1* %_wyvern_memo_flag_addr, align 1
  store i32* %12, i32** %_wyvern_memo_val_addr, align 8
  ret i32* %12

_wyvern_unreachable:                              ; preds = %sliceclone_
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @_wyvern_calleeclone_copy_data_0565445300(%_wyvern_thunk_type.36* noundef %_wyvern_thunkptr) #0 {
  %1 = load i32, i32* @ncol, align 4
  %2 = sext i32 %1 to i64
  %3 = shl nsw i64 %2, 2
  %4 = call noalias i8* @malloc(i64 noundef %3) #7
  %5 = bitcast i8* %4 to i32*
  br label %6

6:                                                ; preds = %8, %0
  %.0 = phi i32 [ %1, %0 ], [ %7, %8 ]
  %7 = add nsw i32 %.0, -1
  %.not = icmp eq i32 %.0, 0
  br i1 %.not, label %14, label %8

8:                                                ; preds = %6
  %9 = sext i32 %7 to i64
  %_wyvern_thunk_fptr_addr = getelementptr inbounds %_wyvern_thunk_type.36, %_wyvern_thunk_type.36* %_wyvern_thunkptr, i64 0, i32 0
  %_wyvern_thunkfptr = load i32* (%_wyvern_thunk_type.36*)*, i32* (%_wyvern_thunk_type.36*)** %_wyvern_thunk_fptr_addr, align 8
  %_wyvern_thunkcall = call i32* %_wyvern_thunkfptr(%_wyvern_thunk_type.36* %_wyvern_thunkptr) #7
  %10 = getelementptr inbounds i32, i32* %_wyvern_thunkcall, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i32, i32* %5, i64 %12
  store i32 %11, i32* %13, align 4
  br label %6, !llvm.loop !4

14:                                               ; preds = %6
  ret i32* %5
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
