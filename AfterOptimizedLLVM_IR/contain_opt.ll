; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/contain.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/contain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external dso_local global %struct.cube_struct, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_contain(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %6 = load %struct.set_family*, %struct.set_family** %2, align 8
  %7 = call i32** @sf_sort(%struct.set_family* noundef %6, i32 (...)* noundef @descend)
  store i32** %7, i32*** %4, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @rm_equal(i32** noundef %8, i32 (...)* noundef @descend)
  store i32 %9, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i32 @rm_contain(i32** noundef %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.set_family*, %struct.set_family** %2, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.set_family* @sf_unlist(i32** noundef %12, i32 noundef %13, i32 noundef %16)
  store %struct.set_family* %17, %struct.set_family** %5, align 8
  %18 = load %struct.set_family*, %struct.set_family** %2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %18)
  %19 = load %struct.set_family*, %struct.set_family** %5, align 8
  ret %struct.set_family* %19
}

declare dso_local i32 @descend(...) #1

declare dso_local void @sf_free(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_rev_contain(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %6 = load %struct.set_family*, %struct.set_family** %2, align 8
  %7 = call i32** @sf_sort(%struct.set_family* noundef %6, i32 (...)* noundef @ascend)
  store i32** %7, i32*** %4, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @rm_equal(i32** noundef %8, i32 (...)* noundef @ascend)
  store i32 %9, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = call i32 @rm_rev_contain(i32** noundef %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32**, i32*** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.set_family*, %struct.set_family** %2, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.set_family* @sf_unlist(i32** noundef %12, i32 noundef %13, i32 noundef %16)
  store %struct.set_family* %17, %struct.set_family** %5, align 8
  %18 = load %struct.set_family*, %struct.set_family** %2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %18)
  %19 = load %struct.set_family*, %struct.set_family** %5, align 8
  ret %struct.set_family* %19
}

declare dso_local i32 @ascend(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_ind_contain(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.set_family*, %struct.set_family** %3, align 8
  %9 = call i32** @sf_sort(%struct.set_family* noundef %8, i32 (...)* noundef @descend)
  store i32** %9, i32*** %6, align 8
  %10 = load i32**, i32*** %6, align 8
  %11 = call i32 @rm_equal(i32** noundef %10, i32 (...)* noundef @descend)
  store i32 %11, i32* %5, align 4
  %12 = load i32**, i32*** %6, align 8
  %13 = call i32 @rm_contain(i32** noundef %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32**, i32*** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.set_family*, %struct.set_family** %3, align 8
  %17 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.set_family*, %struct.set_family** %3, align 8
  %21 = getelementptr inbounds %struct.set_family, %struct.set_family* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.set_family* @sf_ind_unlist(i32** noundef %14, i32 noundef %15, i32 noundef %18, i32* noundef %19, i32* noundef %22)
  store %struct.set_family* %23, %struct.set_family** %7, align 8
  %24 = load %struct.set_family*, %struct.set_family** %3, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %24)
  %25 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_dupl(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %6 = load %struct.set_family*, %struct.set_family** %2, align 8
  %7 = call i32** @sf_sort(%struct.set_family* noundef %6, i32 (...)* noundef @descend)
  store i32** %7, i32*** %4, align 8
  %8 = load i32**, i32*** %4, align 8
  %9 = call i32 @rm_equal(i32** noundef %8, i32 (...)* noundef @descend)
  store i32 %9, i32* %3, align 4
  %10 = load i32**, i32*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.set_family*, %struct.set_family** %2, align 8
  %13 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.set_family* @sf_unlist(i32** noundef %10, i32 noundef %11, i32 noundef %14)
  store %struct.set_family* %15, %struct.set_family** %5, align 8
  %16 = load %struct.set_family*, %struct.set_family** %2, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %16)
  %17 = load %struct.set_family*, %struct.set_family** %5, align 8
  ret %struct.set_family* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_union(%struct.set_family* noundef %0, %struct.set_family* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca %struct.set_family*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.set_family*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store %struct.set_family* %1, %struct.set_family** %4, align 8
  %10 = load %struct.set_family*, %struct.set_family** %3, align 8
  %11 = call i32** @sf_list(%struct.set_family* noundef %10)
  store i32** %11, i32*** %7, align 8
  %12 = load %struct.set_family*, %struct.set_family** %4, align 8
  %13 = call i32** @sf_list(%struct.set_family* noundef %12)
  store i32** %13, i32*** %8, align 8
  %14 = load %struct.set_family*, %struct.set_family** %3, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.set_family*, %struct.set_family** %4, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %16, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.set_family*, %struct.set_family** %3, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  br label %29

25:                                               ; preds = %2
  %26 = load %struct.set_family*, %struct.set_family** %4, align 8
  %27 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = phi i32 [ %24, %21 ], [ %28, %25 ]
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = call i8* @malloc(i64 noundef %33)
  %35 = bitcast i8* %34 to i32**
  store i32** %35, i32*** %9, align 8
  %36 = load i32**, i32*** %7, align 8
  %37 = load i32**, i32*** %8, align 8
  %38 = load i32**, i32*** %9, align 8
  %39 = call i32 @rm2_equal(i32** noundef %36, i32** noundef %37, i32** noundef %38, i32 (...)* noundef @descend)
  store i32 %39, i32* %5, align 4
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32**, i32*** %8, align 8
  %42 = call i32 @rm2_contain(i32** noundef %40, i32** noundef %41)
  %43 = load i32**, i32*** %8, align 8
  %44 = load i32**, i32*** %7, align 8
  %45 = call i32 @rm2_contain(i32** noundef %43, i32** noundef %44)
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32**, i32*** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.set_family*, %struct.set_family** %3, align 8
  %54 = getelementptr inbounds %struct.set_family, %struct.set_family* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.set_family* @sf_merge(i32** noundef %49, i32** noundef %50, i32** noundef %51, i32 noundef %52, i32 noundef %55)
  store %struct.set_family* %56, %struct.set_family** %6, align 8
  %57 = load %struct.set_family*, %struct.set_family** %3, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %57)
  %58 = load %struct.set_family*, %struct.set_family** %4, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %58)
  %59 = load %struct.set_family*, %struct.set_family** %6, align 8
  ret %struct.set_family* %59
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @dist_merge(%struct.set_family* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.set_family*, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* noundef %10, i32* noundef %11)
  %13 = load %struct.set_family*, %struct.set_family** %3, align 8
  %14 = call i32** @sf_sort(%struct.set_family* noundef %13, i32 (...)* noundef @d1_order)
  store i32** %14, i32*** %5, align 8
  %15 = load i32**, i32*** %5, align 8
  %16 = call i32 @d1_rm_equal(i32** noundef %15, i32 (...)* noundef @d1_order)
  store i32 %16, i32* %6, align 4
  %17 = load i32**, i32*** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.set_family*, %struct.set_family** %3, align 8
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.set_family* @sf_unlist(i32** noundef %17, i32 noundef %18, i32 noundef %21)
  store %struct.set_family* %22, %struct.set_family** %7, align 8
  %23 = load %struct.set_family*, %struct.set_family** %3, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* noundef %23)
  %24 = load %struct.set_family*, %struct.set_family** %7, align 8
  ret %struct.set_family* %24
}

declare dso_local i32* @set_copy(...) #1

declare dso_local i32 @d1_order(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @d1merge(%struct.set_family* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32, align 4
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.set_family*, %struct.set_family** %3, align 8
  %6 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32*, i32** %6, i64 %8
  %10 = load i32*, i32** %9, align 8
  %11 = call %struct.set_family* @dist_merge(%struct.set_family* noundef %5, i32* noundef %10)
  ret %struct.set_family* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @d1_rm_equal(i32** noundef %0, i32 (...)* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32 (...)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 (...)* %1, i32 (...)** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32**, i32*** %3, align 8
  %9 = getelementptr inbounds i32*, i32** %8, i64 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %77

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %63, %12
  %14 = load i32**, i32*** %3, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %13
  %21 = load i32 (...)*, i32 (...)** %4, align 8
  %22 = load i32**, i32*** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32**, i32*** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = bitcast i32 (...)* %21 to i32 (i32**, i32**, ...)*
  %31 = call i32 (i32**, i32**, ...) %30(i32** noundef %25, i32** noundef %29)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %20
  %34 = load i32**, i32*** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32**, i32*** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32**, i32*** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* noundef %38, i32* noundef %43, i32* noundef %48)
  br label %62

50:                                               ; preds = %20
  %51 = load i32**, i32*** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  store i32* %55, i32** %60, align 8
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %50, %33
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %13, !llvm.loop !4

66:                                               ; preds = %13
  %67 = load i32**, i32*** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32**, i32*** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32*, i32** %72, i64 %75
  store i32* %71, i32** %76, align 8
  br label %77

77:                                               ; preds = %66, %2
  %78 = load i32**, i32*** %3, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32* @set_or(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm_equal(i32** noundef %0, i32 (...)* noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32 (...)*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store i32** %0, i32*** %3, align 8
  store i32 (...)* %1, i32 (...)** %4, align 8
  %7 = load i32**, i32*** %3, align 8
  store i32** %7, i32*** %6, align 8
  %8 = load i32**, i32*** %3, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load i32**, i32*** %3, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 1
  store i32** %13, i32*** %5, align 8
  br label %14

14:                                               ; preds = %33, %11
  %15 = load i32**, i32*** %5, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32 (...)*, i32 (...)** %4, align 8
  %20 = load i32**, i32*** %5, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 -1
  %23 = bitcast i32 (...)* %19 to i32 (i32**, i32**, ...)*
  %24 = call i32 (i32**, i32**, ...) %23(i32** noundef %20, i32** noundef %22)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load i32**, i32*** %5, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i64 -1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i32 1
  store i32** %31, i32*** %6, align 8
  store i32* %29, i32** %30, align 8
  br label %32

32:                                               ; preds = %26, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32**, i32*** %5, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %35, i32*** %5, align 8
  br label %14, !llvm.loop !6

36:                                               ; preds = %14
  %37 = load i32**, i32*** %5, align 8
  %38 = getelementptr inbounds i32*, i32** %37, i64 -1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32**, i32*** %6, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i32 1
  store i32** %41, i32*** %6, align 8
  store i32* %39, i32** %40, align 8
  %42 = load i32**, i32*** %6, align 8
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %2
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32**, i32*** %3, align 8
  %46 = ptrtoint i32** %44 to i64
  %47 = ptrtoint i32** %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 8
  %50 = trunc i64 %49 to i32
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm_contain(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %11 = load i32**, i32*** %2, align 8
  store i32** %11, i32*** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i32**, i32*** %2, align 8
  store i32** %12, i32*** %3, align 8
  br label %13

13:                                               ; preds = %74, %1
  %14 = load i32**, i32*** %3, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %3, align 8
  %16 = load i32*, i32** %14, align 8
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 16
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = lshr i32 %28, 16
  store i32 %29, i32* %9, align 4
  %30 = load i32**, i32*** %8, align 8
  store i32** %30, i32*** %5, align 8
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32**, i32*** %2, align 8
  store i32** %32, i32*** %4, align 8
  br label %33

33:                                               ; preds = %68, %31
  %34 = load i32**, i32*** %4, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = icmp ne i32** %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32**, i32*** %4, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %4, align 8
  %40 = load i32*, i32** %38, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1023
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %61, %37
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %50, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %65

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %45, label %65, !llvm.loop !7

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %33, !llvm.loop !8

69:                                               ; preds = %65
  br label %74

70:                                               ; preds = %33
  %71 = load i32*, i32** %6, align 8
  %72 = load i32**, i32*** %8, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i32 1
  store i32** %73, i32*** %8, align 8
  store i32* %71, i32** %72, align 8
  br label %74

74:                                               ; preds = %70, %69
  br label %13, !llvm.loop !9

75:                                               ; preds = %13
  %76 = load i32**, i32*** %8, align 8
  store i32* null, i32** %76, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32**, i32*** %2, align 8
  %79 = ptrtoint i32** %77 to i64
  %80 = ptrtoint i32** %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm_rev_contain(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  %11 = load i32**, i32*** %2, align 8
  store i32** %11, i32*** %8, align 8
  store i32 -1, i32* %9, align 4
  %12 = load i32**, i32*** %2, align 8
  store i32** %12, i32*** %3, align 8
  br label %13

13:                                               ; preds = %74, %1
  %14 = load i32**, i32*** %3, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %3, align 8
  %16 = load i32*, i32** %14, align 8
  store i32* %16, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %75

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 16
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = lshr i32 %28, 16
  store i32 %29, i32* %9, align 4
  %30 = load i32**, i32*** %8, align 8
  store i32** %30, i32*** %5, align 8
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32**, i32*** %2, align 8
  store i32** %32, i32*** %4, align 8
  br label %33

33:                                               ; preds = %68, %31
  %34 = load i32**, i32*** %4, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = icmp ne i32** %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load i32**, i32*** %4, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %4, align 8
  %40 = load i32*, i32** %38, align 8
  store i32* %40, i32** %7, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 1023
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %61, %37
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %50, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %65

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %45, label %65, !llvm.loop !10

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %33, !llvm.loop !11

69:                                               ; preds = %65
  br label %74

70:                                               ; preds = %33
  %71 = load i32*, i32** %6, align 8
  %72 = load i32**, i32*** %8, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i32 1
  store i32** %73, i32*** %8, align 8
  store i32* %71, i32** %72, align 8
  br label %74

74:                                               ; preds = %70, %69
  br label %13, !llvm.loop !12

75:                                               ; preds = %13
  %76 = load i32**, i32*** %8, align 8
  store i32* null, i32** %76, align 8
  %77 = load i32**, i32*** %8, align 8
  %78 = load i32**, i32*** %2, align 8
  %79 = ptrtoint i32** %77 to i64
  %80 = ptrtoint i32** %78 to i64
  %81 = sub i64 %79, %80
  %82 = sdiv exact i64 %81, 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm2_equal(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32 (...)* noundef %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32 (...)*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32**, align 8
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 (...)* %3, i32 (...)** %8, align 8
  %12 = load i32**, i32*** %5, align 8
  store i32** %12, i32*** %9, align 8
  %13 = load i32**, i32*** %6, align 8
  store i32** %13, i32*** %10, align 8
  %14 = load i32**, i32*** %7, align 8
  store i32** %14, i32*** %11, align 8
  br label %15

15:                                               ; preds = %51, %4
  %16 = load i32**, i32*** %5, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32**, i32*** %6, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i1 [ false, %15 ], [ %22, %19 ]
  br i1 %24, label %25, label %52

25:                                               ; preds = %23
  %26 = load i32 (...)*, i32 (...)** %8, align 8
  %27 = load i32**, i32*** %5, align 8
  %28 = load i32**, i32*** %6, align 8
  %29 = bitcast i32 (...)* %26 to i32 (i32**, i32**, ...)*
  %30 = call i32 (i32**, i32**, ...) %29(i32** noundef %27, i32** noundef %28)
  switch i32 %30, label %51 [
    i32 -1, label %31
    i32 0, label %37
    i32 1, label %45
  ]

31:                                               ; preds = %25
  %32 = load i32**, i32*** %5, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i32 1
  store i32** %33, i32*** %5, align 8
  %34 = load i32*, i32** %32, align 8
  %35 = load i32**, i32*** %9, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i32 1
  store i32** %36, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  br label %51

37:                                               ; preds = %25
  %38 = load i32**, i32*** %5, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %5, align 8
  %40 = load i32*, i32** %38, align 8
  %41 = load i32**, i32*** %11, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i32 1
  store i32** %42, i32*** %11, align 8
  store i32* %40, i32** %41, align 8
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i32 1
  store i32** %44, i32*** %6, align 8
  br label %51

45:                                               ; preds = %25
  %46 = load i32**, i32*** %6, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i32 1
  store i32** %47, i32*** %6, align 8
  %48 = load i32*, i32** %46, align 8
  %49 = load i32**, i32*** %10, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i32 1
  store i32** %50, i32*** %10, align 8
  store i32* %48, i32** %49, align 8
  br label %51

51:                                               ; preds = %25, %45, %37, %31
  br label %15, !llvm.loop !13

52:                                               ; preds = %23
  br label %53

53:                                               ; preds = %57, %52
  %54 = load i32**, i32*** %5, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32**, i32*** %5, align 8
  %59 = getelementptr inbounds i32*, i32** %58, i32 1
  store i32** %59, i32*** %5, align 8
  %60 = load i32*, i32** %58, align 8
  %61 = load i32**, i32*** %9, align 8
  %62 = getelementptr inbounds i32*, i32** %61, i32 1
  store i32** %62, i32*** %9, align 8
  store i32* %60, i32** %61, align 8
  br label %53, !llvm.loop !14

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %68, %63
  %65 = load i32**, i32*** %6, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32**, i32*** %6, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i32 1
  store i32** %70, i32*** %6, align 8
  %71 = load i32*, i32** %69, align 8
  %72 = load i32**, i32*** %10, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i32 1
  store i32** %73, i32*** %10, align 8
  store i32* %71, i32** %72, align 8
  br label %64, !llvm.loop !15

74:                                               ; preds = %64
  %75 = load i32**, i32*** %11, align 8
  store i32* null, i32** %75, align 8
  %76 = load i32**, i32*** %10, align 8
  store i32* null, i32** %76, align 8
  %77 = load i32**, i32*** %9, align 8
  store i32* null, i32** %77, align 8
  %78 = load i32**, i32*** %11, align 8
  %79 = load i32**, i32*** %7, align 8
  %80 = ptrtoint i32** %78 to i64
  %81 = ptrtoint i32** %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 8
  %84 = trunc i64 %83 to i32
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @rm2_contain(i32** noundef %0, i32** noundef %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32** %1, i32*** %4, align 8
  %11 = load i32**, i32*** %3, align 8
  store i32** %11, i32*** %9, align 8
  %12 = load i32**, i32*** %3, align 8
  store i32** %12, i32*** %5, align 8
  br label %13

13:                                               ; preds = %71, %2
  %14 = load i32**, i32*** %5, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i32 1
  store i32** %15, i32*** %5, align 8
  %16 = load i32*, i32** %14, align 8
  store i32* %16, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %72

18:                                               ; preds = %13
  %19 = load i32**, i32*** %4, align 8
  store i32** %19, i32*** %6, align 8
  br label %20

20:                                               ; preds = %65, %18
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i32 1
  store i32** %22, i32*** %6, align 8
  %23 = load i32*, i32** %21, align 8
  store i32* %23, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = lshr i32 %28, 16
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = lshr i32 %32, 16
  %34 = icmp ugt i32 %29, %33
  br label %35

35:                                               ; preds = %25, %20
  %36 = phi i1 [ false, %20 ], [ %34, %25 ]
  br i1 %36, label %37, label %67

37:                                               ; preds = %35
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 1023
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %58, %37
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %47, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %62

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %10, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %42, label %62, !llvm.loop !16

62:                                               ; preds = %58, %56
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %20, !llvm.loop !17

66:                                               ; preds = %62
  br label %71

67:                                               ; preds = %35
  %68 = load i32*, i32** %7, align 8
  %69 = load i32**, i32*** %9, align 8
  %70 = getelementptr inbounds i32*, i32** %69, i32 1
  store i32** %70, i32*** %9, align 8
  store i32* %68, i32** %69, align 8
  br label %71

71:                                               ; preds = %67, %66
  br label %13, !llvm.loop !18

72:                                               ; preds = %13
  %73 = load i32**, i32*** %9, align 8
  store i32* null, i32** %73, align 8
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32**, i32*** %3, align 8
  %76 = ptrtoint i32** %74 to i64
  %77 = ptrtoint i32** %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 8
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @sf_sort(%struct.set_family* noundef %0, i32 (...)* noundef %1) #0 {
  %3 = alloca %struct.set_family*, align 8
  %4 = alloca i32 (...)*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %3, align 8
  store i32 (...)* %1, i32 (...)** %4, align 8
  %9 = load %struct.set_family*, %struct.set_family** %3, align 8
  %10 = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = call i8* @malloc(i64 noundef %14)
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** %8, align 8
  store i32** %16, i32*** %7, align 8
  %17 = load %struct.set_family*, %struct.set_family** %3, align 8
  %18 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.set_family*, %struct.set_family** %3, align 8
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.set_family*, %struct.set_family** %3, align 8
  %25 = getelementptr inbounds %struct.set_family, %struct.set_family* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %20, i64 %28
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %49, %2
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ult i32* %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %36, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 (i32*, ...) bitcast (i32 (...)* @set_ord to i32 (i32*, ...)*)(i32* noundef %39)
  %41 = shl i32 %40, 16
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load i32**, i32*** %7, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i32 1
  store i32** %48, i32*** %7, align 8
  store i32* %46, i32** %47, align 8
  br label %49

49:                                               ; preds = %34
  %50 = load %struct.set_family*, %struct.set_family** %3, align 8
  %51 = getelementptr inbounds %struct.set_family, %struct.set_family* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %5, align 8
  br label %30, !llvm.loop !19

56:                                               ; preds = %30
  %57 = load i32**, i32*** %7, align 8
  store i32* null, i32** %57, align 8
  %58 = load i32**, i32*** %8, align 8
  %59 = bitcast i32** %58 to i8*
  %60 = load %struct.set_family*, %struct.set_family** %3, align 8
  %61 = getelementptr inbounds %struct.set_family, %struct.set_family* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i32 (...)*, i32 (...)** %4, align 8
  %65 = bitcast i32 (...)* %64 to i32 (i8*, i8*)*
  call void @qsort(i8* noundef %59, i64 noundef %63, i64 noundef 8, i32 (i8*, i8*)* noundef %65)
  %66 = load i32**, i32*** %8, align 8
  ret i32** %66
}

declare dso_local i32 @set_ord(...) #1

declare dso_local void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @sf_list(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %7 = load %struct.set_family*, %struct.set_family** %2, align 8
  %8 = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = call i8* @malloc(i64 noundef %12)
  %14 = bitcast i8* %13 to i32**
  store i32** %14, i32*** %6, align 8
  store i32** %14, i32*** %5, align 8
  %15 = load %struct.set_family*, %struct.set_family** %2, align 8
  %16 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.set_family*, %struct.set_family** %2, align 8
  %20 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.set_family*, %struct.set_family** %2, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %18, i64 %26
  store i32* %27, i32** %4, align 8
  br label %28

28:                                               ; preds = %36, %1
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = icmp ult i32* %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32**, i32*** %5, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %35, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load %struct.set_family*, %struct.set_family** %2, align 8
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %3, align 8
  br label %28, !llvm.loop !20

43:                                               ; preds = %28
  %44 = load i32**, i32*** %5, align 8
  store i32* null, i32** %44, align 8
  %45 = load i32**, i32*** %6, align 8
  ret i32** %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_unlist(i32** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.set_family*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %12, i32 noundef %13)
  store %struct.set_family* %14, %struct.set_family** %10, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.set_family*, %struct.set_family** %10, align 8
  %17 = getelementptr inbounds %struct.set_family, %struct.set_family* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load %struct.set_family*, %struct.set_family** %10, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load i32**, i32*** %4, align 8
  store i32** %21, i32*** %9, align 8
  br label %22

22:                                               ; preds = %47, %3
  %23 = load i32**, i32*** %9, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i32 1
  store i32** %24, i32*** %9, align 8
  %25 = load i32*, i32** %23, align 8
  store i32* %25, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1023
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %42, %27
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %37, i32* %41, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %11, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %32, label %46, !llvm.loop !21

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.set_family*, %struct.set_family** %10, align 8
  %49 = getelementptr inbounds %struct.set_family, %struct.set_family* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32* %53, i32** %7, align 8
  br label %22, !llvm.loop !22

54:                                               ; preds = %22
  %55 = load i32**, i32*** %4, align 8
  %56 = icmp ne i32** %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32**, i32*** %4, align 8
  %59 = bitcast i32** %58 to i8*
  call void @free(i8* noundef %59)
  store i32** null, i32*** %4, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.set_family*, %struct.set_family** %10, align 8
  ret %struct.set_family* %61
}

declare dso_local %struct.set_family* @sf_new(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_ind_unlist(i32** noundef %0, i32 noundef %1, i32 noundef %2, i32* noundef %3, i32* noundef %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.set_family*, align 8
  %17 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %18, i32 noundef %19)
  store %struct.set_family* %20, %struct.set_family** %16, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.set_family*, %struct.set_family** %16, align 8
  %23 = getelementptr inbounds %struct.set_family, %struct.set_family* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = call i8* @malloc(i64 noundef %26)
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %15, align 8
  %29 = load %struct.set_family*, %struct.set_family** %16, align 8
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %11, align 8
  %32 = load i32**, i32*** %6, align 8
  store i32** %32, i32*** %13, align 8
  store i32 0, i32* %14, align 4
  br label %33

33:                                               ; preds = %76, %5
  %34 = load i32**, i32*** %13, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i32 1
  store i32** %35, i32*** %13, align 8
  %36 = load i32*, i32** %34, align 8
  store i32* %36, i32** %12, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 1023
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %53, %38
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %17, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %17, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %17, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %43, label %57, !llvm.loop !23

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = ptrtoint i32* %59 to i64
  %62 = ptrtoint i32* %60 to i64
  %63 = sub i64 %61, %62
  %64 = sdiv exact i64 %63, 4
  %65 = load %struct.set_family*, %struct.set_family** %16, align 8
  %66 = getelementptr inbounds %struct.set_family, %struct.set_family* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sdiv i64 %64, %68
  %70 = getelementptr inbounds i32, i32* %58, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %57
  %77 = load %struct.set_family*, %struct.set_family** %16, align 8
  %78 = getelementptr inbounds %struct.set_family, %struct.set_family* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32* %82, i32** %11, align 8
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %33, !llvm.loop !24

85:                                               ; preds = %33
  store i32 0, i32* %14, align 4
  br label %86

86:                                               ; preds = %100, %85
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %86
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %86, !llvm.loop !25

103:                                              ; preds = %86
  %104 = load i32*, i32** %15, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32*, i32** %15, align 8
  %108 = bitcast i32* %107 to i8*
  call void @free(i8* noundef %108)
  store i32* null, i32** %15, align 8
  br label %109

109:                                              ; preds = %106, %103
  %110 = load i32**, i32*** %6, align 8
  %111 = icmp ne i32** %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load i32**, i32*** %6, align 8
  %114 = bitcast i32** %113 to i8*
  call void @free(i8* noundef %114)
  store i32** null, i32*** %6, align 8
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.set_family*, %struct.set_family** %16, align 8
  ret %struct.set_family* %116
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.set_family* @sf_merge(i32** noundef %0, i32** noundef %1, i32** noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32**, align 8
  %16 = alloca %struct.set_family*, align 8
  %17 = alloca [3 x i32**], align 16
  %18 = alloca i32**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 noundef %23, i32 noundef %24)
  store %struct.set_family* %25, %struct.set_family** %16, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.set_family*, %struct.set_family** %16, align 8
  %28 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.set_family*, %struct.set_family** %16, align 8
  %30 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %11, align 8
  store i32 3, i32* %21, align 4
  %32 = load i32**, i32*** %6, align 8
  %33 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 0
  store i32** %32, i32*** %33, align 16
  %34 = load i32**, i32*** %7, align 8
  %35 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 1
  store i32** %34, i32*** %35, align 8
  %36 = load i32**, i32*** %8, align 8
  %37 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 2
  store i32** %36, i32*** %37, align 16
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %84, %5
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %21, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %38
  %44 = load i32, i32* %19, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %20, align 4
  br label %46

46:                                               ; preds = %80, %43
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* %21, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %46
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %52
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %57
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %55, i32* noundef %60)
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %50
  %64 = load i32, i32* %20, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %65
  %67 = load i32**, i32*** %66, align 8
  store i32** %67, i32*** %18, align 8
  %68 = load i32, i32* %19, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %69
  %71 = load i32**, i32*** %70, align 8
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %73
  store i32** %71, i32*** %74, align 8
  %75 = load i32**, i32*** %18, align 8
  %76 = load i32, i32* %19, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 %77
  store i32** %75, i32*** %78, align 8
  br label %79

79:                                               ; preds = %63, %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %20, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %20, align 4
  br label %46, !llvm.loop !26

83:                                               ; preds = %46
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %19, align 4
  br label %38, !llvm.loop !27

87:                                               ; preds = %38
  %88 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 0
  %89 = load i32**, i32*** %88, align 16
  store i32** %89, i32*** %13, align 8
  %90 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 1
  %91 = load i32**, i32*** %90, align 8
  store i32** %91, i32*** %14, align 8
  %92 = getelementptr inbounds [3 x i32**], [3 x i32**]* %17, i64 0, i64 2
  %93 = load i32**, i32*** %92, align 16
  store i32** %93, i32*** %15, align 8
  br label %94

94:                                               ; preds = %150, %87
  %95 = load i32**, i32*** %13, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %151

98:                                               ; preds = %94
  %99 = load i32**, i32*** %13, align 8
  %100 = getelementptr inbounds i32*, i32** %99, i32 1
  store i32** %100, i32*** %13, align 8
  %101 = load i32*, i32** %99, align 8
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 1023
  store i32 %105, i32* %22, align 4
  br label %106

106:                                              ; preds = %116, %98
  %107 = load i32*, i32** %12, align 8
  %108 = load i32, i32* %22, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %22, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %22, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %106, label %120, !llvm.loop !28

120:                                              ; preds = %116
  %121 = load %struct.set_family*, %struct.set_family** %16, align 8
  %122 = getelementptr inbounds %struct.set_family, %struct.set_family* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  store i32* %126, i32** %11, align 8
  %127 = load i32**, i32*** %13, align 8
  %128 = load i32*, i32** %127, align 8
  %129 = load i32**, i32*** %15, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %128, i32* noundef %130)
  %132 = icmp sgt i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %120
  %134 = load i32**, i32*** %15, align 8
  store i32** %134, i32*** %18, align 8
  %135 = load i32**, i32*** %13, align 8
  store i32** %135, i32*** %15, align 8
  %136 = load i32**, i32*** %14, align 8
  store i32** %136, i32*** %13, align 8
  %137 = load i32**, i32*** %18, align 8
  store i32** %137, i32*** %14, align 8
  br label %150

138:                                              ; preds = %120
  %139 = load i32**, i32*** %13, align 8
  %140 = load i32*, i32** %139, align 8
  %141 = load i32**, i32*** %14, align 8
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @desc1 to i32 (i32*, i32*, ...)*)(i32* noundef %140, i32* noundef %142)
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %138
  %146 = load i32**, i32*** %13, align 8
  store i32** %146, i32*** %18, align 8
  %147 = load i32**, i32*** %14, align 8
  store i32** %147, i32*** %13, align 8
  %148 = load i32**, i32*** %18, align 8
  store i32** %148, i32*** %14, align 8
  br label %149

149:                                              ; preds = %145, %138
  br label %150

150:                                              ; preds = %149, %133
  br label %94, !llvm.loop !29

151:                                              ; preds = %94
  %152 = load i32**, i32*** %6, align 8
  %153 = icmp ne i32** %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32**, i32*** %6, align 8
  %156 = bitcast i32** %155 to i8*
  call void @free(i8* noundef %156)
  store i32** null, i32*** %6, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i32**, i32*** %7, align 8
  %159 = icmp ne i32** %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32**, i32*** %7, align 8
  %162 = bitcast i32** %161 to i8*
  call void @free(i8* noundef %162)
  store i32** null, i32*** %7, align 8
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i32**, i32*** %8, align 8
  %165 = icmp ne i32** %164, null
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32**, i32*** %8, align 8
  %168 = bitcast i32** %167 to i8*
  call void @free(i8* noundef %168)
  store i32** null, i32*** %8, align 8
  br label %169

169:                                              ; preds = %166, %163
  %170 = load %struct.set_family*, %struct.set_family** %16, align 8
  ret %struct.set_family* %170
}

declare dso_local i32 @desc1(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
