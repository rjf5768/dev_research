; ModuleID = './rows.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/MallocBench/espresso/rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm_row_struct = type { i32, i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_row_struct*, %struct.sm_row_struct*, i8* }
%struct.sm_element_struct = type { i32, i32, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, %struct.sm_element_struct*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_row_struct* @sm_row_alloc() #0 {
  %1 = call dereferenceable_or_null(56) i8* @malloc(i64 noundef 56) #3
  %2 = bitcast i8* %1 to %struct.sm_row_struct*
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 0
  store i32 0, i32* %3, align 8
  %4 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %5, align 8
  %6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 3
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %6, align 8
  %7 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 6
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %7, align 8
  %8 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 5
  store %struct.sm_row_struct* null, %struct.sm_row_struct** %8, align 8
  %9 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 2
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %2, i64 0, i32 7
  store i8* null, i8** %10, align 8
  ret %struct.sm_row_struct* %2
}

declare dso_local i8* @malloc(i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_row_free(%struct.sm_row_struct* noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %3 = load %struct.sm_element_struct*, %struct.sm_element_struct** %2, align 8
  br label %4

4:                                                ; preds = %11, %1
  %.0 = phi %struct.sm_element_struct* [ %3, %1 ], [ %7, %11 ]
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %12, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  br i1 true, label %8, label %10

8:                                                ; preds = %5
  %9 = bitcast %struct.sm_element_struct* %.0 to i8*
  call void @free(i8* noundef %9)
  br label %10

10:                                               ; preds = %8, %5
  br label %11

11:                                               ; preds = %10
  br label %4, !llvm.loop !4

12:                                               ; preds = %4
  %.not1 = icmp eq %struct.sm_row_struct* %0, null
  br i1 %.not1, label %15, label %13

13:                                               ; preds = %12
  %14 = bitcast %struct.sm_row_struct* %0 to i8*
  call void @free(i8* noundef %14)
  br label %15

15:                                               ; preds = %13, %12
  ret void
}

declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_row_struct* @sm_row_dup(%struct.sm_row_struct* nocapture noundef readonly %0) #0 {
  %2 = call %struct.sm_row_struct* @sm_row_alloc()
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %9, %1
  %.0.in = phi %struct.sm_element_struct** [ %3, %1 ], [ %10, %9 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* noundef %2, i32 noundef %7)
  br label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %4, !llvm.loop !6

11:                                               ; preds = %4
  ret %struct.sm_row_struct* %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = call dereferenceable_or_null(48) i8* @malloc(i64 noundef 48) #3
  %4 = bitcast i8* %3 to %struct.sm_element_struct*
  %5 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 6
  store i8* null, i8** %5, align 8
  %6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %8 = icmp eq %struct.sm_element_struct* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 1
  store i32 %1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %12 = bitcast %struct.sm_element_struct** %11 to i8**
  store i8* %3, i8** %12, align 8
  %13 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %14 = bitcast %struct.sm_element_struct** %13 to i8**
  store i8* %3, i8** %14, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %15, align 8
  %16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %16, align 8
  %17 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  br label %96

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %21, align 8
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %22, i64 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, %1
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 1
  store i32 %1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %28, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %29, i64 0, i32 4
  %31 = bitcast %struct.sm_element_struct** %30 to i8**
  store i8* %3, i8** %31, align 8
  %32 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %32, align 8
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 5
  store %struct.sm_element_struct* %33, %struct.sm_element_struct** %34, align 8
  %35 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  %36 = bitcast %struct.sm_element_struct** %35 to i8**
  store i8* %3, i8** %36, align 8
  %37 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 4
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %37, align 8
  %38 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %95

41:                                               ; preds = %20
  %42 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  %44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %43, i64 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, %1
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 1
  store i32 %1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %50 = load %struct.sm_element_struct*, %struct.sm_element_struct** %49, align 8
  %51 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %50, i64 0, i32 5
  %52 = bitcast %struct.sm_element_struct** %51 to i8**
  store i8* %3, i8** %52, align 8
  %53 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %54 = load %struct.sm_element_struct*, %struct.sm_element_struct** %53, align 8
  %55 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 4
  store %struct.sm_element_struct* %54, %struct.sm_element_struct** %55, align 8
  %56 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %57 = bitcast %struct.sm_element_struct** %56 to i8**
  store i8* %3, i8** %57, align 8
  %58 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 5
  store %struct.sm_element_struct* null, %struct.sm_element_struct** %58, align 8
  %59 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %94

62:                                               ; preds = %41
  %63 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  br label %64

64:                                               ; preds = %69, %62
  %.0.in = phi %struct.sm_element_struct** [ %63, %62 ], [ %70, %69 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %65 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, %1
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %64, !llvm.loop !7

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp sgt i32 %73, %1
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 1
  store i32 %1, i32* %76, align 4
  %77 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 5
  %78 = load %struct.sm_element_struct*, %struct.sm_element_struct** %77, align 8
  %79 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %78, i64 0, i32 4
  %80 = load %struct.sm_element_struct*, %struct.sm_element_struct** %79, align 8
  %81 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %80, i64 0, i32 5
  %82 = bitcast %struct.sm_element_struct** %81 to i8**
  store i8* %3, i8** %82, align 8
  %83 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %78, i64 0, i32 4
  %84 = load %struct.sm_element_struct*, %struct.sm_element_struct** %83, align 8
  %85 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 4
  store %struct.sm_element_struct* %84, %struct.sm_element_struct** %85, align 8
  %86 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %78, i64 0, i32 4
  %87 = bitcast %struct.sm_element_struct** %86 to i8**
  store i8* %3, i8** %87, align 8
  %88 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %4, i64 0, i32 5
  store %struct.sm_element_struct* %78, %struct.sm_element_struct** %88, align 8
  %89 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %93

92:                                               ; preds = %71
  br label %93

93:                                               ; preds = %92, %75
  %.01 = phi %struct.sm_element_struct* [ %4, %75 ], [ %.0, %92 ]
  br label %94

94:                                               ; preds = %93, %47
  %.1 = phi %struct.sm_element_struct* [ %4, %47 ], [ %.01, %93 ]
  br label %95

95:                                               ; preds = %94, %26
  %.2 = phi %struct.sm_element_struct* [ %4, %26 ], [ %.1, %94 ]
  br label %96

96:                                               ; preds = %95, %9
  %.3 = phi %struct.sm_element_struct* [ %4, %9 ], [ %.2, %95 ]
  %.not = icmp eq %struct.sm_element_struct* %.3, %4
  br i1 %.not, label %100, label %97

97:                                               ; preds = %96
  %.not2 = icmp eq i8* %3, null
  br i1 %.not2, label %99, label %98

98:                                               ; preds = %97
  call void @free(i8* noundef %3)
  br label %99

99:                                               ; preds = %98, %97
  br label %100

100:                                              ; preds = %99, %96
  ret %struct.sm_element_struct* %.3
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_row_remove(%struct.sm_row_struct* nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %12, %2
  %.0.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %13, %12 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, %1
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i1 [ false, %4 ], [ %8, %5 ]
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %4, !llvm.loop !8

14:                                               ; preds = %9
  %.not1 = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not1, label %54, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 5
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %22 = icmp eq %struct.sm_element_struct* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  %25 = load %struct.sm_element_struct*, %struct.sm_element_struct** %24, align 8
  %26 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  store %struct.sm_element_struct* %25, %struct.sm_element_struct** %26, align 8
  br label %33

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  %29 = load %struct.sm_element_struct*, %struct.sm_element_struct** %28, align 8
  %30 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 5
  %31 = load %struct.sm_element_struct*, %struct.sm_element_struct** %30, align 8
  %32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %31, i64 0, i32 4
  store %struct.sm_element_struct* %29, %struct.sm_element_struct** %32, align 8
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  %35 = load %struct.sm_element_struct*, %struct.sm_element_struct** %34, align 8
  %36 = icmp eq %struct.sm_element_struct* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 5
  %39 = load %struct.sm_element_struct*, %struct.sm_element_struct** %38, align 8
  %40 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  store %struct.sm_element_struct* %39, %struct.sm_element_struct** %40, align 8
  br label %47

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 5
  %43 = load %struct.sm_element_struct*, %struct.sm_element_struct** %42, align 8
  %44 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  %45 = load %struct.sm_element_struct*, %struct.sm_element_struct** %44, align 8
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %45, i64 0, i32 5
  store %struct.sm_element_struct* %43, %struct.sm_element_struct** %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  br i1 true, label %51, label %53

51:                                               ; preds = %47
  %52 = bitcast %struct.sm_element_struct* %.0 to i8*
  call void @free(i8* noundef %52)
  br label %53

53:                                               ; preds = %51, %47
  br label %54

54:                                               ; preds = %53, %15, %14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local %struct.sm_element_struct* @sm_row_find(%struct.sm_row_struct* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %12, %2
  %.01.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %13, %12 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not, label %9, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, %1
  br label %9

9:                                                ; preds = %5, %4
  %10 = phi i1 [ false, %4 ], [ %8, %5 ]
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %4, !llvm.loop !9

14:                                               ; preds = %9
  %.not2 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not2, label %20, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %21

20:                                               ; preds = %15, %14
  br label %21

21:                                               ; preds = %20, %19
  %.0 = phi %struct.sm_element_struct* [ %.01, %19 ], [ null, %20 ]
  ret %struct.sm_element_struct* %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @sm_row_contains(%struct.sm_row_struct* nocapture noundef readonly %0, %struct.sm_row_struct* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %5 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  br label %6

6:                                                ; preds = %27, %2
  %.02 = phi %struct.sm_element_struct* [ %4, %2 ], [ %.13, %27 ]
  %.01.in = phi %struct.sm_element_struct** [ %5, %2 ], [ %.1.in, %27 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.02, null
  br i1 %.not, label %28, label %7

7:                                                ; preds = %6
  %8 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %7
  br label %29

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 4
  %24 = load %struct.sm_element_struct*, %struct.sm_element_struct** %23, align 8
  br label %26

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %22
  %.13 = phi %struct.sm_element_struct* [ %24, %22 ], [ %.02, %25 ]
  br label %27

27:                                               ; preds = %26
  %.1.in = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %6, !llvm.loop !10

28:                                               ; preds = %6
  br label %29

29:                                               ; preds = %28, %15
  %.0 = phi i32 [ 0, %15 ], [ 1, %28 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @sm_row_intersects(%struct.sm_row_struct* nocapture noundef readonly %0, %struct.sm_row_struct* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %5 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  %6 = load %struct.sm_element_struct*, %struct.sm_element_struct** %5, align 8
  %7 = icmp eq %struct.sm_element_struct* %4, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = icmp eq %struct.sm_element_struct* %6, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %8, %2
  br label %39

11:                                               ; preds = %8
  br label %12

12:                                               ; preds = %38, %11
  %.02 = phi %struct.sm_element_struct* [ %4, %11 ], [ %.13, %38 ]
  %.01 = phi %struct.sm_element_struct* [ %6, %11 ], [ %.1, %38 ]
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 4
  %20 = load %struct.sm_element_struct*, %struct.sm_element_struct** %19, align 8
  %21 = icmp eq %struct.sm_element_struct* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %39

23:                                               ; preds = %18
  br label %38

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  %32 = load %struct.sm_element_struct*, %struct.sm_element_struct** %31, align 8
  %33 = icmp eq %struct.sm_element_struct* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %39

35:                                               ; preds = %30
  br label %37

36:                                               ; preds = %24
  br label %39

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37, %23
  %.13 = phi %struct.sm_element_struct* [ %20, %23 ], [ %.02, %37 ]
  %.1 = phi %struct.sm_element_struct* [ %.01, %23 ], [ %32, %37 ]
  br label %12

39:                                               ; preds = %36, %34, %22, %10
  %.0 = phi i32 [ 0, %10 ], [ 0, %22 ], [ 0, %34 ], [ 1, %36 ]
  ret i32 %.0
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @sm_row_compare(%struct.sm_row_struct* nocapture noundef readonly %0, %struct.sm_row_struct* nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  br label %5

5:                                                ; preds = %21, %2
  %.02.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %22, %21 ]
  %.01.in = phi %struct.sm_element_struct** [ %4, %2 ], [ %23, %21 ]
  %.01 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.01.in, align 8
  %.02 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.02.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.02, null
  br i1 %.not, label %8, label %6

6:                                                ; preds = %5
  %7 = icmp ne %struct.sm_element_struct* %.01, null
  br label %8

8:                                                ; preds = %6, %5
  %9 = phi i1 [ false, %5 ], [ %7, %6 ]
  br i1 %9, label %10, label %24

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %14 = load i32, i32* %13, align 4
  %.not7 = icmp eq i32 %12, %14
  br i1 %.not7, label %21, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %17, %19
  br label %29

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 4
  %23 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  br label %5, !llvm.loop !11

24:                                               ; preds = %8
  %.not5 = icmp eq %struct.sm_element_struct* %.02, null
  br i1 %.not5, label %26, label %25

25:                                               ; preds = %24
  br label %29

26:                                               ; preds = %24
  %.not6 = icmp eq %struct.sm_element_struct* %.01, null
  br i1 %.not6, label %28, label %27

27:                                               ; preds = %26
  br label %29

28:                                               ; preds = %26
  br label %29

29:                                               ; preds = %28, %27, %25, %15
  %.0 = phi i32 [ %20, %15 ], [ 1, %25 ], [ -1, %27 ], [ 0, %28 ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sm_row_struct* @sm_row_and(%struct.sm_row_struct* nocapture noundef readonly %0, %struct.sm_row_struct* nocapture noundef readonly %1) #0 {
  %3 = call %struct.sm_row_struct* @sm_row_alloc()
  %4 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  %5 = load %struct.sm_element_struct*, %struct.sm_element_struct** %4, align 8
  %6 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  %7 = load %struct.sm_element_struct*, %struct.sm_element_struct** %6, align 8
  %8 = icmp eq %struct.sm_element_struct* %5, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = icmp eq %struct.sm_element_struct* %7, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9, %2
  br label %53

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %52, %12
  %.02 = phi %struct.sm_element_struct* [ %5, %12 ], [ %.24, %52 ]
  %.01 = phi %struct.sm_element_struct* [ %7, %12 ], [ %.2, %52 ]
  %14 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 4
  %21 = load %struct.sm_element_struct*, %struct.sm_element_struct** %20, align 8
  %22 = icmp eq %struct.sm_element_struct* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %53

24:                                               ; preds = %19
  br label %52

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %27, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  %33 = load %struct.sm_element_struct*, %struct.sm_element_struct** %32, align 8
  %34 = icmp eq %struct.sm_element_struct* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %53

36:                                               ; preds = %31
  br label %51

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.sm_element_struct* @sm_row_insert(%struct.sm_row_struct* noundef %3, i32 noundef %39)
  %41 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.02, i64 0, i32 4
  %42 = load %struct.sm_element_struct*, %struct.sm_element_struct** %41, align 8
  %43 = icmp eq %struct.sm_element_struct* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %53

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.01, i64 0, i32 4
  %47 = load %struct.sm_element_struct*, %struct.sm_element_struct** %46, align 8
  %48 = icmp eq %struct.sm_element_struct* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %53

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %36
  %.13 = phi %struct.sm_element_struct* [ %.02, %36 ], [ %42, %50 ]
  %.1 = phi %struct.sm_element_struct* [ %33, %36 ], [ %47, %50 ]
  br label %52

52:                                               ; preds = %51, %24
  %.24 = phi %struct.sm_element_struct* [ %21, %24 ], [ %.13, %51 ]
  %.2 = phi %struct.sm_element_struct* [ %.01, %24 ], [ %.1, %51 ]
  br label %13

53:                                               ; preds = %49, %44, %35, %23, %11
  ret %struct.sm_row_struct* %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind readonly uwtable
define dso_local i32 @sm_row_hash(%struct.sm_row_struct* nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %6, %2
  %.01 = phi i32 [ 0, %2 ], [ %11, %6 ]
  %.0.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %12, %6 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %13, label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  %7 = mul nsw i32 %.01, 17
  %8 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %7, %9
  %11 = srem i32 %10, %1
  %12 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %4, !llvm.loop !12

13:                                               ; preds = %4
  ret i32 %.01
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_row_remove_element(%struct.sm_row_struct* nocapture noundef %0, %struct.sm_element_struct* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 5
  %4 = load %struct.sm_element_struct*, %struct.sm_element_struct** %3, align 8
  %5 = icmp eq %struct.sm_element_struct* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 4
  %8 = load %struct.sm_element_struct*, %struct.sm_element_struct** %7, align 8
  %9 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 3
  store %struct.sm_element_struct* %8, %struct.sm_element_struct** %9, align 8
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 4
  %12 = load %struct.sm_element_struct*, %struct.sm_element_struct** %11, align 8
  %13 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 5
  %14 = load %struct.sm_element_struct*, %struct.sm_element_struct** %13, align 8
  %15 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %14, i64 0, i32 4
  store %struct.sm_element_struct* %12, %struct.sm_element_struct** %15, align 8
  br label %16

16:                                               ; preds = %10, %6
  %17 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 4
  %18 = load %struct.sm_element_struct*, %struct.sm_element_struct** %17, align 8
  %19 = icmp eq %struct.sm_element_struct* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 5
  %22 = load %struct.sm_element_struct*, %struct.sm_element_struct** %21, align 8
  %23 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 4
  store %struct.sm_element_struct* %22, %struct.sm_element_struct** %23, align 8
  br label %30

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 5
  %26 = load %struct.sm_element_struct*, %struct.sm_element_struct** %25, align 8
  %27 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %1, i64 0, i32 4
  %28 = load %struct.sm_element_struct*, %struct.sm_element_struct** %27, align 8
  %29 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %28, i64 0, i32 5
  store %struct.sm_element_struct* %26, %struct.sm_element_struct** %29, align 8
  br label %30

30:                                               ; preds = %24, %20
  %31 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %0, i64 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 4
  %.not = icmp eq %struct.sm_element_struct* %1, null
  br i1 %.not, label %36, label %34

34:                                               ; preds = %30
  %35 = bitcast %struct.sm_element_struct* %1 to i8*
  call void @free(i8* noundef %35)
  br label %36

36:                                               ; preds = %34, %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sm_row_print(%struct._IO_FILE* noundef %0, %struct.sm_row_struct* nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.sm_row_struct, %struct.sm_row_struct* %1, i64 0, i32 3
  br label %4

4:                                                ; preds = %9, %2
  %.0.in = phi %struct.sm_element_struct** [ %3, %2 ], [ %10, %9 ]
  %.0 = load %struct.sm_element_struct*, %struct.sm_element_struct** %.0.in, align 8
  %.not = icmp eq %struct.sm_element_struct* %.0, null
  br i1 %.not, label %11, label %5

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 noundef %7) #3
  br label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.sm_element_struct, %struct.sm_element_struct* %.0, i64 0, i32 4
  br label %4, !llvm.loop !13

11:                                               ; preds = %4
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind readonly uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
