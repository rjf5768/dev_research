; ModuleID = './sminterf.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/sminterf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }
%struct.sm_matrix_struct = type { %struct.sm_row_struct**, i32, %struct.sm_col_struct**, i32, %struct.sm_row_struct*, %struct.sm_row_struct*, i32, %struct.sm_col_struct*, %struct.sm_col_struct*, i32, i8* }
%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct.sm_col_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_col_struct*, %struct.sm_col_struct*, i8* }

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @do_sm_minimum_cover(%struct.set_family* nocapture noundef readonly %0) #0 {
  %2 = call %struct.sm_matrix_struct* (...) @sm_alloc() #2
  %3 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 5
  %4 = load i32*, i32** %3, align 8
  %5 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = mul nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %4, i64 %10
  br label %12

12:                                               ; preds = %36, %1
  %.02 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %.0 = phi i32* [ %4, %1 ], [ %41, %36 ]
  %13 = icmp ult i32* %.0, %11
  br i1 %13, label %14, label %42

14:                                               ; preds = %12
  %15 = load i32, i32* %.0, align 4
  %16 = and i32 %15, 1023
  br label %17

17:                                               ; preds = %34, %14
  %.05 = phi i32 [ %16, %14 ], [ %23, %34 ]
  %18 = icmp sgt i32 %.05, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = sext i32 %.05 to i64
  %21 = getelementptr inbounds i32, i32* %.0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %.05, -1
  %24 = shl i32 %23, 5
  br label %25

25:                                               ; preds = %31, %19
  %.04 = phi i32 [ %24, %19 ], [ %32, %31 ]
  %.01 = phi i32 [ %22, %19 ], [ %33, %31 ]
  %.not6 = icmp eq i32 %.01, 0
  br i1 %.not6, label %34, label %26

26:                                               ; preds = %25
  %27 = and i32 %.01, 1
  %.not7 = icmp eq i32 %27, 0
  br i1 %.not7, label %30, label %28

28:                                               ; preds = %26
  %29 = call %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...) bitcast (%struct.sm_element_struct* (...)* @sm_insert to %struct.sm_element_struct* (%struct.sm_matrix_struct*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %2, i32 noundef %.02, i32 noundef %.04) #2
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30
  %32 = add nsw i32 %.04, 1
  %33 = lshr i32 %.01, 1
  br label %25, !llvm.loop !4

34:                                               ; preds = %25
  br label %17, !llvm.loop !6

35:                                               ; preds = %17
  br label %36

36:                                               ; preds = %35
  %37 = add nuw nsw i32 %.02, 1
  %38 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %.0, i64 %40
  br label %12, !llvm.loop !7

42:                                               ; preds = %12
  %43 = call %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...) bitcast (%struct.sm_row_struct* (...)* @sm_minimum_cover to %struct.sm_row_struct* (%struct.sm_matrix_struct*, i32*, i32, i32, ...)*)(%struct.sm_matrix_struct* noundef %2, i32* noundef null, i32 noundef 1, i32 noundef 0) #2
  call void (%struct.sm_matrix_struct*, ...) bitcast (void (...)* @sm_free to void (%struct.sm_matrix_struct*, ...)*)(%struct.sm_matrix_struct* noundef %2) #2
  %44 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 33
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %54

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  %52 = ashr i32 %51, 5
  %53 = add nsw i32 %52, 2
  %phi.cast = sext i32 %53 to i64
  %phi.bo = shl nsw i64 %phi.cast, 2
  br label %54

54:                                               ; preds = %48, %47
  %55 = phi i64 [ 8, %47 ], [ %phi.bo, %48 ]
  %56 = call i8* @malloc(i64 noundef %55) #2
  %57 = bitcast i8* %56 to i32*
  %58 = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i64 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* noundef %57, i32 noundef %59) #2
  %61 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %43, i64 0, i32 3
  br label %62

62:                                               ; preds = %74, %54
  %.03.in = phi %struct.sm_element_struct** [ %61, %54 ], [ %75, %74 ]
  %.03 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.03.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.03, null
  br i1 %.not, label %76, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.03, i64 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 31
  %67 = shl i32 1, %66
  %68 = ashr i32 %65, 5
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %60, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.03, i64 0, i32 4
  br label %62, !llvm.loop !8

76:                                               ; preds = %62
  call void (%struct.sm_row_struct*, ...) bitcast (void (...)* @sm_row_free to void (%struct.sm_row_struct*, ...)*)(%struct.sm_row_struct* noundef %43) #2
  ret i32* %60
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
