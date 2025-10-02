; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matrix.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%.14e\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Warning: No matrix data!\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"num_rows == hypre_CSRMatrixNumRows(B)\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"/project/test/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/csr_matrix.c\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"col_map_offd_A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"col_map_offd_B\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"mc == num_nonzeros\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hypre_CSRMatrix*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i8* @hypre_CAlloc(i32 noundef 1, i32 noundef 56)
  %9 = bitcast i8* %8 to %struct.hypre_CSRMatrix*
  store %struct.hypre_CSRMatrix* %9, %struct.hypre_CSRMatrix** %7, align 8
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 0
  store double* null, double** %11, align 8
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %15 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %28 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %27, i32 0, i32 8
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %31 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  ret %struct.hypre_CSRMatrix* %32
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* noundef %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %5 = icmp ne %struct.hypre_CSRMatrix* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @hypre_Free(i8* noundef %10)
  %11 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %19 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  call void @hypre_Free(i8* noundef %21)
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %6
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %31 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %30, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = bitcast double* %32 to i8*
  call void @hypre_Free(i8* noundef %33)
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 0
  store double* null, double** %35, align 8
  %36 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %37 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  call void @hypre_Free(i8* noundef %39)
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %29, %24
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %44 = bitcast %struct.hypre_CSRMatrix* %43 to i8*
  call void @hypre_Free(i8* noundef %44)
  store %struct.hypre_CSRMatrix* null, %struct.hypre_CSRMatrix** %2, align 8
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local void @hypre_Free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @hypre_CAlloc(i32 noundef %20, i32 noundef 8)
  %22 = bitcast i8* %21 to double*
  %23 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %24 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %23, i32 0, i32 0
  store double* %22, double** %24, align 8
  br label %25

25:                                               ; preds = %19, %16, %1
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %27 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @hypre_CAlloc(i32 noundef %32, i32 noundef 4)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %36 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %39 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @hypre_CAlloc(i32 noundef %46, i32 noundef 4)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %50 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %45, %42, %37
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixSetDataOwner(%struct.hypre_CSRMatrix* noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* noundef %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16, !llvm.loop !4

42:                                               ; preds = %16
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %45 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %42
  %53 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %54 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  br label %93

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @hypre_CAlloc(i32 noundef %56, i32 noundef 4)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %86, %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %59, !llvm.loop !6

89:                                               ; preds = %59
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %92 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %89, %52
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixRead(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call noalias %struct._IO_FILE* @fopen(i8* noundef %13, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %4, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %8)
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @hypre_CAlloc(i32 noundef %18, i32 noundef 4)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %21, !llvm.loop !7

43:                                               ; preds = %21
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %49, i32 noundef %50, i32 noundef %55)
  store %struct.hypre_CSRMatrix* %56, %struct.hypre_CSRMatrix** %3, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %59 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %61 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %60)
  %62 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %63 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %97, %43
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %69
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %69
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %65, !llvm.loop !8

100:                                              ; preds = %65
  %101 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %102 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %101, i32 0, i32 0
  %103 = load double*, double** %102, align 8
  store double* %103, double** %5, align 8
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %119, %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = load double*, double** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %113, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* noundef %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %104, !llvm.loop !9

122:                                              ; preds = %104
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %124 = call i32 @fclose(%struct._IO_FILE* noundef %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %127 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %131 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  ret %struct.hypre_CSRMatrix* %132
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixPrint(%struct.hypre_CSRMatrix* noundef %0, i8* noundef %1) #0 {
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 0
  %15 = load double*, double** %14, align 8
  store double* %15, double** %6, align 8
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call noalias %struct._IO_FILE* @fopen(i8* noundef %25, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %5, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %27, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %44, %2
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %30, !llvm.loop !10

47:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %57, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %48, !llvm.loop !11

69:                                               ; preds = %48
  %70 = load double*, double** %6, align 8
  %71 = icmp ne double* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %83 = load double*, double** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %82, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double noundef %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %73, !llvm.loop !12

92:                                               ; preds = %73
  br label %96

93:                                               ; preds = %69
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %94, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* noundef %97)
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixCopy(%struct.hypre_CSRMatrix* noundef %0, %struct.hypre_CSRMatrix* noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.hypre_CSRMatrix*, align 8
  %5 = alloca %struct.hypre_CSRMatrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %4, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %18 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %21 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %24 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %27 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %30 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %74, %3
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %70, %36
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %51, !llvm.loop !13

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %32, !llvm.loop !14

77:                                               ; preds = %32
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %77
  %90 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %91 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %90, i32 0, i32 0
  %92 = load double*, double** %91, align 8
  store double* %92, double** %11, align 8
  %93 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %94 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %93, i32 0, i32 0
  %95 = load double*, double** %94, align 8
  store double* %95, double** %14, align 8
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %129, %89
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %125, %100
  %107 = load i32, i32* %16, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %107, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %106
  %116 = load double*, double** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double*, double** %14, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  store double %120, double* %124, align 8
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %106, !llvm.loop !15

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %96, !llvm.loop !16

132:                                              ; preds = %96
  br label %133

133:                                              ; preds = %132, %77
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixClone(%struct.hypre_CSRMatrix* noundef %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hypre_CSRMatrix*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %22, i32 noundef %23, i32 noundef %24)
  store %struct.hypre_CSRMatrix* %25, %struct.hypre_CSRMatrix** %6, align 8
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %27 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %26)
  %28 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %29 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %7, align 8
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %1
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %40, !llvm.loop !17

58:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %59, !llvm.loop !18

76:                                               ; preds = %59
  %77 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %78 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %81 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %83 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %88 = call i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* noundef %87)
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  ret %struct.hypre_CSRMatrix* %90
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixUnion(%struct.hypre_CSRMatrix* noundef %0, %struct.hypre_CSRMatrix* noundef %1, i32* noundef %2, i32* noundef %3, i32** noundef %4) #0 {
  %6 = alloca %struct.hypre_CSRMatrix*, align 8
  %7 = alloca %struct.hypre_CSRMatrix*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.hypre_CSRMatrix*, align 8
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %6, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %44 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  %46 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %47 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %17, align 8
  %49 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %50 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %18, align 8
  %52 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %53 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %19, align 8
  store i32* null, i32** %22, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %57 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %5
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %61, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 423, i32 noundef 1)
  br label %63

63:                                               ; preds = %60, %5
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %70, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 424, i32 noundef 1)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %80, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 425, i32 noundef 1)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %14, align 4
  br label %144

96:                                               ; preds = %83
  %97 = load i32, i32* %13, align 4
  %98 = call i8* @hypre_CAlloc(i32 noundef %97, i32 noundef 4)
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %22, align 8
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %25, align 4
  br label %101

101:                                              ; preds = %140, %96
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %101
  store i32 0, i32* %32, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %111

111:                                              ; preds = %125, %105
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %27, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %26, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* %32, align 4
  br label %124

124:                                              ; preds = %123, %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  br label %111, !llvm.loop !19

128:                                              ; preds = %111
  %129 = load i32, i32* %32, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = load i32*, i32** %22, align 8
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %131, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %25, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %25, align 4
  br label %101, !llvm.loop !20

143:                                              ; preds = %101
  br label %144

144:                                              ; preds = %143, %94
  %145 = load i32*, i32** %8, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %217

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = call i8* @hypre_CAlloc(i32 noundef %148, i32 noundef 4)
  %150 = bitcast i8* %149 to i32*
  %151 = load i32**, i32*** %10, align 8
  store i32* %150, i32** %151, align 8
  store i32 0, i32* %24, align 4
  br label %152

152:                                              ; preds = %167, %147
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32**, i32*** %10, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %24, align 4
  br label %152, !llvm.loop !21

170:                                              ; preds = %152
  store i32 0, i32* %25, align 4
  br label %171

171:                                              ; preds = %213, %170
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %216

175:                                              ; preds = %171
  store i32 0, i32* %32, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %25, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %181

181:                                              ; preds = %195, %175
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %26, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store i32 1, i32* %32, align 4
  br label %194

194:                                              ; preds = %193, %185
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %27, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %27, align 4
  br label %181, !llvm.loop !22

198:                                              ; preds = %181
  %199 = load i32, i32* %32, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i32, i32* %26, align 4
  %203 = load i32**, i32*** %10, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** %22, align 8
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %204, i64 %210
  store i32 %202, i32* %211, align 4
  br label %212

212:                                              ; preds = %201, %198
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %25, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %25, align 4
  br label %171, !llvm.loop !23

216:                                              ; preds = %171
  br label %217

217:                                              ; preds = %216, %144
  %218 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %219 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %15, align 4
  store i32 0, i32* %23, align 4
  br label %221

221:                                              ; preds = %312, %217
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %315

225:                                              ; preds = %221
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %23, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %30, align 4
  %231 = load i32*, i32** %16, align 8
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %31, align 4
  %237 = load i32*, i32** %18, align 8
  %238 = load i32, i32* %23, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %28, align 4
  br label %242

242:                                              ; preds = %308, %225
  %243 = load i32, i32* %28, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %23, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %243, %249
  br i1 %250, label %251, label %311

251:                                              ; preds = %242
  %252 = load i32*, i32** %19, align 8
  %253 = load i32, i32* %28, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %25, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %251
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %259, %251
  store i32 0, i32* %32, align 4
  %266 = load i32, i32* %30, align 4
  store i32 %266, i32* %27, align 4
  br label %267

267:                                              ; preds = %298, %265
  %268 = load i32, i32* %27, align 4
  %269 = load i32, i32* %31, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %301

271:                                              ; preds = %267
  %272 = load i32*, i32** %17, align 8
  %273 = load i32, i32* %27, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %24, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %271
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %24, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %24, align 4
  br label %285

285:                                              ; preds = %279, %271
  %286 = load i32, i32* %25, align 4
  %287 = load i32, i32* %24, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %285
  store i32 1, i32* %32, align 4
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %30, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load i32, i32* %30, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %30, align 4
  br label %296

296:                                              ; preds = %293, %289
  br label %301

297:                                              ; preds = %285
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %27, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %27, align 4
  br label %267, !llvm.loop !24

301:                                              ; preds = %296, %267
  %302 = load i32, i32* %32, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* %15, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %15, align 4
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %28, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %28, align 4
  br label %242, !llvm.loop !25

311:                                              ; preds = %242
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %23, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %23, align 4
  br label %221, !llvm.loop !26

315:                                              ; preds = %221
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %316, i32 noundef %317, i32 noundef %318)
  store %struct.hypre_CSRMatrix* %319, %struct.hypre_CSRMatrix** %33, align 8
  %320 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %321 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %320)
  %322 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %323 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  store i32* %324, i32** %20, align 8
  %325 = load i32*, i32** %20, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 0, i32* %326, align 4
  %327 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %328 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  store i32* %329, i32** %21, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %23, align 4
  br label %330

330:                                              ; preds = %461, %315
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %464

334:                                              ; preds = %330
  %335 = load i32*, i32** %16, align 8
  %336 = load i32, i32* %23, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %30, align 4
  %340 = load i32*, i32** %16, align 8
  %341 = load i32, i32* %23, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %31, align 4
  %346 = load i32, i32* %30, align 4
  store i32 %346, i32* %27, align 4
  br label %347

347:                                              ; preds = %363, %334
  %348 = load i32, i32* %27, align 4
  %349 = load i32, i32* %31, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %347
  %352 = load i32*, i32** %17, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %21, align 8
  %358 = load i32, i32* %29, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32 %356, i32* %360, align 4
  %361 = load i32, i32* %29, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %29, align 4
  br label %363

363:                                              ; preds = %351
  %364 = load i32, i32* %27, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %27, align 4
  br label %347, !llvm.loop !27

366:                                              ; preds = %347
  %367 = load i32*, i32** %18, align 8
  %368 = load i32, i32* %23, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %28, align 4
  br label %372

372:                                              ; preds = %451, %366
  %373 = load i32, i32* %28, align 4
  %374 = load i32*, i32** %18, align 8
  %375 = load i32, i32* %23, align 4
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %373, %379
  br i1 %380, label %381, label %454

381:                                              ; preds = %372
  %382 = load i32*, i32** %19, align 8
  %383 = load i32, i32* %28, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %25, align 4
  %387 = load i32*, i32** %9, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %395

389:                                              ; preds = %381
  %390 = load i32*, i32** %9, align 8
  %391 = load i32, i32* %25, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %25, align 4
  br label %395

395:                                              ; preds = %389, %381
  store i32 0, i32* %32, align 4
  %396 = load i32, i32* %30, align 4
  store i32 %396, i32* %27, align 4
  br label %397

397:                                              ; preds = %428, %395
  %398 = load i32, i32* %27, align 4
  %399 = load i32, i32* %31, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %431

401:                                              ; preds = %397
  %402 = load i32*, i32** %17, align 8
  %403 = load i32, i32* %27, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %24, align 4
  %407 = load i32*, i32** %8, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %415

409:                                              ; preds = %401
  %410 = load i32*, i32** %8, align 8
  %411 = load i32, i32* %24, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  store i32 %414, i32* %24, align 4
  br label %415

415:                                              ; preds = %409, %401
  %416 = load i32, i32* %25, align 4
  %417 = load i32, i32* %24, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %415
  store i32 1, i32* %32, align 4
  %420 = load i32, i32* %27, align 4
  %421 = load i32, i32* %30, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load i32, i32* %30, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %30, align 4
  br label %426

426:                                              ; preds = %423, %419
  br label %431

427:                                              ; preds = %415
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %27, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %27, align 4
  br label %397, !llvm.loop !28

431:                                              ; preds = %426, %397
  %432 = load i32, i32* %32, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %450

434:                                              ; preds = %431
  %435 = load i32*, i32** %22, align 8
  %436 = load i32*, i32** %19, align 8
  %437 = load i32, i32* %28, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %435, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32*, i32** %21, align 8
  %445 = load i32, i32* %29, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %443, i32* %447, align 4
  %448 = load i32, i32* %29, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %29, align 4
  br label %450

450:                                              ; preds = %434, %431
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %28, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %28, align 4
  br label %372, !llvm.loop !29

454:                                              ; preds = %372
  %455 = load i32, i32* %29, align 4
  %456 = load i32*, i32** %20, align 8
  %457 = load i32, i32* %23, align 4
  %458 = add nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  store i32 %455, i32* %460, align 4
  br label %461

461:                                              ; preds = %454
  %462 = load i32, i32* %23, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %23, align 4
  br label %330, !llvm.loop !30

464:                                              ; preds = %330
  %465 = load i32, i32* %29, align 4
  %466 = load i32, i32* %15, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %469, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 547, i32 noundef 1)
  br label %471

471:                                              ; preds = %468, %464
  %472 = load i32*, i32** %22, align 8
  %473 = icmp ne i32* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load i32*, i32** %22, align 8
  %476 = bitcast i32* %475 to i8*
  call void @hypre_Free(i8* noundef %476)
  store i32* null, i32** %22, align 8
  br label %477

477:                                              ; preds = %474, %471
  %478 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  ret %struct.hypre_CSRMatrix* %478
}

declare dso_local void @hypre_error_handler(i8* noundef, i32 noundef, i32 noundef) #1

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
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
!153 = distinct !{!153, !5}
!154 = distinct !{!154, !5}
!155 = distinct !{!155, !5}
!156 = distinct !{!156, !5}
!157 = distinct !{!157, !5}
!158 = distinct !{!158, !5}
