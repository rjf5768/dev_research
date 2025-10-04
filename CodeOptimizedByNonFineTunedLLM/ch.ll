; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/ch.c'
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @empty() #0 {
  %1 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  %2 = icmp eq %struct.splay_node* %1, null
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @point_equal(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.point, align 4
  %4 = alloca %struct.point, align 4
  %5 = bitcast %struct.point* %3 to i64*
  store i64 %0, i64* %5, align 4
  %6 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %6, align 4
  %7 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.point, %struct.point* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %14, %16
  br label %18

18:                                               ; preds = %12, %2
  %19 = phi i1 [ false, %2 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @determinant(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = bitcast %struct.point* %4 to i64*
  store i64 %0, i64* %7, align 4
  %8 = bitcast %struct.point* %5 to i64*
  store i64 %1, i64* %8, align 4
  %9 = bitcast %struct.point* %6 to i64*
  store i64 %2, i64* %9, align 4
  %10 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  %17 = mul nsw i32 %11, %16
  %18 = getelementptr inbounds %struct.point, %struct.point* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %21, %23
  %25 = mul nsw i32 %19, %24
  %26 = sub nsw i32 %17, %25
  %27 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %28, %30
  %32 = add nsw i32 %26, %31
  %33 = getelementptr inbounds %struct.point, %struct.point* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.point, %struct.point* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %34, %36
  %38 = sub nsw i32 %32, %37
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @visible(i32 noundef %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.point, align 4
  %8 = alloca %struct.point, align 4
  %9 = alloca i32, align 4
  %10 = bitcast %struct.point* %6 to i64*
  store i64 %1, i64* %10, align 4
  %11 = bitcast %struct.point* %7 to i64*
  store i64 %2, i64* %11, align 4
  %12 = bitcast %struct.point* %8 to i64*
  store i64 %3, i64* %12, align 4
  store i32 %0, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = bitcast %struct.point* %6 to i64*
  %17 = load i64, i64* %16, align 4
  %18 = bitcast %struct.point* %7 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = bitcast %struct.point* %8 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = call i32 @determinant(i64 %17, i64 %19, i64 %21)
  %23 = icmp slt i32 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %5, align 4
  br label %35

25:                                               ; preds = %4
  %26 = bitcast %struct.point* %6 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = bitcast %struct.point* %7 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = bitcast %struct.point* %8 to i64*
  %31 = load i64, i64* %30, align 4
  %32 = call i32 @determinant(i64 %27, i64 %29, i64 %31)
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %25, %15
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* noundef %0, %struct.DCEL_segment* noundef %1) #0 {
  %3 = alloca %struct.DCEL_segment*, align 8
  %4 = alloca %struct.DCEL_segment*, align 8
  %5 = alloca %struct.DCEL_segment*, align 8
  %6 = alloca %struct.DCEL_segment*, align 8
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca %struct.CHpoints*, align 8
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %4, align 8
  store %struct.CHpoints* null, %struct.CHpoints** %8, align 8
  %9 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  store %struct.DCEL_segment* %9, %struct.DCEL_segment** %6, align 8
  %10 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %11 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %10, i32 0, i32 1
  %12 = bitcast %struct.point* %11 to i64*
  %13 = load i64, i64* %12, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %13)
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %15 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %14, i32 0, i32 4
  %16 = load %struct.DCEL_segment*, %struct.DCEL_segment** %15, align 8
  %17 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %18 = icmp eq %struct.DCEL_segment* %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %21 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %20, i32 0, i32 3
  %22 = load %struct.DCEL_segment*, %struct.DCEL_segment** %21, align 8
  store %struct.DCEL_segment* %22, %struct.DCEL_segment** %7, align 8
  br label %27

23:                                               ; preds = %2
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %25 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %24, i32 0, i32 2
  %26 = load %struct.DCEL_segment*, %struct.DCEL_segment** %25, align 8
  store %struct.DCEL_segment* %26, %struct.DCEL_segment** %7, align 8
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %28, %struct.DCEL_segment** %4, align 8
  %29 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  store %struct.DCEL_segment* %29, %struct.DCEL_segment** %3, align 8
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %31 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %32 = icmp ne %struct.DCEL_segment* %30, %31
  br i1 %32, label %33, label %80

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %60, %33
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %36 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %37 = icmp ne %struct.DCEL_segment* %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %40 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %39, i32 0, i32 4
  %41 = load %struct.DCEL_segment*, %struct.DCEL_segment** %40, align 8
  %42 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %43 = icmp eq %struct.DCEL_segment* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %46 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %45, i32 0, i32 0
  %47 = bitcast %struct.point* %46 to i64*
  %48 = load i64, i64* %47, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %48)
  %49 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %50 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %49, i32 0, i32 3
  %51 = load %struct.DCEL_segment*, %struct.DCEL_segment** %50, align 8
  store %struct.DCEL_segment* %51, %struct.DCEL_segment** %7, align 8
  br label %60

52:                                               ; preds = %38
  %53 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %54 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %53, i32 0, i32 1
  %55 = bitcast %struct.point* %54 to i64*
  %56 = load i64, i64* %55, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %56)
  %57 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %58 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %57, i32 0, i32 2
  %59 = load %struct.DCEL_segment*, %struct.DCEL_segment** %58, align 8
  store %struct.DCEL_segment* %59, %struct.DCEL_segment** %7, align 8
  br label %60

60:                                               ; preds = %52, %44
  %61 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  store %struct.DCEL_segment* %61, %struct.DCEL_segment** %4, align 8
  %62 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  store %struct.DCEL_segment* %62, %struct.DCEL_segment** %3, align 8
  br label %34, !llvm.loop !4

63:                                               ; preds = %34
  %64 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %65 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %64, i32 0, i32 4
  %66 = load %struct.DCEL_segment*, %struct.DCEL_segment** %65, align 8
  %67 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %68 = icmp eq %struct.DCEL_segment* %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 0
  %72 = bitcast %struct.point* %71 to i64*
  %73 = load i64, i64* %72, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %73)
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %76 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %75, i32 0, i32 1
  %77 = bitcast %struct.point* %76 to i64*
  %78 = load i64, i64* %77, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %78)
  br label %79

79:                                               ; preds = %74, %69
  br label %97

80:                                               ; preds = %27
  %81 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %82 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %81, i32 0, i32 1
  %83 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %84 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %83, i32 0, i32 0
  %85 = bitcast %struct.point* %82 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = bitcast %struct.point* %84 to i64*
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @point_equal(i64 %86, i64 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %80
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %93 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %92, i32 0, i32 0
  %94 = bitcast %struct.point* %93 to i64*
  %95 = load i64, i64* %94, align 8
  call void @point_list_insert(%struct.CHpoints** noundef %8, i64 %95)
  br label %96

96:                                               ; preds = %91, %80
  br label %97

97:                                               ; preds = %96, %79
  %98 = load %struct.CHpoints*, %struct.CHpoints** %8, align 8
  ret %struct.CHpoints* %98
}

declare dso_local void @point_list_insert(%struct.CHpoints** noundef, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_segments(%struct.DCEL_segment* noundef %0, %struct.DCEL_segment* noundef %1, %struct.DCEL_segment* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.DCEL_segment*, align 8
  %6 = alloca %struct.DCEL_segment*, align 8
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.DCEL_segment*, align 8
  %10 = alloca %struct.point, align 4
  store %struct.DCEL_segment* %0, %struct.DCEL_segment** %5, align 8
  store %struct.DCEL_segment* %1, %struct.DCEL_segment** %6, align 8
  store %struct.DCEL_segment* %2, %struct.DCEL_segment** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %12 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %11, i32 0, i32 0
  %13 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %14 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %13, i32 0, i32 0
  %15 = bitcast %struct.point* %12 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = bitcast %struct.point* %14 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @point_equal(i64 %16, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %23 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %22, i32 0, i32 1
  %24 = bitcast %struct.point* %10 to i8*
  %25 = bitcast %struct.point* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 8 %25, i64 8, i1 false)
  br label %31

26:                                               ; preds = %4
  %27 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %27, i32 0, i32 0
  %29 = bitcast %struct.point* %10 to i8*
  %30 = bitcast %struct.point* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 8 %30, i64 8, i1 false)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %34 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %33, i32 0, i32 0
  %35 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %36 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %35, i32 0, i32 1
  %37 = bitcast %struct.point* %34 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = bitcast %struct.point* %36 to i64*
  %40 = load i64, i64* %39, align 8
  %41 = bitcast %struct.point* %10 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = call i32 @visible(i32 noundef %32, i64 %38, i64 %40, i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %167

45:                                               ; preds = %31
  %46 = call noalias i8* @malloc(i64 noundef 48) #4
  %47 = bitcast i8* %46 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %47, %struct.DCEL_segment** %9, align 8
  %48 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %49 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %48, i32 0, i32 0
  %50 = bitcast %struct.point* %49 to i8*
  %51 = bitcast %struct.point* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 4 %51, i64 8, i1 false)
  %52 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %53 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %52, i32 0, i32 1
  %54 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %55 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %54, i32 0, i32 1
  %56 = bitcast %struct.point* %53 to i8*
  %57 = bitcast %struct.point* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %45
  %61 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %62 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %61, i32 0, i32 2
  %63 = load %struct.DCEL_segment*, %struct.DCEL_segment** %62, align 8
  %64 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %65 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %64, i32 0, i32 2
  store %struct.DCEL_segment* %63, %struct.DCEL_segment** %65, align 8
  %66 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %67 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %68 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %67, i32 0, i32 3
  store %struct.DCEL_segment* %66, %struct.DCEL_segment** %68, align 8
  %69 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 4
  store %struct.DCEL_segment* %69, %struct.DCEL_segment** %71, align 8
  %72 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %73 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %74 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %73, i32 0, i32 5
  store %struct.DCEL_segment* %72, %struct.DCEL_segment** %74, align 8
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %76 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %77 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %76, i32 0, i32 5
  store %struct.DCEL_segment* %75, %struct.DCEL_segment** %77, align 8
  %78 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %79 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %78, i32 0, i32 2
  %80 = load %struct.DCEL_segment*, %struct.DCEL_segment** %79, align 8
  %81 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %80, i32 0, i32 0
  %82 = bitcast %struct.point* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = bitcast %struct.point* %10 to i64*
  %85 = load i64, i64* %84, align 4
  %86 = call i32 @point_equal(i64 %83, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %60
  %89 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %90 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %91 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %90, i32 0, i32 2
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %91, align 8
  %93 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %92, i32 0, i32 4
  store %struct.DCEL_segment* %89, %struct.DCEL_segment** %93, align 8
  br label %100

94:                                               ; preds = %60
  %95 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %96 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %97 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %96, i32 0, i32 2
  %98 = load %struct.DCEL_segment*, %struct.DCEL_segment** %97, align 8
  %99 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %98, i32 0, i32 5
  store %struct.DCEL_segment* %95, %struct.DCEL_segment** %99, align 8
  br label %100

100:                                              ; preds = %94, %88
  %101 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %102 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %103 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %102, i32 0, i32 2
  store %struct.DCEL_segment* %101, %struct.DCEL_segment** %103, align 8
  %104 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %105 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %106 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %105, i32 0, i32 3
  store %struct.DCEL_segment* %104, %struct.DCEL_segment** %106, align 8
  %107 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %108 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %109 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %108, i32 0, i32 2
  %110 = load %struct.DCEL_segment*, %struct.DCEL_segment** %109, align 8
  %111 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %112 = load i32, i32* %8, align 4
  call void @add_segments(%struct.DCEL_segment* noundef %107, %struct.DCEL_segment* noundef %110, %struct.DCEL_segment* noundef %111, i32 noundef %112)
  br label %166

113:                                              ; preds = %45
  %114 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %115 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %114, i32 0, i32 4
  %116 = load %struct.DCEL_segment*, %struct.DCEL_segment** %115, align 8
  %117 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %118 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %117, i32 0, i32 4
  store %struct.DCEL_segment* %116, %struct.DCEL_segment** %118, align 8
  %119 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %120 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %121 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %120, i32 0, i32 5
  store %struct.DCEL_segment* %119, %struct.DCEL_segment** %121, align 8
  %122 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %123 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %124 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %123, i32 0, i32 2
  store %struct.DCEL_segment* %122, %struct.DCEL_segment** %124, align 8
  %125 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %126 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %127 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %126, i32 0, i32 3
  store %struct.DCEL_segment* %125, %struct.DCEL_segment** %127, align 8
  %128 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %129 = load %struct.DCEL_segment*, %struct.DCEL_segment** %5, align 8
  %130 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %129, i32 0, i32 3
  store %struct.DCEL_segment* %128, %struct.DCEL_segment** %130, align 8
  %131 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %132 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %131, i32 0, i32 4
  %133 = load %struct.DCEL_segment*, %struct.DCEL_segment** %132, align 8
  %134 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %133, i32 0, i32 0
  %135 = bitcast %struct.point* %134 to i64*
  %136 = load i64, i64* %135, align 8
  %137 = bitcast %struct.point* %10 to i64*
  %138 = load i64, i64* %137, align 4
  %139 = call i32 @point_equal(i64 %136, i64 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %113
  %142 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %143 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %144 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %143, i32 0, i32 4
  %145 = load %struct.DCEL_segment*, %struct.DCEL_segment** %144, align 8
  %146 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %145, i32 0, i32 2
  store %struct.DCEL_segment* %142, %struct.DCEL_segment** %146, align 8
  br label %153

147:                                              ; preds = %113
  %148 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %149 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %150 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %149, i32 0, i32 4
  %151 = load %struct.DCEL_segment*, %struct.DCEL_segment** %150, align 8
  %152 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %151, i32 0, i32 3
  store %struct.DCEL_segment* %148, %struct.DCEL_segment** %152, align 8
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %155 = load %struct.DCEL_segment*, %struct.DCEL_segment** %6, align 8
  %156 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %155, i32 0, i32 4
  store %struct.DCEL_segment* %154, %struct.DCEL_segment** %156, align 8
  %157 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %158 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %159 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %158, i32 0, i32 5
  store %struct.DCEL_segment* %157, %struct.DCEL_segment** %159, align 8
  %160 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %161 = load %struct.DCEL_segment*, %struct.DCEL_segment** %9, align 8
  %162 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %161, i32 0, i32 4
  %163 = load %struct.DCEL_segment*, %struct.DCEL_segment** %162, align 8
  %164 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %165 = load i32, i32* %8, align 4
  call void @add_segments(%struct.DCEL_segment* noundef %160, %struct.DCEL_segment* noundef %163, %struct.DCEL_segment* noundef %164, i32 noundef %165)
  br label %166

166:                                              ; preds = %153, %100
  br label %167

167:                                              ; preds = %166, %31
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CHpoints* @construct_ch() #0 {
  %1 = alloca %struct.CHpoints*, align 8
  %2 = alloca %struct.DCEL_segment*, align 8
  %3 = alloca %struct.DCEL_segment*, align 8
  %4 = alloca %struct.DCEL_segment*, align 8
  %5 = alloca %struct.point, align 4
  %6 = alloca %struct.point, align 4
  %7 = alloca %struct.DCEL_segment*, align 8
  %8 = alloca %struct.point, align 4
  store i32 0, i32* @CHno, align 4
  %9 = call i32 @empty()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %106, label %11

11:                                               ; preds = %0
  %12 = call noalias i8* @malloc(i64 noundef 48) #4
  %13 = bitcast i8* %12 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %13, %struct.DCEL_segment** %2, align 8
  %14 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %15 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %14, i32 0, i32 0
  %16 = call i64 @delete_min(%struct.splay_node** noundef @Splaytree)
  %17 = bitcast %struct.point* %5 to i64*
  store i64 %16, i64* %17, align 4
  %18 = bitcast %struct.point* %15 to i8*
  %19 = bitcast %struct.point* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 4 %19, i64 8, i1 false)
  %20 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %21 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %22 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %21, i32 0, i32 2
  store %struct.DCEL_segment* %20, %struct.DCEL_segment** %22, align 8
  %23 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %24 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %25 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %24, i32 0, i32 3
  store %struct.DCEL_segment* %23, %struct.DCEL_segment** %25, align 8
  %26 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %27 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %28 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %27, i32 0, i32 4
  store %struct.DCEL_segment* %26, %struct.DCEL_segment** %28, align 8
  %29 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %30 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %31 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %30, i32 0, i32 5
  store %struct.DCEL_segment* %29, %struct.DCEL_segment** %31, align 8
  %32 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  store %struct.DCEL_segment* %32, %struct.DCEL_segment** %3, align 8
  %33 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  store %struct.DCEL_segment* %33, %struct.DCEL_segment** %4, align 8
  %34 = call i32 @empty()
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %11
  %37 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %38 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %37, i32 0, i32 1
  %39 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %40 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %39, i32 0, i32 0
  %41 = bitcast %struct.point* %38 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 8, i1 false)
  br label %100

43:                                               ; preds = %11
  %44 = load %struct.DCEL_segment*, %struct.DCEL_segment** %2, align 8
  %45 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %44, i32 0, i32 1
  %46 = call i64 @delete_min(%struct.splay_node** noundef @Splaytree)
  %47 = bitcast %struct.point* %6 to i64*
  store i64 %46, i64* %47, align 4
  %48 = bitcast %struct.point* %45 to i8*
  %49 = bitcast %struct.point* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %48, i8* align 4 %49, i64 8, i1 false)
  br label %50

50:                                               ; preds = %54, %43
  %51 = call i32 @empty()
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %99

54:                                               ; preds = %50
  %55 = call noalias i8* @malloc(i64 noundef 48) #4
  %56 = bitcast i8* %55 to %struct.DCEL_segment*
  store %struct.DCEL_segment* %56, %struct.DCEL_segment** %7, align 8
  %57 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %58 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %57, i32 0, i32 0
  %59 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %60 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %59, i32 0, i32 1
  %61 = bitcast %struct.point* %58 to i8*
  %62 = bitcast %struct.point* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 8, i1 false)
  %63 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %64 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %63, i32 0, i32 1
  %65 = call i64 @delete_min(%struct.splay_node** noundef @Splaytree)
  %66 = bitcast %struct.point* %8 to i64*
  store i64 %65, i64* %66, align 4
  %67 = bitcast %struct.point* %64 to i8*
  %68 = bitcast %struct.point* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 4 %68, i64 8, i1 false)
  %69 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %70 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %71 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %70, i32 0, i32 2
  store %struct.DCEL_segment* %69, %struct.DCEL_segment** %71, align 8
  %72 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %73 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %74 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %73, i32 0, i32 4
  store %struct.DCEL_segment* %72, %struct.DCEL_segment** %74, align 8
  %75 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %76 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %77 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %76, i32 0, i32 3
  store %struct.DCEL_segment* %75, %struct.DCEL_segment** %77, align 8
  %78 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %79 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %80 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %79, i32 0, i32 5
  store %struct.DCEL_segment* %78, %struct.DCEL_segment** %80, align 8
  %81 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %82 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %83 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %82, i32 0, i32 3
  store %struct.DCEL_segment* %81, %struct.DCEL_segment** %83, align 8
  %84 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %85 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %86 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %85, i32 0, i32 5
  store %struct.DCEL_segment* %84, %struct.DCEL_segment** %86, align 8
  %87 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %88 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %89 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %87, %struct.DCEL_segment* noundef %88, %struct.DCEL_segment* noundef %89, i32 noundef 0)
  %90 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %91 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %90, i32 0, i32 3
  %92 = load %struct.DCEL_segment*, %struct.DCEL_segment** %91, align 8
  store %struct.DCEL_segment* %92, %struct.DCEL_segment** %3, align 8
  %93 = load %struct.DCEL_segment*, %struct.DCEL_segment** %7, align 8
  %94 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %95 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  call void @add_segments(%struct.DCEL_segment* noundef %93, %struct.DCEL_segment* noundef %94, %struct.DCEL_segment* noundef %95, i32 noundef 1)
  %96 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %97 = getelementptr inbounds %struct.DCEL_segment, %struct.DCEL_segment* %96, i32 0, i32 5
  %98 = load %struct.DCEL_segment*, %struct.DCEL_segment** %97, align 8
  store %struct.DCEL_segment* %98, %struct.DCEL_segment** %4, align 8
  br label %50, !llvm.loop !6

99:                                               ; preds = %50
  br label %100

100:                                              ; preds = %99, %36
  %101 = load %struct.splay_node*, %struct.splay_node** @Splaytree, align 8
  call void @free_tree(%struct.splay_node* noundef %101)
  %102 = load %struct.DCEL_segment*, %struct.DCEL_segment** %3, align 8
  %103 = load %struct.DCEL_segment*, %struct.DCEL_segment** %4, align 8
  %104 = call %struct.CHpoints* @get_points_on_hull(%struct.DCEL_segment* noundef %102, %struct.DCEL_segment* noundef %103)
  %105 = call %struct.CHpoints* @remove_points(%struct.CHpoints* noundef %104)
  store %struct.CHpoints* %105, %struct.CHpoints** %1, align 8
  br label %106

106:                                              ; preds = %100, %0
  %107 = load %struct.CHpoints*, %struct.CHpoints** %1, align 8
  ret %struct.CHpoints* %107
}

declare dso_local i64 @delete_min(%struct.splay_node** noundef) #1

declare dso_local void @free_tree(%struct.splay_node* noundef) #1

declare dso_local %struct.CHpoints* @remove_points(%struct.CHpoints* noundef) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
