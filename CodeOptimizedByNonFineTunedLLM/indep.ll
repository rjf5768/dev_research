; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/indep.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/indep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @sm_maximal_independent_set(%struct.sm_matrix_struct* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.sm_matrix_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sm_row_struct*, align 8
  %6 = alloca %struct.sm_row_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sm_row_struct*, align 8
  %10 = alloca %struct.sm_matrix_struct*, align 8
  %11 = alloca %struct.solution_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = call %struct.solution_struct* (...) @solution_alloc()
  store %struct.solution_struct* %12, %struct.solution_struct** %11, align 8
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %14 = call %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* noundef %13)
  store %struct.sm_matrix_struct* %14, %struct.sm_matrix_struct** %10, align 8
  br label %15

15:                                               ; preds = %152, %2
  %16 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %17 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %154

20:                                               ; preds = %15
  %21 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %22 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %21, i32 0, i32 4
  %23 = load %struct.sm_row_struct*, %struct.sm_row_struct** %22, align 8
  store %struct.sm_row_struct* %23, %struct.sm_row_struct** %5, align 8
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 4
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %25, align 8
  %27 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %26, i32 0, i32 5
  %28 = load %struct.sm_row_struct*, %struct.sm_row_struct** %27, align 8
  store %struct.sm_row_struct* %28, %struct.sm_row_struct** %6, align 8
  br label %29

29:                                               ; preds = %43, %20
  %30 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %31 = icmp ne %struct.sm_row_struct* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %34 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %37 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  store %struct.sm_row_struct* %41, %struct.sm_row_struct** %5, align 8
  br label %42

42:                                               ; preds = %40, %32
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %45 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %44, i32 0, i32 5
  %46 = load %struct.sm_row_struct*, %struct.sm_row_struct** %45, align 8
  store %struct.sm_row_struct* %46, %struct.sm_row_struct** %6, align 8
  br label %29, !llvm.loop !4

47:                                               ; preds = %29
  %48 = load i32*, i32** %4, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 1, i32* %8, align 4
  br label %118

51:                                               ; preds = %47
  %52 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %53 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %58 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %61 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %66 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %65, i32 0, i32 0
  %67 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %66, align 8
  %68 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %69 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %67, i64 %71
  %73 = load %struct.sm_row_struct*, %struct.sm_row_struct** %72, align 8
  br label %75

74:                                               ; preds = %56, %51
  br label %75

75:                                               ; preds = %74, %64
  %76 = phi %struct.sm_row_struct* [ %73, %64 ], [ null, %74 ]
  store %struct.sm_row_struct* %76, %struct.sm_row_struct** %6, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %79 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %78, i32 0, i32 3
  %80 = load %struct.sm_element_struct*, %struct.sm_element_struct** %79, align 8
  %81 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %77, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load %struct.sm_row_struct*, %struct.sm_row_struct** %6, align 8
  %87 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %86, i32 0, i32 3
  %88 = load %struct.sm_element_struct*, %struct.sm_element_struct** %87, align 8
  %89 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %88, i32 0, i32 4
  %90 = load %struct.sm_element_struct*, %struct.sm_element_struct** %89, align 8
  store %struct.sm_element_struct* %90, %struct.sm_element_struct** %7, align 8
  br label %91

91:                                               ; preds = %113, %75
  %92 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %93 = icmp ne %struct.sm_element_struct* %92, null
  br i1 %93, label %94, label %117

94:                                               ; preds = %91
  %95 = load i32*, i32** %4, align 8
  %96 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %97 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %95, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %107 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %104, %94
  br label %113

113:                                              ; preds = %112
  %114 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %115 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %114, i32 0, i32 4
  %116 = load %struct.sm_element_struct*, %struct.sm_element_struct** %115, align 8
  store %struct.sm_element_struct* %116, %struct.sm_element_struct** %7, align 8
  br label %91, !llvm.loop !6

117:                                              ; preds = %91
  br label %118

118:                                              ; preds = %117, %50
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %121 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  %125 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %124, i32 0, i32 0
  %126 = load %struct.sm_row_struct*, %struct.sm_row_struct** %125, align 8
  %127 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %128 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %126, i32 noundef %129)
  %131 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %132 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %131)
  store %struct.sm_row_struct* %132, %struct.sm_row_struct** %9, align 8
  %133 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %134 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %133, i32 0, i32 3
  %135 = load %struct.sm_element_struct*, %struct.sm_element_struct** %134, align 8
  store %struct.sm_element_struct* %135, %struct.sm_element_struct** %7, align 8
  br label %136

136:                                              ; preds = %148, %118
  %137 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %138 = icmp ne %struct.sm_element_struct* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %141 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %142 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %140, i32 noundef %143)
  %144 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  %145 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %146 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %144, i32 noundef %147)
  br label %148

148:                                              ; preds = %139
  %149 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %150 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %149, i32 0, i32 4
  %151 = load %struct.sm_element_struct*, %struct.sm_element_struct** %150, align 8
  store %struct.sm_element_struct* %151, %struct.sm_element_struct** %7, align 8
  br label %136, !llvm.loop !7

152:                                              ; preds = %136
  %153 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %153)
  br label %15, !llvm.loop !8

154:                                              ; preds = %15
  %155 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %10, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %155)
  %156 = load %struct.solution_struct*, %struct.solution_struct** %11, align 8
  ret %struct.solution_struct* %156
}

declare dso_local %struct.solution_struct* @solution_alloc(...) #1

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

declare dso_local void @sm_delrow(...) #1

declare dso_local void @sm_delcol(...) #1

declare dso_local void @sm_row_free(...) #1

declare dso_local void @sm_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* noundef %0) #0 {
  %2 = alloca %struct.sm_matrix_struct*, align 8
  %3 = alloca %struct.sm_row_struct*, align 8
  %4 = alloca %struct.sm_row_struct*, align 8
  %5 = alloca %struct.sm_element_struct*, align 8
  %6 = alloca %struct.sm_element_struct*, align 8
  %7 = alloca %struct.sm_col_struct*, align 8
  %8 = alloca %struct.sm_matrix_struct*, align 8
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %2, align 8
  %9 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  store %struct.sm_matrix_struct* %9, %struct.sm_matrix_struct** %8, align 8
  %10 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %10, i32 0, i32 4
  %12 = load %struct.sm_row_struct*, %struct.sm_row_struct** %11, align 8
  store %struct.sm_row_struct* %12, %struct.sm_row_struct** %3, align 8
  br label %13

13:                                               ; preds = %183, %1
  %14 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %15 = icmp ne %struct.sm_row_struct* %14, null
  br i1 %15, label %16, label %187

16:                                               ; preds = %13
  %17 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %18 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %17, i32 0, i32 3
  %19 = load %struct.sm_element_struct*, %struct.sm_element_struct** %18, align 8
  store %struct.sm_element_struct* %19, %struct.sm_element_struct** %5, align 8
  br label %20

20:                                               ; preds = %88, %16
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %22 = icmp ne %struct.sm_element_struct* %21, null
  br i1 %22, label %23, label %92

23:                                               ; preds = %20
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %33 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %28
  %37 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %37, i32 0, i32 2
  %39 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %38, align 8
  %40 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %39, i64 %43
  %45 = load %struct.sm_col_struct*, %struct.sm_col_struct** %44, align 8
  br label %47

46:                                               ; preds = %28, %23
  br label %47

47:                                               ; preds = %46, %36
  %48 = phi %struct.sm_col_struct* [ %45, %36 ], [ null, %46 ]
  store %struct.sm_col_struct* %48, %struct.sm_col_struct** %7, align 8
  %49 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %50 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %49, i32 0, i32 3
  %51 = load %struct.sm_element_struct*, %struct.sm_element_struct** %50, align 8
  store %struct.sm_element_struct* %51, %struct.sm_element_struct** %6, align 8
  br label %52

52:                                               ; preds = %83, %47
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %54 = icmp ne %struct.sm_element_struct* %53, null
  br i1 %54, label %55, label %87

55:                                               ; preds = %52
  %56 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %62 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %65 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %70 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %69, i32 0, i32 0
  %71 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %70, align 8
  %72 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %73 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %71, i64 %75
  %77 = load %struct.sm_row_struct*, %struct.sm_row_struct** %76, align 8
  br label %79

78:                                               ; preds = %60, %55
  br label %79

79:                                               ; preds = %78, %68
  %80 = phi %struct.sm_row_struct* [ %77, %68 ], [ null, %78 ]
  store %struct.sm_row_struct* %80, %struct.sm_row_struct** %4, align 8
  %81 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %82 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %81, i32 0, i32 2
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %79
  %84 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %84, i32 0, i32 2
  %86 = load %struct.sm_element_struct*, %struct.sm_element_struct** %85, align 8
  store %struct.sm_element_struct* %86, %struct.sm_element_struct** %6, align 8
  br label %52, !llvm.loop !9

87:                                               ; preds = %52
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %90 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %89, i32 0, i32 4
  %91 = load %struct.sm_element_struct*, %struct.sm_element_struct** %90, align 8
  store %struct.sm_element_struct* %91, %struct.sm_element_struct** %5, align 8
  br label %20, !llvm.loop !10

92:                                               ; preds = %20
  %93 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %94 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %93, i32 0, i32 3
  %95 = load %struct.sm_element_struct*, %struct.sm_element_struct** %94, align 8
  store %struct.sm_element_struct* %95, %struct.sm_element_struct** %5, align 8
  br label %96

96:                                               ; preds = %178, %92
  %97 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %98 = icmp ne %struct.sm_element_struct* %97, null
  br i1 %98, label %99, label %182

99:                                               ; preds = %96
  %100 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %101 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %106 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %109 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %114 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %113, i32 0, i32 2
  %115 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %114, align 8
  %116 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %117 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %115, i64 %119
  %121 = load %struct.sm_col_struct*, %struct.sm_col_struct** %120, align 8
  br label %123

122:                                              ; preds = %104, %99
  br label %123

123:                                              ; preds = %122, %112
  %124 = phi %struct.sm_col_struct* [ %121, %112 ], [ null, %122 ]
  store %struct.sm_col_struct* %124, %struct.sm_col_struct** %7, align 8
  %125 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %126 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %125, i32 0, i32 3
  %127 = load %struct.sm_element_struct*, %struct.sm_element_struct** %126, align 8
  store %struct.sm_element_struct* %127, %struct.sm_element_struct** %6, align 8
  br label %128

128:                                              ; preds = %173, %123
  %129 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %130 = icmp ne %struct.sm_element_struct* %129, null
  br i1 %130, label %131, label %177

131:                                              ; preds = %128
  %132 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %133 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %138 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %141 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %136
  %145 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %146 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %145, i32 0, i32 0
  %147 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %146, align 8
  %148 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %149 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %147, i64 %151
  %153 = load %struct.sm_row_struct*, %struct.sm_row_struct** %152, align 8
  br label %155

154:                                              ; preds = %136, %131
  br label %155

155:                                              ; preds = %154, %144
  %156 = phi %struct.sm_row_struct* [ %153, %144 ], [ null, %154 ]
  store %struct.sm_row_struct* %156, %struct.sm_row_struct** %4, align 8
  %157 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %158 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %155
  %162 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %163 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  %164 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  %165 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %166 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %169 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %164, i32 noundef %167, i32 noundef %170)
  br label %172

172:                                              ; preds = %161, %155
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %175 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %174, i32 0, i32 2
  %176 = load %struct.sm_element_struct*, %struct.sm_element_struct** %175, align 8
  store %struct.sm_element_struct* %176, %struct.sm_element_struct** %6, align 8
  br label %128, !llvm.loop !11

177:                                              ; preds = %128
  br label %178

178:                                              ; preds = %177
  %179 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %180 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %179, i32 0, i32 4
  %181 = load %struct.sm_element_struct*, %struct.sm_element_struct** %180, align 8
  store %struct.sm_element_struct* %181, %struct.sm_element_struct** %5, align 8
  br label %96, !llvm.loop !12

182:                                              ; preds = %96
  br label %183

183:                                              ; preds = %182
  %184 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %185 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %184, i32 0, i32 5
  %186 = load %struct.sm_row_struct*, %struct.sm_row_struct** %185, align 8
  store %struct.sm_row_struct* %186, %struct.sm_row_struct** %3, align 8
  br label %13, !llvm.loop !13

187:                                              ; preds = %13
  %188 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %8, align 8
  ret %struct.sm_matrix_struct* %188
}

declare dso_local %struct.sm_matrix_struct* @sm_alloc(...) #1

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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
