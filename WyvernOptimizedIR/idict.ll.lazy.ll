; ModuleID = './idict.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/gs/idict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_s = type { %union.v, i16, i16 }
%union.v = type { i64 }
%struct.pair_s = type { %struct.ref_s, %struct.ref_s }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s }
%struct.name_s = type { %struct.name_s*, i16, i16, i8*, %struct.ref_s* }

@dict_max_size = dso_local global i32 32766, align 4
@.str = private unnamed_addr constant [12 x i8] c"dict_create\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dict_create(pairs)\00", align 1
@dstack = external dso_local global [0 x %struct.ref_s], align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"dict_resize(old)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"dict_resize(new)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_create(i32 noundef %0, %struct.ref_s* nocapture noundef writeonly %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  br label %6

5:                                                ; preds = %2
  %phi.bo = add i32 %0, 1
  br label %6

6:                                                ; preds = %5, %4
  %7 = phi i32 [ 2, %4 ], [ %phi.bo, %5 ]
  %8 = call i8* @alloc(i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #5
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %38

11:                                               ; preds = %6
  %12 = call i8* @alloc(i32 noundef %7, i32 noundef 32, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #5
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @alloc_free(i8* noundef nonnull %8, i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #5
  br label %38

15:                                               ; preds = %11
  %16 = bitcast i8* %8 to i64*
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds i8, i8* %8, i64 8
  %18 = bitcast i8* %17 to i16*
  store i16 20, i16* %18, align 8
  %19 = getelementptr inbounds i8, i8* %8, i64 16
  %20 = bitcast i8* %19 to i8**
  store i8* %12, i8** %20, align 8
  %21 = getelementptr inbounds i8, i8* %8, i64 24
  %22 = bitcast i8* %21 to i16*
  store i16 770, i16* %22, align 8
  %.tr = trunc i32 %7 to i16
  %23 = shl i16 %.tr, 1
  %24 = getelementptr inbounds i8, i8* %8, i64 26
  %25 = bitcast i8* %24 to i16*
  store i16 %23, i16* %25, align 2
  %26 = bitcast %struct.ref_s* %1 to i8**
  store i8* %8, i8** %26, align 8
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  store i16 778, i16* %27, align 8
  %28 = getelementptr inbounds i8, i8* %8, i64 16
  %29 = bitcast i8* %28 to %struct.pair_s**
  %30 = load %struct.pair_s*, %struct.pair_s** %29, align 8
  br label %31

31:                                               ; preds = %32, %15
  %.02 = phi i32 [ %7, %15 ], [ %33, %32 ]
  %.01 = phi %struct.pair_s* [ %30, %15 ], [ %36, %32 ]
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %37, label %32

32:                                               ; preds = %31
  %33 = add i32 %.02, -1
  %34 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 0, i32 1, i32 1
  store i16 32, i16* %34, align 8
  %35 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 0, i32 0, i32 1
  store i16 32, i16* %35, align 8
  %36 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 1
  br label %31, !llvm.loop !4

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %14, %10
  %.0 = phi i32 [ -25, %10 ], [ -25, %14 ], [ 0, %37 ]
  ret i32 %.0
}

declare dso_local i8* @alloc(i32 noundef, i32 noundef, i8* noundef) #1

declare dso_local void @alloc_free(i8* noundef, i32 noundef, i32 noundef, i8* noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local nonnull %struct.ref_s* @dict_access_ref(%struct.ref_s* nocapture noundef readonly %0) #2 {
  %2 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %3 = load %struct.dict_s*, %struct.dict_s** %2, align 8
  %4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i64 0, i32 1
  ret %struct.ref_s* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_lookup(%struct.ref_s* noundef readnone %0, %struct.ref_s* noundef readonly %1, %struct.ref_s* noundef %2, %struct.ref_s** nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  %7 = load i16, i16* %6, align 8
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 63
  %10 = zext i16 %9 to i32
  switch i32 %10, label %27 [
    i32 7, label %11
    i32 13, label %17
  ]

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %26, %11
  %.08.in.in = phi %struct.ref_s* [ %5, %26 ], [ %2, %11 ]
  %.08.in = bitcast %struct.ref_s* %.08.in.in to %struct.name_s**
  %.08 = load %struct.name_s*, %struct.name_s** %.08.in, align 8
  %13 = getelementptr inbounds %struct.name_s, %struct.name_s* %.08, i64 0, i32 1
  %14 = load i16, i16* %13, align 8
  %15 = zext i16 %14 to i32
  %16 = mul nuw nsw i32 %15, 40503
  br label %39

17:                                               ; preds = %4
  %18 = bitcast %struct.ref_s* %2 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 2
  %21 = load i16, i16* %20, align 2
  %22 = zext i16 %21 to i32
  %23 = call i32 @name_ref(i8* noundef %19, i32 noundef %22, %struct.ref_s* noundef nonnull %5, i32 noundef 1) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %102

26:                                               ; preds = %17
  br label %12

27:                                               ; preds = %4
  %28 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = and i16 %29, 192
  %.not18 = icmp eq i16 %30, 0
  br i1 %.not18, label %32, label %31

31:                                               ; preds = %27
  br label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 0, i32 1
  %34 = load i16, i16* %33, align 8
  %35 = lshr i16 %34, 2
  %36 = and i16 %35, 63
  %narrow = mul nuw nsw i16 %36, 99
  %phi.bo = zext i16 %narrow to i32
  br label %37

37:                                               ; preds = %32, %31
  %38 = phi i32 [ 891, %31 ], [ %phi.bo, %32 ]
  br label %39

39:                                               ; preds = %37, %12
  %.012 = phi i32 [ -1, %37 ], [ 7, %12 ]
  %.011 = phi i32 [ %38, %37 ], [ %16, %12 ]
  %.19 = phi %struct.name_s* [ undef, %37 ], [ %.08, %12 ]
  br label %40

40:                                               ; preds = %99, %39
  %.010 = phi %struct.ref_s* [ %1, %39 ], [ %100, %99 ]
  %.05 = phi i32 [ 1, %39 ], [ %.3, %99 ]
  %41 = bitcast %struct.ref_s* %.010 to %struct.dict_s**
  %42 = load %struct.dict_s*, %struct.dict_s** %41, align 8
  %43 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %42, i64 0, i32 1, i32 2
  %44 = load i16, i16* %43, align 2
  %45 = lshr i16 %44, 1
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %46, -1
  %48 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %42, i64 0, i32 1, i32 0
  %49 = bitcast %union.v* %48 to %struct.pair_s**
  %50 = load %struct.pair_s*, %struct.pair_s** %49, align 8
  %51 = urem i32 %.011, %47
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %50, i64 2
  %54 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %53, i64 %52
  br label %55

55:                                               ; preds = %92, %40
  %.02 = phi %struct.pair_s* [ %54, %40 ], [ %.24, %92 ]
  %.01 = phi i32 [ 0, %40 ], [ %.2, %92 ]
  %56 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.02, i64 -1
  %57 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.02, i64 -1, i32 0, i32 1
  %58 = load i16, i16* %57, align 8
  %59 = lshr i16 %58, 2
  %60 = and i16 %59, 63
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %.012, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = bitcast %struct.pair_s* %56 to %struct.name_s**
  %65 = load %struct.name_s*, %struct.name_s** %64, align 8
  %66 = icmp eq %struct.name_s* %65, %.19
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.02, i64 -1, i32 1
  store %struct.ref_s* %68, %struct.ref_s** %3, align 8
  br label %102

69:                                               ; preds = %63
  br label %92

70:                                               ; preds = %55
  %71 = icmp eq i16 %60, 8
  br i1 %71, label %72, label %85

72:                                               ; preds = %70
  %73 = icmp eq %struct.pair_s* %56, %50
  br i1 %73, label %74, label %81

74:                                               ; preds = %72
  %75 = add nsw i32 %.01, 1
  %.not17 = icmp eq i32 %.01, 0
  br i1 %.not17, label %80, label %76

76:                                               ; preds = %74
  %77 = icmp sgt i32 %.05, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %76
  %.16 = phi i32 [ -2, %78 ], [ %.05, %76 ]
  br label %98

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %72
  br label %93

82:                                               ; preds = %80
  %83 = zext i16 %45 to i64
  %84 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %56, i64 %83
  br label %91

85:                                               ; preds = %70
  %86 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %56, i64 0, i32 0
  %87 = call i32 (%struct.ref_s*, %struct.ref_s*, ...) bitcast (i32 (...)* @obj_eq to i32 (%struct.ref_s*, %struct.ref_s*, ...)*)(%struct.ref_s* noundef nonnull %86, %struct.ref_s* noundef %2) #5
  %.not = icmp eq i32 %87, 0
  br i1 %.not, label %90, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.02, i64 -1, i32 1
  store %struct.ref_s* %89, %struct.ref_s** %3, align 8
  br label %102

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %82
  %.13 = phi %struct.pair_s* [ %84, %82 ], [ %56, %90 ]
  %.1 = phi i32 [ %75, %82 ], [ %.01, %90 ]
  br label %92

92:                                               ; preds = %91, %69
  %.24 = phi %struct.pair_s* [ %56, %69 ], [ %.13, %91 ]
  %.2 = phi i32 [ %.01, %69 ], [ %.1, %91 ]
  br label %55

93:                                               ; preds = %81
  %94 = icmp sgt i32 %.05, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.02, i64 -1, i32 1
  store %struct.ref_s* %96, %struct.ref_s** %3, align 8
  br label %97

97:                                               ; preds = %95, %93
  %.27 = phi i32 [ 0, %95 ], [ %.05, %93 ]
  br label %98

98:                                               ; preds = %97, %79
  %.3 = phi i32 [ %.16, %79 ], [ %.27, %97 ]
  br label %99

99:                                               ; preds = %98
  %100 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %.010, i64 -1
  %.not16 = icmp ult %struct.ref_s* %100, %0
  br i1 %.not16, label %101, label %40, !llvm.loop !6

101:                                              ; preds = %99
  br label %102

102:                                              ; preds = %101, %88, %67, %25
  %.0 = phi i32 [ 1, %67 ], [ %.3, %101 ], [ 1, %88 ], [ %23, %25 ]
  ret i32 %.0
}

declare dso_local i32 @name_ref(i8* noundef, i32 noundef, %struct.ref_s* noundef, i32 noundef) #1

declare dso_local i32 @obj_eq(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_put(%struct.ref_s* noundef %0, %struct.ref_s* noundef %1, %struct.ref_s* nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ref_s*, align 8
  %5 = call i32 @dict_lookup(%struct.ref_s* noundef %0, %struct.ref_s* noundef %0, %struct.ref_s* noundef %1, %struct.ref_s** noundef nonnull %4)
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %50

7:                                                ; preds = %3
  %8 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %9 = load %struct.dict_s*, %struct.dict_s** %8, align 8
  %10 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i64 0, i32 0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i64 0, i32 1, i32 2
  %13 = load i16, i16* %12, align 2
  %14 = lshr i16 %13, 1
  %15 = zext i16 %14 to i64
  %16 = add nsw i64 %15, -1
  %17 = icmp eq i64 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %54

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %9, i64 0, i32 0, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %24 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %23, i64 -1
  %25 = bitcast %struct.ref_s* %24 to i8*
  %26 = bitcast %struct.ref_s* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %25, i8* noundef nonnull align 8 dereferenceable(16) %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %1, i64 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = and i16 %28, 252
  %30 = icmp eq i16 %29, 28
  br i1 %30, label %31, label %49

31:                                               ; preds = %19
  %32 = bitcast %struct.ref_s* %1 to %struct.name_s**
  %33 = load %struct.name_s*, %struct.name_s** %32, align 8
  %34 = getelementptr inbounds %struct.name_s, %struct.name_s* %33, i64 0, i32 4
  %35 = load %struct.ref_s*, %struct.ref_s** %34, align 8
  %36 = icmp eq %struct.ref_s* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.dict_s*, %struct.dict_s** bitcast ([0 x %struct.ref_s]* @dstack to %struct.dict_s**), align 8
  %39 = icmp eq %struct.dict_s* %9, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.dict_s*, %struct.dict_s** bitcast (%union.v* getelementptr inbounds ([0 x %struct.ref_s], [0 x %struct.ref_s]* @dstack, i64 0, i64 1, i32 0) to %struct.dict_s**), align 8
  %42 = icmp eq %struct.dict_s* %9, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load %struct.ref_s*, %struct.ref_s** %4, align 8
  %45 = getelementptr inbounds %struct.name_s, %struct.name_s* %33, i64 0, i32 4
  store %struct.ref_s* %44, %struct.ref_s** %45, align 8
  br label %48

46:                                               ; preds = %40, %31
  %47 = getelementptr inbounds %struct.name_s, %struct.name_s* %33, i64 0, i32 4
  store %struct.ref_s* inttoptr (i64 1 to %struct.ref_s*), %struct.ref_s** %47, align 8
  br label %48

48:                                               ; preds = %46, %43
  br label %49

49:                                               ; preds = %48, %19
  br label %50

50:                                               ; preds = %49, %3
  %51 = bitcast %struct.ref_s** %4 to i8**
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast %struct.ref_s* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %52, i8* noundef nonnull align 8 dereferenceable(16) %53, i64 16, i1 false)
  br label %54

54:                                               ; preds = %50, %18
  %.0 = phi i32 [ -2, %18 ], [ 0, %50 ]
  ret i32 %.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @dict_length(%struct.ref_s* nocapture noundef readonly %0) #2 {
  %2 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %3 = load %struct.dict_s*, %struct.dict_s** %2, align 8
  %4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i64 0, i32 0, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @dict_maxlength(%struct.ref_s* nocapture noundef readonly %0) #2 {
  %2 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %3 = load %struct.dict_s*, %struct.dict_s** %2, align 8
  %4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i64 0, i32 1, i32 2
  %5 = load i16, i16* %4, align 2
  %6 = lshr i16 %5, 1
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -1
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_copy(%struct.ref_s* nocapture noundef readonly %0, %struct.ref_s* noundef %1) #0 {
  %3 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %4 = load %struct.dict_s*, %struct.dict_s** %3, align 8
  %5 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i64 0, i32 1, i32 2
  %6 = load i16, i16* %5, align 2
  %7 = lshr i16 %6, 1
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %4, i64 0, i32 1, i32 0
  %10 = bitcast %union.v* %9 to %struct.pair_s**
  %11 = load %struct.pair_s*, %struct.pair_s** %10, align 8
  br label %12

12:                                               ; preds = %24, %2
  %.02 = phi i32 [ %8, %2 ], [ %13, %24 ]
  %.01 = phi %struct.pair_s* [ %11, %2 ], [ %25, %24 ]
  %13 = add nsw i32 %.02, -1
  %.not = icmp eq i32 %.02, 0
  br i1 %.not, label %26, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 0, i32 0, i32 1
  %16 = load i16, i16* %15, align 8
  %17 = and i16 %16, 252
  %.not3 = icmp eq i16 %17, 32
  br i1 %.not3, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 0, i32 0
  %20 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 0, i32 1
  %21 = call i32 @dict_put(%struct.ref_s* noundef %1, %struct.ref_s* noundef %19, %struct.ref_s* noundef nonnull %20)
  %.not4 = icmp eq i32 %21, 0
  br i1 %.not4, label %23, label %22

22:                                               ; preds = %18
  br label %27

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 1
  br label %12, !llvm.loop !7

26:                                               ; preds = %12
  br label %27

27:                                               ; preds = %26, %22
  %.0 = phi i32 [ %21, %22 ], [ 0, %26 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dict_resize(%struct.ref_s* nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %5 = load %struct.dict_s*, %struct.dict_s** %4, align 8
  %6 = call i32 @dict_create(i32 noundef %1, %struct.ref_s* noundef nonnull %3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %18

9:                                                ; preds = %2
  %10 = call i32 @dict_copy(%struct.ref_s* noundef %0, %struct.ref_s* noundef nonnull %3)
  %11 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i64 0, i32 1, i32 0
  %12 = bitcast %union.v* %11 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @dict_maxlength(%struct.ref_s* noundef %0)
  call void @alloc_free(i8* noundef %13, i32 noundef %14, i32 noundef 32, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)) #5
  %15 = bitcast %struct.ref_s* %3 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = bitcast %struct.dict_s* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %16, i64 32, i1 false)
  call void @alloc_free(i8* noundef %16, i32 noundef 1, i32 noundef 32, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #5
  br label %18

18:                                               ; preds = %9, %8
  %.0 = phi i32 [ %6, %8 ], [ 0, %9 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @dict_first(%struct.ref_s* nocapture noundef readonly %0) #2 {
  %2 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %3 = load %struct.dict_s*, %struct.dict_s** %2, align 8
  %4 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %3, i64 0, i32 1, i32 2
  %5 = load i16, i16* %4, align 2
  %6 = lshr i16 %5, 1
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @dict_next(%struct.ref_s* nocapture noundef readonly %0, i32 noundef %1, %struct.ref_s* nocapture noundef writeonly %2) #4 {
  %4 = bitcast %struct.ref_s* %0 to %struct.dict_s**
  %5 = load %struct.dict_s*, %struct.dict_s** %4, align 8
  %6 = getelementptr inbounds %struct.dict_s, %struct.dict_s* %5, i64 0, i32 1, i32 0
  %7 = bitcast %union.v* %6 to %struct.pair_s**
  %8 = load %struct.pair_s*, %struct.pair_s** %7, align 8
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %8, i64 %9
  br label %11

11:                                               ; preds = %26, %3
  %.02 = phi i32 [ %1, %3 ], [ %13, %26 ]
  %.01 = phi %struct.pair_s* [ %10, %3 ], [ %12, %26 ]
  %12 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 -1
  %13 = add nsw i32 %.02, -1
  %14 = icmp sgt i32 %.02, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 -1, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = and i16 %17, 252
  %.not = icmp eq i16 %18, 32
  br i1 %.not, label %26, label %19

19:                                               ; preds = %15
  %20 = bitcast %struct.ref_s* %2 to i8*
  %21 = bitcast %struct.pair_s* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %20, i8* noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false)
  %22 = getelementptr inbounds %struct.ref_s, %struct.ref_s* %2, i64 1
  %23 = getelementptr inbounds %struct.pair_s, %struct.pair_s* %.01, i64 -1, i32 1
  %24 = bitcast %struct.ref_s* %22 to i8*
  %25 = bitcast %struct.ref_s* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %24, i8* noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false)
  br label %28

26:                                               ; preds = %15
  br label %11, !llvm.loop !8

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %19
  %.0 = phi i32 [ %13, %19 ], [ -1, %27 ]
  ret i32 %.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #4 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
