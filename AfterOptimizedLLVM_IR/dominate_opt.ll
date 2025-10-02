; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/dominate.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/dominate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_row_dominance(%struct.sm_matrix_struct* noundef %0) #0 {
  %2 = alloca %struct.sm_matrix_struct*, align 8
  %3 = alloca %struct.sm_row_struct*, align 8
  %4 = alloca %struct.sm_row_struct*, align 8
  %5 = alloca %struct.sm_col_struct*, align 8
  %6 = alloca %struct.sm_col_struct*, align 8
  %7 = alloca %struct.sm_element_struct*, align 8
  %8 = alloca %struct.sm_element_struct*, align 8
  %9 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %2, align 8
  %10 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %14 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %13, i32 0, i32 4
  %15 = load %struct.sm_row_struct*, %struct.sm_row_struct** %14, align 8
  store %struct.sm_row_struct* %15, %struct.sm_row_struct** %3, align 8
  br label %16

16:                                               ; preds = %173, %1
  %17 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %18 = icmp ne %struct.sm_row_struct* %17, null
  br i1 %18, label %19, label %177

19:                                               ; preds = %16
  %20 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %21 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %20, i32 0, i32 3
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %21, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %19
  %27 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %28 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %27, i32 0, i32 3
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %28, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %33 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %26
  %37 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %37, i32 0, i32 2
  %39 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %38, align 8
  %40 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %41 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %40, i32 0, i32 3
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %41, align 8
  %43 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %39, i64 %45
  %47 = load %struct.sm_col_struct*, %struct.sm_col_struct** %46, align 8
  br label %49

48:                                               ; preds = %26, %19
  br label %49

49:                                               ; preds = %48, %36
  %50 = phi %struct.sm_col_struct* [ %47, %36 ], [ null, %48 ]
  store %struct.sm_col_struct* %50, %struct.sm_col_struct** %6, align 8
  %51 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %52 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %51, i32 0, i32 3
  %53 = load %struct.sm_element_struct*, %struct.sm_element_struct** %52, align 8
  %54 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %53, i32 0, i32 4
  %55 = load %struct.sm_element_struct*, %struct.sm_element_struct** %54, align 8
  store %struct.sm_element_struct* %55, %struct.sm_element_struct** %7, align 8
  br label %56

56:                                               ; preds = %95, %49
  %57 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %58 = icmp ne %struct.sm_element_struct* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %56
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %61 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %66 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %69 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %74 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %73, i32 0, i32 2
  %75 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %74, align 8
  %76 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %77 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %75, i64 %79
  %81 = load %struct.sm_col_struct*, %struct.sm_col_struct** %80, align 8
  br label %83

82:                                               ; preds = %64, %59
  br label %83

83:                                               ; preds = %82, %72
  %84 = phi %struct.sm_col_struct* [ %81, %72 ], [ null, %82 ]
  store %struct.sm_col_struct* %84, %struct.sm_col_struct** %5, align 8
  %85 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  %86 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %89 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load %struct.sm_col_struct*, %struct.sm_col_struct** %5, align 8
  store %struct.sm_col_struct* %93, %struct.sm_col_struct** %6, align 8
  br label %94

94:                                               ; preds = %92, %83
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %97 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %96, i32 0, i32 4
  %98 = load %struct.sm_element_struct*, %struct.sm_element_struct** %97, align 8
  store %struct.sm_element_struct* %98, %struct.sm_element_struct** %7, align 8
  br label %56, !llvm.loop !4

99:                                               ; preds = %56
  %100 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %101 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %100, i32 0, i32 3
  %102 = load %struct.sm_element_struct*, %struct.sm_element_struct** %101, align 8
  store %struct.sm_element_struct* %102, %struct.sm_element_struct** %7, align 8
  br label %103

103:                                              ; preds = %170, %99
  %104 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %105 = icmp ne %struct.sm_element_struct* %104, null
  br i1 %105, label %106, label %172

106:                                              ; preds = %103
  %107 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %108 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %107, i32 0, i32 2
  %109 = load %struct.sm_element_struct*, %struct.sm_element_struct** %108, align 8
  store %struct.sm_element_struct* %109, %struct.sm_element_struct** %8, align 8
  %110 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %111 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %116 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %119 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %124 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %123, i32 0, i32 0
  %125 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %124, align 8
  %126 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %127 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %125, i64 %129
  %131 = load %struct.sm_row_struct*, %struct.sm_row_struct** %130, align 8
  br label %133

132:                                              ; preds = %114, %106
  br label %133

133:                                              ; preds = %132, %122
  %134 = phi %struct.sm_row_struct* [ %131, %122 ], [ null, %132 ]
  store %struct.sm_row_struct* %134, %struct.sm_row_struct** %4, align 8
  %135 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %136 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %139 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %137, %140
  br i1 %141, label %158, label %142

142:                                              ; preds = %133
  %143 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %144 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %147 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %145, %148
  br i1 %149, label %150, label %169

150:                                              ; preds = %142
  %151 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %152 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %155 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp sgt i32 %153, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %150, %133
  %159 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %160 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %161 = call i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...) bitcast (i32 (...)* @sm_row_contains to i32 (%struct.sm_row_struct*, %struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %159, %struct.sm_row_struct* noundef %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %165 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %166 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %164, i32 noundef %167)
  br label %168

168:                                              ; preds = %163, %158
  br label %169

169:                                              ; preds = %168, %150, %142
  br label %170

170:                                              ; preds = %169
  %171 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  store %struct.sm_element_struct* %171, %struct.sm_element_struct** %7, align 8
  br label %103, !llvm.loop !6

172:                                              ; preds = %103
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.sm_row_struct*, %struct.sm_row_struct** %3, align 8
  %175 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %174, i32 0, i32 5
  %176 = load %struct.sm_row_struct*, %struct.sm_row_struct** %175, align 8
  store %struct.sm_row_struct* %176, %struct.sm_row_struct** %3, align 8
  br label %16, !llvm.loop !7

177:                                              ; preds = %16
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  %180 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  ret i32 %182
}

declare dso_local i32 @sm_row_contains(...) #1

declare dso_local void @sm_delrow(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_col_dominance(%struct.sm_matrix_struct* noundef %0, i32* noundef %1) #0 {
  %3 = alloca %struct.sm_matrix_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sm_row_struct*, align 8
  %6 = alloca %struct.sm_col_struct*, align 8
  %7 = alloca %struct.sm_col_struct*, align 8
  %8 = alloca %struct.sm_element_struct*, align 8
  %9 = alloca %struct.sm_row_struct*, align 8
  %10 = alloca %struct.sm_col_struct*, align 8
  %11 = alloca i32, align 4
  store %struct.sm_matrix_struct* %0, %struct.sm_matrix_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %13 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %16 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %15, i32 0, i32 7
  %17 = load %struct.sm_col_struct*, %struct.sm_col_struct** %16, align 8
  store %struct.sm_col_struct* %17, %struct.sm_col_struct** %6, align 8
  br label %18

18:                                               ; preds = %197, %2
  %19 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %20 = icmp ne %struct.sm_col_struct* %19, null
  br i1 %20, label %21, label %199

21:                                               ; preds = %18
  %22 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %23 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %22, i32 0, i32 5
  %24 = load %struct.sm_col_struct*, %struct.sm_col_struct** %23, align 8
  store %struct.sm_col_struct* %24, %struct.sm_col_struct** %10, align 8
  %25 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %26 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %25, i32 0, i32 3
  %27 = load %struct.sm_element_struct*, %struct.sm_element_struct** %26, align 8
  %28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %21
  %32 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %33 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %32, i32 0, i32 3
  %34 = load %struct.sm_element_struct*, %struct.sm_element_struct** %33, align 8
  %35 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %38 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %31
  %42 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %43 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %42, i32 0, i32 0
  %44 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %43, align 8
  %45 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %46 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %45, i32 0, i32 3
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  %48 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %44, i64 %50
  %52 = load %struct.sm_row_struct*, %struct.sm_row_struct** %51, align 8
  br label %54

53:                                               ; preds = %31, %21
  br label %54

54:                                               ; preds = %53, %41
  %55 = phi %struct.sm_row_struct* [ %52, %41 ], [ null, %53 ]
  store %struct.sm_row_struct* %55, %struct.sm_row_struct** %9, align 8
  %56 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %57 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %56, i32 0, i32 3
  %58 = load %struct.sm_element_struct*, %struct.sm_element_struct** %57, align 8
  %59 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %58, i32 0, i32 2
  %60 = load %struct.sm_element_struct*, %struct.sm_element_struct** %59, align 8
  store %struct.sm_element_struct* %60, %struct.sm_element_struct** %8, align 8
  br label %61

61:                                               ; preds = %100, %54
  %62 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %63 = icmp ne %struct.sm_element_struct* %62, null
  br i1 %63, label %64, label %104

64:                                               ; preds = %61
  %65 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %66 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %64
  %70 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %71 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %74 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %79 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %78, i32 0, i32 0
  %80 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %79, align 8
  %81 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %82 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %80, i64 %84
  %86 = load %struct.sm_row_struct*, %struct.sm_row_struct** %85, align 8
  br label %88

87:                                               ; preds = %69, %64
  br label %88

88:                                               ; preds = %87, %77
  %89 = phi %struct.sm_row_struct* [ %86, %77 ], [ null, %87 ]
  store %struct.sm_row_struct* %89, %struct.sm_row_struct** %5, align 8
  %90 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  %91 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %94 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load %struct.sm_row_struct*, %struct.sm_row_struct** %5, align 8
  store %struct.sm_row_struct* %98, %struct.sm_row_struct** %9, align 8
  br label %99

99:                                               ; preds = %97, %88
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %102 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %101, i32 0, i32 2
  %103 = load %struct.sm_element_struct*, %struct.sm_element_struct** %102, align 8
  store %struct.sm_element_struct* %103, %struct.sm_element_struct** %8, align 8
  br label %61, !llvm.loop !8

104:                                              ; preds = %61
  %105 = load %struct.sm_row_struct*, %struct.sm_row_struct** %9, align 8
  %106 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %105, i32 0, i32 3
  %107 = load %struct.sm_element_struct*, %struct.sm_element_struct** %106, align 8
  store %struct.sm_element_struct* %107, %struct.sm_element_struct** %8, align 8
  br label %108

108:                                              ; preds = %192, %104
  %109 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %110 = icmp ne %struct.sm_element_struct* %109, null
  br i1 %110, label %111, label %196

111:                                              ; preds = %108
  %112 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %113 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %118 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %121 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %116
  %125 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %126 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %125, i32 0, i32 2
  %127 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %126, align 8
  %128 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %129 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %127, i64 %131
  %133 = load %struct.sm_col_struct*, %struct.sm_col_struct** %132, align 8
  br label %135

134:                                              ; preds = %116, %111
  br label %135

135:                                              ; preds = %134, %124
  %136 = phi %struct.sm_col_struct* [ %133, %124 ], [ null, %134 ]
  store %struct.sm_col_struct* %136, %struct.sm_col_struct** %7, align 8
  %137 = load i32*, i32** %4, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i32*, i32** %4, align 8
  %141 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %142 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %4, align 8
  %148 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %149 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %146, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %139
  br label %192

156:                                              ; preds = %139, %135
  %157 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %158 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %161 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp sgt i32 %159, %162
  br i1 %163, label %180, label %164

164:                                              ; preds = %156
  %165 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %166 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %169 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %191

172:                                              ; preds = %164
  %173 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %174 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %177 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sgt i32 %175, %178
  br i1 %179, label %180, label %191

180:                                              ; preds = %172, %156
  %181 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %182 = load %struct.sm_col_struct*, %struct.sm_col_struct** %7, align 8
  %183 = call i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...) bitcast (i32 (...)* @sm_col_contains to i32 (%struct.sm_col_struct*, %struct.sm_col_struct*, ...)*)(%struct.sm_col_struct* noundef %181, %struct.sm_col_struct* noundef %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %187 = load %struct.sm_col_struct*, %struct.sm_col_struct** %6, align 8
  %188 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %186, i32 noundef %189)
  br label %196

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %172, %164
  br label %192

192:                                              ; preds = %191, %155
  %193 = load %struct.sm_element_struct*, %struct.sm_element_struct** %8, align 8
  %194 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %193, i32 0, i32 4
  %195 = load %struct.sm_element_struct*, %struct.sm_element_struct** %194, align 8
  store %struct.sm_element_struct* %195, %struct.sm_element_struct** %8, align 8
  br label %108, !llvm.loop !9

196:                                              ; preds = %185, %108
  br label %197

197:                                              ; preds = %196
  %198 = load %struct.sm_col_struct*, %struct.sm_col_struct** %10, align 8
  store %struct.sm_col_struct* %198, %struct.sm_col_struct** %6, align 8
  br label %18, !llvm.loop !10

199:                                              ; preds = %18
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %202 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %201, i32 0, i32 9
  %203 = load i32, i32* %202, align 8
  %204 = sub nsw i32 %200, %203
  ret i32 %204
}

declare dso_local i32 @sm_col_contains(...) #1

declare dso_local void @sm_delcol(...) #1

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
