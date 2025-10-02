; ModuleID = './csr_matrix.ll'
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
  %4 = call i8* @hypre_CAlloc(i32 noundef 1, i32 noundef 56) #5
  %5 = bitcast i8* %4 to %struct.hypre_CSRMatrix*
  %6 = bitcast i8* %4 to double**
  store double* null, double** %6, align 8
  %7 = getelementptr inbounds i8, i8* %4, i64 8
  %8 = bitcast i8* %7 to i32**
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds i8, i8* %4, i64 16
  %10 = bitcast i8* %9 to i32**
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds i8, i8* %4, i64 40
  %12 = bitcast i8* %11 to i32**
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds i8, i8* %4, i64 24
  %14 = bitcast i8* %13 to i32*
  store i32 %0, i32* %14, align 8
  %15 = getelementptr inbounds i8, i8* %4, i64 28
  %16 = bitcast i8* %15 to i32*
  store i32 %1, i32* %16, align 4
  %17 = getelementptr inbounds i8, i8* %4, i64 32
  %18 = bitcast i8* %17 to i32*
  store i32 %2, i32* %18, align 8
  %19 = getelementptr inbounds i8, i8* %4, i64 52
  %20 = bitcast i8* %19 to i32*
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds i8, i8* %4, i64 48
  %22 = bitcast i8* %21 to i32*
  store i32 %0, i32* %22, align 8
  ret %struct.hypre_CSRMatrix* %5
}

declare dso_local i8* @hypre_CAlloc(i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* noundef %0) #0 {
  %.not = icmp eq %struct.hypre_CSRMatrix* %0, null
  br i1 %.not, label %27, label %2

2:                                                ; preds = %1
  %3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %4 = bitcast i32** %3 to i8**
  %5 = load i8*, i8** %4, align 8
  call void @hypre_Free(i8* noundef %5) #5
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  store i32* null, i32** %6, align 8
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  %8 = load i32*, i32** %7, align 8
  %.not1 = icmp eq i32* %8, null
  br i1 %.not1, label %14, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  %11 = bitcast i32** %10 to i8**
  %12 = load i8*, i8** %11, align 8
  call void @hypre_Free(i8* noundef %12) #5
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  store i32* null, i32** %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 8
  %16 = load i32, i32* %15, align 4
  %.not2 = icmp eq i32 %16, 0
  br i1 %.not2, label %25, label %17

17:                                               ; preds = %14
  %18 = bitcast %struct.hypre_CSRMatrix* %0 to i8**
  %19 = load i8*, i8** %18, align 8
  call void @hypre_Free(i8* noundef %19) #5
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 0
  store double* null, double** %20, align 8
  %21 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %22 = bitcast i32** %21 to i8**
  %23 = load i8*, i8** %22, align 8
  call void @hypre_Free(i8* noundef %23) #5
  %24 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %17, %14
  %26 = bitcast %struct.hypre_CSRMatrix* %0 to i8*
  call void @hypre_Free(i8* noundef nonnull %26) #5
  br label %27

27:                                               ; preds = %25, %1
  ret i32 0
}

declare dso_local void @hypre_Free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 5
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 0
  %7 = load double*, double** %6, align 8
  %.not = icmp eq double* %7, null
  br i1 %.not, label %8, label %12

8:                                                ; preds = %1
  %.not1 = icmp eq i32 %5, 0
  br i1 %.not1, label %12, label %9

9:                                                ; preds = %8
  %10 = call i8* @hypre_CAlloc(i32 noundef %5, i32 noundef 8) #5
  %11 = bitcast %struct.hypre_CSRMatrix* %0 to i8**
  store i8* %10, i8** %11, align 8
  br label %12

12:                                               ; preds = %9, %8, %1
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %.not2 = icmp eq i32* %14, null
  br i1 %.not2, label %15, label %20

15:                                               ; preds = %12
  %16 = add nsw i32 %3, 1
  %17 = call i8* @hypre_CAlloc(i32 noundef %16, i32 noundef 4) #5
  %18 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %19 = bitcast i32** %18 to i8**
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %.not3 = icmp eq i32* %22, null
  br i1 %.not3, label %23, label %28

23:                                               ; preds = %20
  %.not4 = icmp eq i32 %5, 0
  br i1 %.not4, label %28, label %24

24:                                               ; preds = %23
  %25 = call i8* @hypre_CAlloc(i32 noundef %5, i32 noundef 4) #5
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %27 = bitcast i32** %26 to i8**
  store i8* %25, i8** %27, align 8
  br label %28

28:                                               ; preds = %24, %23, %20
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @hypre_CSRMatrixSetDataOwner(%struct.hypre_CSRMatrix* nocapture noundef writeonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 8
  store i32 %1, i32* %3, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %5 = load i32*, i32** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %.01 = phi i32 [ 0, %1 ], [ %21, %20 ]
  %.0 = phi i32 [ 0, %1 ], [ %.1, %20 ]
  %7 = icmp slt i32 %.01, %3
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = add nuw nsw i32 %.01, 1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %5, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %.01 to i64
  %14 = getelementptr inbounds i32, i32* %5, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %8
  %18 = add nsw i32 %.0, 1
  br label %19

19:                                               ; preds = %17, %8
  %.1 = phi i32 [ %18, %17 ], [ %.0, %8 ]
  br label %20

20:                                               ; preds = %19
  %21 = add nuw nsw i32 %.01, 1
  br label %6, !llvm.loop !4

22:                                               ; preds = %6
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 7
  store i32 %.0, i32* %23, align 8
  %24 = icmp eq i32 %.0, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = icmp eq i32 %.0, %3
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %22
  %28 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  store i32* null, i32** %28, align 8
  br label %53

29:                                               ; preds = %25
  %30 = call i8* @hypre_CAlloc(i32 noundef %.0, i32 noundef 4) #5
  %31 = bitcast i8* %30 to i32*
  br label %32

32:                                               ; preds = %48, %29
  %.12 = phi i32 [ 0, %29 ], [ %49, %48 ]
  %.2 = phi i32 [ 0, %29 ], [ %.3, %48 ]
  %33 = icmp slt i32 %.12, %3
  br i1 %33, label %34, label %50

34:                                               ; preds = %32
  %35 = add nuw nsw i32 %.12, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %5, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %.12 to i64
  %40 = getelementptr inbounds i32, i32* %5, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = add nsw i32 %.2, 1
  %45 = sext i32 %.2 to i64
  %46 = getelementptr inbounds i32, i32* %31, i64 %45
  store i32 %.12, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %34
  %.3 = phi i32 [ %44, %43 ], [ %.2, %34 ]
  br label %48

48:                                               ; preds = %47
  %49 = add nuw nsw i32 %.12, 1
  br label %32, !llvm.loop !6

50:                                               ; preds = %32
  %51 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  %52 = bitcast i32** %51 to i8**
  store i8* %30, i8** %52, align 8
  br label %53

53:                                               ; preds = %50, %27
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixRead(i8* noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef nonnull %2) #5
  %5 = load i32, i32* %2, align 4
  %6 = add nsw i32 %5, 1
  %7 = call i8* @hypre_CAlloc(i32 noundef %6, i32 noundef 4) #5
  %8 = bitcast i8* %7 to i32*
  br label %9

9:                                                ; preds = %19, %1
  %.0 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %10 = load i32, i32* %2, align 4
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %21, label %11

11:                                               ; preds = %9
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds i32, i32* %8, i64 %12
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %13) #5
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i32, i32* %8, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %11
  %20 = add nuw nsw i32 %.0, 1
  br label %9, !llvm.loop !7

21:                                               ; preds = %9
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %8, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %22 to i64
  %27 = getelementptr inbounds i32, i32* %8, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %22, i32 noundef %22, i32 noundef %28)
  %30 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i64 0, i32 1
  %31 = bitcast i32** %30 to i8**
  store i8* %7, i8** %31, align 8
  %32 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %29)
  %33 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i64 0, i32 2
  %34 = load i32*, i32** %33, align 8
  br label %35

35:                                               ; preds = %54, %21
  %.01 = phi i32 [ 0, %21 ], [ %.12, %54 ]
  %.1 = phi i32 [ 0, %21 ], [ %55, %54 ]
  %36 = icmp slt i32 %.1, %25
  br i1 %36, label %37, label %56

37:                                               ; preds = %35
  %38 = zext i32 %.1 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* noundef %39) #5
  %41 = zext i32 %.1 to i64
  %42 = getelementptr inbounds i32, i32* %34, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 4
  %45 = zext i32 %.1 to i64
  %46 = getelementptr inbounds i32, i32* %34, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, %.01
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = zext i32 %.1 to i64
  %51 = getelementptr inbounds i32, i32* %34, i64 %50
  %52 = load i32, i32* %51, align 4
  br label %53

53:                                               ; preds = %49, %37
  %.12 = phi i32 [ %52, %49 ], [ %.01, %37 ]
  br label %54

54:                                               ; preds = %53
  %55 = add nuw nsw i32 %.1, 1
  br label %35, !llvm.loop !8

56:                                               ; preds = %35
  %57 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i64 0, i32 0
  %58 = load double*, double** %57, align 8
  br label %59

59:                                               ; preds = %69, %56
  %.2 = phi i32 [ 0, %56 ], [ %70, %69 ]
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %8, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %.2, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = zext i32 %.2 to i64
  %67 = getelementptr inbounds double, double* %58, i64 %66
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %3, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* noundef %67) #5
  br label %69

69:                                               ; preds = %65
  %70 = add nuw nsw i32 %.2, 1
  br label %59, !llvm.loop !9

71:                                               ; preds = %59
  %72 = call i32 @fclose(%struct._IO_FILE* noundef %3) #5
  %73 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i64 0, i32 5
  store i32 %25, i32* %73, align 8
  %74 = add nsw i32 %.01, 1
  %75 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i64 0, i32 4
  store i32 %74, i32* %75, align 4
  ret %struct.hypre_CSRMatrix* %29
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixPrint(%struct.hypre_CSRMatrix* nocapture noundef readonly %0, i8* noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 0
  %4 = load double*, double** %3, align 8
  %5 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call noalias %struct._IO_FILE* @fopen(i8* noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %10) #5
  br label %13

13:                                               ; preds = %20, %2
  %.0 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %.not = icmp sgt i32 %.0, %10
  br i1 %.not, label %22, label %14

14:                                               ; preds = %13
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i32, i32* %6, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %18) #5
  br label %20

20:                                               ; preds = %14
  %21 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !10

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %34, %22
  %.1 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %24 = sext i32 %10 to i64
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %.1, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = zext i32 %.1 to i64
  %30 = getelementptr inbounds i32, i32* %8, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 noundef %32) #5
  br label %34

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %.1, 1
  br label %23, !llvm.loop !11

36:                                               ; preds = %23
  %.not1 = icmp eq double* %4, null
  br i1 %.not1, label %51, label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %48, %37
  %.2 = phi i32 [ 0, %37 ], [ %49, %48 ]
  %39 = sext i32 %10 to i64
  %40 = getelementptr inbounds i32, i32* %6, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %.2, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = zext i32 %.2 to i64
  %45 = getelementptr inbounds double, double* %4, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double noundef %46) #5
  br label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %.2, 1
  br label %38, !llvm.loop !12

50:                                               ; preds = %38
  br label %53

51:                                               ; preds = %36
  %52 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %11)
  br label %53

53:                                               ; preds = %51, %50
  %54 = call i32 @fclose(%struct._IO_FILE* noundef %11) #5
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #1

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local i32 @hypre_CSRMatrixCopy(%struct.hypre_CSRMatrix* nocapture noundef readonly %0, %struct.hypre_CSRMatrix* nocapture noundef readonly %1, i32 noundef %2) #3 {
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 2
  %13 = load i32*, i32** %12, align 8
  br label %14

14:                                               ; preds = %40, %3
  %.01 = phi i32 [ 0, %3 ], [ %41, %40 ]
  %15 = icmp slt i32 %.01, %5
  br i1 %15, label %16, label %42

16:                                               ; preds = %14
  %17 = zext i32 %.01 to i64
  %18 = getelementptr inbounds i32, i32* %7, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds i32, i32* %11, i64 %20
  store i32 %19, i32* %21, align 4
  %22 = zext i32 %.01 to i64
  %23 = getelementptr inbounds i32, i32* %7, i64 %22
  %24 = load i32, i32* %23, align 4
  br label %25

25:                                               ; preds = %37, %16
  %.0 = phi i32 [ %24, %16 ], [ %38, %37 ]
  %26 = add nuw nsw i32 %.01, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %7, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %.0, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = sext i32 %.0 to i64
  %33 = getelementptr inbounds i32, i32* %9, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %.0 to i64
  %36 = getelementptr inbounds i32, i32* %13, i64 %35
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = add nsw i32 %.0, 1
  br label %25, !llvm.loop !13

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39
  %41 = add nuw nsw i32 %.01, 1
  br label %14, !llvm.loop !14

42:                                               ; preds = %14
  %43 = sext i32 %5 to i64
  %44 = getelementptr inbounds i32, i32* %7, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %5 to i64
  %47 = getelementptr inbounds i32, i32* %11, i64 %46
  store i32 %45, i32* %47, align 4
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %77, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 0
  %50 = load double*, double** %49, align 8
  %51 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 0
  %52 = load double*, double** %51, align 8
  br label %53

53:                                               ; preds = %74, %48
  %.12 = phi i32 [ 0, %48 ], [ %75, %74 ]
  %54 = icmp slt i32 %.12, %5
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = zext i32 %.12 to i64
  %57 = getelementptr inbounds i32, i32* %7, i64 %56
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %71, %55
  %.1 = phi i32 [ %58, %55 ], [ %72, %71 ]
  %60 = add nuw nsw i32 %.12, 1
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %7, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %.1, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = sext i32 %.1 to i64
  %67 = getelementptr inbounds double, double* %50, i64 %66
  %68 = load double, double* %67, align 8
  %69 = sext i32 %.1 to i64
  %70 = getelementptr inbounds double, double* %52, i64 %69
  store double %68, double* %70, align 8
  br label %71

71:                                               ; preds = %65
  %72 = add nsw i32 %.1, 1
  br label %59, !llvm.loop !15

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = add nuw nsw i32 %.12, 1
  br label %53, !llvm.loop !16

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %76, %42
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixClone(%struct.hypre_CSRMatrix* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %3 = load i32, i32* %2, align 8
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %3, i32 noundef %5, i32 noundef %7)
  %9 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %8)
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i64 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i64 0, i32 2
  %17 = load i32*, i32** %16, align 8
  br label %18

18:                                               ; preds = %25, %1
  %.01 = phi i32 [ 0, %1 ], [ %26, %25 ]
  %.not = icmp sgt i32 %.01, %3
  br i1 %.not, label %27, label %19

19:                                               ; preds = %18
  %20 = zext i32 %.01 to i64
  %21 = getelementptr inbounds i32, i32* %11, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %.01 to i64
  %24 = getelementptr inbounds i32, i32* %15, i64 %23
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i32 %.01, 1
  br label %18, !llvm.loop !17

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %36, %27
  %.0 = phi i32 [ 0, %27 ], [ %37, %36 ]
  %29 = icmp slt i32 %.0, %7
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  %31 = zext i32 %.0 to i64
  %32 = getelementptr inbounds i32, i32* %13, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = zext i32 %.0 to i64
  %35 = getelementptr inbounds i32, i32* %17, i64 %34
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %30
  %37 = add nuw nsw i32 %.0, 1
  br label %28, !llvm.loop !18

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %8, i64 0, i32 7
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %.not2 = icmp eq i32* %43, null
  br i1 %.not2, label %46, label %44

44:                                               ; preds = %38
  %45 = call i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* noundef %8)
  br label %46

46:                                               ; preds = %44, %38
  ret %struct.hypre_CSRMatrix* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixUnion(%struct.hypre_CSRMatrix* nocapture noundef readonly %0, %struct.hypre_CSRMatrix* nocapture noundef readonly %1, i32* noundef readonly %2, i32* noundef readonly %3, i32** nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %1, i64 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %7, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0)) #6
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 423, i32 noundef 1) #5
  br label %26

26:                                               ; preds = %23, %5
  %.not = icmp eq i32* %3, null
  br i1 %.not, label %32, label %27

27:                                               ; preds = %26
  %.not45 = icmp eq i32* %2, null
  br i1 %.not45, label %28, label %31

28:                                               ; preds = %27
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %29, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0)) #6
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 424, i32 noundef 1) #5
  br label %31

31:                                               ; preds = %28, %27
  br label %32

32:                                               ; preds = %31, %26
  %.not37 = icmp eq i32* %2, null
  br i1 %.not37, label %38, label %33

33:                                               ; preds = %32
  %.not44 = icmp eq i32* %3, null
  br i1 %.not44, label %34, label %37

34:                                               ; preds = %33
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %35, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #6
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 425, i32 noundef 1) #5
  br label %37

37:                                               ; preds = %34, %33
  br label %38

38:                                               ; preds = %37, %32
  %39 = icmp eq i32* %2, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %38
  %41 = icmp slt i32 %9, %11
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %44

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %42
  %45 = phi i32 [ %11, %42 ], [ %9, %43 ]
  br label %76

46:                                               ; preds = %38
  %47 = call i8* @hypre_CAlloc(i32 noundef %11, i32 noundef 4) #5
  %48 = bitcast i8* %47 to i32*
  br label %49

49:                                               ; preds = %73, %46
  %.022 = phi i32 [ %9, %46 ], [ %.123, %73 ]
  %.018 = phi i32 [ 0, %46 ], [ %74, %73 ]
  %50 = icmp slt i32 %.018, %11
  br i1 %50, label %51, label %75

51:                                               ; preds = %49
  %52 = zext i32 %.018 to i64
  %53 = getelementptr inbounds i32, i32* %3, i64 %52
  %54 = load i32, i32* %53, align 4
  br label %55

55:                                               ; preds = %64, %51
  %.013 = phi i32 [ 0, %51 ], [ %65, %64 ]
  %.0 = phi i32 [ 0, %51 ], [ %.1, %64 ]
  %56 = icmp slt i32 %.013, %9
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = zext i32 %.013 to i64
  %59 = getelementptr inbounds i32, i32* %2, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, %54
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %57
  %.1 = phi i32 [ 1, %62 ], [ %.0, %57 ]
  br label %64

64:                                               ; preds = %63
  %65 = add nuw nsw i32 %.013, 1
  br label %55, !llvm.loop !19

66:                                               ; preds = %55
  %67 = icmp eq i32 %.0, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = zext i32 %.018 to i64
  %70 = getelementptr inbounds i32, i32* %48, i64 %69
  store i32 %.022, i32* %70, align 4
  %71 = add nsw i32 %.022, 1
  br label %72

72:                                               ; preds = %68, %66
  %.123 = phi i32 [ %71, %68 ], [ %.022, %66 ]
  br label %73

73:                                               ; preds = %72
  %74 = add nuw nsw i32 %.018, 1
  br label %49, !llvm.loop !20

75:                                               ; preds = %49
  br label %76

76:                                               ; preds = %75, %44
  %.033 = phi i32* [ null, %44 ], [ %48, %75 ]
  %.224 = phi i32 [ %45, %44 ], [ %.022, %75 ]
  %.not38 = icmp eq i32* %2, null
  br i1 %.not38, label %122, label %77

77:                                               ; preds = %76
  %78 = call i8* @hypre_CAlloc(i32 noundef %.224, i32 noundef 4) #5
  %79 = bitcast i32** %4 to i8**
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %89, %77
  %.028 = phi i32 [ 0, %77 ], [ %90, %89 ]
  %81 = icmp slt i32 %.028, %9
  br i1 %81, label %82, label %91

82:                                               ; preds = %80
  %83 = zext i32 %.028 to i64
  %84 = getelementptr inbounds i32, i32* %2, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = zext i32 %.028 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %82
  %90 = add nuw nsw i32 %.028, 1
  br label %80, !llvm.loop !21

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %119, %91
  %.119 = phi i32 [ 0, %91 ], [ %120, %119 ]
  %93 = icmp slt i32 %.119, %11
  br i1 %93, label %94, label %121

94:                                               ; preds = %92
  %95 = zext i32 %.119 to i64
  %96 = getelementptr inbounds i32, i32* %3, i64 %95
  %97 = load i32, i32* %96, align 4
  br label %98

98:                                               ; preds = %107, %94
  %.114 = phi i32 [ 0, %94 ], [ %108, %107 ]
  %.2 = phi i32 [ 0, %94 ], [ %.3, %107 ]
  %99 = icmp slt i32 %.114, %9
  br i1 %99, label %100, label %109

100:                                              ; preds = %98
  %101 = zext i32 %.114 to i64
  %102 = getelementptr inbounds i32, i32* %2, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, %97
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %100
  %.3 = phi i32 [ 1, %105 ], [ %.2, %100 ]
  br label %107

107:                                              ; preds = %106
  %108 = add nuw nsw i32 %.114, 1
  br label %98, !llvm.loop !22

109:                                              ; preds = %98
  %110 = icmp eq i32 %.2, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %109
  %112 = load i32*, i32** %4, align 8
  %113 = zext i32 %.119 to i64
  %114 = getelementptr inbounds i32, i32* %.033, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  store i32 %97, i32* %117, align 4
  br label %118

118:                                              ; preds = %111, %109
  br label %119

119:                                              ; preds = %118
  %120 = add nuw nsw i32 %.119, 1
  br label %92, !llvm.loop !23

121:                                              ; preds = %92
  br label %122

122:                                              ; preds = %121, %76
  %123 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %0, i64 0, i32 5
  %124 = load i32, i32* %123, align 8
  br label %125

125:                                              ; preds = %180, %122
  %.031 = phi i32 [ 0, %122 ], [ %181, %180 ]
  %.025 = phi i32 [ %124, %122 ], [ %.126, %180 ]
  %126 = icmp slt i32 %.031, %7
  br i1 %126, label %127, label %182

127:                                              ; preds = %125
  %128 = zext i32 %.031 to i64
  %129 = getelementptr inbounds i32, i32* %13, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = add nuw nsw i32 %.031, 1
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %13, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = zext i32 %.031 to i64
  %136 = getelementptr inbounds i32, i32* %17, i64 %135
  %137 = load i32, i32* %136, align 4
  br label %138

138:                                              ; preds = %177, %127
  %.126 = phi i32 [ %.025, %127 ], [ %.227, %177 ]
  %.011 = phi i32 [ %137, %127 ], [ %178, %177 ]
  %.01 = phi i32 [ %130, %127 ], [ %.23, %177 ]
  %139 = add nuw nsw i32 %.031, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %17, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %.011, %142
  br i1 %143, label %144, label %179

144:                                              ; preds = %138
  %145 = sext i32 %.011 to i64
  %146 = getelementptr inbounds i32, i32* %19, i64 %145
  %147 = load i32, i32* %146, align 4
  %.not42 = icmp eq i32* %3, null
  br i1 %.not42, label %152, label %148

148:                                              ; preds = %144
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %3, i64 %149
  %151 = load i32, i32* %150, align 4
  br label %152

152:                                              ; preds = %148, %144
  %.220 = phi i32 [ %151, %148 ], [ %147, %144 ]
  br label %153

153:                                              ; preds = %171, %152
  %.215 = phi i32 [ %.01, %152 ], [ %172, %171 ]
  %154 = icmp slt i32 %.215, %134
  br i1 %154, label %155, label %.loopexit34

155:                                              ; preds = %153
  %156 = sext i32 %.215 to i64
  %157 = getelementptr inbounds i32, i32* %15, i64 %156
  %158 = load i32, i32* %157, align 4
  %.not43 = icmp eq i32* %2, null
  br i1 %.not43, label %163, label %159

159:                                              ; preds = %155
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %2, i64 %160
  %162 = load i32, i32* %161, align 4
  br label %163

163:                                              ; preds = %159, %155
  %.129 = phi i32 [ %162, %159 ], [ %158, %155 ]
  %164 = icmp eq i32 %.220, %.129
  br i1 %164, label %165, label %170

165:                                              ; preds = %163
  %166 = icmp eq i32 %.215, %.01
  br i1 %166, label %167, label %169

167:                                              ; preds = %165
  %168 = add nsw i32 %.01, 1
  br label %169

169:                                              ; preds = %167, %165
  %.12 = phi i32 [ %168, %167 ], [ %.01, %165 ]
  br label %173

170:                                              ; preds = %163
  br label %171

171:                                              ; preds = %170
  %172 = add nsw i32 %.215, 1
  br label %153, !llvm.loop !24

.loopexit34:                                      ; preds = %153
  br label %173

173:                                              ; preds = %.loopexit34, %169
  %.23 = phi i32 [ %.12, %169 ], [ %.01, %.loopexit34 ]
  br i1 %154, label %176, label %174

174:                                              ; preds = %173
  %175 = add nsw i32 %.126, 1
  br label %176

176:                                              ; preds = %174, %173
  %.227 = phi i32 [ %175, %174 ], [ %.126, %173 ]
  br label %177

177:                                              ; preds = %176
  %178 = add nsw i32 %.011, 1
  br label %138, !llvm.loop !25

179:                                              ; preds = %138
  br label %180

180:                                              ; preds = %179
  %181 = add nuw nsw i32 %.031, 1
  br label %125, !llvm.loop !26

182:                                              ; preds = %125
  %183 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 noundef %7, i32 noundef %.224, i32 noundef %.025)
  %184 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* noundef %183)
  %185 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %183, i64 0, i32 1
  %186 = load i32*, i32** %185, align 8
  store i32 0, i32* %186, align 4
  %187 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %183, i64 0, i32 2
  %188 = load i32*, i32** %187, align 8
  br label %189

189:                                              ; preds = %267, %182
  %.132 = phi i32 [ 0, %182 ], [ %268, %267 ]
  %.07 = phi i32 [ 0, %182 ], [ %.29, %267 ]
  %190 = icmp slt i32 %.132, %7
  br i1 %190, label %191, label %269

191:                                              ; preds = %189
  %192 = zext i32 %.132 to i64
  %193 = getelementptr inbounds i32, i32* %13, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = add nuw nsw i32 %.132, 1
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %13, i64 %196
  %198 = load i32, i32* %197, align 4
  br label %199

199:                                              ; preds = %207, %191
  %.316 = phi i32 [ %194, %191 ], [ %209, %207 ]
  %.18 = phi i32 [ %.07, %191 ], [ %208, %207 ]
  %200 = icmp slt i32 %.316, %198
  br i1 %200, label %201, label %210

201:                                              ; preds = %199
  %202 = sext i32 %.316 to i64
  %203 = getelementptr inbounds i32, i32* %15, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %.18 to i64
  %206 = getelementptr inbounds i32, i32* %188, i64 %205
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %201
  %208 = add nsw i32 %.18, 1
  %209 = add nsw i32 %.316, 1
  br label %199, !llvm.loop !27

210:                                              ; preds = %199
  %211 = zext i32 %.132 to i64
  %212 = getelementptr inbounds i32, i32* %17, i64 %211
  %213 = load i32, i32* %212, align 4
  br label %214

214:                                              ; preds = %261, %210
  %.112 = phi i32 [ %213, %210 ], [ %262, %261 ]
  %.29 = phi i32 [ %.18, %210 ], [ %.310, %261 ]
  %.34 = phi i32 [ %194, %210 ], [ %.56, %261 ]
  %215 = add nuw nsw i32 %.132, 1
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %17, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %.112, %218
  br i1 %219, label %220, label %263

220:                                              ; preds = %214
  %221 = sext i32 %.112 to i64
  %222 = getelementptr inbounds i32, i32* %19, i64 %221
  %223 = load i32, i32* %222, align 4
  %.not40 = icmp eq i32* %3, null
  br i1 %.not40, label %228, label %224

224:                                              ; preds = %220
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %3, i64 %225
  %227 = load i32, i32* %226, align 4
  br label %228

228:                                              ; preds = %224, %220
  %.321 = phi i32 [ %227, %224 ], [ %223, %220 ]
  br label %229

229:                                              ; preds = %247, %228
  %.417 = phi i32 [ %.34, %228 ], [ %248, %247 ]
  %230 = icmp slt i32 %.417, %198
  br i1 %230, label %231, label %.loopexit

231:                                              ; preds = %229
  %232 = sext i32 %.417 to i64
  %233 = getelementptr inbounds i32, i32* %15, i64 %232
  %234 = load i32, i32* %233, align 4
  %.not41 = icmp eq i32* %2, null
  br i1 %.not41, label %239, label %235

235:                                              ; preds = %231
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i32, i32* %2, i64 %236
  %238 = load i32, i32* %237, align 4
  br label %239

239:                                              ; preds = %235, %231
  %.230 = phi i32 [ %238, %235 ], [ %234, %231 ]
  %240 = icmp eq i32 %.321, %.230
  br i1 %240, label %241, label %246

241:                                              ; preds = %239
  %242 = icmp eq i32 %.417, %.34
  br i1 %242, label %243, label %245

243:                                              ; preds = %241
  %244 = add nsw i32 %.34, 1
  br label %245

245:                                              ; preds = %243, %241
  %.45 = phi i32 [ %244, %243 ], [ %.34, %241 ]
  br label %249

246:                                              ; preds = %239
  br label %247

247:                                              ; preds = %246
  %248 = add nsw i32 %.417, 1
  br label %229, !llvm.loop !28

.loopexit:                                        ; preds = %229
  br label %249

249:                                              ; preds = %.loopexit, %245
  %.56 = phi i32 [ %.45, %245 ], [ %.34, %.loopexit ]
  br i1 %230, label %260, label %250

250:                                              ; preds = %249
  %251 = sext i32 %.112 to i64
  %252 = getelementptr inbounds i32, i32* %19, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %.033, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %.29 to i64
  %258 = getelementptr inbounds i32, i32* %188, i64 %257
  store i32 %256, i32* %258, align 4
  %259 = add nsw i32 %.29, 1
  br label %260

260:                                              ; preds = %250, %249
  %.310 = phi i32 [ %259, %250 ], [ %.29, %249 ]
  br label %261

261:                                              ; preds = %260
  %262 = add nsw i32 %.112, 1
  br label %214, !llvm.loop !29

263:                                              ; preds = %214
  %264 = add nuw nsw i32 %.132, 1
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %186, i64 %265
  store i32 %.29, i32* %266, align 4
  br label %267

267:                                              ; preds = %263
  %268 = add nuw nsw i32 %.132, 1
  br label %189, !llvm.loop !30

269:                                              ; preds = %189
  %270 = icmp eq i32 %.07, %.025
  br i1 %270, label %274, label %271

271:                                              ; preds = %269
  %272 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %273 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %272, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0)) #6
  call void @hypre_error_handler(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i64 0, i64 0), i32 noundef 547, i32 noundef 1) #5
  br label %274

274:                                              ; preds = %271, %269
  %.not39 = icmp eq i32* %.033, null
  br i1 %.not39, label %277, label %275

275:                                              ; preds = %274
  %276 = bitcast i32* %.033 to i8*
  call void @hypre_Free(i8* noundef nonnull %276) #5
  br label %277

277:                                              ; preds = %275, %274
  ret %struct.hypre_CSRMatrix* %183
}

declare dso_local void @hypre_error_handler(i8* noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
