; ModuleID = './genmalloc.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/genmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slist_genmalloc_memory_head = type { %struct.genmalloc_memory_entry* }
%struct.genmalloc_memory_entry = type { i8*, i64, %struct.anon }
%struct.anon = type { %struct.genmalloc_memory_entry* }

@genmalloc_memory_head = dso_local global %struct.slist_genmalloc_memory_head zeroinitializer, align 8
@.str = private unnamed_addr constant [89 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C++/CLAMR/genmalloc.c\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Error -- element size not supported in genmalloc for call at %s line %d\0A\00", align 1
@genmalloc_memory_item = dso_local global %struct.genmalloc_memory_entry* null, align 8
@genmalloc_memory_headp = dso_local global %struct.slist_genmalloc_memory_head* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @genvector_p(i32 noundef %0, i64 noundef %1, i8* nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = sext i32 %0 to i64
  %6 = mul i64 %5, %1
  %7 = sext i32 %0 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef %1) #3
  %9 = call i8* @genmalloc_memory_add_p(i8* noundef %8, i64 noundef %6, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 88)
  ret i8* %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @genmalloc_memory_add_p(i8* noundef returned %0, i64 noundef %1, i8* nocapture noundef readnone %2, i32 noundef %3) #0 {
  %5 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %6 = icmp eq %struct.genmalloc_memory_entry* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %7
  store %struct.genmalloc_memory_entry* null, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  br label %9

9:                                                ; preds = %8
  br label %10

10:                                               ; preds = %9, %4
  %11 = call noalias dereferenceable_or_null(24) i8* @malloc(i64 noundef 24) #3
  store i8* %11, i8** bitcast (%struct.genmalloc_memory_entry** @genmalloc_memory_item to i8**), align 8
  %.cast = bitcast i8* %11 to %struct.genmalloc_memory_entry*
  %12 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.cast, i64 0, i32 0
  store i8* %0, i8** %12, align 8
  %.cast1 = bitcast i8* %11 to %struct.genmalloc_memory_entry*
  %13 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.cast1, i64 0, i32 1
  store i64 %1, i64* %13, align 8
  br label %14

14:                                               ; preds = %10
  %15 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %16 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %17 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %16, i64 0, i32 2, i32 0
  store %struct.genmalloc_memory_entry* %15, %struct.genmalloc_memory_entry** %17, align 8
  store %struct.genmalloc_memory_entry* %16, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  br label %18

18:                                               ; preds = %14
  ret i8* %0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @genvectorfree_p(i8* noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) #0 {
  call void @genmalloc_memory_remove_p(i8* noundef %0, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 98)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmalloc_memory_remove_p(i8* noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %38, %3
  %storemerge.in = phi %struct.genmalloc_memory_entry** [ getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), %3 ], [ %40, %38 ]
  %storemerge = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %storemerge.in, align 8
  store %struct.genmalloc_memory_entry* %storemerge, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %.not = icmp eq %struct.genmalloc_memory_entry* %storemerge, null
  br i1 %.not, label %.loopexit, label %5

5:                                                ; preds = %4
  %6 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %7 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %6, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp eq i8* %8, %0
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  call void @free(i8* noundef %0) #3
  br label %11

11:                                               ; preds = %10
  %12 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %13 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %14 = icmp eq %struct.genmalloc_memory_entry* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %17, i64 0, i32 2, i32 0
  %19 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %18, align 8
  store %struct.genmalloc_memory_entry* %19, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  br label %20

20:                                               ; preds = %16
  br label %34

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %26, %21
  %.0.in = phi %struct.genmalloc_memory_entry** [ getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), %21 ], [ %27, %26 ]
  %.0 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %.0.in, align 8
  %23 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.0, i64 0, i32 2, i32 0
  %24 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %23, align 8
  %25 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %.not1 = icmp eq %struct.genmalloc_memory_entry* %24, %25
  br i1 %.not1, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.0, i64 0, i32 2, i32 0
  br label %22, !llvm.loop !4

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.0, i64 0, i32 2, i32 0
  %30 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %29, align 8
  %31 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %30, i64 0, i32 2, i32 0
  %32 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %31, align 8
  %33 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %.0, i64 0, i32 2, i32 0
  store %struct.genmalloc_memory_entry* %32, %struct.genmalloc_memory_entry** %33, align 8
  br label %34

34:                                               ; preds = %28, %20
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** bitcast (%struct.genmalloc_memory_entry** @genmalloc_memory_item to i8**), align 8
  call void @free(i8* noundef %36) #3
  br label %41

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %40 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %39, i64 0, i32 2, i32 0
  br label %4, !llvm.loop !6

.loopexit:                                        ; preds = %4
  br label %41

41:                                               ; preds = %.loopexit, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @genmatrix_p(i32 noundef %0, i32 noundef %1, i64 noundef %2, i8* nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call noalias i8* @malloc(i64 noundef %7) #3
  %9 = bitcast i8* %8 to i8**
  %10 = call i8* @genmalloc_memory_add_p(i8* noundef %8, i64 noundef %7, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 111)
  %11 = mul nsw i32 %0, %1
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, %2
  %14 = sext i32 %0 to i64
  %15 = sext i32 %1 to i64
  %16 = mul nsw i64 %14, %15
  %17 = call noalias i8* @calloc(i64 noundef %16, i64 noundef %2) #3
  store i8* %17, i8** %9, align 8
  %18 = call i8* @genmalloc_memory_add_p(i8* noundef %17, i64 noundef %13, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 115)
  br label %19

19:                                               ; preds = %31, %5
  %.0 = phi i32 [ 1, %5 ], [ %32, %31 ]
  %20 = icmp slt i32 %.0, %0
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = add nsw i32 %.0, -1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %9, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = sext i32 %1 to i64
  %27 = mul i64 %26, %2
  %28 = getelementptr i8, i8* %25, i64 %27
  %29 = zext i32 %.0 to i64
  %30 = getelementptr inbounds i8*, i8** %9, i64 %29
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = add nuw nsw i32 %.0, 1
  br label %19, !llvm.loop !7

33:                                               ; preds = %19
  ret i8** %9
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmatrixfree_p(i8** noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = load i8*, i8** %0, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %4, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 129)
  %5 = bitcast i8** %0 to i8*
  call void @genmalloc_memory_remove_p(i8* noundef nonnull %5, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 130)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8*** @gentrimatrix_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i8* noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq i64 %3, 8
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = call double*** @gentrimatrix_double_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %4, i32 noundef %5)
  %10 = bitcast double*** %9 to i8***
  br label %19

11:                                               ; preds = %6
  %12 = icmp eq i64 %3, 4
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = call i32*** @gentrimatrix_int_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* noundef %4, i32 noundef %5)
  %15 = bitcast i32*** %14 to i8***
  br label %18

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* noundef %4, i32 noundef %5) #3
  br label %18

18:                                               ; preds = %16, %13
  %.0 = phi i8*** [ %15, %13 ], [ null, %16 ]
  br label %19

19:                                               ; preds = %18, %8
  %.1 = phi i8*** [ %10, %8 ], [ %.0, %18 ]
  ret i8*** %.1
}

; Function Attrs: noinline nounwind uwtable
define dso_local double*** @gentrimatrix_double_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call noalias i8* @malloc(i64 noundef %7) #3
  %9 = bitcast i8* %8 to double***
  %10 = call i8* @genmalloc_memory_add_p(i8* noundef %8, i64 noundef %7, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 161)
  %11 = mul nsw i32 %0, %1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = call noalias i8* @malloc(i64 noundef %13) #3
  %15 = bitcast i8* %8 to i8**
  store i8* %14, i8** %15, align 8
  %16 = call i8* @genmalloc_memory_add_p(i8* noundef %14, i64 noundef %13, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 165)
  %17 = mul nsw i32 %0, %1
  %18 = mul nsw i32 %17, %2
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  %21 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 8) #3
  %22 = bitcast i8* %8 to i8***
  %23 = load i8**, i8*** %22, align 8
  store i8* %21, i8** %23, align 8
  %24 = bitcast i8* %8 to i8***
  %25 = load i8**, i8*** %24, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @genmalloc_memory_add_p(i8* noundef %26, i64 noundef %20, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 170)
  br label %28

28:                                               ; preds = %72, %5
  %.01 = phi i32 [ 0, %5 ], [ %73, %72 ]
  %29 = icmp slt i32 %.01, %0
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %51, label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.01, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double**, double*** %9, i64 %33
  %35 = load double**, double*** %34, align 8
  %36 = sext i32 %1 to i64
  %37 = getelementptr inbounds double*, double** %35, i64 %36
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds double**, double*** %9, i64 %38
  store double** %37, double*** %39, align 8
  %40 = add nsw i32 %.01, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double**, double*** %9, i64 %41
  %43 = load double**, double*** %42, align 8
  %44 = load double*, double** %43, align 8
  %45 = mul nsw i32 %1, %2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = zext i32 %.01 to i64
  %49 = getelementptr inbounds double**, double*** %9, i64 %48
  %50 = load double**, double*** %49, align 8
  store double* %47, double** %50, align 8
  br label %51

51:                                               ; preds = %31, %30
  br label %52

52:                                               ; preds = %69, %51
  %.0 = phi i32 [ 1, %51 ], [ %70, %69 ]
  %53 = icmp slt i32 %.0, %1
  br i1 %53, label %54, label %71

54:                                               ; preds = %52
  %55 = zext i32 %.01 to i64
  %56 = getelementptr inbounds double**, double*** %9, i64 %55
  %57 = load double**, double*** %56, align 8
  %58 = add nsw i32 %.0, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double*, double** %57, i64 %59
  %61 = load double*, double** %60, align 8
  %62 = sext i32 %2 to i64
  %63 = getelementptr inbounds double, double* %61, i64 %62
  %64 = zext i32 %.01 to i64
  %65 = getelementptr inbounds double**, double*** %9, i64 %64
  %66 = load double**, double*** %65, align 8
  %67 = zext i32 %.0 to i64
  %68 = getelementptr inbounds double*, double** %66, i64 %67
  store double* %63, double** %68, align 8
  br label %69

69:                                               ; preds = %54
  %70 = add nuw nsw i32 %.0, 1
  br label %52, !llvm.loop !8

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.01, 1
  br label %28, !llvm.loop !9

74:                                               ; preds = %28
  ret double*** %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32*** @gentrimatrix_int_p(i32 noundef %0, i32 noundef %1, i32 noundef %2, i8* nocapture noundef readnone %3, i32 noundef %4) #0 {
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = call noalias i8* @malloc(i64 noundef %7) #3
  %9 = bitcast i8* %8 to i32***
  %10 = call i8* @genmalloc_memory_add_p(i8* noundef %8, i64 noundef %7, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 200)
  %11 = mul nsw i32 %0, %1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = call noalias i8* @malloc(i64 noundef %13) #3
  %15 = bitcast i8* %8 to i8**
  store i8* %14, i8** %15, align 8
  %16 = call i8* @genmalloc_memory_add_p(i8* noundef %14, i64 noundef %13, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 204)
  %17 = mul nsw i32 %0, %1
  %18 = mul nsw i32 %17, %2
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 2
  %21 = call noalias i8* @calloc(i64 noundef %19, i64 noundef 4) #3
  %22 = bitcast i8* %8 to i8***
  %23 = load i8**, i8*** %22, align 8
  store i8* %21, i8** %23, align 8
  %24 = bitcast i8* %8 to i8***
  %25 = load i8**, i8*** %24, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @genmalloc_memory_add_p(i8* noundef %26, i64 noundef %20, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 209)
  br label %28

28:                                               ; preds = %72, %5
  %.01 = phi i32 [ 0, %5 ], [ %73, %72 ]
  %29 = icmp slt i32 %.01, %0
  br i1 %29, label %30, label %74

30:                                               ; preds = %28
  %.not = icmp eq i32 %.01, 0
  br i1 %.not, label %51, label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.01, -1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32**, i32*** %9, i64 %33
  %35 = load i32**, i32*** %34, align 8
  %36 = sext i32 %1 to i64
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  %38 = zext i32 %.01 to i64
  %39 = getelementptr inbounds i32**, i32*** %9, i64 %38
  store i32** %37, i32*** %39, align 8
  %40 = add nsw i32 %.01, -1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32**, i32*** %9, i64 %41
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = mul nsw i32 %1, %2
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = zext i32 %.01 to i64
  %49 = getelementptr inbounds i32**, i32*** %9, i64 %48
  %50 = load i32**, i32*** %49, align 8
  store i32* %47, i32** %50, align 8
  br label %51

51:                                               ; preds = %31, %30
  br label %52

52:                                               ; preds = %69, %51
  %.0 = phi i32 [ 1, %51 ], [ %70, %69 ]
  %53 = icmp slt i32 %.0, %1
  br i1 %53, label %54, label %71

54:                                               ; preds = %52
  %55 = zext i32 %.01 to i64
  %56 = getelementptr inbounds i32**, i32*** %9, i64 %55
  %57 = load i32**, i32*** %56, align 8
  %58 = add nsw i32 %.0, -1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = sext i32 %2 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = zext i32 %.01 to i64
  %65 = getelementptr inbounds i32**, i32*** %9, i64 %64
  %66 = load i32**, i32*** %65, align 8
  %67 = zext i32 %.0 to i64
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  store i32* %63, i32** %68, align 8
  br label %69

69:                                               ; preds = %54
  %70 = add nuw nsw i32 %.0, 1
  br label %52, !llvm.loop !10

71:                                               ; preds = %52
  br label %72

72:                                               ; preds = %71
  %73 = add nuw nsw i32 %.01, 1
  br label %28, !llvm.loop !11

74:                                               ; preds = %28
  ret i32*** %9
}

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gentrimatrixfree_p(i8*** noundef %0, i8* nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = load i8**, i8*** %0, align 8
  %5 = load i8*, i8** %4, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %5, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 233)
  %6 = bitcast i8*** %0 to i8**
  %7 = load i8*, i8** %6, align 8
  call void @genmalloc_memory_remove_p(i8* noundef %7, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 234)
  %8 = bitcast i8*** %0 to i8*
  call void @genmalloc_memory_remove_p(i8* noundef nonnull %8, i8* noundef getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 noundef 235)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @genmem_free_all_p(i8* nocapture noundef readnone %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %4 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %.not = icmp eq %struct.genmalloc_memory_entry* %4, null
  br i1 %.not, label %15, label %5

5:                                                ; preds = %3
  %6 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  store %struct.genmalloc_memory_entry* %6, %struct.genmalloc_memory_entry** @genmalloc_memory_item, align 8
  %7 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %6, i64 0, i32 0
  %8 = load i8*, i8** %7, align 8
  call void @free(i8* noundef %8) #3
  br label %9

9:                                                ; preds = %5
  %10 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  %11 = getelementptr inbounds %struct.genmalloc_memory_entry, %struct.genmalloc_memory_entry* %10, i64 0, i32 2, i32 0
  %12 = load %struct.genmalloc_memory_entry*, %struct.genmalloc_memory_entry** %11, align 8
  store %struct.genmalloc_memory_entry* %12, %struct.genmalloc_memory_entry** getelementptr inbounds (%struct.slist_genmalloc_memory_head, %struct.slist_genmalloc_memory_head* @genmalloc_memory_head, i64 0, i32 0), align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** bitcast (%struct.genmalloc_memory_entry** @genmalloc_memory_item to i8**), align 8
  call void @free(i8* noundef %14) #3
  br label %3, !llvm.loop !12

15:                                               ; preds = %3
  ret void
}

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
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
