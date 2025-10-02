; ModuleID = './ch.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.point = type { i32, i32 }
%struct.CHpoints = type { i32, %struct.point, i32, %struct.CHpoints*, %struct.CHpoints* }
%struct.DCEL_segment = type { %struct.point, %struct.point, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment*, %struct.DCEL_segment* }

@Splaytree = external dso_local global %struct.splay_node*, align 8
@CHno = external dso_local global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @empty() #0 {
  %1 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  %2 = icmp eq %struct.splay_node* %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @point_equal(i64 %0, i64 %1) #1 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = bitcast i64* %3 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = bitcast i64* %4 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %tmpcast1 = bitcast i64* %4 to %struct.point*
  %tmpcast = bitcast i64* %3 to %struct.point*
  %11 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %12, %14
  %phi.cast = zext i1 %15 to i32
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i32 [ 0, %2 ], [ %phi.cast, %10 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @determinant(i64 %0, i64 %1, i64 %2) #1 {
  %4 = alloca i64, align 8
  %tmpcast = bitcast i64* %4 to %struct.point*
  %5 = alloca i64, align 8
  %tmpcast1 = bitcast i64* %5 to %struct.point*
  %6 = alloca i64, align 8
  %tmpcast2 = bitcast i64* %6 to %struct.point*
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = bitcast i64* %4 to i32*
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %10, %12
  %14 = mul nsw i32 %8, %13
  %15 = getelementptr inbounds %struct.point, %struct.point* %tmpcast, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = bitcast i64* %5 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = bitcast i64* %6 to i32*
  %20 = load i32, i32* %19, align 8
  %.neg = sub i32 %20, %18
  %.neg3 = mul i32 %.neg, %16
  %21 = add i32 %.neg3, %14
  %22 = bitcast i64* %5 to i32*
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.point, %struct.point* %tmpcast2, i64 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %23, %25
  %27 = add nsw i32 %21, %26
  %28 = getelementptr inbounds %struct.point, %struct.point* %tmpcast1, i64 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = bitcast i64* %6 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %29, %31
  %33 = sub nsw i32 %27, %32
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn
define dso_local i32 @visible(i32 noundef %0, i64 %1, i64 %2, i64 %3) #1 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 %3, i64* %7, align 8
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @determinant(i64 %10, i64 %11, i64 %12)
  %14 = icmp slt i32 %13, 0
  br label %21

15:                                               ; preds = %4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @determinant(i64 %16, i64 %17, i64 %18)
  %20 = icmp sgt i32 %19, 0
  br label %21

21:                                               ; preds = %15, %9
  %.0.in = phi i1 [ %14, %9 ], [ %20, %15 ]
  %.0 = zext i1 %.0.in to i32
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* noundef readonly %0, %struct.DCEL_segment* noundef readnone %1) #2 {
  %3 = alloca %struct.CHpoints*, align 8
  store %struct.CHpoints* null, %struct.CHpoints** %3, align 8
  %4 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 1
  %5 = bitcast %struct.point* %4 to i64*
  %6 = load i64, i64* %5, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %6) #6
  %7 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 4
  %8 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %9 = icmp eq %struct.DCEL_segment* %8, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 3
  br label %14

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 2
  br label %14

14:                                               ; preds = %12, %10
  %.02.in = phi %struct.DCEL_segment** [ %11, %10 ], [ %13, %12 ]
  %.02 = load %struct.DCEL_segment*, %struct.DCEL_segment** %.02.in, align 8
  %.not = icmp eq %struct.DCEL_segment* %.02, %1
  br i1 %.not, label %43, label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %30, %15
  %.01 = phi %struct.DCEL_segment* [ %0, %15 ], [ %.0, %30 ]
  %.0 = phi %struct.DCEL_segment* [ %.02, %15 ], [ %.1, %30 ]
  %.not4 = icmp eq %struct.DCEL_segment* %.0, %1
  br i1 %.not4, label %31, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 4
  %19 = load %struct.DCEL_segment*, %struct.DCEL_segment** %18, align 8
  %20 = icmp eq %struct.DCEL_segment* %19, %.01
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = bitcast %struct.DCEL_segment* %.0 to i64*
  %23 = load i64, i64* %22, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %23) #6
  %24 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 3
  br label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 1
  %27 = bitcast %struct.point* %26 to i64*
  %28 = load i64, i64* %27, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %28) #6
  %29 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 2
  br label %30

30:                                               ; preds = %25, %21
  %.1.in = phi %struct.DCEL_segment** [ %24, %21 ], [ %29, %25 ]
  %.1 = load %struct.DCEL_segment*, %struct.DCEL_segment** %.1.in, align 8
  br label %16, !llvm.loop !4

31:                                               ; preds = %16
  %32 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 4
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %32, align 8
  %34 = icmp eq %struct.DCEL_segment* %33, %.01
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = bitcast %struct.DCEL_segment* %.0 to i64*
  %37 = load i64, i64* %36, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %37) #6
  br label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.0, i64 0, i32 1
  %40 = bitcast %struct.point* %39 to i64*
  %41 = load i64, i64* %40, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %41) #6
  br label %42

42:                                               ; preds = %38, %35
  br label %54

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 1
  %45 = bitcast %struct.point* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = bitcast %struct.DCEL_segment* %0 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @point_equal(i64 %46, i64 %48)
  %.not3 = icmp eq i32 %49, 0
  br i1 %.not3, label %50, label %53

50:                                               ; preds = %43
  %51 = bitcast %struct.DCEL_segment* %0 to i64*
  %52 = load i64, i64* %51, align 8
  call void @point_list_insert(%struct.CHpoints** noundef nonnull %3, i64 %52) #6
  br label %53

53:                                               ; preds = %50, %43
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.CHpoints*, %struct.CHpoints** %3, align 8
  ret %struct.CHpoints* %55
}

declare dso_local void @point_list_insert(%struct.CHpoints** noundef, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_segments(%struct.DCEL_segment* noundef %0, %struct.DCEL_segment* noundef %1, %struct.DCEL_segment* noundef %2, i32 noundef %3) #2 {
  %5 = alloca i64, align 8
  %6 = bitcast %struct.DCEL_segment* %1 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = bitcast %struct.DCEL_segment* %0 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @point_equal(i64 %7, i64 %9)
  %.not = icmp eq i32 %10, 0
  br i1 %.not, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 1
  %13 = bitcast %struct.point* %12 to i64*
  br label %16

14:                                               ; preds = %4
  %15 = bitcast %struct.DCEL_segment* %1 to i64*
  br label %16

16:                                               ; preds = %14, %11
  %storemerge.in = phi i64* [ %13, %11 ], [ %15, %14 ]
  %storemerge = load i64, i64* %storemerge.in, align 8
  store i64 %storemerge, i64* %5, align 8
  %17 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 1
  %18 = bitcast %struct.DCEL_segment* %0 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = bitcast %struct.point* %17 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @visible(i32 noundef %3, i64 %19, i64 %21, i64 %storemerge)
  %.not1 = icmp eq i32 %22, 0
  br i1 %.not1, label %99, label %23

23:                                               ; preds = %16
  %24 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #6
  %25 = bitcast i8* %24 to %struct.DCEL_segment*
  %26 = bitcast i8* %24 to i64*
  %27 = load i64, i64* %5, align 8
  store i64 %27, i64* %26, align 8
  %28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 1
  %29 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 1
  %30 = bitcast %struct.point* %29 to i64*
  %31 = bitcast %struct.point* %28 to i64*
  %32 = load i64, i64* %30, align 8
  store i64 %32, i64* %31, align 8
  %33 = icmp eq i32 %3, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %23
  %35 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 2
  %36 = load %struct.DCEL_segment*, %struct.DCEL_segment** %35, align 8
  %37 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 2
  store %struct.DCEL_segment* %36, %struct.DCEL_segment** %37, align 8
  %38 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 3
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %38, align 8
  %39 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 4
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %39, align 8
  %40 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 5
  store %struct.DCEL_segment* %2, %struct.DCEL_segment** %40, align 8
  %41 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 5
  %42 = bitcast %struct.DCEL_segment** %41 to i8**
  store i8* %24, i8** %42, align 8
  %43 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 2
  %44 = bitcast %struct.DCEL_segment** %43 to i64**
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @point_equal(i64 %46, i64 %47)
  %.not3 = icmp eq i32 %48, 0
  br i1 %.not3, label %54, label %49

49:                                               ; preds = %34
  %50 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 2
  %51 = load %struct.DCEL_segment*, %struct.DCEL_segment** %50, align 8
  %52 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %51, i64 0, i32 4
  %53 = bitcast %struct.DCEL_segment** %52 to i8**
  store i8* %24, i8** %53, align 8
  br label %59

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 2
  %56 = load %struct.DCEL_segment*, %struct.DCEL_segment** %55, align 8
  %57 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %56, i64 0, i32 5
  %58 = bitcast %struct.DCEL_segment** %57 to i8**
  store i8* %24, i8** %58, align 8
  br label %59

59:                                               ; preds = %54, %49
  %60 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 2
  %61 = bitcast %struct.DCEL_segment** %60 to i8**
  store i8* %24, i8** %61, align 8
  %62 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %2, i64 0, i32 3
  %63 = bitcast %struct.DCEL_segment** %62 to i8**
  store i8* %24, i8** %63, align 8
  %64 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 2
  %65 = load %struct.DCEL_segment*, %struct.DCEL_segment** %64, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %25, %struct.DCEL_segment* noundef %65, %struct.DCEL_segment* noundef %2, i32 noundef %3)
  br label %98

66:                                               ; preds = %23
  %67 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 4
  %68 = load %struct.DCEL_segment*, %struct.DCEL_segment** %67, align 8
  %69 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 4
  store %struct.DCEL_segment* %68, %struct.DCEL_segment** %69, align 8
  %70 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 5
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %70, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 2
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %71, align 8
  %72 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 3
  store %struct.DCEL_segment* %2, %struct.DCEL_segment** %72, align 8
  %73 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %0, i64 0, i32 3
  %74 = bitcast %struct.DCEL_segment** %73 to i8**
  store i8* %24, i8** %74, align 8
  %75 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 4
  %76 = bitcast %struct.DCEL_segment** %75 to i64**
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @point_equal(i64 %78, i64 %79)
  %.not2 = icmp eq i32 %80, 0
  br i1 %.not2, label %86, label %81

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 4
  %83 = load %struct.DCEL_segment*, %struct.DCEL_segment** %82, align 8
  %84 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %83, i64 0, i32 2
  %85 = bitcast %struct.DCEL_segment** %84 to i8**
  store i8* %24, i8** %85, align 8
  br label %91

86:                                               ; preds = %66
  %87 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 4
  %88 = load %struct.DCEL_segment*, %struct.DCEL_segment** %87, align 8
  %89 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %88, i64 0, i32 3
  %90 = bitcast %struct.DCEL_segment** %89 to i8**
  store i8* %24, i8** %90, align 8
  br label %91

91:                                               ; preds = %86, %81
  %92 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %1, i64 0, i32 4
  %93 = bitcast %struct.DCEL_segment** %92 to i8**
  store i8* %24, i8** %93, align 8
  %94 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %2, i64 0, i32 5
  %95 = bitcast %struct.DCEL_segment** %94 to i8**
  store i8* %24, i8** %95, align 8
  %96 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %25, i64 0, i32 4
  %97 = load %struct.DCEL_segment*, %struct.DCEL_segment** %96, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %25, %struct.DCEL_segment* noundef %97, %struct.DCEL_segment* noundef %2, i32 noundef %3)
  br label %98

98:                                               ; preds = %91, %59
  br label %99

99:                                               ; preds = %98, %16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @construct_ch() #2 {
  store i32 0, i32* @CHno, align 4
  %1 = call i32 @empty()
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %2, label %56

2:                                                ; preds = %0
  %3 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #6
  %4 = bitcast i8* %3 to %struct.DCEL_segment*
  %5 = call i64 @delete_min(%struct.splay_node** noundef nonnull @Splaytree) #6
  %6 = bitcast i8* %3 to i64*
  store i64 %5, i64* %6, align 8
  %7 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 2
  %8 = bitcast %struct.DCEL_segment** %7 to i8**
  store i8* %3, i8** %8, align 8
  %9 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 3
  %10 = bitcast %struct.DCEL_segment** %9 to i8**
  store i8* %3, i8** %10, align 8
  %11 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 4
  %12 = bitcast %struct.DCEL_segment** %11 to i8**
  store i8* %3, i8** %12, align 8
  %13 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 5
  %14 = bitcast %struct.DCEL_segment** %13 to i8**
  store i8* %3, i8** %14, align 8
  %15 = call i32 @empty()
  %.not4 = icmp eq i32 %15, 0
  br i1 %.not4, label %21, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 1
  %18 = bitcast i8* %3 to i64*
  %19 = bitcast %struct.point* %17 to i64*
  %20 = load i64, i64* %18, align 8
  store i64 %20, i64* %19, align 8
  br label %52

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %4, i64 0, i32 1
  %23 = call i64 @delete_min(%struct.splay_node** noundef nonnull @Splaytree) #6
  %24 = bitcast %struct.point* %22 to i64*
  store i64 %23, i64* %24, align 8
  br label %25

25:                                               ; preds = %27, %21
  %.02 = phi %struct.DCEL_segment* [ %4, %21 ], [ %48, %27 ]
  %.01 = phi %struct.DCEL_segment* [ %4, %21 ], [ %50, %27 ]
  %26 = call i32 @empty()
  %.not5 = icmp eq i32 %26, 0
  br i1 %.not5, label %27, label %51

27:                                               ; preds = %25
  %28 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #6
  %29 = bitcast i8* %28 to %struct.DCEL_segment*
  %30 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.02, i64 0, i32 1
  %31 = bitcast %struct.point* %30 to i64*
  %32 = bitcast i8* %28 to i64*
  %33 = load i64, i64* %31, align 8
  store i64 %33, i64* %32, align 8
  %34 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 1
  %35 = call i64 @delete_min(%struct.splay_node** noundef nonnull @Splaytree) #6
  %36 = bitcast %struct.point* %34 to i64*
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 2
  store %struct.DCEL_segment* %.02, %struct.DCEL_segment** %37, align 8
  %38 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 4
  store %struct.DCEL_segment* %.01, %struct.DCEL_segment** %38, align 8
  %39 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 3
  %40 = bitcast %struct.DCEL_segment** %39 to i8**
  store i8* %28, i8** %40, align 8
  %41 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 5
  %42 = bitcast %struct.DCEL_segment** %41 to i8**
  store i8* %28, i8** %42, align 8
  %43 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.01, i64 0, i32 3
  %44 = bitcast %struct.DCEL_segment** %43 to i8**
  store i8* %28, i8** %44, align 8
  %45 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %.02, i64 0, i32 5
  %46 = bitcast %struct.DCEL_segment** %45 to i8**
  store i8* %28, i8** %46, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %29, %struct.DCEL_segment* noundef %.02, %struct.DCEL_segment* noundef %29, i32 noundef 0)
  %47 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %29, i64 0, i32 3
  %48 = load %struct.DCEL_segment*, %struct.DCEL_segment** %47, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %29, %struct.DCEL_segment* noundef %.01, %struct.DCEL_segment* noundef %48, i32 noundef 1)
  %49 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %48, i64 0, i32 5
  %50 = load %struct.DCEL_segment*, %struct.DCEL_segment** %49, align 8
  br label %25, !llvm.loop !6

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51, %16
  %.13 = phi %struct.DCEL_segment* [ %4, %16 ], [ %.02, %51 ]
  %.1 = phi %struct.DCEL_segment* [ %4, %16 ], [ %.01, %51 ]
  %53 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  call void @free_tree(%struct.splay_node* noundef %53) #6
  %54 = call %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* noundef %.13, %struct.DCEL_segment* noundef %.1)
  %55 = call %struct.CHpoints* @remove_points(%struct.CHpoints* noundef %54) #6
  br label %56

56:                                               ; preds = %52, %0
  %.0 = phi %struct.CHpoints* [ undef, %0 ], [ %55, %52 ]
  ret %struct.CHpoints* %.0
}

declare dso_local i64 @delete_min(%struct.splay_node** noundef) #3

declare dso_local void @free_tree(%struct.splay_node* noundef) #3

declare dso_local %struct.CHpoints* @remove_points(%struct.CHpoints* noundef) #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
