; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/part.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @visit_col(%struct.sm_matrix_struct* noundef %0, %struct.sm_col_struct* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_matrix_struct*, align 8
  %7 = alloca %struct.sm_col_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sm_element_struct*, align 8
  %11 = alloca %struct.sm_row_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %6, align 8
  store %struct.sm_col_struct* %1, %struct.sm_col_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %13 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %81, label %16

16:                                               ; preds = %4
  %17 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %18 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %17, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %82

29:                                               ; preds = %16
  %30 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %31 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %30, i32 0, i32 3
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %31, align 8
  store %struct.sm_element_struct* %32, %struct.sm_element_struct** %10, align 8
  br label %33

33:                                               ; preds = %76, %29
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %35 = icmp ne %struct.sm_element_struct* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %46 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %51 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %50, i32 0, i32 0
  %52 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %51, align 8
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %54 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %52, i64 %56
  %58 = load %struct.sm_row_struct*, %struct.sm_row_struct** %57, align 8
  br label %60

59:                                               ; preds = %41, %36
  br label %60

60:                                               ; preds = %59, %49
  %61 = phi %struct.sm_row_struct* [ %58, %49 ], [ null, %59 ]
  store %struct.sm_row_struct* %61, %struct.sm_row_struct** %11, align 8
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  %63 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %68 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @visit_row(%struct.sm_matrix_struct* noundef %67, %struct.sm_row_struct* noundef %68, i32* noundef %69, i32* noundef %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %82

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %78 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %77, i32 0, i32 2
  %79 = load %struct.sm_element_struct*, %struct.sm_element_struct** %78, align 8
  store %struct.sm_element_struct* %79, %struct.sm_element_struct** %10, align 8
  br label %33, !llvm.loop !4

80:                                               ; preds = %33
  br label %81

81:                                               ; preds = %80, %4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %73, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @visit_row(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %1, i32* noundef %2, i32* noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sm_matrix_struct*, align 8
  %7 = alloca %struct.sm_row_struct*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sm_element_struct*, align 8
  %11 = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %6, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %7, align 8
  %13 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %81, label %16

16:                                               ; preds = %4
  %17 = load %struct.sm_row_struct*, %struct.sm_row_struct** %7, align 8
  %18 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %17, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %82

29:                                               ; preds = %16
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %7, align 8
  %31 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %30, i32 0, i32 3
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %31, align 8
  store %struct.sm_element_struct* %32, %struct.sm_element_struct** %10, align 8
  br label %33

33:                                               ; preds = %76, %29
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %35 = icmp ne %struct.sm_element_struct* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %46 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %51 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %50, i32 0, i32 2
  %52 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %51, align 8
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %54 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %52, i64 %56
  %58 = load %struct.sm_col_struct*, %struct.sm_col_struct** %57, align 8
  br label %60

59:                                               ; preds = %41, %36
  br label %60

60:                                               ; preds = %59, %49
  %61 = phi %struct.sm_col_struct* [ %58, %49 ], [ null, %59 ]
  store %struct.sm_col_struct* %61, %struct.sm_col_struct** %11, align 8
  %62 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %63 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %60
  %67 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %68 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @visit_col(%struct.sm_matrix_struct* noundef %67, %struct.sm_col_struct* noundef %68, i32* noundef %69, i32* noundef %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %82

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %60
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  %78 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %77, i32 0, i32 4
  %79 = load %struct.sm_element_struct*, %struct.sm_element_struct** %78, align 8
  store %struct.sm_element_struct* %79, %struct.sm_element_struct** %10, align 8
  br label %33, !llvm.loop !6

80:                                               ; preds = %33
  br label %81

81:                                               ; preds = %80, %4
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %73, %28
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_block_partition(%struct.sm_matrix_struct* noundef %0, %struct.sm_matrix_struct** noundef %1, %struct.sm_matrix_struct** noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sm_matrix_struct*, align 8
  %6 = alloca %struct.sm_matrix_struct**, align 8
  %7 = alloca %struct.sm_matrix_struct**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sm_row_struct*, align 8
  %11 = alloca %struct.sm_col_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %5, align 8
  store %struct.sm_matrix_struct** %1, %struct.sm_matrix_struct*** %6, align 8
  store %struct.sm_matrix_struct** %2, %struct.sm_matrix_struct*** %7, align 8
  %12 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %13 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %18, i32 0, i32 4
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %19, align 8
  store %struct.sm_row_struct* %20, %struct.sm_row_struct** %10, align 8
  br label %21

21:                                               ; preds = %27, %17
  %22 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %23 = icmp ne %struct.sm_row_struct* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %29 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %28, i32 0, i32 5
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %29, align 8
  store %struct.sm_row_struct* %30, %struct.sm_row_struct** %10, align 8
  br label %21, !llvm.loop !7

31:                                               ; preds = %21
  %32 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %33 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %32, i32 0, i32 7
  %34 = load %struct.sm_col_struct*, %struct.sm_col_struct** %33, align 8
  store %struct.sm_col_struct* %34, %struct.sm_col_struct** %11, align 8
  br label %35

35:                                               ; preds = %41, %31
  %36 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %37 = icmp ne %struct.sm_col_struct* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %40 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %39, i32 0, i32 2
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %43 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %42, i32 0, i32 5
  %44 = load %struct.sm_col_struct*, %struct.sm_col_struct** %43, align 8
  store %struct.sm_col_struct* %44, %struct.sm_col_struct** %11, align 8
  br label %35, !llvm.loop !8

45:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %46 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %47 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %48 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %47, i32 0, i32 4
  %49 = load %struct.sm_row_struct*, %struct.sm_row_struct** %48, align 8
  %50 = call i32 @visit_row(%struct.sm_matrix_struct* noundef %46, %struct.sm_row_struct* noundef %49, i32* noundef %9, i32* noundef %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %83

53:                                               ; preds = %45
  %54 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  %55 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %6, align 8
  store %struct.sm_matrix_struct* %54, %struct.sm_matrix_struct** %55, align 8
  %56 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  %57 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %7, align 8
  store %struct.sm_matrix_struct* %56, %struct.sm_matrix_struct** %57, align 8
  %58 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %5, align 8
  %59 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %58, i32 0, i32 4
  %60 = load %struct.sm_row_struct*, %struct.sm_row_struct** %59, align 8
  store %struct.sm_row_struct* %60, %struct.sm_row_struct** %10, align 8
  br label %61

61:                                               ; preds = %78, %53
  %62 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %63 = icmp ne %struct.sm_row_struct* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %66 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %6, align 8
  %71 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %70, align 8
  %72 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  call void @copy_row(%struct.sm_matrix_struct* noundef %71, %struct.sm_row_struct* noundef %72)
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.sm_matrix_struct**, %struct.sm_matrix_struct*** %7, align 8
  %75 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %74, align 8
  %76 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  call void @copy_row(%struct.sm_matrix_struct* noundef %75, %struct.sm_row_struct* noundef %76)
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  %80 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %79, i32 0, i32 5
  %81 = load %struct.sm_row_struct*, %struct.sm_row_struct** %80, align 8
  store %struct.sm_row_struct* %81, %struct.sm_row_struct** %10, align 8
  br label %61, !llvm.loop !9

82:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %52, %16
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.sm_matrix_struct* @sm_alloc(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @copy_row(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %1) #0 {
  %3 = alloca %struct.sm_matrix_struct*, align 8
  %4 = alloca %struct.sm_row_struct*, align 8
  %5 = alloca %struct.sm_element_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %3, align 8
  store %struct.sm_row_struct* %1, %struct.sm_row_struct** %4, align 8
  %6 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %7 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %6, i32 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %5, align 8
  br label %9

9:                                                ; preds = %21, %2
  %10 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %11 = icmp ne %struct.sm_element_struct* %10, null
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %13, i32 noundef %16, i32 noundef %19)
  br label %21

21:                                               ; preds = %12
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 4
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  store %struct.sm_element_struct* %24, %struct.sm_element_struct** %5, align 8
  br label %9, !llvm.loop !10

25:                                               ; preds = %9
  ret void
}

declare dso_local %struct.sm_element_struct* @sm_insert(...) #1

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
