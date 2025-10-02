; ModuleID = './pgm.ll'
source_filename = "/project/test/llvm-test-suite/MultiSource/Benchmarks/McCat/18-imp/pgm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ImgT = type { i8, i8*, i8*, %struct._IO_FILE*, i32, i32, i32, i32, i8*, double*, float*, float*, float*, i32*, double, double, i32*, double*, i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"filename:\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"width   :\09%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"height  :\09%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"max gray:\09%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"#%n\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"P5\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s.jo.pgm\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s.raw.pgm\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%s.cedge.pgm\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s.hvar.pgm\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_InitImage(%struct.ImgT* nocapture noundef %0, i8* noundef %1) #0 {
  %3 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #8
  %4 = add i64 %3, 1
  %5 = call noalias i8* @malloc(i64 noundef %4) #9
  %6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  store i8* %5, i8** %6, align 8
  %7 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) %1) #9
  %8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  %9 = load i8*, i8** %8, align 8
  %10 = call noalias i8* @strdup(i8* noundef %9) #9
  %11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  store i8* %10, i8** %11, align 8
  %12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  %13 = load i8*, i8** %12, align 8
  br label %14

14:                                               ; preds = %25, %2
  %.0 = phi i8* [ %13, %2 ], [ %15, %25 ]
  %15 = getelementptr inbounds i8, i8* %.0, i64 1
  %16 = load i8, i8* %.0, align 1
  %.not = icmp eq i8 %16, 0
  br i1 %.not, label %26, label %17

17:                                               ; preds = %14
  %18 = load i8, i8* %15, align 1
  %19 = icmp eq i8 %18, 47
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %.0, i64 2
  %24 = call i8* @strcpy(i8* noundef nonnull dereferenceable(1) %22, i8* noundef nonnull %23) #9
  br label %25

25:                                               ; preds = %20, %17
  br label %14, !llvm.loop !4

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %28 = load i8*, i8** %27, align 8
  br label %29

29:                                               ; preds = %36, %26
  %.1 = phi i8* [ %28, %26 ], [ %30, %36 ]
  %30 = getelementptr inbounds i8, i8* %.1, i64 1
  %31 = load i8, i8* %.1, align 1
  %.not1 = icmp eq i8 %31, 0
  br i1 %.not1, label %37, label %32

32:                                               ; preds = %29
  %33 = load i8, i8* %30, align 1
  %34 = icmp eq i8 %33, 46
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i8 0, i8* %30, align 1
  br label %36

36:                                               ; preds = %35, %32
  br label %29, !llvm.loop !6

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  store i8 0, i8* %38, align 8
  %39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 11
  store float* null, float** %39, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64 noundef) #1

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8* noundef, i8* noundef) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_FreeImage(%struct.ImgT* nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* noundef %3) #9
  %4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %5 = load i8*, i8** %4, align 8
  call void @free(i8* noundef %5) #9
  %6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  %7 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %7) #9
  %8 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 12
  %9 = bitcast float** %8 to i8**
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* noundef %10) #9
  %11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  store i8 0, i8* %11, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8* noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_PrintInfo(%struct.ImgT* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @mybasename(i8* noundef %6)
  %8 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* noundef %7) #9
  %9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 noundef %10) #9
  %12 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 noundef %13) #9
  %15 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef %16) #9
  br label %18

18:                                               ; preds = %4, %1
  ret void
}

declare dso_local i32 @printf(i8* noundef, ...) #3

; Function Attrs: mustprogress nofree noinline nounwind readonly uwtable willreturn
define internal i8* @mybasename(i8* noundef readonly %0) #4 {
  %2 = call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 47) #8
  %.not = icmp eq i8* %2, null
  br i1 %.not, label %5, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, i8* %2, i64 1
  br label %6

5:                                                ; preds = %1
  br label %6

6:                                                ; preds = %5, %3
  %7 = phi i8* [ %4, %3 ], [ %0, %5 ]
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_GetValue(%struct.ImgT* nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  br label %3

3:                                                ; preds = %21, %1
  %4 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef nonnull %2) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %10, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %2) #9
  %12 = load i32, i32* %2, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %19, %14
  %16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = call i32 @fgetc(%struct._IO_FILE* noundef %17) #9
  %sext.mask = and i32 %18, 255
  %.not = icmp eq i32 %sext.mask, 10
  br i1 %.not, label %20, label %19

19:                                               ; preds = %15
  br label %15, !llvm.loop !7

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %8
  %22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %23, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #9
  br label %3, !llvm.loop !8

25:                                               ; preds = %3
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

declare dso_local i32 @fgetc(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_Open(%struct.ImgT* nocapture noundef %0) #0 {
  %2 = alloca [2 x i8], align 1
  %3 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 1
  %4 = load i8*, i8** %3, align 8
  %5 = call noalias %struct._IO_FILE* @fopen(i8* noundef %4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  %6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  store %struct._IO_FILE* %5, %struct._IO_FILE** %6, align 8
  %7 = icmp eq %struct._IO_FILE* %5, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i64 @fread(i8* noundef nonnull %10, i64 noundef 1, i64 noundef 2, %struct._IO_FILE* noundef %12) #9
  %.not = icmp eq i64 %13, 2
  br i1 %.not, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds [2 x i8], [2 x i8]* %2, i64 0, i64 0
  %bcmp = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %15, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i64 2)
  %.not1 = icmp eq i32 %bcmp, 0
  br i1 %.not1, label %17, label %16

16:                                               ; preds = %14, %9
  br label %25

17:                                               ; preds = %14
  %18 = call i32 @PGM_GetValue(%struct.ImgT* noundef %0)
  %19 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  store i32 %18, i32* %19, align 4
  %20 = call i32 @PGM_GetValue(%struct.ImgT* noundef %0)
  %21 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  store i32 %20, i32* %21, align 8
  %22 = call i32 @PGM_GetValue(%struct.ImgT* noundef %0)
  %23 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  store i8 1, i8* %24, align 8
  br label %25

25:                                               ; preds = %17, %16, %8
  %.0 = phi i32 [ -1, %8 ], [ -2, %16 ], [ 0, %17 ]
  ret i32 %.0
}

declare dso_local noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #3

declare dso_local i64 @fread(i8* noundef, i64 noundef, i64 noundef, %struct._IO_FILE* noundef) #3

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @PGM_Close(%struct.ImgT* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %4 = call i32 @fclose(%struct._IO_FILE* noundef %3) #9
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_LoadImage(%struct.ImgT* noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i32 @PGM_Open(%struct.ImgT* noundef %0)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %6, label %5

5:                                                ; preds = %1
  br label %110

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  call void @PGM_Close(%struct.ImgT* noundef %0)
  br label %110

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %17, %19
  %21 = sext i32 %20 to i64
  %22 = call noalias i8* @malloc(i64 noundef %21) #9
  %23 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = call noalias i8* @calloc(i64 noundef %27, i64 noundef 4) #9
  %29 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 16
  %30 = bitcast i32** %29 to i8**
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = call noalias i8* @calloc(i64 noundef %34, i64 noundef 8) #9
  %36 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 17
  %37 = bitcast double** %36 to i8**
  store i8* %35, i8** %37, align 8
  %38 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 11
  store float* null, float** %38, align 8
  %39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %39, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %40, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* noundef nonnull %3) #9
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %15
  br label %45

45:                                               ; preds = %49, %44
  %46 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %46, align 8
  %48 = call i32 @fgetc(%struct._IO_FILE* noundef %47) #9
  %.not2 = icmp eq i32 %48, 10
  br i1 %.not2, label %50, label %49

49:                                               ; preds = %45
  br label %45, !llvm.loop !9

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %15
  %52 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %52, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* noundef %53, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #9
  br label %55

55:                                               ; preds = %78, %51
  %.01 = phi i32 [ 0, %51 ], [ %79, %78 ]
  %56 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = mul nsw i32 %57, %59
  %61 = icmp slt i32 %.01, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 3
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %63, align 8
  %65 = call i64 @fread(i8* noundef nonnull %2, i64 noundef 1, i64 noundef 1, %struct._IO_FILE* noundef %64) #9
  %66 = load i8, i8* %2, align 1
  %67 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  %68 = load i8*, i8** %67, align 8
  %69 = zext i32 %.01 to i64
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 16
  %72 = load i32*, i32** %71, align 8
  %73 = load i8, i8* %2, align 1
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %62
  %79 = add nuw nsw i32 %.01, 1
  br label %55, !llvm.loop !10

80:                                               ; preds = %55
  br label %81

81:                                               ; preds = %106, %80
  %storemerge = phi i8 [ 0, %80 ], [ %108, %106 ]
  store i8 %storemerge, i8* %2, align 1
  %82 = zext i8 %storemerge to i32
  %83 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, %82
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 16
  %88 = load i32*, i32** %87, align 8
  %89 = load i8, i8* %2, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to double
  %94 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = mul nsw i32 %95, %97
  %99 = sitofp i32 %98 to double
  %100 = fdiv double %93, %99
  %101 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 17
  %102 = load double*, double** %101, align 8
  %103 = load i8, i8* %2, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds double, double* %102, i64 %104
  store double %100, double* %105, align 8
  br label %106

106:                                              ; preds = %86
  %107 = load i8, i8* %2, align 1
  %108 = add i8 %107, 1
  br label %81, !llvm.loop !11

109:                                              ; preds = %81
  call void @PGM_Close(%struct.ImgT* noundef %0)
  br label %110

110:                                              ; preds = %109, %14, %5
  %.0 = phi i32 [ %4, %5 ], [ -3, %14 ], [ 0, %109 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_WriteBinary(%struct.ImgT* nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  %3 = load i8, i8* %2, align 8
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %4, %1
  br label %57

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %15 = load i8*, i8** %14, align 8
  %16 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %15) #8
  %17 = add i64 %16, 8
  %18 = call noalias i8* @malloc(i64 noundef %17) #9
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %18, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef %15) #9
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %20)
  %22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %23, i32 noundef %25) #9
  %27 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %20, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %28) #9
  br label %30

30:                                               ; preds = %54, %13
  %.01 = phi i64 [ 0, %13 ], [ %55, %54 ]
  %31 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %.01, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %.01
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = icmp ult i32 %46, %43
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %50 = load i32, i32* %49, align 8
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %48
  %53 = phi i32 [ %50, %48 ], [ 0, %51 ]
  %sext = shl i32 %53, 24
  %chari = ashr exact i32 %sext, 24
  %fputc = call i32 @fputc(i32 %chari, %struct._IO_FILE* %20)
  br label %54

54:                                               ; preds = %52
  %55 = add nuw nsw i64 %.01, 1
  br label %30, !llvm.loop !12

56:                                               ; preds = %30
  call void @free(i8* noundef %18) #9
  br label %57

57:                                               ; preds = %56, %12
  %.0 = phi i32 [ -3, %12 ], [ 0, %56 ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8* noundef, i8* noundef, ...) #1

declare dso_local i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #3

; Function Attrs: nofree nounwind
declare dso_local noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGM_WriteImage(%struct.ImgT* noundef readonly %0, i8 noundef signext %1) #0 {
  %3 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 0
  %4 = load i8, i8* %3, align 8
  %.not = icmp eq i8 %4, 0
  br i1 %.not, label %13, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %5, %2
  br label %129

14:                                               ; preds = %9
  %15 = sext i8 %1 to i32
  switch i32 %15, label %128 [
    i32 0, label %16
    i32 1, label %53
    i32 2, label %54
    i32 3, label %91
  ]

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %129

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %23) #8
  %25 = add i64 %24, 9
  %26 = call noalias i8* @malloc(i64 noundef %25) #9
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %26, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* noundef %23) #9
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %29 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %28)
  %30 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %31, i32 noundef %33) #9
  %35 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %28, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 noundef %36) #9
  br label %38

38:                                               ; preds = %50, %21
  %.01 = phi i64 [ 0, %21 ], [ %51, %50 ]
  %39 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %.01, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 8
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 %.01
  %char = load i8, i8* %49, align 1
  %chari4 = sext i8 %char to i32
  %fputc5 = call i32 @fputc(i32 %chari4, %struct._IO_FILE* %28)
  br label %50

50:                                               ; preds = %46
  %51 = add nuw nsw i64 %.01, 1
  br label %38, !llvm.loop !13

52:                                               ; preds = %38
  call void @free(i8* noundef %26) #9
  br label %128

53:                                               ; preds = %14
  br label %129

54:                                               ; preds = %14
  %55 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 12
  %56 = load float*, float** %55, align 8
  %57 = icmp eq float* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %129

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %61) #8
  %63 = add i64 %62, 11
  %64 = call noalias i8* @malloc(i64 noundef %63) #9
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %64, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* noundef %61) #9
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %66)
  %68 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %66, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %69, i32 noundef %71) #9
  %73 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %66)
  br label %74

74:                                               ; preds = %88, %59
  %.1 = phi i64 [ 0, %59 ], [ %89, %88 ]
  %75 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %76, %78
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %.1, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 12
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 %.1
  %86 = load float, float* %85, align 4
  %87 = fptoui float %86 to i8
  %chari2 = sext i8 %87 to i32
  %fputc3 = call i32 @fputc(i32 %chari2, %struct._IO_FILE* %66)
  br label %88

88:                                               ; preds = %82
  %89 = add nuw nsw i64 %.1, 1
  br label %74, !llvm.loop !14

90:                                               ; preds = %74
  call void @free(i8* noundef %64) #9
  br label %128

91:                                               ; preds = %14
  %92 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 11
  %93 = load float*, float** %92, align 8
  %94 = icmp eq float* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %129

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %98) #8
  %100 = add i64 %99, 10
  %101 = call noalias i8* @malloc(i64 noundef %100) #9
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* noundef nonnull dereferenceable(1) %101, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* noundef %98) #9
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = call i64 @fwrite(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 3, i64 1, %struct._IO_FILE* %103)
  %105 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %103, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 noundef %106, i32 noundef %108) #9
  %110 = call i64 @fwrite(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i64 4, i64 1, %struct._IO_FILE* %103)
  br label %111

111:                                              ; preds = %125, %96
  %.2 = phi i64 [ 0, %96 ], [ %126, %125 ]
  %112 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %.2, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.ImgT, %struct.ImgT* %0, i64 0, i32 11
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 %.2
  %123 = load float, float* %122, align 4
  %124 = fptoui float %123 to i8
  %chari = sext i8 %124 to i32
  %fputc = call i32 @fputc(i32 %chari, %struct._IO_FILE* %103)
  br label %125

125:                                              ; preds = %119
  %126 = add nuw nsw i64 %.2, 1
  br label %111, !llvm.loop !15

127:                                              ; preds = %111
  call void @free(i8* noundef %101) #9
  br label %128

128:                                              ; preds = %127, %90, %52, %14
  br label %129

129:                                              ; preds = %128, %95, %58, %53, %20, %13
  %.0 = phi i32 [ -3, %13 ], [ 0, %128 ], [ -3, %95 ], [ -3, %58 ], [ -3, %53 ], [ -3, %20 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare dso_local i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) #7

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline nounwind readonly uwtable willreturn "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

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
