; ModuleID = './dominate.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/dominate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_row_dominance(%struct.sm_matrix_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %5

5:                                                ; preds = %118, %1
  %.01.in = phi %struct.sm_row_struct** [ %4, %1 ], [ %119, %118 ]
  %.01 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.01.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.01, null
  br i1 %.not, label %120, label %6

6:                                                ; preds = %5
  %7 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 3
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %9 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %8, i64 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, -1
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 3
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %13, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %22 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %21, align 8
  %23 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 3
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %24, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %22, i64 %27
  %29 = load %struct.sm_col_struct*, %struct.sm_col_struct** %28, align 8
  br label %31

30:                                               ; preds = %12, %6
  br label %31

31:                                               ; preds = %30, %20
  %32 = phi %struct.sm_col_struct* [ %29, %20 ], [ null, %30 ]
  %33 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 3
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %33, align 8
  br label %35

35:                                               ; preds = %64, %31
  %.02 = phi %struct.sm_col_struct* [ %32, %31 ], [ %.13, %64 ]
  %.pn = phi %struct.sm_element_struct* [ %34, %31 ], [ %.0, %64 ]
  %.0.in = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.pn, i64 0, i32 4
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not4 = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not4, label %65, label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %48 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %47, align 8
  %49 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %48, i64 %51
  %53 = load %struct.sm_col_struct*, %struct.sm_col_struct** %52, align 8
  br label %55

54:                                               ; preds = %40, %36
  br label %55

55:                                               ; preds = %54, %46
  %56 = phi %struct.sm_col_struct* [ %53, %46 ], [ null, %54 ]
  %57 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %56, i64 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.02, i64 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %55
  %.13 = phi %struct.sm_col_struct* [ %56, %62 ], [ %.02, %55 ]
  br label %64

64:                                               ; preds = %63
  br label %35, !llvm.loop !4

65:                                               ; preds = %35
  %66 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.02, i64 0, i32 3
  %67 = load %struct.sm_element_struct*, %struct.sm_element_struct** %66, align 8
  br label %68

68:                                               ; preds = %116, %65
  %.1 = phi %struct.sm_element_struct* [ %67, %65 ], [ %71, %116 ]
  %.not5 = icmp eq %struct.sm_element_struct* %.1, null
  br i1 %.not5, label %117, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 2
  %71 = load %struct.sm_element_struct*, %struct.sm_element_struct** %70, align 8
  %72 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %83 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %82, align 8
  %84 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.1, i64 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %83, i64 %86
  %88 = load %struct.sm_row_struct*, %struct.sm_row_struct** %87, align 8
  br label %90

89:                                               ; preds = %75, %69
  br label %90

90:                                               ; preds = %89, %81
  %91 = phi %struct.sm_row_struct* [ %88, %81 ], [ null, %89 ]
  %92 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %91, i64 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %91, i64 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %99, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %91, i64 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp sgt i32 %105, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103, %90
  %110 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_contains to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef nonnull %.01, %struct.sm_row_struct* noundef %91) #2
  %.not6 = icmp eq i32 %110, 0
  br i1 %.not6, label %114, label %111

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %91, i64 0, i32 0
  %113 = load i32, i32* %112, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %113) #2
  br label %114

114:                                              ; preds = %111, %109
  br label %115

115:                                              ; preds = %114, %103, %97
  br label %116

116:                                              ; preds = %115
  br label %68, !llvm.loop !6

117:                                              ; preds = %68
  br label %118

118:                                              ; preds = %117
  %119 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.01, i64 0, i32 5
  br label %5, !llvm.loop !7

120:                                              ; preds = %5
  %121 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %3, %122
  ret i32 %123
}

declare dso_local i32 @sm_row_contains(...) #1

declare dso_local void @sm_delrow(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_dominance(%struct.sm_matrix_struct* noundef %0, i32* noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %4 = load i32, i32* %3, align 8
  %5 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 7
  %6 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  br label %7

7:                                                ; preds = %134, %2
  %.03 = phi %struct.sm_col_struct* [ %6, %2 ], [ %10, %134 ]
  %.not = icmp eq %struct.sm_col_struct* %.03, null
  br i1 %.not, label %135, label %8

8:                                                ; preds = %7
  %9 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 5
  %10 = load %struct.sm_col_struct*, %struct.sm_col_struct** %9, align 8
  %11 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 3
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %12, i64 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 3
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %17, align 8
  %19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %18, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %26 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %25, align 8
  %27 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 3
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %27, align 8
  %29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i64 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %26, i64 %31
  %33 = load %struct.sm_row_struct*, %struct.sm_row_struct** %32, align 8
  br label %35

34:                                               ; preds = %16, %8
  br label %35

35:                                               ; preds = %34, %24
  %36 = phi %struct.sm_row_struct* [ %33, %24 ], [ null, %34 ]
  %37 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 3
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %37, align 8
  br label %39

39:                                               ; preds = %68, %35
  %.pn = phi %struct.sm_element_struct* [ %38, %35 ], [ %.01, %68 ]
  %.0 = phi %struct.sm_row_struct* [ %36, %35 ], [ %.1, %68 ]
  %.01.in = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.pn, i64 0, i32 2
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not4 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not4, label %69, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %52 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %51, align 8
  %53 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %52, i64 %55
  %57 = load %struct.sm_row_struct*, %struct.sm_row_struct** %56, align 8
  br label %59

58:                                               ; preds = %44, %40
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi %struct.sm_row_struct* [ %57, %50 ], [ null, %58 ]
  %61 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %60, i64 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %59
  %.1 = phi %struct.sm_row_struct* [ %60, %66 ], [ %.0, %59 ]
  br label %68

68:                                               ; preds = %67
  br label %39, !llvm.loop !8

69:                                               ; preds = %39
  %70 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.0, i64 0, i32 3
  br label %71

71:                                               ; preds = %131, %69
  %.12.in = phi %struct.sm_element_struct** [ %70, %69 ], [ %132, %131 ]
  %.12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.12.in, align 8
  %.not5 = icmp eq %struct.sm_element_struct* %.12, null
  br i1 %.not5, label %.loopexit, label %72

72:                                               ; preds = %71
  %73 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, -1
  br i1 %75, label %76, label %90

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %84 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %83, align 8
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %84, i64 %87
  %89 = load %struct.sm_col_struct*, %struct.sm_col_struct** %88, align 8
  br label %91

90:                                               ; preds = %76, %72
  br label %91

91:                                               ; preds = %90, %82
  %92 = phi %struct.sm_col_struct* [ %89, %82 ], [ null, %90 ]
  %.not6 = icmp eq i32* %1, null
  br i1 %.not6, label %106, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %92, i64 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %1, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %1, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %98, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %93
  br label %131

106:                                              ; preds = %93, %91
  %107 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %92, i64 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %124, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %92, i64 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %92, i64 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118, %106
  %125 = call i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...) bitcast (i32 (...)* @sm_col_contains to i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...)*)(%struct.sm_col_struct* noundef nonnull %.03, %struct.sm_col_struct* noundef %92) #2
  %.not7 = icmp eq i32 %125, 0
  br i1 %.not7, label %129, label %126

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.03, i64 0, i32 0
  %128 = load i32, i32* %127, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %128) #2
  br label %133

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %118, %112
  br label %131

131:                                              ; preds = %130, %105
  %132 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.12, i64 0, i32 4
  br label %71, !llvm.loop !9

.loopexit:                                        ; preds = %71
  br label %133

133:                                              ; preds = %.loopexit, %126
  br label %134

134:                                              ; preds = %133
  br label %7, !llvm.loop !10

135:                                              ; preds = %7
  %136 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %4, %137
  ret i32 %138
}

declare dso_local i32 @sm_col_contains(...) #1

declare dso_local void @sm_delcol(...) #1

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
