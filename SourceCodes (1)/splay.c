; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/splay.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/09-vor/splay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_node = type { %struct.splay_element, %struct.splay_node*, %struct.splay_node*, %struct.splay_node* }
%struct.splay_element = type { i64, %struct.point }
%struct.point = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Can't create node\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"No elements in tree! [delete_min]\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @find(%struct.splay_node* noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.splay_node*, align 8
  %4 = alloca %struct.splay_node*, align 8
  %5 = alloca i64, align 8
  store %struct.splay_node* %0, %struct.splay_node** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 3
  %15 = load %struct.splay_node*, %struct.splay_node** %14, align 8
  %16 = icmp ne %struct.splay_node* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %19 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %18, i32 0, i32 3
  %20 = load %struct.splay_node*, %struct.splay_node** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.splay_node* @find(%struct.splay_node* noundef %20, i64 noundef %21)
  store %struct.splay_node* %22, %struct.splay_node** %3, align 8
  br label %43

23:                                               ; preds = %12, %2
  %24 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %32 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %31, i32 0, i32 2
  %33 = load %struct.splay_node*, %struct.splay_node** %32, align 8
  %34 = icmp ne %struct.splay_node* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  %37 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %36, i32 0, i32 2
  %38 = load %struct.splay_node*, %struct.splay_node** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call %struct.splay_node* @find(%struct.splay_node* noundef %38, i64 noundef %39)
  store %struct.splay_node* %40, %struct.splay_node** %3, align 8
  br label %43

41:                                               ; preds = %30, %23
  %42 = load %struct.splay_node*, %struct.splay_node** %4, align 8
  store %struct.splay_node* %42, %struct.splay_node** %3, align 8
  br label %43

43:                                               ; preds = %41, %35, %17
  %44 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  ret %struct.splay_node* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @rotate(%struct.splay_node* noundef %0) #0 {
  %2 = alloca %struct.splay_node*, align 8
  %3 = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %0, %struct.splay_node** %2, align 8
  %4 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %5 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %4, i32 0, i32 1
  %6 = load %struct.splay_node*, %struct.splay_node** %5, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 2
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  %9 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %10 = icmp eq %struct.splay_node* %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %1
  %12 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %12, i32 0, i32 3
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %15 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %16 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %15, i32 0, i32 1
  %17 = load %struct.splay_node*, %struct.splay_node** %16, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 2
  store %struct.splay_node* %14, %struct.splay_node** %18, align 8
  %19 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 3
  %21 = load %struct.splay_node*, %struct.splay_node** %20, align 8
  %22 = icmp ne %struct.splay_node* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %11
  %24 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 1
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 3
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 1
  store %struct.splay_node* %26, %struct.splay_node** %30, align 8
  br label %31

31:                                               ; preds = %23, %11
  %32 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %33 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %32, i32 0, i32 1
  %34 = load %struct.splay_node*, %struct.splay_node** %33, align 8
  %35 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 3
  store %struct.splay_node* %34, %struct.splay_node** %36, align 8
  br label %63

37:                                               ; preds = %1
  %38 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %39 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %38, i32 0, i32 2
  %40 = load %struct.splay_node*, %struct.splay_node** %39, align 8
  %41 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %42 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %41, i32 0, i32 1
  %43 = load %struct.splay_node*, %struct.splay_node** %42, align 8
  %44 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %43, i32 0, i32 3
  store %struct.splay_node* %40, %struct.splay_node** %44, align 8
  %45 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i32 0, i32 2
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = icmp ne %struct.splay_node* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %51 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %50, i32 0, i32 1
  %52 = load %struct.splay_node*, %struct.splay_node** %51, align 8
  %53 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %54 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %53, i32 0, i32 2
  %55 = load %struct.splay_node*, %struct.splay_node** %54, align 8
  %56 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %55, i32 0, i32 1
  store %struct.splay_node* %52, %struct.splay_node** %56, align 8
  br label %57

57:                                               ; preds = %49, %37
  %58 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %59 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %58, i32 0, i32 1
  %60 = load %struct.splay_node*, %struct.splay_node** %59, align 8
  %61 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %62 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %61, i32 0, i32 2
  store %struct.splay_node* %60, %struct.splay_node** %62, align 8
  br label %63

63:                                               ; preds = %57, %31
  %64 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %65 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %64, i32 0, i32 1
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 1
  %68 = load %struct.splay_node*, %struct.splay_node** %67, align 8
  store %struct.splay_node* %68, %struct.splay_node** %3, align 8
  %69 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %70 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %71 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %70, i32 0, i32 1
  %72 = load %struct.splay_node*, %struct.splay_node** %71, align 8
  %73 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %72, i32 0, i32 1
  store %struct.splay_node* %69, %struct.splay_node** %73, align 8
  %74 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %75 = icmp ne %struct.splay_node* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %63
  %77 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %78 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %77, i32 0, i32 2
  %79 = load %struct.splay_node*, %struct.splay_node** %78, align 8
  %80 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %81 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %80, i32 0, i32 1
  %82 = load %struct.splay_node*, %struct.splay_node** %81, align 8
  %83 = icmp eq %struct.splay_node* %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %86 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %87 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %86, i32 0, i32 2
  store %struct.splay_node* %85, %struct.splay_node** %87, align 8
  br label %92

88:                                               ; preds = %76
  %89 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %90 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %91 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %90, i32 0, i32 3
  store %struct.splay_node* %89, %struct.splay_node** %91, align 8
  br label %92

92:                                               ; preds = %88, %84
  br label %93

93:                                               ; preds = %92, %63
  %94 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %95 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %96 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %95, i32 0, i32 1
  store %struct.splay_node* %94, %struct.splay_node** %96, align 8
  %97 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  ret %struct.splay_node* %97
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @splay(%struct.splay_node** noundef %0, i64 noundef %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.splay_node**, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %0, %struct.splay_node*** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.splay_node**, %struct.splay_node*** %4, align 8
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.splay_node* @find(%struct.splay_node* noundef %8, i64 noundef %9)
  store %struct.splay_node* %10, %struct.splay_node** %6, align 8
  br label %11

11:                                               ; preds = %87, %2
  %12 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %13 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %12, i32 0, i32 1
  %14 = load %struct.splay_node*, %struct.splay_node** %13, align 8
  %15 = icmp ne %struct.splay_node* %14, null
  br i1 %15, label %16, label %88

16:                                               ; preds = %11
  %17 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %18 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %17, i32 0, i32 1
  %19 = load %struct.splay_node*, %struct.splay_node** %18, align 8
  %20 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %19, i32 0, i32 1
  %21 = load %struct.splay_node*, %struct.splay_node** %20, align 8
  %22 = icmp eq %struct.splay_node* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %25 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %24)
  store %struct.splay_node* %25, %struct.splay_node** %6, align 8
  br label %87

26:                                               ; preds = %16
  %27 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 1
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 2
  %31 = load %struct.splay_node*, %struct.splay_node** %30, align 8
  %32 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %33 = icmp eq %struct.splay_node* %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %36 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %35, i32 0, i32 1
  %37 = load %struct.splay_node*, %struct.splay_node** %36, align 8
  %38 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %37, i32 0, i32 1
  %39 = load %struct.splay_node*, %struct.splay_node** %38, align 8
  %40 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %39, i32 0, i32 2
  %41 = load %struct.splay_node*, %struct.splay_node** %40, align 8
  %42 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %43 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %42, i32 0, i32 1
  %44 = load %struct.splay_node*, %struct.splay_node** %43, align 8
  %45 = icmp eq %struct.splay_node* %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %34
  %47 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %48 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %47, i32 0, i32 1
  %49 = load %struct.splay_node*, %struct.splay_node** %48, align 8
  %50 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %49)
  %51 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %52 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %51)
  store %struct.splay_node* %52, %struct.splay_node** %6, align 8
  br label %86

53:                                               ; preds = %34, %26
  %54 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %55 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %54, i32 0, i32 1
  %56 = load %struct.splay_node*, %struct.splay_node** %55, align 8
  %57 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %56, i32 0, i32 3
  %58 = load %struct.splay_node*, %struct.splay_node** %57, align 8
  %59 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %60 = icmp eq %struct.splay_node* %58, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %53
  %62 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %63 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %62, i32 0, i32 1
  %64 = load %struct.splay_node*, %struct.splay_node** %63, align 8
  %65 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %64, i32 0, i32 1
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 3
  %68 = load %struct.splay_node*, %struct.splay_node** %67, align 8
  %69 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %70 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %69, i32 0, i32 1
  %71 = load %struct.splay_node*, %struct.splay_node** %70, align 8
  %72 = icmp eq %struct.splay_node* %68, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  %74 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %75 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %74, i32 0, i32 1
  %76 = load %struct.splay_node*, %struct.splay_node** %75, align 8
  %77 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %76)
  %78 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %79 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %78)
  store %struct.splay_node* %79, %struct.splay_node** %6, align 8
  br label %85

80:                                               ; preds = %61, %53
  %81 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %82 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %81)
  store %struct.splay_node* %82, %struct.splay_node** %6, align 8
  %83 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %84 = call %struct.splay_node* @rotate(%struct.splay_node* noundef %83)
  store %struct.splay_node* %84, %struct.splay_node** %6, align 8
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85, %46
  br label %87

87:                                               ; preds = %86, %23
  br label %11, !llvm.loop !4

88:                                               ; preds = %11
  %89 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %90 = load %struct.splay_node**, %struct.splay_node*** %4, align 8
  store %struct.splay_node* %89, %struct.splay_node** %90, align 8
  %91 = load i8*, i8** %3, align 8
  ret i8* %91
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tree(%struct.splay_node* noundef %0) #0 {
  %2 = alloca %struct.splay_node*, align 8
  store %struct.splay_node* %0, %struct.splay_node** %2, align 8
  %3 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %4 = icmp ne %struct.splay_node* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %7 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %6, i32 0, i32 2
  %8 = load %struct.splay_node*, %struct.splay_node** %7, align 8
  call void @free_tree(%struct.splay_node* noundef %8)
  %9 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %10 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %9, i32 0, i32 3
  %11 = load %struct.splay_node*, %struct.splay_node** %10, align 8
  call void @free_tree(%struct.splay_node* noundef %11)
  %12 = load %struct.splay_node*, %struct.splay_node** %2, align 8
  %13 = bitcast %struct.splay_node* %12 to i8*
  call void @free(i8* noundef %13) #5
  br label %14

14:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @create_node(i64 %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.splay_node*, align 8
  %4 = bitcast %struct.point* %2 to i64*
  store i64 %0, i64* %4, align 4
  %5 = call noalias i8* @malloc(i64 noundef 40) #5
  %6 = bitcast i8* %5 to %struct.splay_node*
  store %struct.splay_node* %6, %struct.splay_node** %3, align 8
  %7 = icmp ne %struct.splay_node* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 noundef 0) #6
  unreachable

10:                                               ; preds = %1
  %11 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %12 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %11, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %12, align 8
  %13 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %14, align 8
  %15 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %16 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %15, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %16, align 8
  %17 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 10000
  %20 = getelementptr inbounds %struct.point, %struct.point* %2, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %19, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %25 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %25, i32 0, i32 0
  store i64 %23, i64* %26, align 8
  %27 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  %28 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %28, i32 0, i32 1
  %30 = bitcast %struct.point* %29 to i8*
  %31 = bitcast %struct.point* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.splay_node*, %struct.splay_node** %3, align 8
  ret %struct.splay_node* %32
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.splay_node* @init() #0 {
  ret %struct.splay_node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @insert(%struct.splay_node** noundef %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.point, align 4
  %5 = alloca %struct.splay_node**, align 8
  %6 = alloca %struct.splay_node*, align 8
  %7 = bitcast %struct.point* %4 to i64*
  store i64 %1, i64* %7, align 4
  store %struct.splay_node** %0, %struct.splay_node*** %5, align 8
  %8 = bitcast %struct.point* %4 to i64*
  %9 = load i64, i64* %8, align 4
  %10 = call %struct.splay_node* @create_node(i64 %9)
  store %struct.splay_node* %10, %struct.splay_node** %6, align 8
  %11 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %12 = load %struct.splay_node*, %struct.splay_node** %11, align 8
  %13 = icmp ne %struct.splay_node* %12, null
  br i1 %13, label %14, label %99

14:                                               ; preds = %2
  %15 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %16 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %17 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @splay(%struct.splay_node** noundef %15, i64 noundef %19)
  %21 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %22 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %26 = load %struct.splay_node*, %struct.splay_node** %25, align 8
  %27 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i8* null, i8** %3, align 8
  br label %102

32:                                               ; preds = %14
  %33 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %34 = load %struct.splay_node*, %struct.splay_node** %33, align 8
  %35 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %39 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %37, %41
  br i1 %42, label %43, label %68

43:                                               ; preds = %32
  %44 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %45 = load %struct.splay_node*, %struct.splay_node** %44, align 8
  %46 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %45, i32 0, i32 2
  %47 = load %struct.splay_node*, %struct.splay_node** %46, align 8
  %48 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %49 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %48, i32 0, i32 2
  store %struct.splay_node* %47, %struct.splay_node** %49, align 8
  %50 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %51 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %50, i32 0, i32 2
  %52 = load %struct.splay_node*, %struct.splay_node** %51, align 8
  %53 = icmp ne %struct.splay_node* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %56 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %57 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %56, i32 0, i32 2
  %58 = load %struct.splay_node*, %struct.splay_node** %57, align 8
  %59 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %58, i32 0, i32 1
  store %struct.splay_node* %55, %struct.splay_node** %59, align 8
  br label %60

60:                                               ; preds = %54, %43
  %61 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %62 = load %struct.splay_node*, %struct.splay_node** %61, align 8
  %63 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %64 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %63, i32 0, i32 3
  store %struct.splay_node* %62, %struct.splay_node** %64, align 8
  %65 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %66 = load %struct.splay_node*, %struct.splay_node** %65, align 8
  %67 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %66, i32 0, i32 2
  store %struct.splay_node* null, %struct.splay_node** %67, align 8
  br label %93

68:                                               ; preds = %32
  %69 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %70 = load %struct.splay_node*, %struct.splay_node** %69, align 8
  %71 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %70, i32 0, i32 3
  %72 = load %struct.splay_node*, %struct.splay_node** %71, align 8
  %73 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %74 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %73, i32 0, i32 3
  store %struct.splay_node* %72, %struct.splay_node** %74, align 8
  %75 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %76 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %75, i32 0, i32 3
  %77 = load %struct.splay_node*, %struct.splay_node** %76, align 8
  %78 = icmp ne %struct.splay_node* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %68
  %80 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %81 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %82 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %81, i32 0, i32 3
  %83 = load %struct.splay_node*, %struct.splay_node** %82, align 8
  %84 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %83, i32 0, i32 1
  store %struct.splay_node* %80, %struct.splay_node** %84, align 8
  br label %85

85:                                               ; preds = %79, %68
  %86 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %87 = load %struct.splay_node*, %struct.splay_node** %86, align 8
  %88 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %89 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %88, i32 0, i32 2
  store %struct.splay_node* %87, %struct.splay_node** %89, align 8
  %90 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %91 = load %struct.splay_node*, %struct.splay_node** %90, align 8
  %92 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %91, i32 0, i32 3
  store %struct.splay_node* null, %struct.splay_node** %92, align 8
  br label %93

93:                                               ; preds = %85, %60
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %96 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  %97 = load %struct.splay_node*, %struct.splay_node** %96, align 8
  %98 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %97, i32 0, i32 1
  store %struct.splay_node* %95, %struct.splay_node** %98, align 8
  br label %99

99:                                               ; preds = %94, %2
  %100 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %101 = load %struct.splay_node**, %struct.splay_node*** %5, align 8
  store %struct.splay_node* %100, %struct.splay_node** %101, align 8
  br label %102

102:                                              ; preds = %99, %31
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @delete_min(%struct.splay_node** noundef %0) #0 {
  %2 = alloca %struct.point, align 4
  %3 = alloca %struct.splay_node**, align 8
  %4 = alloca %struct.splay_element, align 8
  %5 = alloca %struct.splay_node*, align 8
  store %struct.splay_node** %0, %struct.splay_node*** %3, align 8
  %6 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %7 = load %struct.splay_node*, %struct.splay_node** %6, align 8
  %8 = icmp ne %struct.splay_node* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %1
  %10 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %11 = call i8* @splay(%struct.splay_node** noundef %10, i64 noundef -1)
  %12 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %13 = load %struct.splay_node*, %struct.splay_node** %12, align 8
  %14 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %13, i32 0, i32 0
  %15 = bitcast %struct.splay_element* %4 to i8*
  %16 = bitcast %struct.splay_element* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %18 = load %struct.splay_node*, %struct.splay_node** %17, align 8
  store %struct.splay_node* %18, %struct.splay_node** %5, align 8
  %19 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %20 = load %struct.splay_node*, %struct.splay_node** %19, align 8
  %21 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %20, i32 0, i32 3
  %22 = load %struct.splay_node*, %struct.splay_node** %21, align 8
  %23 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  store %struct.splay_node* %22, %struct.splay_node** %23, align 8
  %24 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %25 = load %struct.splay_node*, %struct.splay_node** %24, align 8
  %26 = icmp ne %struct.splay_node* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load %struct.splay_node**, %struct.splay_node*** %3, align 8
  %29 = load %struct.splay_node*, %struct.splay_node** %28, align 8
  %30 = getelementptr inbounds %struct.splay_node, %struct.splay_node* %29, i32 0, i32 1
  store %struct.splay_node* null, %struct.splay_node** %30, align 8
  br label %31

31:                                               ; preds = %27, %9
  %32 = load %struct.splay_node*, %struct.splay_node** %5, align 8
  %33 = bitcast %struct.splay_node* %32 to i8*
  call void @free(i8* noundef %33) #5
  br label %39

34:                                               ; preds = %1
  %35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %36 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %4, i32 0, i32 1
  %37 = bitcast %struct.point* %2 to i8*
  %38 = bitcast %struct.point* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 8, i1 false)
  br label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.splay_element, %struct.splay_element* %4, i32 0, i32 1
  %41 = bitcast %struct.point* %2 to i8*
  %42 = bitcast %struct.point* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 8 %42, i64 8, i1 false)
  br label %43

43:                                               ; preds = %39, %34
  %44 = bitcast %struct.point* %2 to i64*
  %45 = load i64, i64* %44, align 4
  ret i64 %45
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 14.0.6 (https://github.com/llvm/llvm-project.git f28c006a5895fc0e329fe15fead81e37457cb1d1)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
