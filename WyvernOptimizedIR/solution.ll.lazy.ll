; ModuleID = './solution.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/solution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solution_struct = type { %struct.sm_row_struct*, i32 }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @solution_alloc() #0 {
  %1 = call dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #2
  %2 = bitcast i8* %1 to %struct.solution_struct*
  %3 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %2, i64 0, i32 1
  store i32 0, i32* %3, align 8
  %4 = call %struct.sm_row_struct* (...) @sm_row_alloc() #2
  %5 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %2, i64 0, i32 0
  store %struct.sm_row_struct* %4, %struct.sm_row_struct** %5, align 8
  ret %struct.solution_struct* %2
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.sm_row_struct* @sm_row_alloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_free(%struct.solution_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 0
  %3 = load %struct.sm_row_struct*, %struct.sm_row_struct** %2, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %3) #2
  %.not = icmp eq %struct.solution_struct* %0, null
  br i1 %.not, label %6, label %4

4:                                                ; preds = %1
  %5 = bitcast %struct.solution_struct* %0 to i8*
  call void @free(i8* noundef %5)
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

declare dso_local void @sm_row_free(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @solution_dup(%struct.solution_struct* nocapture noundef readonly %0) #0 {
  %2 = call dereferenceable_or_null(16) i8* @malloc(i64 noundef 16) #2
  %3 = bitcast i8* %2 to %struct.solution_struct*
  %4 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i64 0, i32 1
  store i32 %5, i32* %6, align 8
  %7 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 0
  %8 = load %struct.sm_row_struct*, %struct.sm_row_struct** %7, align 8
  %9 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %8) #2
  %10 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i64 0, i32 0
  store %struct.sm_row_struct* %9, %struct.sm_row_struct** %10, align 8
  ret %struct.solution_struct* %3
}

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_add(%struct.solution_struct* nocapture noundef %0, i32* noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 0
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  %6 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %5, i32 noundef %2) #2
  %7 = icmp eq i32* %1, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  br label %13

9:                                                ; preds = %3
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds i32, i32* %1, i64 %10
  %12 = load i32, i32* %11, align 4
  br label %13

13:                                               ; preds = %9, %8
  %14 = phi i32 [ 1, %8 ], [ %12, %9 ]
  %15 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, %14
  store i32 %17, i32* %15, align 8
  ret void
}

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_accept(%struct.solution_struct* nocapture noundef %0, %struct.sm_matrix_struct* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  call void @solution_add(%struct.solution_struct* noundef %0, i32* noundef %2, i32 noundef %3)
  %5 = icmp sgt i32 %3, -1
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i64 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, %3
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %1, i64 0, i32 2
  %12 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %11, align 8
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %12, i64 %13
  %15 = load %struct.sm_col_struct*, %struct.sm_col_struct** %14, align 8
  br label %17

16:                                               ; preds = %6, %4
  br label %17

17:                                               ; preds = %16, %10
  %18 = phi %struct.sm_col_struct* [ %15, %10 ], [ null, %16 ]
  %19 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %18, i64 0, i32 3
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %19, align 8
  br label %21

21:                                               ; preds = %27, %17
  %.0 = phi %struct.sm_element_struct* [ %20, %17 ], [ %24, %27 ]
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %28, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 2
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 0
  %26 = load i32, i32* %25, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %1, i32 noundef %26) #2
  br label %27

27:                                               ; preds = %22
  br label %21, !llvm.loop !4

28:                                               ; preds = %21
  ret void
}

declare dso_local void @sm_delrow(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_reject(%struct.solution_struct* nocapture noundef readnone %0, %struct.sm_matrix_struct* noundef %1, i32* nocapture noundef readnone %2, i32 noundef %3) #0 {
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %1, i32 noundef %3) #2
  ret void
}

declare dso_local void @sm_delcol(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @solution_choose_best(%struct.solution_struct* noundef %0, %struct.solution_struct* noundef %1) #0 {
  %.not = icmp eq %struct.solution_struct* %0, null
  br i1 %.not, label %12, label %3

3:                                                ; preds = %2
  %.not2 = icmp eq %struct.solution_struct* %1, null
  br i1 %.not2, label %11, label %4

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %0, i64 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %1, i64 0, i32 1
  %8 = load i32, i32* %7, align 8
  %.not3 = icmp sgt i32 %6, %8
  br i1 %.not3, label %10, label %9

9:                                                ; preds = %4
  call void @solution_free(%struct.solution_struct* noundef nonnull %1)
  br label %15

10:                                               ; preds = %4
  call void @solution_free(%struct.solution_struct* noundef nonnull %0)
  br label %15

11:                                               ; preds = %3
  br label %15

12:                                               ; preds = %2
  %.not1 = icmp eq %struct.solution_struct* %1, null
  br i1 %.not1, label %14, label %13

13:                                               ; preds = %12
  br label %15

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14, %13, %11, %10, %9
  %.0 = phi %struct.solution_struct* [ %0, %9 ], [ %1, %10 ], [ %0, %11 ], [ %1, %13 ], [ null, %14 ]
  ret %struct.solution_struct* %.0
}

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
