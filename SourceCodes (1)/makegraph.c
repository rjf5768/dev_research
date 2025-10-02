; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/mst/makegraph.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/Olden/mst/makegraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_st = type { [1 x %struct.vert_st*] }
%struct.vert_st = type { i32, %struct.vert_st*, %struct.hash* }
%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }

@.str = private unnamed_addr constant [14 x i8] c"Make phase 2\0A\00", align 1
@HashRange = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Make phase 3\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Make phase 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Make returning\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.graph_st* @MakeGraph(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vert_st*, align 8
  %10 = alloca %struct.vert_st*, align 8
  %11 = alloca %struct.vert_st*, align 8
  %12 = alloca %struct.graph_st*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = call noalias i8* @malloc(i64 noundef 8) #3
  %17 = bitcast i8* %16 to %struct.graph_st*
  store %struct.graph_st* %17, %struct.graph_st** %12, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %27, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %23 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %23, i64 0, i64 %25
  store %struct.vert_st* null, %struct.vert_st** %26, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %18, !llvm.loop !4

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %78, %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 24
  %41 = call noalias i8* @malloc(i64 noundef %40) #3
  %42 = bitcast i8* %41 to %struct.vert_st*
  store %struct.vert_st* %42, %struct.vert_st** %11, align 8
  store %struct.vert_st* null, %struct.vert_st** %9, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %68, %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.vert_st*, %struct.vert_st** %11, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %48, i64 %53
  store %struct.vert_st* %54, %struct.vert_st** %10, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sdiv i32 %55, 4
  store i32 %56, i32* @HashRange, align 4
  %57 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %58 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %57, i32 0, i32 0
  store i32 9999999, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sdiv i32 %59, 4
  %61 = call %struct.hash* @MakeHash(i32 noundef %60, i32 (i32)* noundef @hashfunc)
  %62 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %63 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %62, i32 0, i32 2
  store %struct.hash* %61, %struct.hash** %63, align 8
  %64 = load %struct.vert_st*, %struct.vert_st** %9, align 8
  %65 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %66 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %65, i32 0, i32 1
  store %struct.vert_st* %64, %struct.vert_st** %66, align 8
  %67 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  store %struct.vert_st* %67, %struct.vert_st** %9, align 8
  br label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %43, !llvm.loop !6

71:                                               ; preds = %43
  %72 = load %struct.vert_st*, %struct.vert_st** %9, align 8
  %73 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %74 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %74, i64 0, i64 %76
  store %struct.vert_st* %72, %struct.vert_st** %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %34, !llvm.loop !7

81:                                               ; preds = %34
  %82 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %98, %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %7, align 4
  call void @AddEdges(i32 noundef %92, %struct.graph_st* noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, i32 noundef %97)
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  br label %85, !llvm.loop !8

101:                                              ; preds = %85
  %102 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %104 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  ret %struct.graph_st* %104
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

declare dso_local i32 @printf(i8* noundef, ...) #2

declare dso_local %struct.hash* @MakeHash(i32 noundef, i32 (i32)* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @hashfunc(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 3
  %5 = load i32, i32* @HashRange, align 4
  %6 = urem i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @AddEdges(i32 noundef %0, %struct.graph_st* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.graph_st*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vert_st*, align 8
  %14 = alloca [1 x %struct.vert_st*], align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vert_st*, align 8
  %20 = alloca %struct.hash*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.graph_st* %1, %struct.graph_st** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %35, %6
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.graph_st*, %struct.graph_st** %8, align 8
  %27 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %26, i32 0, i32 0
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %27, i64 0, i64 %29
  %31 = load %struct.vert_st*, %struct.vert_st** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %14, i64 0, i64 %33
  store %struct.vert_st* %31, %struct.vert_st** %34, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  br label %21, !llvm.loop !9

38:                                               ; preds = %21
  %39 = load %struct.graph_st*, %struct.graph_st** %8, align 8
  %40 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %39, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %40, i64 0, i64 %42
  %44 = load %struct.vert_st*, %struct.vert_st** %43, align 8
  store %struct.vert_st* %44, %struct.vert_st** %13, align 8
  br label %45

45:                                               ; preds = %93, %38
  %46 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %47 = icmp ne %struct.vert_st* %46, null
  br i1 %47, label %48, label %97

48:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @compute_dist(i32 noundef %60, i32 noundef %61, i32 noundef %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %14, i64 0, i64 %71
  %73 = load %struct.vert_st*, %struct.vert_st** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %73, i64 %75
  store %struct.vert_st* %76, %struct.vert_st** %19, align 8
  %77 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %78 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %77, i32 0, i32 2
  %79 = load %struct.hash*, %struct.hash** %78, align 8
  store %struct.hash* %79, %struct.hash** %20, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.vert_st*, %struct.vert_st** %19, align 8
  %84 = ptrtoint %struct.vert_st* %83 to i32
  %85 = load %struct.hash*, %struct.hash** %20, align 8
  call void @HashInsert(i8* noundef %82, i32 noundef %84, %struct.hash* noundef %85)
  br label %86

86:                                               ; preds = %59, %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %49, !llvm.loop !10

90:                                               ; preds = %49
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %95 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %94, i32 0, i32 1
  %96 = load %struct.vert_st*, %struct.vert_st** %95, align 8
  store %struct.vert_st* %96, %struct.vert_st** %13, align 8
  br label %45, !llvm.loop !11

97:                                               ; preds = %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compute_dist(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %8, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @random2(i32 noundef %23)
  %25 = srem i32 %24, 2048
  %26 = add nsw i32 %25, 1
  ret i32 %26
}

declare dso_local void @HashInsert(i8* noundef, i32 noundef, %struct.hash* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @random2(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @mult(i32 noundef %4, i32 noundef 31415821)
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mult(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 10000
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = srem i32 %11, 10000
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 10000
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = srem i32 %15, 10000
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = srem i32 %23, 10000
  %25 = mul nsw i32 %24, 10000
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  ret i32 %29
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
