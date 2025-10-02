; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sminterf.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sminterf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @do_sm_minimum_cover(%struct.set_family* noundef %0) #0 {
  %2 = alloca %struct.set_family*, align 8
  %3 = alloca %struct.sm_matrix_struct*, align 8
  %4 = alloca %struct.sm_row_struct*, align 8
  %5 = alloca %struct.sm_element_struct*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.set_family* %0, %struct.set_family** %2, align 8
  %13 = call %struct.sm_matrix_struct* (...) @sm_alloc()
  store %struct.sm_matrix_struct* %13, %struct.sm_matrix_struct** %3, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.set_family*, %struct.set_family** %2, align 8
  %15 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = load %struct.set_family*, %struct.set_family** %2, align 8
  %19 = getelementptr inbounds %struct.set_family, %struct.set_family* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.set_family*, %struct.set_family** %2, align 8
  %22 = getelementptr inbounds %struct.set_family, %struct.set_family* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %17, i64 %25
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %70, %1
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ult i32* %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %27
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 1023
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %66, %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = load i32*, i32** %12, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = shl i32 %46, 5
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %61, %39
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %56, i32 noundef %57, i32 noundef %58)
  br label %60

60:                                               ; preds = %55, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = lshr i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %48, !llvm.loop !4

66:                                               ; preds = %48
  br label %36, !llvm.loop !6

67:                                               ; preds = %36
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %67
  %71 = load %struct.set_family*, %struct.set_family** %2, align 8
  %72 = getelementptr inbounds %struct.set_family, %struct.set_family* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %12, align 8
  br label %27, !llvm.loop !7

77:                                               ; preds = %27
  %78 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  %79 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %78, i32* noundef null, i32 noundef 1, i32 noundef 0)
  store %struct.sm_row_struct* %79, %struct.sm_row_struct** %4, align 8
  %80 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %3, align 8
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %80)
  %81 = load %struct.set_family*, %struct.set_family** %2, align 8
  %82 = getelementptr inbounds %struct.set_family, %struct.set_family* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 32
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %94

86:                                               ; preds = %77
  %87 = load %struct.set_family*, %struct.set_family** %2, align 8
  %88 = getelementptr inbounds %struct.set_family, %struct.set_family* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sub nsw i32 %89, 1
  %91 = ashr i32 %90, 5
  %92 = add nsw i32 %91, 1
  %93 = add nsw i32 %92, 1
  br label %94

94:                                               ; preds = %86, %85
  %95 = phi i32 [ 2, %85 ], [ %93, %86 ]
  %96 = sext i32 %95 to i64
  %97 = mul i64 4, %96
  %98 = call i8* @malloc(i64 noundef %97)
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.set_family*, %struct.set_family** %2, align 8
  %101 = getelementptr inbounds %struct.set_family, %struct.set_family* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %99, i32 noundef %102)
  store i32* %103, i32** %6, align 8
  %104 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %105 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %104, i32 0, i32 3
  %106 = load %struct.sm_element_struct*, %struct.sm_element_struct** %105, align 8
  store %struct.sm_element_struct* %106, %struct.sm_element_struct** %5, align 8
  br label %107

107:                                              ; preds = %126, %94
  %108 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %109 = icmp ne %struct.sm_element_struct* %108, null
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %112 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 31
  %115 = shl i32 1, %114
  %116 = load i32*, i32** %6, align 8
  %117 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %118 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 5
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %115
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %110
  %127 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %128 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %127, i32 0, i32 4
  %129 = load %struct.sm_element_struct*, %struct.sm_element_struct** %128, align 8
  store %struct.sm_element_struct* %129, %struct.sm_element_struct** %5, align 8
  br label %107, !llvm.loop !8

130:                                              ; preds = %107
  %131 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %131)
  %132 = load i32*, i32** %6, align 8
  ret i32* %132
}

declare dso_local %struct.sm_matrix_struct* @sm_alloc(...) #1

declare dso_local %struct.sm_element_struct* @sm_insert(...) #1

declare dso_local %struct.sm_row_struct* @sm_minimum_cover(...) #1

declare dso_local void @sm_free(...) #1

declare dso_local i32* @set_clear(...) #1

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local void @sm_row_free(...) #1

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
