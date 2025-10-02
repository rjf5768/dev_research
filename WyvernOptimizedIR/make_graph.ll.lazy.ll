; ModuleID = './make_graph.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/em3d/make_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_t = type { double*, %struct.node_t*, %struct.node_t**, double**, double*, i32, i32 }
%struct.table_t = type { [1 x %struct.node_t**], [1 x %struct.node_t**] }
%struct.graph_t = type { [1 x %struct.node_t*], [1 x %struct.node_t*] }

@.str = private unnamed_addr constant [19 x i8] c"Assertion failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Uncaught malloc error\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Error! on dest %d @ %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Error! no to_nodes filed!\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Help! no from count (from_count=%d) \0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Help!!\0A\00", align 1
@n_nodes = dso_local global i32 0, align 4
@d_nodes = dso_local global i32 0, align 4
@local_p = dso_local global i32 0, align 4
@NumMisses = dso_local global i32 0, align 4
@NumNodes = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"making tables \0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"making neighbors\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"updating from and coeffs\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"filling from fields\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"localizing coeffs, from_nodes\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"cleanup for return now\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Clearing NumMisses\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Returning\0A\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Assertion failure\00", align 1
@str.1 = private unnamed_addr constant [22 x i8] c"Uncaught malloc error\00", align 1
@str.2 = private unnamed_addr constant [26 x i8] c"Error! no to_nodes filed!\00", align 1
@str.3 = private unnamed_addr constant [7 x i8] c"Help!!\00", align 1
@str.4 = private unnamed_addr constant [15 x i8] c"making tables \00", align 1
@str.5 = private unnamed_addr constant [17 x i8] c"making neighbors\00", align 1
@str.6 = private unnamed_addr constant [25 x i8] c"updating from and coeffs\00", align 1
@str.7 = private unnamed_addr constant [20 x i8] c"filling from fields\00", align 1
@str.8 = private unnamed_addr constant [30 x i8] c"localizing coeffs, from_nodes\00", align 1
@str.9 = private unnamed_addr constant [23 x i8] c"cleanup for return now\00", align 1
@str.10 = private unnamed_addr constant [19 x i8] c"Clearing NumMisses\00", align 1
@str.11 = private unnamed_addr constant [10 x i8] c"Returning\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.node_t** @make_table(i32 noundef %0, i32 noundef %1) #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = call noalias i8* @malloc(i64 noundef %4) #7
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %6, label %7

6:                                                ; preds = %2
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @str, i64 0, i64 0))
  call void @exit(i32 noundef -1) #8
  unreachable

7:                                                ; preds = %2
  %8 = bitcast i8* %5 to %struct.node_t**
  ret %struct.node_t** %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_table(%struct.node_t** nocapture noundef writeonly %0, double* noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #7
  %6 = bitcast i8* %5 to %struct.node_t*
  %7 = bitcast %struct.node_t** %0 to i8**
  store i8* %5, i8** %7, align 8
  %8 = call double @gen_uniform_double() #7
  store double %8, double* %1, align 8
  %9 = getelementptr inbounds %struct.node_t, %struct.node_t* %6, i64 0, i32 0
  store double* %1, double** %9, align 8
  %10 = getelementptr inbounds %struct.node_t, %struct.node_t* %6, i64 0, i32 5
  store i32 0, i32* %10, align 8
  br label %11

11:                                               ; preds = %24, %4
  %.03 = phi %struct.node_t* [ undef, %4 ], [ %15, %24 ]
  %.02 = phi %struct.node_t* [ %6, %4 ], [ %15, %24 ]
  %.pn = phi double* [ %1, %4 ], [ %.01, %24 ]
  %.0 = phi i32 [ 1, %4 ], [ %25, %24 ]
  %.01 = getelementptr inbounds double, double* %.pn, i64 1
  %12 = icmp slt i32 %.0, %2
  br i1 %12, label %13, label %26

13:                                               ; preds = %11
  %14 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #7
  %15 = bitcast i8* %14 to %struct.node_t*
  %16 = call double @gen_uniform_double() #7
  store double %16, double* %.01, align 8
  %17 = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i64 0, i32 0
  store double* %.01, double** %17, align 8
  %18 = getelementptr inbounds %struct.node_t, %struct.node_t* %15, i64 0, i32 5
  store i32 0, i32* %18, align 8
  %19 = zext i32 %.0 to i64
  %20 = getelementptr inbounds %struct.node_t*, %struct.node_t** %0, i64 %19
  %21 = bitcast %struct.node_t** %20 to i8**
  store i8* %14, i8** %21, align 8
  %22 = getelementptr inbounds %struct.node_t, %struct.node_t* %.02, i64 0, i32 1
  %23 = bitcast %struct.node_t** %22 to i8**
  store i8* %14, i8** %23, align 8
  br label %24

24:                                               ; preds = %13
  %25 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !4

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 1
  store %struct.node_t* null, %struct.node_t** %27, align 8
  ret void
}

declare dso_local double @gen_uniform_double() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_neighbors(%struct.node_t* noundef %0, %struct.node_t*** nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  br label %7

7:                                                ; preds = %67, %6
  %.03 = phi %struct.node_t* [ %0, %6 ], [ %69, %67 ]
  %.not = icmp eq %struct.node_t* %.03, null
  br i1 %.not, label %70, label %8

8:                                                ; preds = %7
  %9 = sext i32 %3 to i64
  %10 = shl nsw i64 %9, 3
  %11 = call noalias i8* @malloc(i64 noundef %10) #7
  %12 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 2
  %13 = bitcast %struct.node_t*** %12 to i8**
  store i8* %11, i8** %13, align 8
  %.not10 = icmp eq i8* %11, null
  br i1 %.not10, label %14, label %15

14:                                               ; preds = %8
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([22 x i8], [22 x i8]* @str.1, i64 0, i64 0))
  call void @exit(i32 noundef 0) #8
  br label %UnifiedUnreachableBlock

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %64, %15
  %.02 = phi i32 [ 0, %15 ], [ %65, %64 ]
  %17 = icmp slt i32 %.02, %3
  br i1 %17, label %18, label %66

18:                                               ; preds = %16
  br label %19

19:                                               ; preds = %49, %18
  %20 = call i32 @gen_number(i32 noundef %2) #7
  %21 = call i32 @check_percent(i32 noundef %4) #7
  %.not11 = icmp eq i32 %21, 0
  br i1 %.not11, label %23, label %22

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = call i32 @gen_signed_number(i32 noundef 1) #7
  br label %25

25:                                               ; preds = %23, %22
  %.0 = phi i32 [ %5, %22 ], [ 0, %23 ]
  %26 = sext i32 %.0 to i64
  %27 = getelementptr inbounds %struct.node_t**, %struct.node_t*** %1, i64 %26
  %28 = load %struct.node_t**, %struct.node_t*** %27, align 8
  %29 = sext i32 %20 to i64
  %30 = getelementptr inbounds %struct.node_t*, %struct.node_t** %28, i64 %29
  %31 = load %struct.node_t*, %struct.node_t** %30, align 8
  %.not12 = icmp eq %struct.node_t* %31, null
  br i1 %.not12, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 noundef %20, i32 noundef %.0) #7
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %46, %34
  %.01 = phi i32 [ 0, %34 ], [ %47, %46 ]
  %36 = icmp ult i32 %.01, %.02
  br i1 %36, label %37, label %.loopexit

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 2
  %39 = load %struct.node_t**, %struct.node_t*** %38, align 8
  %40 = zext i32 %.01 to i64
  %41 = getelementptr inbounds %struct.node_t*, %struct.node_t** %39, i64 %40
  %42 = load %struct.node_t*, %struct.node_t** %41, align 8
  %43 = icmp eq %struct.node_t* %31, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %48

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  %47 = add nuw nsw i32 %.01, 1
  br label %35, !llvm.loop !6

.loopexit:                                        ; preds = %35
  br label %48

48:                                               ; preds = %.loopexit, %44
  br label %49

49:                                               ; preds = %48
  %50 = icmp ult i32 %.01, %.02
  br i1 %50, label %19, label %51, !llvm.loop !7

51:                                               ; preds = %49
  br i1 true, label %52, label %55

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 2
  %54 = load %struct.node_t**, %struct.node_t*** %53, align 8
  %.not14 = icmp eq %struct.node_t** %54, null
  br i1 %.not14, label %55, label %56

55:                                               ; preds = %52, %51
  %puts13 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @str.2, i64 0, i64 0))
  call void @exit(i32 noundef 1) #8
  br label %UnifiedUnreachableBlock

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 2
  %58 = load %struct.node_t**, %struct.node_t*** %57, align 8
  %59 = zext i32 %.02 to i64
  %60 = getelementptr inbounds %struct.node_t*, %struct.node_t** %58, i64 %59
  store %struct.node_t* %31, %struct.node_t** %60, align 8
  %61 = getelementptr inbounds %struct.node_t, %struct.node_t* %31, i64 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %56
  %65 = add nuw nsw i32 %.02, 1
  br label %16, !llvm.loop !8

66:                                               ; preds = %16
  br label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.node_t, %struct.node_t* %.03, i64 0, i32 1
  %69 = load %struct.node_t*, %struct.node_t** %68, align 8
  br label %7, !llvm.loop !9

70:                                               ; preds = %7
  ret void

UnifiedUnreachableBlock:                          ; preds = %55, %32, %14
  unreachable
}

declare dso_local i32 @gen_number(i32 noundef) #2

declare dso_local i32 @check_percent(i32 noundef) #2

declare dso_local i32 @gen_signed_number(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @update_from_coeffs(%struct.node_t* noundef %0) #0 {
  br label %2

2:                                                ; preds = %29, %1
  %.0 = phi %struct.node_t* [ %0, %1 ], [ %31, %29 ]
  %.not = icmp eq %struct.node_t* %.0, null
  br i1 %.not, label %32, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 noundef %5) #7
  %9 = call noalias dereferenceable_or_null(160) i8* @malloc(i64 noundef 160) #7
  %10 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 3
  %11 = bitcast double*** %10 to i8**
  store i8* %9, i8** %11, align 8
  %12 = call noalias dereferenceable_or_null(160) i8* @malloc(i64 noundef 160) #7
  %13 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 4
  %14 = bitcast double** %13 to i8**
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 6
  store i32 0, i32* %15, align 4
  br label %28

16:                                               ; preds = %3
  %17 = sext i32 %5 to i64
  %18 = shl nsw i64 %17, 3
  %19 = call noalias i8* @malloc(i64 noundef %18) #7
  %20 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 3
  %21 = bitcast double*** %20 to i8**
  store i8* %19, i8** %21, align 8
  %22 = sext i32 %5 to i64
  %23 = shl nsw i64 %22, 3
  %24 = call noalias i8* @malloc(i64 noundef %23) #7
  %25 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 4
  %26 = bitcast double** %25 to i8**
  store i8* %24, i8** %26, align 8
  %27 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 6
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %16, %7
  br label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 1
  %31 = load %struct.node_t*, %struct.node_t** %30, align 8
  br label %2, !llvm.loop !10

32:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_from_fields(%struct.node_t* noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %36, %2
  %.02 = phi %struct.node_t* [ %0, %2 ], [ %38, %36 ]
  %.not = icmp eq %struct.node_t* %.02, null
  br i1 %.not, label %39, label %4

4:                                                ; preds = %3
  br label %5

5:                                                ; preds = %33, %4
  %.01 = phi i32 [ 0, %4 ], [ %34, %33 ]
  %6 = icmp slt i32 %.01, %1
  br i1 %6, label %7, label %35

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.node_t, %struct.node_t* %.02, i64 0, i32 2
  %9 = load %struct.node_t**, %struct.node_t*** %8, align 8
  %10 = zext i32 %.01 to i64
  %11 = getelementptr inbounds %struct.node_t*, %struct.node_t** %9, i64 %10
  %12 = load %struct.node_t*, %struct.node_t** %11, align 8
  %13 = getelementptr inbounds %struct.node_t, %struct.node_t* %.02, i64 0, i32 0
  %14 = load double*, double** %13, align 8
  %.not3 = icmp eq %struct.node_t* %12, null
  br i1 %.not3, label %15, label %16

15:                                               ; preds = %7
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i64 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i64 0, i32 3
  %21 = load double**, double*** %20, align 8
  %.not4 = icmp eq double** %21, null
  br i1 %.not4, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i64 0, i32 3
  %24 = load double**, double*** %23, align 8
  br label %25

25:                                               ; preds = %22, %16
  %.0 = phi double** [ %21, %16 ], [ %24, %22 ]
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds double*, double** %.0, i64 %26
  store double* %14, double** %27, align 8
  %28 = call double @gen_uniform_double() #7
  %29 = getelementptr inbounds %struct.node_t, %struct.node_t* %12, i64 0, i32 4
  %30 = load double*, double** %29, align 8
  %31 = sext i32 %18 to i64
  %32 = getelementptr inbounds double, double* %30, i64 %31
  store double %28, double* %32, align 8
  br label %33

33:                                               ; preds = %25
  %34 = add nuw nsw i32 %.01, 1
  br label %5, !llvm.loop !11

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.node_t, %struct.node_t* %.02, i64 0, i32 1
  %38 = load %struct.node_t*, %struct.node_t** %37, align 8
  br label %3, !llvm.loop !12

39:                                               ; preds = %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @localize_local(%struct.node_t* noundef %0) #4 {
  br label %2

2:                                                ; preds = %4, %1
  %.0 = phi %struct.node_t* [ %0, %1 ], [ %6, %4 ]
  %.not = icmp eq %struct.node_t* %.0, null
  br i1 %.not, label %7, label %3

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.node_t, %struct.node_t* %.0, i64 0, i32 1
  %6 = load %struct.node_t*, %struct.node_t** %5, align 8
  br label %2, !llvm.loop !13

7:                                                ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_tables(%struct.table_t* nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %1, 793
  call void @init_random(i32 noundef %3) #7
  %4 = load i32, i32* @n_nodes, align 4
  %5 = sext i32 %4 to i64
  %6 = shl nsw i64 %5, 3
  %7 = call noalias i8* @malloc(i64 noundef %6) #7
  %8 = bitcast i8* %7 to double*
  %9 = call %struct.node_t** @make_table(i32 noundef %4, i32 noundef 0)
  %10 = load i32, i32* @n_nodes, align 4
  call void @fill_table(%struct.node_t** noundef %9, double* noundef %8, i32 noundef %10, i32 noundef 0)
  %11 = load i32, i32* @n_nodes, align 4
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = call noalias i8* @malloc(i64 noundef %13) #7
  %15 = bitcast i8* %14 to double*
  %16 = call %struct.node_t** @make_table(i32 noundef %11, i32 noundef 0)
  %17 = load i32, i32* @n_nodes, align 4
  call void @fill_table(%struct.node_t** noundef %16, double* noundef %15, i32 noundef %17, i32 noundef 0)
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 %18
  store %struct.node_t** %16, %struct.node_t*** %19, align 8
  %20 = sext i32 %1 to i64
  %21 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 %20
  store %struct.node_t** %9, %struct.node_t*** %21, align 8
  ret void
}

declare dso_local void @init_random(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @make_all_neighbors(%struct.table_t* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %1, 39
  call void @init_random(i32 noundef %3) #7
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 %4
  %6 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %7 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 0
  %8 = load %struct.node_t*, %struct.node_t** %6, align 8
  %9 = load i32, i32* @n_nodes, align 4
  %10 = load i32, i32* @d_nodes, align 4
  %11 = load i32, i32* @local_p, align 4
  call void @make_neighbors(%struct.node_t* noundef %8, %struct.node_t*** noundef %7, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %1)
  %12 = sext i32 %1 to i64
  %13 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 %12
  %14 = load %struct.node_t**, %struct.node_t*** %13, align 8
  %15 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 0
  %16 = load %struct.node_t*, %struct.node_t** %14, align 8
  %17 = load i32, i32* @n_nodes, align 4
  %18 = load i32, i32* @d_nodes, align 4
  %19 = load i32, i32* @local_p, align 4
  call void @make_neighbors(%struct.node_t* noundef %16, %struct.node_t*** noundef nonnull %15, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @update_all_from_coeffs(%struct.table_t* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 %3
  %5 = load %struct.node_t**, %struct.node_t*** %4, align 8
  %6 = load %struct.node_t*, %struct.node_t** %5, align 8
  call void @update_from_coeffs(%struct.node_t* noundef %6)
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 %7
  %9 = load %struct.node_t**, %struct.node_t*** %8, align 8
  %10 = load %struct.node_t*, %struct.node_t** %9, align 8
  call void @update_from_coeffs(%struct.node_t* noundef %10)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fill_all_from_fields(%struct.table_t* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %1, 17
  call void @init_random(i32 noundef %3) #7
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 %4
  %6 = load %struct.node_t**, %struct.node_t*** %5, align 8
  %7 = load %struct.node_t*, %struct.node_t** %6, align 8
  %8 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* noundef %7, i32 noundef %8)
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 %9
  %11 = load %struct.node_t**, %struct.node_t*** %10, align 8
  %12 = load %struct.node_t*, %struct.node_t** %11, align 8
  %13 = load i32, i32* @d_nodes, align 4
  call void @fill_from_fields(%struct.node_t* noundef %12, i32 noundef %13)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @localize(%struct.table_t* nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 1, i64 %3
  %5 = load %struct.node_t**, %struct.node_t*** %4, align 8
  %6 = load %struct.node_t*, %struct.node_t** %5, align 8
  call void @localize_local(%struct.node_t* noundef %6)
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.table_t, %struct.table_t* %0, i64 0, i32 0, i64 %7
  %9 = load %struct.node_t**, %struct.node_t*** %8, align 8
  %10 = load %struct.node_t*, %struct.node_t** %9, align 8
  call void @localize_local(%struct.node_t* noundef %10)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @clear_nummiss(%struct.table_t* nocapture noundef readnone %0, i32 noundef %1) #5 {
  store i32 0, i32* @NumMisses, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @do_all(%struct.table_t* noundef %0, i32 noundef %1, i32 noundef %2, void (%struct.table_t*, i32)* noundef %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %2, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %5
  %8 = sdiv i32 %2, 2
  %9 = add nsw i32 %8, %1
  %10 = sdiv i32 %2, 2
  call void @do_all(%struct.table_t* noundef %0, i32 noundef %9, i32 noundef %10, void (%struct.table_t*, i32)* noundef %3, i32 noundef %4)
  %11 = sdiv i32 %2, 2
  call void @do_all(%struct.table_t* noundef %0, i32 noundef %1, i32 noundef %11, void (%struct.table_t*, i32)* noundef %3, i32 noundef %4)
  br label %13

12:                                               ; preds = %5
  call void %3(%struct.table_t* noundef %0, i32 noundef %1) #7
  br label %13

13:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias %struct.graph_t* @initialize_graph() #0 {
  %1 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %2 = bitcast i8* %1 to %struct.table_t*
  %3 = call noalias dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #7
  %4 = bitcast i8* %3 to %struct.graph_t*
  %5 = load i32, i32* @NumNodes, align 4
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %6, 3
  %8 = select i1 %7, i32 %5, i32 0
  %puts = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @str.4, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @make_tables, i32 noundef %8)
  %puts2 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @str.5, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @make_all_neighbors, i32 noundef %8)
  %puts3 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @str.6, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @update_all_from_coeffs, i32 noundef %8)
  %puts4 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str.7, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @fill_all_from_fields, i32 noundef %8)
  %puts5 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @str.8, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @localize, i32 noundef %8)
  %9 = load i32, i32* @NumNodes, align 4
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 3
  %12 = select i1 %11, i32 %9, i32 0
  %puts6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @str.9, i64 0, i64 0))
  br label %13

13:                                               ; preds = %73, %0
  %.0 = phi i32 [ 0, %0 ], [ %74, %73 ]
  %14 = load i32, i32* @NumNodes, align 4
  %15 = icmp slt i32 %.0, %14
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = mul nsw i32 %.0, %12
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 0, i64 %18
  %20 = load %struct.node_t**, %struct.node_t*** %19, align 8
  %21 = load %struct.node_t*, %struct.node_t** %20, align 8
  %22 = zext i32 %.0 to i64
  %23 = getelementptr inbounds %struct.graph_t, %struct.graph_t* %4, i64 0, i32 0, i64 %22
  store %struct.node_t* %21, %struct.node_t** %23, align 8
  %24 = mul nsw i32 %.0, %12
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 1, i64 %25
  %27 = load %struct.node_t**, %struct.node_t*** %26, align 8
  %28 = load %struct.node_t*, %struct.node_t** %27, align 8
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds %struct.graph_t, %struct.graph_t* %4, i64 0, i32 1, i64 %29
  store %struct.node_t* %28, %struct.node_t** %30, align 8
  br label %31

31:                                               ; preds = %70, %16
  %.01 = phi i32 [ 1, %16 ], [ %71, %70 ]
  %32 = icmp slt i32 %.01, %12
  br i1 %32, label %33, label %72

33:                                               ; preds = %31
  %34 = mul nsw i32 %.0, %12
  %35 = add nsw i32 %34, %.01
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 0, i64 %37
  %39 = load %struct.node_t**, %struct.node_t*** %38, align 8
  %40 = load i32, i32* @n_nodes, align 4
  %41 = add nsw i32 %40, -1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.node_t*, %struct.node_t** %39, i64 %42
  %44 = load %struct.node_t*, %struct.node_t** %43, align 8
  %45 = mul nsw i32 %.0, %12
  %46 = add nsw i32 %45, %.01
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 0, i64 %47
  %49 = load %struct.node_t**, %struct.node_t*** %48, align 8
  %50 = load %struct.node_t*, %struct.node_t** %49, align 8
  %51 = getelementptr inbounds %struct.node_t, %struct.node_t* %44, i64 0, i32 1
  store %struct.node_t* %50, %struct.node_t** %51, align 8
  %52 = mul nsw i32 %.0, %12
  %53 = add nsw i32 %52, %.01
  %54 = add nsw i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 1, i64 %55
  %57 = load %struct.node_t**, %struct.node_t*** %56, align 8
  %58 = load i32, i32* @n_nodes, align 4
  %59 = add nsw i32 %58, -1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.node_t*, %struct.node_t** %57, i64 %60
  %62 = load %struct.node_t*, %struct.node_t** %61, align 8
  %63 = mul nsw i32 %.0, %12
  %64 = add nsw i32 %63, %.01
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.table_t, %struct.table_t* %2, i64 0, i32 1, i64 %65
  %67 = load %struct.node_t**, %struct.node_t*** %66, align 8
  %68 = load %struct.node_t*, %struct.node_t** %67, align 8
  %69 = getelementptr inbounds %struct.node_t, %struct.node_t* %62, i64 0, i32 1
  store %struct.node_t* %68, %struct.node_t** %69, align 8
  br label %70

70:                                               ; preds = %33
  %71 = add nuw nsw i32 %.01, 1
  br label %31, !llvm.loop !14

72:                                               ; preds = %31
  br label %73

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !15

75:                                               ; preds = %13
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @str.10, i64 0, i64 0))
  call void @do_all(%struct.table_t* noundef %2, i32 noundef 0, i32 noundef 1, void (%struct.table_t*, i32)* noundef nonnull @clear_nummiss, i32 noundef %8)
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @str.11, i64 0, i64 0))
  ret %struct.graph_t* %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
