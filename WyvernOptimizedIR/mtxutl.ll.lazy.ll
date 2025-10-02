; ModuleID = './mtxutl.ll'
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

; Function Attrs: nofree noinline norecurse nosync nounwind uwtable
define dso_local void @MtxuntDouble(double** nocapture noundef readonly %0, i32 noundef %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %.01 = phi i32 [ 0, %2 ], [ %18, %17 ]
  %4 = icmp slt i32 %.01, %1
  br i1 %4, label %5, label %19

5:                                                ; preds = %3
  br label %6

6:                                                ; preds = %14, %5
  %.0 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %7 = icmp slt i32 %.0, %1
  br i1 %7, label %8, label %16

8:                                                ; preds = %6
  %9 = zext i32 %.01 to i64
  %10 = getelementptr inbounds double*, double** %0, i64 %9
  %11 = load double*, double** %10, align 8
  %12 = zext i32 %.0 to i64
  %13 = getelementptr inbounds double, double* %11, i64 %12
  store double 0.000000e+00, double* %13, align 8
  br label %14

14:                                               ; preds = %8
  %15 = add nuw nsw i32 %.0, 1
  br label %6, !llvm.loop !4

16:                                               ; preds = %6
  br label %17

17:                                               ; preds = %16
  %18 = add nuw nsw i32 %.01, 1
  br label %3, !llvm.loop !6

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %28, %19
  %.1 = phi i32 [ 0, %19 ], [ %29, %28 ]
  %21 = icmp slt i32 %.1, %1
  br i1 %21, label %22, label %30

22:                                               ; preds = %20
  %23 = zext i32 %.1 to i64
  %24 = getelementptr inbounds double*, double** %0, i64 %23
  %25 = load double*, double** %24, align 8
  %26 = zext i32 %.1 to i64
  %27 = getelementptr inbounds double, double* %25, i64 %26
  store double 1.000000e+00, double* %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = add nuw nsw i32 %.1, 1
  br label %20, !llvm.loop !7

30:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MtxmltDouble(double** nocapture noundef readonly %0, double** nocapture noundef readonly %1, i32 noundef %2) #1 {
  %4 = sext i32 %2 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to double*
  br label %7

7:                                                ; preds = %51, %3
  %.03 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %8 = icmp slt i32 %.03, %2
  br i1 %8, label %9, label %53

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %21, %9
  %.01 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %11 = icmp slt i32 %.01, %2
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = zext i32 %.03 to i64
  %14 = getelementptr inbounds double*, double** %0, i64 %13
  %15 = load double*, double** %14, align 8
  %16 = zext i32 %.01 to i64
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = zext i32 %.01 to i64
  %20 = getelementptr inbounds double, double* %6, i64 %19
  store double %18, double* %20, align 8
  br label %21

21:                                               ; preds = %12
  %22 = add nuw nsw i32 %.01, 1
  br label %10, !llvm.loop !8

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %48, %23
  %.02 = phi i32 [ 0, %23 ], [ %49, %48 ]
  %25 = icmp slt i32 %.02, %2
  br i1 %25, label %26, label %50

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %30, %26
  %.1 = phi i32 [ 0, %26 ], [ %41, %30 ]
  %.0 = phi double [ 0.000000e+00, %26 ], [ %40, %30 ]
  %28 = icmp slt i32 %.1, %2
  br i1 %28, label %29, label %42

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = zext i32 %.1 to i64
  %32 = getelementptr inbounds double, double* %6, i64 %31
  %33 = load double, double* %32, align 8
  %34 = zext i32 %.1 to i64
  %35 = getelementptr inbounds double*, double** %1, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = zext i32 %.02 to i64
  %38 = getelementptr inbounds double, double* %36, i64 %37
  %39 = load double, double* %38, align 8
  %40 = call double @llvm.fmuladd.f64(double %33, double %39, double %.0)
  %41 = add nuw nsw i32 %.1, 1
  br label %27, !llvm.loop !9

42:                                               ; preds = %27
  %43 = zext i32 %.03 to i64
  %44 = getelementptr inbounds double*, double** %0, i64 %43
  %45 = load double*, double** %44, align 8
  %46 = zext i32 %.02 to i64
  %47 = getelementptr inbounds double, double* %45, i64 %46
  store double %.0, double* %47, align 8
  br label %48

48:                                               ; preds = %42
  %49 = add nuw nsw i32 %.02, 1
  br label %24, !llvm.loop !10

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = add nuw nsw i32 %.03, 1
  br label %7, !llvm.loop !11

53:                                               ; preds = %7
  call void @free(i8* noundef %5) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8* @AllocateCharVec(i32 noundef %0) #1 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 1) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  unreachable

8:                                                ; preds = %1
  ret i8* %3
}

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReallocateCharMtx(i8** nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %23, %3
  %.0 = phi i32 [ 0, %3 ], [ %24, %23 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8*, i8** %0, i64 %7
  %9 = load i8*, i8** %8, align 8
  %10 = add nsw i32 %2, 1
  %11 = sext i32 %10 to i64
  %12 = call i8* @realloc(i8* noundef %9, i64 noundef %11) #7
  %13 = zext i32 %.0 to i64
  %14 = getelementptr inbounds i8*, i8** %0, i64 %13
  store i8* %12, i8** %14, align 8
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i8*, i8** %0, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef %1, i32 noundef %2) #8
  br label %22

22:                                               ; preds = %19, %6
  br label %23

23:                                               ; preds = %22
  %24 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !12

25:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8** @AllocateCharMtx(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %0, 1
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to i8**
  %7 = icmp eq i8* %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %22, label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp slt i32 %.0, %0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = call i8* @AllocateCharVec(i32 noundef %1)
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i8*, i8** %6, i64 %17
  store i8* %16, i8** %18, align 8
  br label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !13

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %11
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i8*, i8** %6, i64 %23
  store i8* null, i8** %24, align 8
  ret i8** %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharMtx(i8** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i8*, i8** %0, i64 %3
  %5 = load i8*, i8** %4, align 8
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8*, i8** %0, i64 %7
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* noundef %9) #7
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !14

12:                                               ; preds = %2
  %13 = bitcast i8** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float* @AllocateFloatVec(i32 noundef %0) #1 {
  %2 = zext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 4) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  unreachable

8:                                                ; preds = %1
  %9 = bitcast i8* %3 to float*
  ret float* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatVec(float* noundef %0) #1 {
  %2 = bitcast float* %0 to i8*
  call void @free(i8* noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float** @AllocateFloatHalfMtx(i32 noundef %0) #1 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = call noalias i8* @calloc(i64 noundef %3, i64 noundef 8) #7
  %5 = bitcast i8* %4 to float**
  %6 = icmp eq i8* %4, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %27, %10
  %.0 = phi i32 [ 0, %10 ], [ %28, %27 ]
  %12 = icmp slt i32 %.0, %0
  br i1 %12, label %13, label %29

13:                                               ; preds = %11
  %14 = sub nsw i32 %0, %.0
  %15 = sext i32 %14 to i64
  %16 = call noalias i8* @calloc(i64 noundef %15, i64 noundef 4) #7
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds float*, float** %5, i64 %17
  %19 = bitcast float** %18 to i8**
  store i8* %16, i8** %19, align 8
  %20 = zext i32 %.0 to i64
  %21 = getelementptr inbounds float*, float** %5, i64 %20
  %22 = load float*, float** %21, align 8
  %.not = icmp eq float* %22, null
  br i1 %.not, label %23, label %26

23:                                               ; preds = %13
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !15

29:                                               ; preds = %11
  %30 = sext i32 %0 to i64
  %31 = getelementptr inbounds float*, float** %5, i64 %30
  store float* null, float** %31, align 8
  ret float** %5

UnifiedUnreachableBlock:                          ; preds = %23, %7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float** @AllocateFloatMtx(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to float**
  %7 = icmp eq i8* %5, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

11:                                               ; preds = %2
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %31, label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %28, %12
  %.0 = phi i32 [ 0, %12 ], [ %29, %28 ]
  %14 = icmp slt i32 %.0, %0
  br i1 %14, label %15, label %30

15:                                               ; preds = %13
  %16 = sext i32 %1 to i64
  %17 = call noalias i8* @calloc(i64 noundef %16, i64 noundef 4) #7
  %18 = zext i32 %.0 to i64
  %19 = getelementptr inbounds float*, float** %6, i64 %18
  %20 = bitcast float** %19 to i8**
  store i8* %17, i8** %20, align 8
  %21 = zext i32 %.0 to i64
  %22 = getelementptr inbounds float*, float** %6, i64 %21
  %23 = load float*, float** %22, align 8
  %.not1 = icmp eq float* %23, null
  br i1 %.not1, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %25, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #8
  call void @exit(i32 noundef 1) #9
  br label %UnifiedUnreachableBlock

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !16

30:                                               ; preds = %13
  br label %31

31:                                               ; preds = %30, %11
  %32 = sext i32 %0 to i64
  %33 = getelementptr inbounds float*, float** %6, i64 %32
  store float* null, float** %33, align 8
  ret float** %6

UnifiedUnreachableBlock:                          ; preds = %24, %8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatHalfMtx(float** noundef %0, i32 noundef %1) #1 {
  br label %3

3:                                                ; preds = %14, %2
  %.0 = phi i32 [ 0, %2 ], [ %15, %14 ]
  %4 = icmp slt i32 %.0, %1
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = zext i32 %.0 to i64
  %7 = getelementptr inbounds float*, float** %0, i64 %6
  %8 = load float*, float** %7, align 8
  %.not = icmp eq float* %8, null
  br i1 %.not, label %13, label %9

9:                                                ; preds = %5
  %10 = zext i32 %.0 to i64
  %11 = getelementptr inbounds float*, float** %0, i64 %10
  %12 = load float*, float** %11, align 8
  call void @FreeFloatVec(float* noundef %12)
  br label %13

13:                                               ; preds = %9, %5
  br label %14

14:                                               ; preds = %13
  %15 = add nuw nsw i32 %.0, 1
  br label %3, !llvm.loop !17

16:                                               ; preds = %3
  %17 = bitcast float** %0 to i8*
  call void @free(i8* noundef %17) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatMtx(float** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds float*, float** %0, i64 %3
  %5 = load float*, float** %4, align 8
  %.not = icmp eq float* %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds float*, float** %0, i64 %7
  %9 = load float*, float** %8, align 8
  call void @FreeFloatVec(float* noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !18

12:                                               ; preds = %2
  %13 = bitcast float** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32* @AllocateIntVec(i32 noundef %0) #1 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 4) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  unreachable

8:                                                ; preds = %1
  %9 = bitcast i8* %3 to i32*
  ret i32* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntVec(i32* noundef %0) #1 {
  %2 = bitcast i32* %0 to i8*
  call void @free(i8* noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float** @AllocateFloatTri(i32 noundef %0) #1 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = call noalias i8* @calloc(i64 noundef %3, i64 noundef 8) #7
  %5 = bitcast i8* %4 to float**
  %.not = icmp eq i8* %4, null
  br i1 %.not, label %6, label %9

6:                                                ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i64 @fwrite(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %7) #10
  call void @exit(i32 noundef 1) #9
  unreachable

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %17, %9
  %.0 = phi i32 [ 0, %9 ], [ %18, %17 ]
  %11 = icmp slt i32 %.0, %0
  br i1 %11, label %12, label %19

12:                                               ; preds = %10
  %13 = add nuw nsw i32 %.0, 3
  %14 = call float* @AllocateFloatVec(i32 noundef %13)
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds float*, float** %5, i64 %15
  store float* %14, float** %16, align 8
  br label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %.0, 1
  br label %10, !llvm.loop !19

19:                                               ; preds = %10
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds float*, float** %5, i64 %20
  store float* null, float** %21, align 8
  ret float** %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatTri(float** noundef %0) #1 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds float*, float** %0, i64 %3
  %5 = load float*, float** %4, align 8
  %.not = icmp eq float* %5, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds float*, float** %0, i64 %7
  %9 = bitcast float** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #7
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !20

13:                                               ; preds = %2
  %14 = bitcast float** %0 to i8*
  call void @free(i8* noundef %14) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32** @AllocateIntMtx(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %0, 1
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to i32**
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

10:                                               ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %21, label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %18, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %13 = icmp slt i32 %.0, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call i32* @AllocateIntVec(i32 noundef %1)
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds i32*, i32** %6, i64 %16
  store i32* %15, i32** %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %10
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds i32*, i32** %6, i64 %22
  store i32* null, i32** %23, align 8
  ret i32** %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8*** @AllocateCharCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = add nsw i32 %0, 1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 8) #7
  %7 = bitcast i8* %6 to i8***
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %9, i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i32 noundef %0, i32 noundef %1, i32 noundef %2) #8
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %3
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %22, label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp slt i32 %.0, %0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = call i8** @AllocateCharMtx(i32 noundef %1, i32 noundef %2)
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i8**, i8*** %7, i64 %17
  store i8** %16, i8*** %18, align 8
  br label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %11
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds i8**, i8*** %7, i64 %23
  store i8** null, i8*** %24, align 8
  ret i8*** %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharCub(i8*** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i8**, i8*** %0, i64 %3
  %5 = load i8**, i8*** %4, align 8
  %.not = icmp eq i8** %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8**, i8*** %0, i64 %7
  %9 = load i8**, i8*** %8, align 8
  call void @FreeCharMtx(i8** noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !23

12:                                               ; preds = %2
  %13 = bitcast i8*** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @freeintmtx(i32** noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  br label %4

4:                                                ; preds = %11, %3
  %.0 = phi i32 [ 0, %3 ], [ %12, %11 ]
  %5 = icmp slt i32 %.0, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32*, i32** %0, i64 %7
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #7
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %4, !llvm.loop !24

13:                                               ; preds = %4
  %14 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %14) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntMtx(i32** noundef %0) #1 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i32*, i32** %0, i64 %3
  %5 = load i32*, i32** %4, align 8
  %.not = icmp eq i32* %5, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32*, i32** %0, i64 %7
  %9 = bitcast i32** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #7
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !25

13:                                               ; preds = %2
  %14 = bitcast i32** %0 to i8*
  call void @free(i8* noundef %14) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i8**** @AllocateCharHcu(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #1 {
  %5 = add nsw i32 %0, 1
  %6 = sext i32 %5 to i64
  %7 = call noalias i8* @calloc(i64 noundef %6, i64 noundef 8) #7
  %8 = bitcast i8* %7 to i8****
  %9 = icmp eq i8* %7, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %18, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %13 = icmp slt i32 %.0, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call i8*** @AllocateCharCub(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds i8***, i8**** %8, i64 %16
  store i8*** %15, i8**** %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !26

20:                                               ; preds = %12
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds i8***, i8**** %8, i64 %21
  store i8*** null, i8**** %22, align 8
  ret i8**** %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeCharHcu(i8**** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i8***, i8**** %0, i64 %3
  %5 = load i8***, i8**** %4, align 8
  %.not = icmp eq i8*** %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i8***, i8**** %0, i64 %7
  %9 = load i8***, i8**** %8, align 8
  call void @FreeCharCub(i8*** noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !27

12:                                               ; preds = %2
  %13 = bitcast i8**** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double* @AllocateDoubleVec(i32 noundef %0) #1 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 8) #7
  %4 = bitcast i8* %3 to double*
  ret double* %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleVec(double* noundef %0) #1 {
  %2 = bitcast double* %0 to i8*
  call void @free(i8* noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i32*** @AllocateIntCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = add nsw i32 %0, 1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 8) #7
  %7 = bitcast i8* %6 to i32***
  %8 = icmp eq i8* %6, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i64 23, i64 1, %struct._IO_FILE* %10) #10
  call void @exit(i32 noundef 1) #9
  unreachable

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %19, %12
  %.0 = phi i32 [ 0, %12 ], [ %20, %19 ]
  %14 = icmp slt i32 %.0, %0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = call i32** @AllocateIntMtx(i32 noundef %1, i32 noundef %2)
  %17 = zext i32 %.0 to i64
  %18 = getelementptr inbounds i32**, i32*** %7, i64 %17
  store i32** %16, i32*** %18, align 8
  br label %19

19:                                               ; preds = %15
  %20 = add nuw nsw i32 %.0, 1
  br label %13, !llvm.loop !28

21:                                               ; preds = %13
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds i32**, i32*** %7, i64 %22
  store i32** null, i32*** %23, align 8
  ret i32*** %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeIntCub(i32*** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i32**, i32*** %0, i64 %3
  %5 = load i32**, i32*** %4, align 8
  %.not = icmp eq i32** %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i32**, i32*** %0, i64 %7
  %9 = load i32**, i32*** %8, align 8
  call void @FreeIntMtx(i32** noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !29

12:                                               ; preds = %2
  %13 = bitcast i32*** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double** @AllocateDoubleMtx(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %0, 1
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to double**
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 26, i64 1, %struct._IO_FILE* %8) #10
  call void @exit(i32 noundef 1) #9
  unreachable

10:                                               ; preds = %2
  %.not1 = icmp eq i32 %1, 0
  br i1 %.not1, label %21, label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %18, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %13 = icmp slt i32 %.0, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call double* @AllocateDoubleVec(i32 noundef %1)
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds double*, double** %6, i64 %16
  store double* %15, double** %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !30

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %10
  %22 = sext i32 %0 to i64
  %23 = getelementptr inbounds double*, double** %6, i64 %22
  store double* null, double** %23, align 8
  ret double** %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleMtx(double** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds double*, double** %0, i64 %3
  %5 = load double*, double** %4, align 8
  %.not = icmp eq double* %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds double*, double** %0, i64 %7
  %9 = load double*, double** %8, align 8
  call void @FreeDoubleVec(double* noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !31

12:                                               ; preds = %2
  %13 = bitcast double** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias float*** @AllocateFloatCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = add nsw i32 %0, 1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 8) #7
  %7 = bitcast i8* %6 to float***
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %9) #10
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %18, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %13 = icmp slt i32 %.0, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call float** @AllocateFloatMtx(i32 noundef %1, i32 noundef %2)
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds float**, float*** %7, i64 %16
  store float** %15, float*** %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !32

20:                                               ; preds = %12
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds float**, float*** %7, i64 %21
  store float** null, float*** %22, align 8
  ret float*** %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeFloatCub(float*** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds float**, float*** %0, i64 %3
  %5 = load float**, float*** %4, align 8
  %.not = icmp eq float** %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds float**, float*** %0, i64 %7
  %9 = load float**, float*** %8, align 8
  call void @FreeFloatMtx(float** noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !33

12:                                               ; preds = %2
  %13 = bitcast float*** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias double*** @AllocateDoubleCub(i32 noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = add nsw i32 %0, 1
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @calloc(i64 noundef %5, i64 noundef 8) #7
  %7 = bitcast i8* %6 to double***
  %.not = icmp eq i8* %6, null
  br i1 %.not, label %8, label %11

8:                                                ; preds = %3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %9) #10
  call void @exit(i32 noundef 1) #9
  unreachable

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %18, %11
  %.0 = phi i32 [ 0, %11 ], [ %19, %18 ]
  %13 = icmp slt i32 %.0, %0
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = call double** @AllocateDoubleMtx(i32 noundef %1, i32 noundef %2)
  %16 = zext i32 %.0 to i64
  %17 = getelementptr inbounds double**, double*** %7, i64 %16
  store double** %15, double*** %17, align 8
  br label %18

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %.0, 1
  br label %12, !llvm.loop !34

20:                                               ; preds = %12
  %21 = sext i32 %0 to i64
  %22 = getelementptr inbounds double**, double*** %7, i64 %21
  store double** null, double*** %22, align 8
  ret double*** %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeDoubleCub(double*** noundef %0) #1 {
  br label %2

2:                                                ; preds = %10, %1
  %.0 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds double**, double*** %0, i64 %3
  %5 = load double**, double*** %4, align 8
  %.not = icmp eq double** %5, null
  br i1 %.not, label %12, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds double**, double*** %0, i64 %7
  %9 = load double**, double*** %8, align 8
  call void @FreeDoubleMtx(double** noundef %9)
  br label %10

10:                                               ; preds = %6
  %11 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !35

12:                                               ; preds = %2
  %13 = bitcast double*** %0 to i8*
  call void @free(i8* noundef %13) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i16* @AllocateShortVec(i32 noundef %0) #1 {
  %2 = sext i32 %0 to i64
  %3 = call noalias i8* @calloc(i64 noundef %2, i64 noundef 2) #7
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 noundef %0) #8
  call void @exit(i32 noundef 1) #9
  unreachable

8:                                                ; preds = %1
  %9 = bitcast i8* %3 to i16*
  ret i16* %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeShortVec(i16* noundef %0) #1 {
  %2 = bitcast i16* %0 to i8*
  call void @free(i8* noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local noalias i16** @AllocateShortMtx(i32 noundef %0, i32 noundef %1) #1 {
  %3 = add nsw i32 %0, 1
  %4 = sext i32 %3 to i64
  %5 = call noalias i8* @calloc(i64 noundef %4, i64 noundef 8) #7
  %6 = bitcast i8* %5 to i16**
  %.not = icmp eq i8* %5, null
  br i1 %.not, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %8, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0), i32 noundef %0, i32 noundef %1) #8
  call void @exit(i32 noundef 1) #9
  unreachable

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %17, %10
  %.0 = phi i32 [ 0, %10 ], [ %18, %17 ]
  %12 = icmp slt i32 %.0, %0
  br i1 %12, label %13, label %19

13:                                               ; preds = %11
  %14 = call i16* @AllocateShortVec(i32 noundef %1)
  %15 = zext i32 %.0 to i64
  %16 = getelementptr inbounds i16*, i16** %6, i64 %15
  store i16* %14, i16** %16, align 8
  br label %17

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %.0, 1
  br label %11, !llvm.loop !36

19:                                               ; preds = %11
  %20 = sext i32 %0 to i64
  %21 = getelementptr inbounds i16*, i16** %6, i64 %20
  store i16* null, i16** %21, align 8
  ret i16** %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeShortMtx(i16** noundef %0) #1 {
  br label %2

2:                                                ; preds = %11, %1
  %.0 = phi i32 [ 0, %1 ], [ %12, %11 ]
  %3 = zext i32 %.0 to i64
  %4 = getelementptr inbounds i16*, i16** %0, i64 %3
  %5 = load i16*, i16** %4, align 8
  %.not = icmp eq i16* %5, null
  br i1 %.not, label %13, label %6

6:                                                ; preds = %2
  %7 = zext i32 %.0 to i64
  %8 = getelementptr inbounds i16*, i16** %0, i64 %7
  %9 = bitcast i16** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #7
  br label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %.0, 1
  br label %2, !llvm.loop !37

13:                                               ; preds = %2
  %14 = bitcast i16** %0 to i8*
  call void @free(i8* noundef %14) #7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #6

attributes #0 = { nofree noinline norecurse nosync nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { noreturn nounwind }
attributes #10 = { cold }

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
