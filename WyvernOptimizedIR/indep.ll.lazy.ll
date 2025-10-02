; ModuleID = './indep.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/indep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @sm_maximal_independent_set(%struct.sm_matrix_struct* nocapture noundef readonly %0, i32* noundef readonly %1) #0 {
  %3 = call %struct.solution_struct* (...) @solution_alloc() #2
  %4 = call %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* noundef %0)
  br label %5

5:                                                ; preds = %91, %2
  %6 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %4, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %92

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %4, i64 0, i32 4
  %11 = load %struct.sm_row_struct*, %struct.sm_row_struct** %10, align 8
  br label %12

12:                                               ; preds = %21, %9
  %.pn8 = phi %struct.sm_row_struct* [ %11, %9 ], [ %.05, %21 ]
  %.03 = phi %struct.sm_row_struct* [ %11, %9 ], [ %.14, %21 ]
  %.05.in = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.pn8, i64 0, i32 5
  %.05 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.05.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.05, null
  br i1 %.not, label %22, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.05, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.03, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %13
  %.14 = phi %struct.sm_row_struct* [ %.05, %19 ], [ %.03, %13 ]
  br label %21

21:                                               ; preds = %20
  br label %12, !llvm.loop !4

22:                                               ; preds = %12
  %23 = icmp eq i32* %1, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  br label %72

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.03, i64 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.03, i64 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %37 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %36, align 8
  %38 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.03, i64 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %37, i64 %40
  %42 = load %struct.sm_row_struct*, %struct.sm_row_struct** %41, align 8
  br label %44

43:                                               ; preds = %29, %25
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi %struct.sm_row_struct* [ %42, %35 ], [ null, %43 ]
  %46 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i64 0, i32 3
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  %48 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %47, i64 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %1, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %45, i64 0, i32 3
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %53, align 8
  br label %55

55:                                               ; preds = %70, %44
  %.pn = phi %struct.sm_element_struct* [ %54, %44 ], [ %.01, %70 ]
  %.0 = phi i32 [ %52, %44 ], [ %.1, %70 ]
  %.01.in = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.pn, i64 0, i32 4
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not6 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not6, label %71, label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %1, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, %.0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %1, i64 %66
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %63, %56
  %.1 = phi i32 [ %68, %63 ], [ %.0, %56 ]
  br label %70

70:                                               ; preds = %69
  br label %55, !llvm.loop !6

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %24
  %.2 = phi i32 [ 1, %24 ], [ %.0, %71 ]
  %73 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i64 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %.2
  store i32 %75, i32* %73, align 8
  %76 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i64 0, i32 0
  %77 = load %struct.sm_row_struct*, %struct.sm_row_struct** %76, align 8
  %78 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.03, i64 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %77, i32 noundef %79) #2
  %81 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %.03) #2
  %82 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %81, i64 0, i32 3
  br label %83

83:                                               ; preds = %89, %72
  %.12.in = phi %struct.sm_element_struct** [ %82, %72 ], [ %90, %89 ]
  %.12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.12.in, align 8
  %.not7 = icmp eq %struct.sm_element_struct* %.12, null
  br i1 %.not7, label %91, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 1
  %86 = load i32, i32* %85, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %4, i32 noundef %86) #2
  %87 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 1
  %88 = load i32, i32* %87, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %4, i32 noundef %88) #2
  br label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 4
  br label %83, !llvm.loop !7

91:                                               ; preds = %83
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %81) #2
  br label %5, !llvm.loop !8

92:                                               ; preds = %5
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %4) #2
  ret %struct.solution_struct* %3
}

declare dso_local %struct.solution_struct* @solution_alloc(...) #1

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

declare dso_local void @sm_delrow(...) #1

declare dso_local void @sm_delcol(...) #1

declare dso_local void @sm_row_free(...) #1

declare dso_local void @sm_free(...) #1

; Function Attrs: noinline nounwind uwtable
define internal %struct.sm_matrix_struct* @build_intersection_matrix(%struct.sm_matrix_struct* nocapture noundef readonly %0) #0 {
  %2 = call %struct.sm_matrix_struct* (...) @sm_alloc() #2
  %3 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %4

4:                                                ; preds = %121, %1
  %.0.in = phi %struct.sm_row_struct** [ %3, %1 ], [ %122, %121 ]
  %.0 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.0, null
  br i1 %.not, label %123, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 3
  br label %7

7:                                                ; preds = %56, %5
  %.01.in = phi %struct.sm_element_struct** [ %6, %5 ], [ %57, %56 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not4 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not4, label %58, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %20 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %19, align 8
  %21 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %20, i64 %23
  %25 = load %struct.sm_col_struct*, %struct.sm_col_struct** %24, align 8
  br label %27

26:                                               ; preds = %12, %8
  br label %27

27:                                               ; preds = %26, %18
  %28 = phi %struct.sm_col_struct* [ %25, %18 ], [ null, %26 ]
  %29 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %28, i64 0, i32 3
  br label %30

30:                                               ; preds = %53, %27
  %.02.in = phi %struct.sm_element_struct** [ %29, %27 ], [ %54, %53 ]
  %.02 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.02.in, align 8
  %.not8 = icmp eq %struct.sm_element_struct* %.02, null
  br i1 %.not8, label %55, label %31

31:                                               ; preds = %30
  %32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %43 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %42, align 8
  %44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %43, i64 %46
  %48 = load %struct.sm_row_struct*, %struct.sm_row_struct** %47, align 8
  br label %50

49:                                               ; preds = %35, %31
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi %struct.sm_row_struct* [ %48, %41 ], [ null, %49 ]
  %52 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %51, i64 0, i32 2
  store i32 0, i32* %52, align 8
  br label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 2
  br label %30, !llvm.loop !9

55:                                               ; preds = %30
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %7, !llvm.loop !10

58:                                               ; preds = %7
  %59 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 3
  br label %60

60:                                               ; preds = %118, %58
  %.1.in = phi %struct.sm_element_struct** [ %59, %58 ], [ %119, %118 ]
  %.1 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.1.in, align 8
  %.not5 = icmp eq %struct.sm_element_struct* %.1, null
  br i1 %.not5, label %120, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %63, -1
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %73 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %72, align 8
  %74 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %73, i64 %76
  %78 = load %struct.sm_col_struct*, %struct.sm_col_struct** %77, align 8
  br label %80

79:                                               ; preds = %65, %61
  br label %80

80:                                               ; preds = %79, %71
  %81 = phi %struct.sm_col_struct* [ %78, %71 ], [ null, %79 ]
  %82 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %81, i64 0, i32 3
  br label %83

83:                                               ; preds = %115, %80
  %.13.in = phi %struct.sm_element_struct** [ %82, %80 ], [ %116, %115 ]
  %.13 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.13.in, align 8
  %.not6 = icmp eq %struct.sm_element_struct* %.13, null
  br i1 %.not6, label %117, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.13, i64 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.13, i64 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %96 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %95, align 8
  %97 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.13, i64 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %96, i64 %99
  %101 = load %struct.sm_row_struct*, %struct.sm_row_struct** %100, align 8
  br label %103

102:                                              ; preds = %88, %84
  br label %103

103:                                              ; preds = %102, %94
  %104 = phi %struct.sm_row_struct* [ %101, %94 ], [ null, %102 ]
  %105 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %104, i64 0, i32 2
  %106 = load i32, i32* %105, align 8
  %.not7 = icmp eq i32 %106, 0
  br i1 %.not7, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %104, i64 0, i32 2
  store i32 1, i32* %108, align 8
  %109 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %104, i64 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %2, i32 noundef %110, i32 noundef %112) #2
  br label %114

114:                                              ; preds = %107, %103
  br label %115

115:                                              ; preds = %114
  %116 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.13, i64 0, i32 2
  br label %83, !llvm.loop !11

117:                                              ; preds = %83
  br label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 4
  br label %60, !llvm.loop !12

120:                                              ; preds = %60
  br label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 5
  br label %4, !llvm.loop !13

123:                                              ; preds = %4
  ret %struct.sm_matrix_struct* %2
}

declare dso_local %struct.sm_matrix_struct* @sm_alloc(...) #1

declare dso_local %struct.sm_element_struct* @sm_insert(...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
