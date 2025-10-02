; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/solution.c'
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
  %1 = alloca %struct.solution_struct*, align 8
  %2 = call i8* @malloc(i64 noundef 16)
  %3 = bitcast i8* %2 to %struct.solution_struct*
  store %struct.solution_struct* %3, %struct.solution_struct** %1, align 8
  %4 = load %struct.solution_struct*, %struct.solution_struct** %1, align 8
  %5 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %4, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = call %struct.sm_row_struct* (...) @sm_row_alloc()
  %7 = load %struct.solution_struct*, %struct.solution_struct** %1, align 8
  %8 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %7, i32 0, i32 0
  store %struct.sm_row_struct* %6, %struct.sm_row_struct** %8, align 8
  %9 = load %struct.solution_struct*, %struct.solution_struct** %1, align 8
  ret %struct.solution_struct* %9
}

declare dso_local i8* @malloc(i64 noundef) #1

declare dso_local %struct.sm_row_struct* @sm_row_alloc(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_free(%struct.solution_struct* noundef %0) #0 {
  %2 = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %0, %struct.solution_struct** %2, align 8
  %3 = load %struct.solution_struct*, %struct.solution_struct** %2, align 8
  %4 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %3, i32 0, i32 0
  %5 = load %struct.sm_row_struct*, %struct.sm_row_struct** %4, align 8
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %5)
  %6 = load %struct.solution_struct*, %struct.solution_struct** %2, align 8
  %7 = icmp ne %struct.solution_struct* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.solution_struct*, %struct.solution_struct** %2, align 8
  %10 = bitcast %struct.solution_struct* %9 to i8*
  call void @free(i8* noundef %10)
  store %struct.solution_struct* null, %struct.solution_struct** %2, align 8
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

declare dso_local void @sm_row_free(...) #1

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @solution_dup(%struct.solution_struct* noundef %0) #0 {
  %2 = alloca %struct.solution_struct*, align 8
  %3 = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %0, %struct.solution_struct** %2, align 8
  %4 = call i8* @malloc(i64 noundef 16)
  %5 = bitcast i8* %4 to %struct.solution_struct*
  store %struct.solution_struct* %5, %struct.solution_struct** %3, align 8
  %6 = load %struct.solution_struct*, %struct.solution_struct** %2, align 8
  %7 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.solution_struct*, %struct.solution_struct** %3, align 8
  %10 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.solution_struct*, %struct.solution_struct** %2, align 8
  %12 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %11, i32 0, i32 0
  %13 = load %struct.sm_row_struct*, %struct.sm_row_struct** %12, align 8
  %14 = call %struct.sm_row_struct* (%struct.sm_row_struct*, ...) bitcast (%struct.sm_row_struct* (...)* @sm_row_dup to %struct.sm_row_struct* (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %13)
  %15 = load %struct.solution_struct*, %struct.solution_struct** %3, align 8
  %16 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %15, i32 0, i32 0
  store %struct.sm_row_struct* %14, %struct.sm_row_struct** %16, align 8
  %17 = load %struct.solution_struct*, %struct.solution_struct** %3, align 8
  ret %struct.solution_struct* %17
}

declare dso_local %struct.sm_row_struct* @sm_row_dup(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_add(%struct.solution_struct* noundef %0, i32* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.solution_struct*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.solution_struct* %0, %struct.solution_struct** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  %8 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %7, i32 0, i32 0
  %9 = load %struct.sm_row_struct*, %struct.sm_row_struct** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_row_insert to %struct.sm_element_struct* (%struct.sm_row_struct*, i32, ...)*)(%struct.sm_row_struct* noundef %9, i32 noundef %10)
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi i32 [ 1, %14 ], [ %20, %15 ]
  %23 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  %24 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 8
  ret void
}

declare dso_local %struct.sm_element_struct* @sm_row_insert(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_accept(%struct.solution_struct* noundef %0, %struct.sm_matrix_struct* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.solution_struct*, align 8
  %6 = alloca %struct.sm_matrix_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sm_element_struct*, align 8
  %10 = alloca %struct.sm_element_struct*, align 8
  %11 = alloca %struct.sm_col_struct*, align 8
  store %struct.solution_struct* %0, %struct.solution_struct** %5, align 8
  store %struct.sm_matrix_struct* %1, %struct.sm_matrix_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %8, align 4
  call void @solution_add(%struct.solution_struct* noundef %12, i32* noundef %13, i32 noundef %14)
  %15 = load i32, i32* %8, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %20 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %24, i32 0, i32 2
  %26 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %26, i64 %28
  %30 = load %struct.sm_col_struct*, %struct.sm_col_struct** %29, align 8
  br label %32

31:                                               ; preds = %17, %4
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi %struct.sm_col_struct* [ %30, %23 ], [ null, %31 ]
  store %struct.sm_col_struct* %33, %struct.sm_col_struct** %11, align 8
  %34 = load %struct.sm_col_struct*, %struct.sm_col_struct** %11, align 8
  %35 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %34, i32 0, i32 3
  %36 = load %struct.sm_element_struct*, %struct.sm_element_struct** %35, align 8
  store %struct.sm_element_struct* %36, %struct.sm_element_struct** %9, align 8
  br label %37

37:                                               ; preds = %48, %32
  %38 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %39 = icmp ne %struct.sm_element_struct* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %41, i32 0, i32 2
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  store %struct.sm_element_struct* %43, %struct.sm_element_struct** %10, align 8
  %44 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %9, align 8
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delrow to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %44, i32 noundef %47)
  br label %48

48:                                               ; preds = %40
  %49 = load %struct.sm_element_struct*, %struct.sm_element_struct** %10, align 8
  store %struct.sm_element_struct* %49, %struct.sm_element_struct** %9, align 8
  br label %37, !llvm.loop !4

50:                                               ; preds = %37
  ret void
}

declare dso_local void @sm_delrow(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @solution_reject(%struct.solution_struct* noundef %0, %struct.sm_matrix_struct* noundef %1, i32* noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.solution_struct*, align 8
  %6 = alloca %struct.sm_matrix_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.solution_struct* %0, %struct.solution_struct** %5, align 8
  store %struct.sm_matrix_struct* %1, %struct.sm_matrix_struct** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %6, align 8
  %10 = load i32, i32* %8, align 4
  call void (%struct.sm_matrix_struct*, i32, ...) bitcast (void (...)* @sm_delcol to void (%struct.sm_matrix_struct*, i32, ...)*)(%struct.sm_matrix_struct* noundef %9, i32 noundef %10)
  ret void
}

declare dso_local void @sm_delcol(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.solution_struct* @solution_choose_best(%struct.solution_struct* noundef %0, %struct.solution_struct* noundef %1) #0 {
  %3 = alloca %struct.solution_struct*, align 8
  %4 = alloca %struct.solution_struct*, align 8
  %5 = alloca %struct.solution_struct*, align 8
  store %struct.solution_struct* %0, %struct.solution_struct** %4, align 8
  store %struct.solution_struct* %1, %struct.solution_struct** %5, align 8
  %6 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  %7 = icmp ne %struct.solution_struct* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  %10 = icmp ne %struct.solution_struct* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  %13 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  %16 = getelementptr inbounds %struct.solution_struct, %struct.solution_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  call void @solution_free(%struct.solution_struct* noundef %20)
  %21 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  store %struct.solution_struct* %21, %struct.solution_struct** %3, align 8
  br label %33

22:                                               ; preds = %11
  %23 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  call void @solution_free(%struct.solution_struct* noundef %23)
  %24 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  store %struct.solution_struct* %24, %struct.solution_struct** %3, align 8
  br label %33

25:                                               ; preds = %8
  %26 = load %struct.solution_struct*, %struct.solution_struct** %4, align 8
  store %struct.solution_struct* %26, %struct.solution_struct** %3, align 8
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  %29 = icmp ne %struct.solution_struct* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load %struct.solution_struct*, %struct.solution_struct** %5, align 8
  store %struct.solution_struct* %31, %struct.solution_struct** %3, align 8
  br label %33

32:                                               ; preds = %27
  store %struct.solution_struct* null, %struct.solution_struct** %3, align 8
  br label %33

33:                                               ; preds = %32, %30, %25, %22, %19
  %34 = load %struct.solution_struct*, %struct.solution_struct** %3, align 8
  ret %struct.solution_struct* %34
}

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
