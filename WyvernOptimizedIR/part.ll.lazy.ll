; ModuleID = './part.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: nofree noinline nosync nounwind uwtable
define dso_local i32 @visit_col(%struct.sm_matrix_struct* nocapture noundef readonly %0, %struct.sm_col_struct* nocapture noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %1, i64 0, i32 2
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %49

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %1, i64 0, i32 2
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %50

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %1, i64 0, i32 3
  br label %17

17:                                               ; preds = %46, %15
  %.01.in = phi %struct.sm_element_struct** [ %16, %15 ], [ %47, %46 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not2 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not2, label %48, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 0
  %30 = load %struct.sm_row_struct**, %struct.sm_row_struct*** %29, align 8
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sm_row_struct*, %struct.sm_row_struct** %30, i64 %33
  %35 = load %struct.sm_row_struct*, %struct.sm_row_struct** %34, align 8
  br label %37

36:                                               ; preds = %22, %18
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi %struct.sm_row_struct* [ %35, %28 ], [ null, %36 ]
  %39 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %38, i64 0, i32 2
  %40 = load i32, i32* %39, align 8
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 @visit_row(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %38, i32* noundef %2, i32* noundef nonnull %3)
  %.not4 = icmp eq i32 %42, 0
  br i1 %.not4, label %44, label %43

43:                                               ; preds = %41
  br label %50

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 2
  br label %17, !llvm.loop !4

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48, %4
  br label %50

50:                                               ; preds = %49, %43, %14
  %.0 = phi i32 [ 0, %49 ], [ 1, %14 ], [ 1, %43 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline nosync nounwind uwtable
define internal i32 @visit_row(%struct.sm_matrix_struct* nocapture noundef readonly %0, %struct.sm_row_struct* nocapture noundef %1, i32* nocapture noundef %2, i32* nocapture noundef %3) #0 {
  %5 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 2
  %6 = load i32, i32* %5, align 8
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %7, label %49

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 2
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %50

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  br label %17

17:                                               ; preds = %46, %15
  %.01.in = phi %struct.sm_element_struct** [ %16, %15 ], [ %47, %46 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not2 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not2, label %48, label %18

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 2
  %30 = load %struct.sm_col_struct**, %struct.sm_col_struct*** %29, align 8
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sm_col_struct*, %struct.sm_col_struct** %30, i64 %33
  %35 = load %struct.sm_col_struct*, %struct.sm_col_struct** %34, align 8
  br label %37

36:                                               ; preds = %22, %18
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi %struct.sm_col_struct* [ %35, %28 ], [ null, %36 ]
  %39 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %38, i64 0, i32 2
  %40 = load i32, i32* %39, align 8
  %.not3 = icmp eq i32 %40, 0
  br i1 %.not3, label %41, label %45

41:                                               ; preds = %37
  %42 = call i32 @visit_col(%struct.sm_matrix_struct* noundef %0, %struct.sm_col_struct* noundef %38, i32* noundef nonnull %2, i32* noundef %3)
  %.not4 = icmp eq i32 %42, 0
  br i1 %.not4, label %44, label %43

43:                                               ; preds = %41
  br label %50

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %37
  br label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %17, !llvm.loop !6

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48, %4
  br label %50

50:                                               ; preds = %49, %43, %14
  %.0 = phi i32 [ 0, %49 ], [ 1, %14 ], [ 1, %43 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sm_block_partition(%struct.sm_matrix_struct* nocapture noundef readonly %0, %struct.sm_matrix_struct** nocapture noundef %1, %struct.sm_matrix_struct** nocapture noundef %2) #1 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 6
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %12

12:                                               ; preds = %15, %10
  %.02.in = phi %struct.sm_row_struct** [ %11, %10 ], [ %16, %15 ]
  %.02 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.02.in, align 8
  %.not = icmp eq %struct.sm_row_struct* %.02, null
  br i1 %.not, label %17, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.02, i64 0, i32 2
  store i32 0, i32* %14, align 8
  br label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.02, i64 0, i32 5
  br label %12, !llvm.loop !7

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 7
  br label %19

19:                                               ; preds = %22, %17
  %.01.in = phi %struct.sm_col_struct** [ %18, %17 ], [ %23, %22 ]
  %.01 = load %struct.sm_col_struct*, %struct.sm_col_struct** %.01.in, align 8
  %.not3 = icmp eq %struct.sm_col_struct* %.01, null
  br i1 %.not3, label %24, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.01, i64 0, i32 2
  store i32 0, i32* %21, align 8
  br label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.sm_col_struct, %struct.sm_col_struct* %.01, i64 0, i32 5
  br label %19, !llvm.loop !8

24:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %25 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  %26 = load %struct.sm_row_struct*, %struct.sm_row_struct** %25, align 8
  %27 = call i32 @visit_row(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* noundef %26, i32* noundef nonnull %5, i32* noundef nonnull %4)
  %.not4 = icmp eq i32 %27, 0
  br i1 %.not4, label %29, label %28

28:                                               ; preds = %24
  br label %45

29:                                               ; preds = %24
  %30 = call %struct.sm_matrix_struct* (...) @sm_alloc() #3
  store %struct.sm_matrix_struct* %30, %struct.sm_matrix_struct** %1, align 8
  %31 = call %struct.sm_matrix_struct* (...) @sm_alloc() #3
  store %struct.sm_matrix_struct* %31, %struct.sm_matrix_struct** %2, align 8
  %32 = getelementptr inbounds %struct.sm_matrix_struct, %struct.sm_matrix_struct* %0, i64 0, i32 4
  br label %33

33:                                               ; preds = %42, %29
  %.1.in = phi %struct.sm_row_struct** [ %32, %29 ], [ %43, %42 ]
  %.1 = load %struct.sm_row_struct*, %struct.sm_row_struct** %.1.in, align 8
  %.not5 = icmp eq %struct.sm_row_struct* %.1, null
  br i1 %.not5, label %44, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.1, i64 0, i32 2
  %36 = load i32, i32* %35, align 8
  %.not6 = icmp eq i32 %36, 0
  br i1 %.not6, label %39, label %37

37:                                               ; preds = %34
  %38 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %1, align 8
  call void @copy_row(%struct.sm_matrix_struct* noundef %38, %struct.sm_row_struct* noundef nonnull %.1)
  br label %41

39:                                               ; preds = %34
  %40 = load %struct.sm_matrix_struct*, %struct.sm_matrix_struct** %2, align 8
  call void @copy_row(%struct.sm_matrix_struct* noundef %40, %struct.sm_row_struct* noundef nonnull %.1)
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %.1, i64 0, i32 5
  br label %33, !llvm.loop !9

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %28, %9
  %.0 = phi i32 [ 0, %9 ], [ 0, %28 ], [ 1, %44 ]
  ret i32 %.0
}

declare dso_local %struct.sm_matrix_struct* @sm_alloc(...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @copy_row(%struct.sm_matrix_struct* noundef %0, %struct.sm_row_struct* nocapture noundef readonly %1) #1 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  br label %4

4:                                                ; preds = %11, %2
  %.0.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %12, %11 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %13, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %0, i32 noundef %7, i32 noundef %9) #3
  br label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %4, !llvm.loop !10

13:                                               ; preds = %4
  ret void
}

declare dso_local %struct.sm_element_struct* @sm_insert(...) #2

attributes #0 = { nofree noinline nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
