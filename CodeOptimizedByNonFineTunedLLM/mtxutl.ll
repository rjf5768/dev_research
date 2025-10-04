; ModuleID = '/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/mtxutl.c'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/mafft/mtxutl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot allocate %d character vector.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Cannot reallocate %d x %d character matrix.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Cannot allocate %d x %d character matrix.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Allocation error ( %d fload vec )\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Allocation error ( %d fload halfmtx )\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Allocation error( %d floathalfmtx )\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Allocation error ( %d x %d fload mtx )\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Allocation error( %d x %d floatmtx )\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Allocation error( %d int vec )\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Allocation error ( float tri )\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Allocation error( %d x %d int mtx )\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Allocation error( %d x %d x %d char cube\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"cannot allocate IntCub\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cannot allocate DoubleMtx\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"cannot allocate float cube.\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"cannot allocate double cube.\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Allocation error( %d short vec )\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Allocation error( %d x %d short mtx ) \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @MtxuntDouble(double** noundef %0, i32 noundef %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %25, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load double**, double*** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double*, double** %17, i64 %19
  %21 = load double*, double** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  store double 0.000000e+00, double* %24, align 8
  br label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %12, !llvm.loop !4

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %7, !llvm.loop !6

32:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load double**, double*** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double*, double** %38, i64 %40
  %42 = load double*, double** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  store double 1.000000e+00, double* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %33, !llvm.loop !7

49:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MtxmltDouble(double** noundef %0, double** noundef %1, i32 noundef %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca double**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  store double** %0, double*** %4, align 8
  store double** %1, double*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @calloc(i64 noundef %13, i64 noundef 8) #5
  %15 = bitcast i8* %14 to double*
  store double* %15, double** %11, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %89

20:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load double**, double*** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  store double %34, double* %38, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %21, !llvm.loop !8

42:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %82, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %85

47:                                               ; preds = %43
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %69, %47
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load double*, double** %11, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load double**, double*** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double*, double** %58, i64 %60
  %62 = load double*, double** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double, double* %10, align 8
  %68 = call double @llvm.fmuladd.f64(double %57, double %66, double %67)
  store double %68, double* %10, align 8
  br label %69

69:                                               ; preds = %52
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %48, !llvm.loop !9

72:                                               ; preds = %48
  %73 = load double, double* %10, align 8
  %74 = load double**, double*** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double*, double** %74, i64 %76
  %78 = load double*, double** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  store double %73, double* %81, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %43, !llvm.loop !10

85:                                               ; preds = %43
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %16, !llvm.loop !11

89:                                               ; preds = %16
  %90 = load double*, double** %11, align 8
  %91 = bitcast double* %90 to i8*
  call void @free(i8* noundef %91) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AllocateCharVec(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 1) #5
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %11)
  call void @exit(i32 noundef 1) #6
  unreachable

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  ret i8* %14
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReallocateCharMtx(i8** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %39, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 1
  %22 = call i8* @realloc(i8* noundef %17, i64 noundef %21) #5
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  store i8* %22, i8** %26, align 8
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %34, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %35, i32 noundef %36)
  br label %38

38:                                               ; preds = %33, %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %8, !llvm.loop !12

42:                                               ; preds = %8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @AllocateCharMtx(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 8) #5
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %6, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp eq i8** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @AllocateCharVec(i32 noundef %28)
  %30 = load i8**, i8*** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %29, i8** %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %23, !llvm.loop !13

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i8**, i8*** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  store i8* null, i8** %42, align 8
  %43 = load i8**, i8*** %6, align 8
  ret i8** %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharMtx(i8** noundef %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i8**, i8*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8*, i8** %5, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i8**, i8*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  call void @free(i8* noundef %16) #5
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !14

20:                                               ; preds = %4
  %21 = load i8**, i8*** %2, align 8
  %22 = bitcast i8** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @AllocateFloatVec(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 4) #5
  %7 = bitcast i8* %6 to float*
  store float* %7, float** %3, align 8
  %8 = load float*, float** %3, align 8
  %9 = icmp eq float* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 noundef %12)
  call void @exit(i32 noundef 1) #6
  unreachable

14:                                               ; preds = %1
  %15 = load float*, float** %3, align 8
  ret float* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatVec(float* noundef %0) #0 {
  %2 = alloca float*, align 8
  store float* %0, float** %2, align 8
  %3 = load float*, float** %2, align 8
  %4 = bitcast float* %3 to i8*
  call void @free(i8* noundef %4) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float** @AllocateFloatHalfMtx(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 8) #5
  %9 = bitcast i8* %8 to float**
  store float** %9, float*** %3, align 8
  %10 = load float**, float*** %3, align 8
  %11 = icmp eq float** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14)
  call void @exit(i32 noundef 1) #6
  unreachable

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = call noalias i8* @calloc(i64 noundef %25, i64 noundef 4) #5
  %27 = bitcast i8* %26 to float*
  %28 = load float**, float*** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float*, float** %28, i64 %30
  store float* %27, float** %31, align 8
  %32 = load float**, float*** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float*, float** %32, i64 %34
  %36 = load float*, float** %35, align 8
  %37 = icmp ne float* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %21
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 noundef %40)
  call void @exit(i32 noundef 1) #6
  unreachable

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %17, !llvm.loop !15

46:                                               ; preds = %17
  %47 = load float**, float*** %3, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float*, float** %47, i64 %49
  store float* null, float** %50, align 8
  %51 = load float**, float*** %3, align 8
  ret float** %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local float** @AllocateFloatMtx(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 8) #5
  %11 = bitcast i8* %10 to float**
  store float** %11, float*** %5, align 8
  %12 = load float**, float*** %5, align 8
  %13 = icmp eq float** %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = call noalias i8* @calloc(i64 noundef %29, i64 noundef 4) #5
  %31 = bitcast i8* %30 to float*
  %32 = load float**, float*** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float*, float** %32, i64 %34
  store float* %31, float** %35, align 8
  %36 = load float**, float*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float*, float** %36, i64 %38
  %40 = load float*, float** %39, align 8
  %41 = icmp ne float* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %27
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 noundef %44, i32 noundef %45)
  call void @exit(i32 noundef 1) #6
  unreachable

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23, !llvm.loop !16

51:                                               ; preds = %23
  br label %52

52:                                               ; preds = %51, %19
  %53 = load float**, float*** %5, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float*, float** %53, i64 %55
  store float* null, float** %56, align 8
  %57 = load float**, float*** %5, align 8
  ret float** %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatHalfMtx(float** noundef %0, i32 noundef %1) #0 {
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store float** %0, float*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %24, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %6
  %11 = load float**, float*** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds float*, float** %11, i64 %13
  %15 = load float*, float** %14, align 8
  %16 = icmp ne float* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load float**, float*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds float*, float** %18, i64 %20
  %22 = load float*, float** %21, align 8
  call void @FreeFloatVec(float* noundef %22)
  br label %23

23:                                               ; preds = %17, %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %6, !llvm.loop !17

27:                                               ; preds = %6
  %28 = load float**, float*** %3, align 8
  %29 = bitcast float** %28 to i8*
  call void @free(i8* noundef %29) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatMtx(float** noundef %0) #0 {
  %2 = alloca float**, align 8
  %3 = alloca i32, align 4
  store float** %0, float*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load float**, float*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float*, float** %5, i64 %7
  %9 = load float*, float** %8, align 8
  %10 = icmp ne float* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load float**, float*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float*, float** %12, i64 %14
  %16 = load float*, float** %15, align 8
  call void @FreeFloatVec(float* noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !18

20:                                               ; preds = %4
  %21 = load float**, float*** %2, align 8
  %22 = bitcast float** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @AllocateIntVec(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 4) #5
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 noundef %12)
  call void @exit(i32 noundef 1) #6
  unreachable

14:                                               ; preds = %1
  %15 = load i32*, i32** %3, align 8
  ret i32* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntVec(i32* noundef %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* noundef %4) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float** @AllocateFloatTri(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call noalias i8* @calloc(i64 noundef %7, i64 noundef 8) #5
  %9 = bitcast i8* %8 to float**
  store float** %9, float*** %3, align 8
  %10 = load float**, float*** %3, align 8
  %11 = icmp ne float** %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %13, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 3
  %23 = call float* @AllocateFloatVec(i32 noundef %22)
  %24 = load float**, float*** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float*, float** %24, i64 %26
  store float* %23, float** %27, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %16, !llvm.loop !19

31:                                               ; preds = %16
  %32 = load float**, float*** %3, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float*, float** %32, i64 %34
  store float* null, float** %35, align 8
  %36 = load float**, float*** %3, align 8
  ret float** %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatTri(float** noundef %0) #0 {
  %2 = alloca float**, align 8
  %3 = alloca i32, align 4
  store float** %0, float*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load float**, float*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float*, float** %5, i64 %7
  %9 = load float*, float** %8, align 8
  %10 = icmp ne float* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load float**, float*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float*, float** %12, i64 %14
  %16 = load float*, float** %15, align 8
  %17 = bitcast float* %16 to i8*
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4, !llvm.loop !20

21:                                               ; preds = %4
  %22 = load float**, float*** %2, align 8
  %23 = bitcast float** %22 to i8*
  call void @free(i8* noundef %23) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @AllocateIntMtx(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 8) #5
  %11 = bitcast i8* %10 to i32**
  store i32** %11, i32*** %6, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32* @AllocateIntVec(i32 noundef %28)
  %30 = load i32**, i32*** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  store i32* %29, i32** %33, align 8
  br label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %23, !llvm.loop !21

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %19
  %39 = load i32**, i32*** %6, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* null, i32** %42, align 8
  %43 = load i32**, i32*** %6, align 8
  ret i32** %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8*** @AllocateCharCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8***, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %13 = bitcast i8* %12 to i8***
  store i8*** %13, i8**** %8, align 8
  %14 = load i8***, i8**** %8, align 8
  %15 = icmp ne i8*** %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %18, i32 noundef %19, i32 noundef %20)
  call void @exit(i32 noundef 1) #6
  unreachable

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i8** @AllocateCharMtx(i32 noundef %31, i32 noundef %32)
  %34 = load i8***, i8**** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8**, i8*** %34, i64 %36
  store i8** %33, i8*** %37, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %26, !llvm.loop !22

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %22
  %43 = load i8***, i8**** %8, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8**, i8*** %43, i64 %45
  store i8** null, i8*** %46, align 8
  %47 = load i8***, i8**** %8, align 8
  ret i8*** %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharCub(i8*** noundef %0) #0 {
  %2 = alloca i8***, align 8
  %3 = alloca i32, align 4
  store i8*** %0, i8**** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i8***, i8**** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8**, i8*** %5, i64 %7
  %9 = load i8**, i8*** %8, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i8***, i8**** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8**, i8*** %12, i64 %14
  %16 = load i8**, i8*** %15, align 8
  call void @FreeCharMtx(i8** noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !23

20:                                               ; preds = %4
  %21 = load i8***, i8**** %2, align 8
  %22 = bitcast i8*** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeintmtx(i32** noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %19, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32**, i32*** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = bitcast i32* %17 to i8*
  call void @free(i8* noundef %18) #5
  br label %19

19:                                               ; preds = %12
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %8, !llvm.loop !24

22:                                               ; preds = %8
  %23 = load i32**, i32*** %4, align 8
  %24 = bitcast i32** %23 to i8*
  call void @free(i8* noundef %24) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntMtx(i32** noundef %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32, align 4
  store i32** %0, i32*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32**, i32*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32*, i32** %5, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load i32**, i32*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4, !llvm.loop !25

21:                                               ; preds = %4
  %22 = load i32**, i32*** %2, align 8
  %23 = bitcast i32** %22 to i8*
  call void @free(i8* noundef %23) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8**** @AllocateCharHcu(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8****, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @calloc(i64 noundef %13, i64 noundef 8) #5
  %15 = bitcast i8* %14 to i8****
  store i8**** %15, i8***** %10, align 8
  %16 = load i8****, i8***** %10, align 8
  %17 = icmp eq i8**** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %33, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i8*** @AllocateCharCub(i32 noundef %25, i32 noundef %26, i32 noundef %27)
  %29 = load i8****, i8***** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8***, i8**** %29, i64 %31
  store i8*** %28, i8**** %32, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %20, !llvm.loop !26

36:                                               ; preds = %20
  %37 = load i8****, i8***** %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8***, i8**** %37, i64 %39
  store i8*** null, i8**** %40, align 8
  %41 = load i8****, i8***** %10, align 8
  ret i8**** %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharHcu(i8**** noundef %0) #0 {
  %2 = alloca i8****, align 8
  %3 = alloca i32, align 4
  store i8**** %0, i8***** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i8****, i8***** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8***, i8**** %5, i64 %7
  %9 = load i8***, i8**** %8, align 8
  %10 = icmp ne i8*** %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i8****, i8***** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8***, i8**** %12, i64 %14
  %16 = load i8***, i8**** %15, align 8
  call void @FreeCharCub(i8*** noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !27

20:                                               ; preds = %4
  %21 = load i8****, i8***** %2, align 8
  %22 = bitcast i8**** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double* @AllocateDoubleVec(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 8) #5
  %7 = bitcast i8* %6 to double*
  store double* %7, double** %3, align 8
  %8 = load double*, double** %3, align 8
  ret double* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleVec(double* noundef %0) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  %3 = load double*, double** %2, align 8
  %4 = bitcast double* %3 to i8*
  call void @free(i8* noundef %4) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32*** @AllocateIntCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32***, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %13 = bitcast i8* %12 to i32***
  store i32*** %13, i32**** %8, align 8
  %14 = load i32***, i32**** %8, align 8
  %15 = icmp eq i32*** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32** @AllocateIntMtx(i32 noundef %25, i32 noundef %26)
  %28 = load i32***, i32**** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32**, i32*** %28, i64 %30
  store i32** %27, i32*** %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %20, !llvm.loop !28

35:                                               ; preds = %20
  %36 = load i32***, i32**** %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32**, i32*** %36, i64 %38
  store i32** null, i32*** %39, align 8
  %40 = load i32***, i32**** %8, align 8
  ret i32*** %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntCub(i32*** noundef %0) #0 {
  %2 = alloca i32***, align 8
  %3 = alloca i32, align 4
  store i32*** %0, i32**** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32***, i32**** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32**, i32*** %5, i64 %7
  %9 = load i32**, i32*** %8, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load i32***, i32**** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32**, i32*** %12, i64 %14
  %16 = load i32**, i32*** %15, align 8
  call void @FreeIntMtx(i32** noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !29

20:                                               ; preds = %4
  %21 = load i32***, i32**** %2, align 8
  %22 = bitcast i32*** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @AllocateDoubleMtx(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 8) #5
  %11 = bitcast i8* %10 to double**
  store double** %11, double*** %6, align 8
  %12 = load double**, double*** %6, align 8
  %13 = icmp ne double** %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call double* @AllocateDoubleVec(i32 noundef %26)
  %28 = load double**, double*** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double*, double** %28, i64 %30
  store double* %27, double** %31, align 8
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %21, !llvm.loop !30

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %17
  %37 = load double**, double*** %6, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double*, double** %37, i64 %39
  store double* null, double** %40, align 8
  %41 = load double**, double*** %6, align 8
  ret double** %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleMtx(double** noundef %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca i32, align 4
  store double** %0, double*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load double**, double*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double*, double** %5, i64 %7
  %9 = load double*, double** %8, align 8
  %10 = icmp ne double* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load double**, double*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double*, double** %12, i64 %14
  %16 = load double*, double** %15, align 8
  call void @FreeDoubleVec(double* noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !31

20:                                               ; preds = %4
  %21 = load double**, double*** %2, align 8
  %22 = bitcast double** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float*** @AllocateFloatCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float***, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %13 = bitcast i8* %12 to float***
  store float*** %13, float**** %8, align 8
  %14 = load float***, float**** %8, align 8
  %15 = icmp ne float*** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call float** @AllocateFloatMtx(i32 noundef %25, i32 noundef %26)
  %28 = load float***, float**** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float**, float*** %28, i64 %30
  store float** %27, float*** %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %20, !llvm.loop !32

35:                                               ; preds = %20
  %36 = load float***, float**** %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float**, float*** %36, i64 %38
  store float** null, float*** %39, align 8
  %40 = load float***, float**** %8, align 8
  ret float*** %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatCub(float*** noundef %0) #0 {
  %2 = alloca float***, align 8
  %3 = alloca i32, align 4
  store float*** %0, float**** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load float***, float**** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds float**, float*** %5, i64 %7
  %9 = load float**, float*** %8, align 8
  %10 = icmp ne float** %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load float***, float**** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float**, float*** %12, i64 %14
  %16 = load float**, float*** %15, align 8
  call void @FreeFloatMtx(float** noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !33

20:                                               ; preds = %4
  %21 = load float***, float**** %2, align 8
  %22 = bitcast float*** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double*** @AllocateDoubleCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double***, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @calloc(i64 noundef %11, i64 noundef 8) #5
  %13 = bitcast i8* %12 to double***
  store double*** %13, double**** %8, align 8
  %14 = load double***, double**** %8, align 8
  %15 = icmp ne double*** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call double** @AllocateDoubleMtx(i32 noundef %25, i32 noundef %26)
  %28 = load double***, double**** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double**, double*** %28, i64 %30
  store double** %27, double*** %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %20, !llvm.loop !34

35:                                               ; preds = %20
  %36 = load double***, double**** %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double**, double*** %36, i64 %38
  store double** null, double*** %39, align 8
  %40 = load double***, double**** %8, align 8
  ret double*** %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleCub(double*** noundef %0) #0 {
  %2 = alloca double***, align 8
  %3 = alloca i32, align 4
  store double*** %0, double**** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load double***, double**** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double**, double*** %5, i64 %7
  %9 = load double**, double*** %8, align 8
  %10 = icmp ne double** %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load double***, double**** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds double**, double*** %12, i64 %14
  %16 = load double**, double*** %15, align 8
  call void @FreeDoubleMtx(double** noundef %16)
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !35

20:                                               ; preds = %4
  %21 = load double***, double**** %2, align 8
  %22 = bitcast double*** %21 to i8*
  call void @free(i8* noundef %22) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16* @AllocateShortVec(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 2) #5
  %7 = bitcast i8* %6 to i16*
  store i16* %7, i16** %3, align 8
  %8 = load i16*, i16** %3, align 8
  %9 = icmp eq i16* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 noundef %12)
  call void @exit(i32 noundef 1) #6
  unreachable

14:                                               ; preds = %1
  %15 = load i16*, i16** %3, align 8
  ret i16* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeShortVec(i16* noundef %0) #0 {
  %2 = alloca i16*, align 8
  store i16* %0, i16** %2, align 8
  %3 = load i16*, i16** %2, align 8
  %4 = bitcast i16* %3 to i8*
  call void @free(i8* noundef %4) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i16** @AllocateShortMtx(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16**, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @calloc(i64 noundef %9, i64 noundef 8) #5
  %11 = bitcast i8* %10 to i16**
  store i16** %11, i16*** %6, align 8
  %12 = load i16**, i16*** %6, align 8
  %13 = icmp ne i16** %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %15, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i32 noundef %16, i32 noundef %17)
  call void @exit(i32 noundef 1) #6
  unreachable

19:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call i16* @AllocateShortVec(i32 noundef %25)
  %27 = load i16**, i16*** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16*, i16** %27, i64 %29
  store i16* %26, i16** %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %20, !llvm.loop !36

34:                                               ; preds = %20
  %35 = load i16**, i16*** %6, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16*, i16** %35, i64 %37
  store i16* null, i16** %38, align 8
  %39 = load i16**, i16*** %6, align 8
  ret i16** %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeShortMtx(i16** noundef %0) #0 {
  %2 = alloca i16**, align 8
  %3 = alloca i32, align 4
  store i16** %0, i16*** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i16**, i16*** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i16*, i16** %5, i64 %7
  %9 = load i16*, i16** %8, align 8
  %10 = icmp ne i16* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %4
  %12 = load i16**, i16*** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16*, i16** %12, i64 %14
  %16 = load i16*, i16** %15, align 8
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* noundef %17) #5
  br label %18

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4, !llvm.loop !37

21:                                               ; preds = %4
  %22 = load i16**, i16*** %2, align 8
  %23 = bitcast i16** %22 to i8*
  call void @free(i8* noundef %23) #5
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
